import std/[cmdline, math, os, strformat, strutils]

import miniaudio
import signal


const TwoPi = math.PI * 2.0

type
  SineWaveData = object
    t = 0.0
    freq = 440.0
    samplePeriod = 0.0

var exitSignalled = false


proc signalCb(sig: cint) {.noconv.} =
  echo "Received signal: " & $sig
  exitSignalled = true


proc deviceEnumCallback(
    pContext: ptr ma_context,
    deviceType: ma_device_type,
    pInfo: ptr ma_device_info,
    pUserData: pointer
  ): ma_bool32 {.cdecl.} =
  if deviceType == ma_device_type_playback:
    let name = $cast[cstring](pInfo.name[0].addr)
    let ds = cast[ptr seq[ma_device_id]](pUserData)
    ds[].add(pInfo.id)
    echo &"[{ds[].high}]: {name}"

  return MA_TRUE


proc audioCallback(
    pDevice: ptr ma_device,
    pOutput: pointer,
    pInput: pointer,
    frameCount: ma_uint32
  ) {.cdecl.} =
  let
    data = cast[ptr SineWaveData](pDevice.pUserData)
    outp = cast[ptr UncheckedArray[cfloat]](pOutput)

  for i in 0..<frameCount.int:
    let sample = sin(TwoPi * data.freq * data.t)
    data.t += data.samplePeriod

    # Write the same sample to both left and right (stereo).
    outp[i * 2] = sample * 0.2  # Left
    outp[i * 2 + 1] = sample * 0.2  # Right


proc main() =
  var
    res: ma_result
    context: ma_context
    backends: array[3, ma_backend] = [
      ma_backend_jack,
      ma_backend_pulseaudio,
      ma_backend_alsa
    ]
    deviceConfig: ma_device_config
    deviceIds: seq[ma_device_id]
    device: ma_device
    data = SineWaveData.default

  res = ma_context_init(
    cast[ptr UncheckedArray[ma_backend]](backends[0].addr),
    backends.len.ma_uint32,
    nil,
    context.addr)

  if res != MA_SUCCESS:
    echo(&"Failed to initialize miniaudio context (error code {res})\n")
    quit -1

  defer:
    discard ma_context_uninit(context.addr)

  # Device enumeration
  echo "Playback devices:"
  res = ma_context_enumerate_devices(context.addr, deviceEnumCallback, deviceIds.addr);

  if res != MA_SUCCESS:
    echo(&"Failed to enumerate audio devices (error code {res})\n")
    discard ma_context_uninit(context.addr)
    quit -1

  deviceConfig = ma_device_config_init(ma_device_type_playback)

  deviceConfig.playback.format = ma_format_f32
  deviceConfig.playback.channels = 2
  deviceConfig.sampleRate = 0
  deviceConfig.dataCallback = audio_callback
  deviceConfig.pUserData = data.addr

  # optimization
  deviceConfig.noClip = MA_TRUE
  deviceConfig.noPreSilencedOutputBuffer = MA_TRUE

  var deviceIdx = 0

  if paramCount() >= 1:
    try:
      deviceIdx = paramStr(1).parseInt
    except ValueError:
      echo &"Usage: {paramStr(0)} [<device index>]"
      quit 1

    if deviceIdx > deviceIds.high:
      echo &"Device index {deviceIdx} out of range."
      quit 1

  deviceConfig.playback.pDeviceID = deviceIds[deviceIdx].addr

  res = ma_device_init(context.addr, deviceConfig.addr, device.addr)
  if res != MA_SUCCESS:
      echo &"Failed to initialize playback device (error code {res})"
      quit -2

  # Get the actual sample rate used by the device
  data.samplePeriod = 1.0 / device.sampleRate.float

  block:
    defer:
        ma_device_uninit(device.addr)

    res = ma_device_start(device.addr)
    if res != MA_SUCCESS:
        echo &"Failed to start playback device (error code {res})"
        quit -3

    # Set up signal handlers to clean up on exit
    setSignalProc(signalCb, SIGABRT, SIGHUP, SIGINT, SIGQUIT, SIGTERM)

    # ... and keep running until a signal is received
    echo &"Playing {data.freq} Hz sine wave. Ctrl-C to quit..."
    while not exitSignalled:
      sleep(50)

main()
