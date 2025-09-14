import std/[cmdline, math, os, strformat, strutils]

import miniaudio
import signal

const TwoPi = math.PI * 2.0

type
  Sineosc = object
    t = 0.0
    freq = 440.0
    samplePeriod = 0.0
    volume = 0.2

var exitSignalled = false


proc signalCb(sig: cint) {.noconv.} =
    exitSignalled = true

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
  let idx = if paramCount() > 0: paramStr(1).parseInt else: 0
  let backends = [
    maDeviceBackendConfigInit(maDeviceBackendJack, nil),
    maDeviceBackendConfigInit(maDeviceBackendPulseaudio, nil),
    maDeviceBackendConfigInit(maDeviceBackendAlsa, nil)
  ]
  var ctx = newAudioContext(backends)

  let devs = ctx.getPlaybackDevices()
  echo "Available playback devices:"

  for i, d in devs:
    echo &"  [{i}]: {d.name}"

  var
    sine = default(SineOsc)
    dev = ctx.newAudioDevice(devs[idx], callback = processCallback, userData = sine.addr)

  sine.setSampleRate(dev.sampleRate.float)
  dev.start()
  setSignalProc(signalCb, SIGINT, SIGTERM)

  echo "Playing sine. Ctrl-C to quit..."
  while not exitSignalled:
    sleep(50)


main()
