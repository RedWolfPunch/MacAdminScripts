#! /bin/bash

curl "https://download.blender.org/release/Blender3.5/blender-3.5.1-macos-x64.dmg" --output "/tmp/Blender.dmg"
mkdir -p /tmp/Blender/
hdiutil attach /tmp/Blender.dmg -nobrowse -noverify -mountpoint /tmp/Blender/
rm -rf "/Applications/Blender.app"
cp -R "/tmp/Blender/Blender.app" "/Applications/Blender.app"
chmod -R 755 "/Applications/Blender.app"
hdiutil detach /tmp/Blender
