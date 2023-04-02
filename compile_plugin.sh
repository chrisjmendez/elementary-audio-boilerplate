#! /bin/sh

: '
Goal: Create a Reliable Bash Script that
      builds the code from these three domains:
      1. Node + NPM for Javascript
      2. JUCE for the C++-based Audio Plugin
      3. XCode for Audio Unit
'

# Common Working Directory
CWD=$(pwd);

# Final Plug In Directory
DIR_PLUGIN="$CWD/build/";

# JS directory
DIR_JS="$CWD/js/";

: 'Javascript –––––––––––––––––––––––––––––––––––––––––'

cd $DIR_JS;
# Install any JS dependencies using Node Package Manager
npm i;
# Build the main Javascript and store it in /js/build
npm run build;

: 'XCode -----–––––––––––––––––––––––––––––––––––––––––'
cd $DIR_PLUGIN;
# Build the main audio plugin and store it in /build/
cmake -G Xcode -DCMAKE_OSX_DEPLOYMENT_TARGET=10.15 -DCMAKE_OSX_ARCHITECTURES=arm64;x86_64 ../
cmake --build .


: 'Copy Files --–––––––––––––––––––––––––––––––––––––––––'
# Copy the Plugins to macOS plugin directory
cp ./build/FXP_artefacts/Debug/AU/FXP.component $HOME/Library/Audio/Plug-Ins/Components/
cp ./build/FXP_artefacts/Debug/VST3/FXP.vst3 $HOME/Library/Audio/Plug-Ins/VST3/

# Open the Folder where the plugins should be installed
open $HOME/Library/Audio/Plug-Ins/

