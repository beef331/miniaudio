import futhark

# Tell futhark where to find the C libraries you will compile with, and what
# header files you wish to import.
importc:
  sysPath "/usr/lib/clang/13.0.1/include"
  path "miniaudio"
  "miniaudio.h"

static:
  writeFile("miniaudiocimpl.c", """
#define MINIAUDIO_IMPLEMENTATION
#include "src/miniaudio/miniaudio.h"
  """)
{.compile: "miniaudiocimpl.c".}
when defined(linux):
  {.passL:"-lpthread -lm -ldl".}

import std/typetraits

type
  AudioEngine = distinct maEngine
  AudioResult = maResult
  MiniAudioError = object of CatchableError
  SoundGroup = distinct ptr maSoundGroup
  Sound = distinct maSound
  Vec3 = concept v
    v.x is float32
    v.y is float32
    v.z is float32
    v.x = 3f32
    v.y = 3f32
    v.z = 3f32

converter toMaBool(b: bool): mauint32 = mauint32(b)
converter fromMaBool(i: mauint32): bool = bool(i)

template wrapError(body: typed) =
  let res = body
  if res != MaSuccess:
    raise newException(MiniAudioError, $res)

proc `=destroy`(engine: var AudioEngine) =
  maEngineUninit(addr engine.distinctBase)

proc `=destroy`(engine: var Sound) =
  maSoundUninit(addr engine.distinctBase)

proc init(_: typedesc[AudioEngine]): AudioEngine =
  wrapError maEngineInit(nil, addr result.distinctBase)


proc playSound*(engine: var AudioEngine, path: string, group: SoundGroup = nil) =
  wrapError maEnginePlaySound(addr engine.distinctBase, path.cstring, group.distinctBase)

proc loadSoundFromFile*(engine: var AudioEngine, path: string, flags = 0u32): Sound =
  wrapError maSoundInitFromFile(addr engine.distinctBase, path.cstring, flags, nil, nil, result.distinctBase.addr)

proc looping(sound: var Sound, isLooping: bool): bool =
  sound.distinctBase.addr.maSoundIsLooping()

proc `looping=`(sound: var Sound, isLooping: bool) =
  sound.distinctBase.addr.maSoundSetLooping(isLooping.uint32)

proc start*(sound: var Sound) =
  wrapError maSoundStart(sound.distinctBase.addr)

proc stop*(sound: var Sound) =
  wrapError maSoundStop(sound.distinctBase.addr)

template set(name: untyped, t: typedesc) =
  proc name*[T: Vec3](sound: var Sound): t =
     sound.distinctBase.addr.`maSoundGet name`()

  proc `name =`*(sound: var Sound, val: t) =
    sound.distinctBase.addr.`maSoundSet name`(val)

set(volume, float32)
set(pitch, float32)
set(pan, float32)
set(rolloff, float32)
set(minGain, float32)
set(maxGain, float32)
set(minDistance, float32)
set(maxDistance, float32)
set(panMode, maPanMode)


template setVec3s(name: untyped) =
  proc name*[T: Vec3](sound: var Sound): T =
    mixin `x=`, `y=`, `z=`
    var pos = sound.distinctBase.addr.`maSoundGet name`()
    result.x = pos.x
    result.y = pos.y
    result.z = pos.z

  proc `name =`*(sound: var Sound, vec: Vec3) =
    mixin x, y, z
    sound.distinctBase.addr.`maSoundSet name`(vec.x, vec.y, vec.z)

setVec3s(position)
setVec3s(direction)
setVec3s(velocity)

when isMainModule:
  import std/os

  type MyVec = tuple
    x, y, z: float32

  var
    engine = AudioEngine.init()
    sound = loadSoundFromFile(engine, "death.wav")
  sound.looping = true
  sound.start()
  sound.position = (x: 10f, y: 10f, z: 0.1f)
  assert sound.position[: MyVec]() == (x: 10f, y: 10f, z: 0.1f)

  echo "Press Enter to quit..."
  discard stdin.readLine()
