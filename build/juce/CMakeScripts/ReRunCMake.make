# Generated by CMake, DO NOT EDIT

TARGETS:= 
empty:= 
space:= $(empty) $(empty)
spaceplus:= $(empty)\ $(empty)

TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/build/juce/tools/JUCEToolsExport.cmake))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/CMakeLists.txt))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCECheckAtomic.cmake))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCEConfig.cmake.in))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCEHelperTargets.cmake))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCEModuleSupport.cmake))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMake/JUCEUtils.cmake))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/CMakeLists.txt))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/extras/Build/juceaide/CMakeLists.txt))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/juce/modules/CMakeLists.txt))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /opt/homebrew/Cellar/cmake/3.26.1/share/cmake/Modules/BasicConfigVersion-ExactVersion.cmake.in))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /opt/homebrew/Cellar/cmake/3.26.1/share/cmake/Modules/CMakeDependentOption.cmake))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /opt/homebrew/Cellar/cmake/3.26.1/share/cmake/Modules/CMakePackageConfigHelpers.cmake))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /opt/homebrew/Cellar/cmake/3.26.1/share/cmake/Modules/WriteBasicConfigVersionFile.cmake))
TARGETS += $(subst $(space),$(spaceplus),$(wildcard /Users/wolfram/Desktop/my_first_audio_plugin/build/CMakeFiles/cmake.verify_globs))

.NOTPARALLEL:

.PHONY: all VERIFY_GLOBS

all: VERIFY_GLOBS /Users/wolfram/Desktop/my_first_audio_plugin/build/CMakeFiles/cmake.check_cache

VERIFY_GLOBS:
	/opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -P /Users/wolfram/Desktop/my_first_audio_plugin/build/CMakeFiles/VerifyGlobs.cmake

/Users/wolfram/Desktop/my_first_audio_plugin/build/CMakeFiles/cmake.check_cache: $(TARGETS)
	/opt/homebrew/Cellar/cmake/3.26.1/bin/cmake -H/Users/wolfram/Desktop/my_first_audio_plugin -B/Users/wolfram/Desktop/my_first_audio_plugin/build