#! /bin/bash

curl -L "https://sb.portal.cambiumast.com/geturls?clientName=california&operatingSystem=macOS" --output "/tmp/CASecureBrowser.dmg"
mkdir -p /tmp/CASecureBrowser/
hdiutil attach /tmp/CASecureBrowser.dmg -nobrowse -noverify -mountpoint /tmp/CASecureBrowser/
rm -rf /Applications/CASecureBrowser.app
cp -rfp "/tmp/CASecureBrowser/CASecureBrowser.app" "/Applications/CASecureBrowser.app"
hdiutil detach /tmp/CASecureBrowser
