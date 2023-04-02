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
# Build the main Javascript
npm run build;

: 'XCode -----–––––––––––––––––––––––––––––––––––––––––'
cd $DIR_PLUGIN;
# Build
cmake -G Xcode -DCMAKE_OSX_DEPLOYMENT_TARGET=10.15 ../
cmake --build .