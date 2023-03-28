#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /Users/wolfram/Desktop/my_first_audio_plugin/build/juce/tools/extras/Build/juceaide/juceaide_artefacts/Debug/juceaide pkginfo AU /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_AU/PkgInfo
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /Users/wolfram/Desktop/my_first_audio_plugin/build/juce/tools/extras/Build/juceaide/juceaide_artefacts/Debug/juceaide pkginfo AU /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_AU/PkgInfo
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /Users/wolfram/Desktop/my_first_audio_plugin/build/juce/tools/extras/Build/juceaide/juceaide_artefacts/Debug/juceaide pkginfo AU /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_AU/PkgInfo
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /Users/wolfram/Desktop/my_first_audio_plugin/build/juce/tools/extras/Build/juceaide/juceaide_artefacts/Debug/juceaide pkginfo AU /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_AU/PkgInfo
fi

