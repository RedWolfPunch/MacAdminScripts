#! /bin/bash

#I HAVE NOT TESTED THIS YET!!!
#The idea is to curl this script from recovery to automate a Big Sur reinstall

diskutil eraseDisk APFS "Macintosh HD" /dev/Disk0
cd "/Volumes/Macintosh\ HD"
mkdir -p private/tmp
cp -R "/Install macOS Big Sur.app" private/tmp
cd "private/tmp/Install macOS Big Sur.app"
mkdir Contents/SharedSupport
curl -L -o Contents/SharedSupport/SharedSupport.dmg https://swcdn.apple.com/content/downloads/57/38/071-97382-A_OEKYSXCO6D/97vrhncortwd3i38zfogcscagmpwksdzce/InstallAssistant.pkg
./Contents/MacOS/InstallAssistant_springboard
