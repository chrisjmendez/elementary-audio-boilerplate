#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -E copy /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_VST3/PkgInfo /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Debug/VST3/FXP.vst3/Contents
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Debug/VST3/FXP.vst3 -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Debug/VST3/FXP.vst3 -Ddest=/Users/wolfram/Library/Audio/Plug-Ins/VST3 -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -E copy /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_VST3/PkgInfo /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Release/VST3/FXP.vst3/Contents
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Release/VST3/FXP.vst3 -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Release/VST3/FXP.vst3 -Ddest=/Users/wolfram/Library/Audio/Plug-Ins/VST3 -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -E copy /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_VST3/PkgInfo /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/MinSizeRel/VST3/FXP.vst3/Contents
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/MinSizeRel/VST3/FXP.vst3 -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/MinSizeRel/VST3/FXP.vst3 -Ddest=/Users/wolfram/Library/Audio/Plug-Ins/VST3 -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -E copy /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_VST3/PkgInfo /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/RelWithDebInfo/VST3/FXP.vst3/Contents
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/RelWithDebInfo/VST3/FXP.vst3 -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/RelWithDebInfo/VST3/FXP.vst3 -Ddest=/Users/wolfram/Library/Audio/Plug-Ins/VST3 -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake
fi

