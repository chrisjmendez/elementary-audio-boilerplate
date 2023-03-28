# Install script for directory: /Users/wolfram/Desktop/my_first_audio_plugin/juce

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/wolfram/Desktop/my_first_audio_plugin/build")

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/wolfram/Desktop/my_first_audio_plugin/build/juce/modules/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/wolfram/Desktop/my_first_audio_plugin/build/juce/extras/Build/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-7.0.5" TYPE FILE FILES
    "/Users/wolfram/Desktop/my_first_audio_plugin/build/juce/JUCEConfigVersion.cmake"
    "/Users/wolfram/Desktop/my_first_audio_plugin/build/juce/JUCEConfig.cmake"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCECheckAtomic.cmake"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCEHelperTargets.cmake"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCEModuleSupport.cmake"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCEUtils.cmake"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JuceLV2Defines.h.in"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/LaunchScreen.storyboard"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/PIPAudioProcessor.cpp.in"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/PIPAudioProcessorWithARA.cpp.in"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/PIPComponent.cpp.in"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/PIPConsole.cpp.in"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/RecentFilesMenuTemplate.nib"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/UnityPluginGUIScript.cs.in"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/checkBundleSigning.cmake"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/copyDir.cmake"
    "/Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/juce_runtime_arch_detection.cpp"
    )
endif()

