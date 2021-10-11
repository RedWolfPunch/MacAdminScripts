#! /bin/bash

curl "https://download.blender.org/release/Blender2.93/blender-2.93.5-macos-x64.dmg" --output "/tmp/Blender.dmg"
mkdir -p /tmp/Blender/
hdiutil attach /tmp/Blender.dmg -nobrowse -noverify -mountpoint /tmp/Blender/
cp -R "/tmp/Blender/Blender.app" "/Applications/Blender.app"
chmod -R 755 "/Applications/Blender.app"
hdiutil detach /tmp/Blender
