#!/usr/bin/env bash
cd ./node_modules/prebid.js
npm install
# Check if prebid-modules.json files exist.
if [ -f "../../modules.json" ];
    then
    gulp build --modules=../../modules.json
    echo "modules.json file found.";
else
    gulp build
    echo "modules.json file does not exist. Create one to bundle certain modules only.";
fi
# Check if output directory exists.
if [ -d "../../dist" ];
    then
    echo "dist/ directory exists.";
else
    mkdir "../../dist";
    echo "Directory does not exist, creating destination directory.";
fi
# copy the build into the root directory
cp ./build/dist/prebid.js ../../dist/prebid.js
