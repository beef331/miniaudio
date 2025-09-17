nim-miniaudio
=============

A wrapper of [miniaudio], a cross-platform audio I/0 library and mini game
audio engine, for the [Nim] programming language.


# API

The module provides access to whole miniaudio API via the [futhark] wrapper
generator. This means, you can use the the same symbols as in C code, but
Nim identifier naming and some futhark [symbol renaming rules] apply. For
example, instead of `ma_device`, you can also use `maDevice` or `madevice`.

The module also defines some high-level wrapper objects to provide an
interface to some parts of the miniaudio API, bringing its use more in line
with Nim conventions. For now, though, you have to refer to the examples and
the module source code to learn how to use them.


## Example

The program in this example sends the audio read from the WAV file `test.wav`
to the default playback audio device in a loop.

```nim
import std/rdstdin
import miniaudio

var engine = AudioEngine.new()
var sound = loadSoundFromFile(engine, "test.wav")

sound.looping = true
sound.start()
discard readLineFromStdin("Press Enter to quit...")
```


## Authors

*nim-miniaudio* was created by [Jason Beetham](https://github.com/beef331)
and updated, re-factored, and extended by
[Christopher Arndt](https://github.com/SpotlightKid).


## License

This software is released under the *MIT License*. See the file
[LICENSE.md](./LICENSE.md) for more information.


[futhark]: https://github.com/PMunch/futhark
[symbol renaming rules]: https://github.com/PMunch/futhark#hard-names-and-overrides
[miniaudio]: https://miniaud.io/
[Nim]: https://nim-lang.org/
