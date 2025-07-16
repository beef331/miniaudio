# Package

import std/os

version       = "0.1.2"
author        = "Jason Beetham, Christopher Arndt"
description   = "A Nim wrapper for miniaudio"
license       = "MIT"
srcDir        = "src"
binDir        = "bin"


# Dependencies

requires "nim >= 2.2"

taskrequires "generate_wrapper", "futhark"


task generate_wrapper, "Generate wrapper module with futhark":
  if not fileExists("miniaudio/.git"):
    exec "git submodule update --init"

  let
    wrapperPath = srcDir / "miniaudio_gen.nim"
    modulePath = srcDir / "miniaudio.nim"

  rmFile(wrapperPath)
  selfExec("compile -d:release -d:miniAudioUseFuthark --maxLoopIterationsVM:100000000 " & modulePath)
