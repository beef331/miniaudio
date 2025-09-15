import std/[options, os, sequtils, typetraits]

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


type
  Listener* = distinct uint32
  TAudioEngine = object of maEngine
  AudioEngine* = ref TAudioEngine
  AudioResult* = maResult
  TSound = object of maSound
  Sound* = ref TSound
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

template wrapError(msg: string, body: typed) =
  let res = body
  if res != MaSuccess:
    raise newException(MiniAudioError, msg & " (err: " & $res & ").")

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
  wrapError "Could not set volume":
    engine.maEngineSetVolume(volume)

converter toMaSoundPtr*(s: Sound): ptr maSound = cast[ptr maSound](s)

proc new*(_: typedesc[AudioEngine]): AudioEngine =
  new result
  wrapError "Could not create AudioEngine":
    maEngineInit(nil, result)

proc playSound*(engine: AudioEngine, path: string, group: SoundGroup = SoundGroup(nil)) =
  wrapError "Could not play sound":
    maEnginePlaySound(engine, path.cstring, group.distinctBase)

proc loadSoundFromFile*(engine: AudioEngine, path: openarray[char], flags = SoundFlags({})): Sound =
  new result
  wrapError "Could not load sound":
    maSoundInitFromFile(engine, cast[cstring](path[0].addr), cast[uint32](flags), nil, nil, result)

proc looping*(sound: Sound): bool =
  sound.maSoundIsLooping()

proc `looping=`*(sound: Sound, isLooping: bool) =
  sound.maSoundSetLooping(isLooping)

proc spatial*(sound: Sound): bool =
  sound.maSoundIsSpatializationEnabled()

proc `spatial=`*(sound: Sound, isLooping: bool) =
  sound.maSoundSetSpatializationEnabled(isLooping)

proc start*(sound: Sound) =
  wrapError "Could not start sound":
    maSoundStart(sound)

proc stop*(sound: Sound) =
  wrapError "Could not stop sound":
    maSoundStop(sound)

proc atEnd*(sound: Sound): bool =
  sound.maSoundAtEnd()

proc cursor*(sound: Sound): float32 =
  wrapError "Could not get cursor":
    sound.maSoundGetCursorInSeconds(result.addr)

proc length*(sound: Sound): float32 =
  wrapError "Could not get sound length":
    sound.maSoundGetLengthInSeconds(result.addr)

proc duplicate*(engine: AudioEngine, sound: Sound): Sound =
  assert sound != nil
  new result
  wrapError "Could not copy sound":
    maSoundInitCopy(engine, sound, 0, nil, nil, result)

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


# ---- Low-level API ----

type
  SampleBuffer* = UncheckedArray[cfloat]
  ProcessCallback = proc(output, input: ptr SampleBuffer, frames: int, dev: pointer)

  DeviceInfo* = object
    id*: maDeviceId
    deviceType: maDeviceType
    name*: string
    isDefault*: bool

  TAudioContext = object of maContext
  AudioContext* = ref TAudioContext

  TAudioDevice = object
    device*: maDevice
    config*: maDeviceConfig
    context*: AudioContext
    callback: ProcessCallback
    userData: pointer
  AudioDevice* = ref TAudioDevice

converter toMaContextPtr*(ctx: AudioContext): ptr maContext = cast[ptr maContext](ctx)

# --- AudioContext ---
proc `=destroy`(ctx: TAudioContext) =
  discard maContextUninit(ctx.addr)

proc newAudioContext*(
    backends: openArray[maDeviceBackendConfig],
    ctxConfig: ptr maContextConfig = nil
): AudioContext =
  new result
  wrapError "Failed to initialize miniaudio context":
    ma_context_init(cast[ptr maDeviceBackendConfig](backends[0].addr), backends.len.ma_uint32,
                    ctxConfig, result)

# --- Device Enumeration ---
proc deviceEnumerationCallback(
    deviceType: maDeviceType,
    pInfo: ptr maDeviceInfo,
    pUserData: pointer
): maDeviceEnumerationResult {.cdecl.} =
  let devices = cast[ptr seq[DeviceInfo]](pUserData)
  let name = $cast[cstring](pInfo.name[0].addr)
  let info = DeviceInfo(
    id: pInfo.id,
    deviceType: deviceType,
    name: name,
    isDefault: pInfo.isDefault.bool
  )
  devices[].add(info)

  return MA_DEVICE_ENUMERATION_CONTINUE

proc getDevices*(
  ctx: AudioContext,
  types: set[maDeviceType] = {maDeviceTypeCapture, maDeviceTypePlayback}
): seq[DeviceInfo] =
  wrapError "Failed to enumerate devices":
    maContextEnumerateDevices(ctx, deviceEnumerationCallback, result.addr)
  result.keepItIf(it.deviceType in types)

# --- AudioDevice ---
proc `=destroy`(dev: TAudioDevice) =
  maDeviceUninit(dev.device.addr)

proc audioCallback(
    pDevice: ptr maDevice,
    pOutput: pointer,
    pInput: pointer,
    frameCount: maUint32
) {.cdecl.} =
  let
    dev = cast[AudioDevice](pDevice.pUserData)
    output = cast[ptr SampleBuffer](pOutput)
    input = cast[ptr SampleBuffer](pInput)

  dev.callback(output, input, frameCount.int, dev.userData)

proc newAudioDevice*(
  ctx: AudioContext,
  deviceType = maDeviceTypePlayback,
  playbackDevice: Option[DeviceInfo] = none(DeviceInfo),
  captureDevice: Option[DeviceInfo] = none(DeviceInfo),
  format = maFormatF32,
  channels = 2,
  sampleRate = 0,
  callback: ProcessCallback,
  userData: pointer = nil
): AudioDevice =
  new result

  var config = maDeviceConfigInit(deviceType)

  if deviceType in {maDeviceTypePlayback, maDeviceTypeDuplex}:
    config.playback.format = format
    config.playback.channels = channels.maUint32

    if playback_device.isSome:
      config.playback.pDeviceID = playback_device.get().id.addr

  if deviceType in {maDeviceTypeCapture, maDeviceTypeDuplex, maDeviceTypeLoopback}:
    config.capture.format = format
    config.capture.channels = channels.maUint32

    if capture_device.isSome:
      config.capture.pDeviceID = capture_device.get().id.addr

  config.sampleRate = sampleRate.maUint32
  config.noClip = MA_TRUE
  config.noPreSilencedOutputBuffer = MA_TRUE

  result.config = config
  result.context = ctx
  result.callback = callback
  result.userData = userData
  config.pUserData = cast[pointer](result)
  config.dataCallback = audioCallback

  wrapError "Failed to initialize device":
    maDeviceInit(ctx, config.addr, result.device.addr)

proc sampleRate*(dev: AudioDevice): int =
  dev.device.sampleRate.int

proc start*(dev: AudioDevice) =
  wrapError "Failed to start playback device":
    maDeviceStart(dev.device.addr)

proc stop*(dev: AudioDevice) =
  wrapError "Failed to stop playback device":
    maDeviceStop(dev.device.addr)


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
