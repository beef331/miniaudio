# Package

import std/os

version       = "0.1.2"
author        = "Jason Beetham, Christopher Arndt"
description   = "A Nim wrapper for miniaudio"
license       = "MIT"
srcDir        = "src"
binDir        = "bin"

let
  wrapperPath = srcDir / "miniaudio_gen.nim"
  modulePath = srcDir / "miniaudio.nim"
  testBinPath = binDir / "miniaudio_testwav"

skipFiles = @[testBinPath]

# Dependencies

requires "nim >= 2.2"

taskrequires "generate_wrapper", "futhark"

task generate_wrapper, "Generate wrapper module with futhark":
  if not fileExists("miniaudio/miniaudio.c"):
    if dirExists(".git") and fileExists(".gitmodules"):
      exec "git submodule update --init"
    else:
      quit "miniaudio source not found and build dir not a git checkout. Can't continue."

  rmFile(wrapperPath)
  selfExec("compile -d:release -d:miniAudioUseFuthark --maxLoopIterationsVM:100000000 -o:" & testBinPath & " " & modulePath)
