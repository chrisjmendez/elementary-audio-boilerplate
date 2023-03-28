#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -E copy /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_AU/PkgInfo /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Debug/AU/FXP.component/Contents
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Debug/AU/FXP.component -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Debug/AU/FXP.component -Ddest=/Users/wolfram/Library/Audio/Plug-Ins/Components -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -E copy /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_AU/PkgInfo /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Release/AU/FXP.component/Contents
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Release/AU/FXP.component -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/Release/AU/FXP.component -Ddest=/Users/wolfram/Library/Audio/Plug-Ins/Components -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -E copy /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_AU/PkgInfo /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/MinSizeRel/AU/FXP.component/Contents
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/MinSizeRel/AU/FXP.component -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/MinSizeRel/AU/FXP.component -Ddest=/Users/wolfram/Library/Audio/Plug-Ins/Components -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -E copy /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/JuceLibraryCode/FXP_AU/PkgInfo /Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/RelWithDebInfo/AU/FXP.component/Contents
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/RelWithDebInfo/AU/FXP.component -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake
  cd /Users/wolfram/Desktop/my_first_audio_plugin/build
  /opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -Dsrc=/Users/wolfram/Desktop/my_first_audio_plugin/build/FXP_artefacts/RelWithDebInfo/AU/FXP.component -Ddest=/Users/wolfram/Library/Audio/Plug-Ins/Components -P /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake
fi

