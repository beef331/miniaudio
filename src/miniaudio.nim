import std/os

const
  srcDir = currentSourcePath.parentDir
  miniaudioDir = srcDir.parentDir / "miniaudio"
  futharkOutputPath = srcDir / "miniaudio_gen.nim"

when defined miniAudioUseFuthark:
  import futhark

  importc:
    outputPath futharkOutputPath
    path miniaudioDir
    "miniaudio.h"
else:
  include "miniaudio_gen.nim"

when not defined(nimsuggest):
  {.compile: miniaudioDir / "miniaudio.c".}
  when defined(posix):
    {.passL:"-lpthread -lm -ldl".}

import std/typetraits

type
  Listener* = distinct uint32
  TAudioEngine = object of maEngine
  AudioEngine* = ref TAudioEngine
  AudioResult* = maResult
  TSound = object of maSound
  Sound* =  ref TSound
  SoundGroup* = distinct ptr maSoundGroup
  MiniAudioError* = object of CatchableError

  Vec3 = concept v
    v.x is float32
    v.y is float32
    v.z is float32
    v.x = 3f32
    v.y = 3f32
    v.z = 3f32

  SoundFlag* = enum
    stream
    decode
    async
    waitInit
    noDefaultAttachment ## Do not attach to the endpoint by default. Useful for when setting up nodes in a complex graph system.
    noPitch ## Disable pitch shifting with ma_sound_set_pitch() and ma_sound_group_set_pitch(). This is an optimization.
    noSpatialization
  SoundFlags* = set[SoundFlag]

proc `=destroy`(engine: TAudioEngine) =
  maEngineUninit(engine.addr)

proc `=destroy`(sound: TSound) =
  maSoundUninit(sound.addr)

template wrapError(body: typed) =
  let res = body
  if res != MaSuccess:
    raise newException(MiniAudioError, $res)

converter toMaEnginePtr*(s: AudioEngine): ptr maEngine = cast[ptr maEngine](s)

proc `$`*(listener: Listener): string {.borrow.}

converter toMaBool*(b: bool): mauint32 = mauint32(b)
converter fromMaBool*(i: mauint32): bool = bool(i)

iterator listenerIter*(engine: AudioEngine): Listener =
  for i in 0 .. engine.maEngineGetListenerCount:
    yield Listener(i)

proc getListenerPos*[T: Vec3](engine: AudioEngine, listener: Listener): T =
  mixin `x=`, `y=`, `z=`
  var pos = engine.maEngineListenerGetPosition(uint32 listener)
  result.x = pos.x
  result.y = pos.y
  result.z = pos.z

proc setListenerPos*(engine: AudioEngine, listener: Listener, pos: Vec3) =
  mixin `x`, `y`, `z`
  engine.maEngineListenerSetPosition(uint32 listener, pos.x, pos.y, pos.z)

proc enabled*(engine: AudioEngine, listener: Listener): bool =
  engine.maEngineListenerIsEnabled(listener.distinctBase)

proc setEnabled*(engine: AudioEngine, listener: Listener, val: bool) =
  engine.maEngineListenerSetEnabled(listener.distinctBase, val)

proc getListenerDir*[T: Vec3](engine: AudioEngine, listener: Listener): T =
  mixin `x=`, `y=`, `z=`
  var pos = engine.maEngineListenerGetDirection(uint32 listener)
  result.x = pos.x
  result.y = pos.y
  result.z = pos.z

proc setListenerDir*(engine: AudioEngine, listener: Listener, pos: Vec3) =
  mixin `x`, `y`, `z`
  engine.maEngineListenerSetDirection(uint32 listener, pos.x, pos.y, pos.z)

proc `volume=`*(engine: AudioEngine, volume: float32) =
  wrapError engine.maEngineSetVolume(volume)

converter toMaSoundPtr*(s: Sound): ptr maSound = cast[ptr maSound](s)

proc new*(_: typedesc[AudioEngine]): AudioEngine =
  new result
  wrapError maEngineInit(nil, result)

proc playSound*(engine: AudioEngine, path: string, group: SoundGroup = SoundGroup(nil)) =
  wrapError maEnginePlaySound(engine, path.cstring, group.distinctBase)

proc loadSoundFromFile*(engine: AudioEngine, path: openarray[char], flags = SoundFlags({})): Sound =
  new result
  wrapError maSoundInitFromFile(engine, cast[cstring](path[0].addr), cast[uint32](flags), nil, nil, result)

proc looping*(sound: Sound): bool =
  sound.maSoundIsLooping()

proc `looping=`*(sound: Sound, isLooping: bool) =
  sound.maSoundSetLooping(isLooping)

proc spatial*(sound: Sound): bool =
  sound.maSoundIsSpatializationEnabled()

proc `spatial=`*(sound: Sound, isLooping: bool) =
  sound.maSoundSetSpatializationEnabled(isLooping)

proc start*(sound: Sound) =
  wrapError maSoundStart(sound)

proc stop*(sound: Sound) =
  wrapError maSoundStop(sound)

proc atEnd*(sound: Sound): bool =
  sound.maSoundAtEnd()

proc cursor*(sound: Sound): float32 =
  wrapError sound.maSoundGetCursorInSeconds(result.addr)

proc length*(sound: Sound): float32 =
  wrapError sound.maSoundGetLengthInSeconds(result.addr)

proc duplicate*(engine: AudioEngine, sound: Sound): Sound =
  assert sound != nil
  new result
  wrapError maSoundInitCopy(engine, sound, 0, nil, result)

template setSound(name: untyped, t: typedesc) =
  proc name*(sound: Sound): t =
     sound.`maSoundGet name`()

  proc `name =`*(sound: Sound, val: t) =
    sound.`maSoundSet name`(val)

setSound(volume, float32)
setSound(pitch, float32)
setSound(pan, float32)
setSound(rolloff, float32)
setSound(minGain, float32)
setSound(maxGain, float32)
setSound(minDistance, float32)
setSound(maxDistance, float32)
setSound(dopplerFactor, float32)
setSound(panMode, maPanMode)


template setVec3s(name: untyped) =
  proc name*[T: Vec3](sound: Sound): T =
    mixin `x=`, `y=`, `z=`
    var pos = sound.`maSoundGet name`()
    result.x = pos.x
    result.y = pos.y
    result.z = pos.z

  proc `name =`*(sound: Sound, vec: Vec3) =
    mixin x, y, z
    sound.`maSoundSet name`(vec.x, vec.y, vec.z)

setVec3s(position)
setVec3s(direction)
setVec3s(velocity)

when isMainModule:
  import std/os

  type MyVec = tuple
    x, y, z: float32

  var
    engine = AudioEngine.new()
    sound = loadSoundFromFile(engine, "test.wav")
  sound.looping = true
  sound.start()
  sound.position = (x: 10f, y: 10f, z: 0.1f)
  assert sound.position[: MyVec]() == (x: 10f, y: 10f, z: 0.1f)

  echo "Press Enter to quit..."
  discard stdin.readLine()

