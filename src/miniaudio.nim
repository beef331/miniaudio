import futhark
import std/[os, strformat]

const miniAudioPath = currentSourcePath().parentDir / "miniaudio"
importc:
  sysPath "/usr/lib/clang/13.0.1/include"
  path miniAudioPath
  "miniaudio.h"

static:
  writeFile("miniaudiocimpl.c",
fmt"""
#define MINIAUDIO_IMPLEMENTATION
#include "{miniAudioPath}/miniaudio.h"
""")
{.compile: "miniaudiocimpl.c".}
when defined(linux):
  {.passL:"-lpthread -lm -ldl".}

import std/typetraits

type
  AudioEngine* = distinct maEngine
  AudioResult* = maResult
  Sound* =  ref maSound
  Listener* = distinct uint32
  SoundGroup* = distinct ptr maSoundGroup
  MiniAudioError* = object of CatchableError

  Vec3 = concept v
    v.x is float32
    v.y is float32
    v.z is float32
    v.x = 3f32
    v.y = 3f32
    v.z = 3f32

converter toMaBool*(b: bool): mauint32 = mauint32(b)
converter fromMaBool*(i: mauint32): bool = bool(i)

template wrapError(body: typed) =
  let res = body
  if res != MaSuccess:
    raise newException(MiniAudioError, $res)

#[
TODO Fix whatever crashes with the following
proc `=destroy`*(engine: var AudioEngine) =
  echo "Destroy engine"
  maEngineUninit(addr engine.distinctBase)

proc `=destroy`*(sound: var Sound) =
  echo "Destroy sound"
  maSoundUninit(addr sound.distinctBase)
]#


iterator listeners*(engine: var AudioEngine): Listener =
  for i in 0..engine.distinctBase.addr.maEngineGetListenerCount:
    yield Listener i

proc getListenerPos*[T: Vec3](engine: var AudioEngine, listener: Listener): T =
  mixin `x=`, `y=`, `z=`
  var pos = engine.distinctBase.addr.maEngineListenerGetPosition(uint32 listener)
  result.x = pos.x
  result.y = pos.y
  result.z = pos.z

proc setListenerPos*(engine: var AudioEngine, listener: Listener, pos: Vec3) =
  mixin `x`, `y`, `z`
  engine.distinctBase.addr.maEngineListenerSetPosition(uint32 listener, pos.x, pos.y, pos.z)


proc getListenerDir*[T: Vec3](engine: var AudioEngine, listener: Listener): T =
  mixin `x=`, `y=`, `z=`
  var pos = engine.distinctBase.addr.maEngineListenerGetDirection(uint32 listener)
  result.x = pos.x
  result.y = pos.y
  result.z = pos.z

proc setListenerDir*(engine: var AudioEngine, listener: Listener, pos: Vec3) =
  mixin `x`, `y`, `z`
  engine.distinctBase.addr.maEngineListenerSetDirection(uint32 listener, pos.x, pos.y, pos.z)


converter toMaSoundPtr*(s: Sound): ptr maSound = cast[ptr maSound](s)

proc init*(_: typedesc[AudioEngine]): AudioEngine =
  wrapError maEngineInit(nil, addr result.distinctBase)

proc playSound*(engine: var AudioEngine, path: string, group: SoundGroup = nil) =
  wrapError maEnginePlaySound(addr engine.distinctBase, path.cstring, group.distinctBase)

proc loadSoundFromFile*(engine: var AudioEngine, path: openarray[char], flags = 0u32): Sound =
  new result
  wrapError maSoundInitFromFile(addr engine.distinctBase, path[0].unsafeaddr, flags, nil, nil, result)

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

proc duplicate*(engine: var AudioEngine, sound: Sound): Sound =
  assert sound != nil
  new result
  wrapError maSoundInitCopy(engine.distinctBase.addr, sound, 0, nil, result)

template set(name: untyped, t: typedesc) =
  proc name*[T: Vec3](sound: Sound): t =
     sound.`maSoundGet name`()

  proc `name =`*(sound: Sound, val: t) =
    sound.`maSoundSet name`(val)

set(volume, float32)
set(pitch, float32)
set(pan, float32)
set(rolloff, float32)
set(minGain, float32)
set(maxGain, float32)
set(minDistance, float32)
set(maxDistance, float32)
set(dopplerFactor, float32)
set(panMode, maPanMode)


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
    engine = AudioEngine.init()
    sound = loadSoundFromFile(engine, "test.wav")
  sound.looping = true
  sound.start()
  sound.position = (x: 10f, y: 10f, z: 0.1f)
  assert sound.position[: MyVec]() == (x: 10f, y: 10f, z: 0.1f)

  echo "Press Enter to quit..."
  discard stdin.readLine()
