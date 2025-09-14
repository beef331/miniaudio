import std/[cmdline, math, options, os, strformat, strutils]

import miniaudio
import signal

const TwoPi = math.PI * 2.0
var exitSignalled = false

proc signalCb(sig: cint) {.noconv.} =
  exitSignalled = true

type
  Sineosc = object
    t = 0.0
    freq = 440.0
    samplePeriod = 0.0
    volume = 0.2

proc process(osc: var SineOsc): float =
  result = sin(TwoPi * osc.freq * osc.t) * osc.volume
  osc.t += osc.samplePeriod

proc setSampleRate(osc: var SineOsc, sampleRate: float) =
  osc.samplePeriod = 1.0 / sampleRate

proc processCallback(
    output, input: ptr SampleBuffer,
    frameCount: int,
    userData: pointer
  ) =
  let osc = cast[ptr SineOsc](userData)
  discard input

  for i in 0..<frameCount.int:
    let sample = osc[].process()
    output[i*2] = sample  # Left
    output[i*2+1] = sample  # Right

proc main() =
  let backends = [
    maDeviceBackendConfigInit(maDeviceBackendJack, nil),
    maDeviceBackendConfigInit(maDeviceBackendPulseaudio, nil),
    maDeviceBackendConfigInit(maDeviceBackendAlsa, nil)
  ]
  let ctx = newAudioContext(backends)

  let devs = ctx.getDevices(@[maDeviceTypePlayback])
  echo "Available playback devices:"

  for i, d in devs:
    echo &"  [{i}]: {d.name}" & (if d.isDefault: " *" else: "")

  var idx = -1
  if paramCount() > 0:
    idx = paramStr(1).parseInt

  if idx < devs.low or idx > devs.high:
    for i, d in devs:
      if d.isDefault:
        idx = i
        break

  var
    sine = default(SineOsc)
    # Create audio device with mostly default settings:
    #   playback, 2 channels, device default sample rate, 32-bit float samples
    # Set audio callback to `processCallback` proc, the pointer to `sine` will
    # be passed to it as `userData`.
    dev = ctx.newAudioDevice(
      playbackDevice = some(devs[idx]),
      callback = processCallback,
      userData = sine.addr
    )

  sine.setSampleRate(dev.sampleRate.float)
  dev.start()
  setSignalProc(signalCb, SIGINT, SIGTERM)

  echo "Playing sine. Ctrl-C to quit..."
  while not exitSignalled:
    sleep(50)


main()
