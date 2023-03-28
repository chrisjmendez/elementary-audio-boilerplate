#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  make -f /Users/wolfram/Desktop/my_first_audio_plugin/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  make -f /Users/wolfram/Desktop/my_first_audio_plugin/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  make -f /Users/wolfram/Desktop/my_first_audio_plugin/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  make -f /Users/wolfram/Desktop/my_first_audio_plugin/build/CMakeScripts/ReRunCMake.make
fi

