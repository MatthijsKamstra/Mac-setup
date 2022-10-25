#!/usr/bin/env bash

echo "🦊 Setup Design - PhotoGimp..."

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "→ Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

echo "→ Installing GIMP via brew"
# design
brew install --cask gimp



echo "→ Make sure GIMP is closed"
killall gimp


echo "→ Downloading PhotoGimp via flatpak"
# Downloading PhotoGimp

curl -L https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -o ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip && unzip ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -d ~/Downloads && cp -R ~/Downloads/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak/.var/app/org.gimp.GIMP/config/GIMP/2.10/ ~/Library/Application\ Support/GIMP/2.10 && rm ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip

# curl -L https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -o ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip && unzip ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -d ~/Downloads

# url: https://github.com/Diolinux/PhotoGIMP
# curl -fsSL https://github.com/Diolinux/PhotoGIMP/archive/refs/heads/master.zip -o ~/Downloads/PhotoGIMP-download-master.zip

# # unzip
# unzip ~/Downloads/PhotoGIMP-download-master.zip -d ~/Downloads/


# cp -R ~/Downloads/PhotoGIMP-download-master/.var/app/org.gimp.GIMP/config/GIMP/2.10/ ~/Library/Application\ Support/GIMP/2.10


# rm ~~/Downloads/PhotoGIMP-download-master.zip


# console curl -L https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -o ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip && unzip ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -d ~/Downloads && cp -R ~/Downloads/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak/.var/app/org.gimp.GIMP/config/GIMP/2.10/ ~/Library/Application\ Support/GIMP/2.10 && rm ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip
# console curl -L https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -o ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip && unzip ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -d ~/Downloads && cp -R ~/Downloads/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak/.var/app/org.gimp.GIMP/config/GIMP/2.10/ ~/Library/Application\ Support/GIMP/2.10 && rm ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip



# create icons
# https://gist.github.com/jamieweavis/b4c394607641e1280d447deed5fc85fc
# https://www.codingforentrepreneurs.com/blog/create-icns-icons-for-macos-apps/

echo "→ Downloading PhotoGimp via zip master"
# url: https://github.com/Diolinux/PhotoGIMP
curl -fsSL https://github.com/Diolinux/PhotoGIMP/archive/refs/heads/master.zip -o ~/Downloads/PhotoGIMP-download-master.zip

# # unzip
unzip ~/Downloads/PhotoGIMP-download-master.zip -d ~/Downloads/


echo "→ Create a new icon for GIMP"
# create icons folder
mkdir ~/Downloads/icon.iconset

# collect icons
# https://gist.github.com/jamieweavis/b4c394607641e1280d447deed5fc85fc
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/16x16/apps/photogimp.png ~/Downloads/icon.iconset/icon_16x16.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/32x32/apps/photogimp.png ~/Downloads/icon.iconset/icon_16x16@2x.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/32x32/apps/photogimp.png ~/Downloads/icon.iconset/icon_32x32.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/64x64/apps/photogimp.png ~/Downloads/icon.iconset/icon_32x32@2x.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/128x128/apps/photogimp.png ~/Downloads/icon.iconset/icon_128x128.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/256x256/apps/photogimp.png ~/Downloads/icon.iconset/icon_128x128@2x.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/256x256/apps/photogimp.png ~/Downloads/icon.iconset/icon_256x256.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/512x512/apps/photogimp.png ~/Downloads/icon.iconset/icon_256x256@2x.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/512x512/apps/photogimp.png ~/Downloads/icon.iconset/icon_512x512.png
cp ~/Downloads/PhotoGIMP-master/.local/share/icons/hicolor/photogimp.png ~/Downloads/icon.iconset/icon_512x512@2x.png

# create icon set
cd ~/Downloads/
# create icon.icns
iconutil -c icns icon.iconset


# move icon
cp ~/Downloads/icon.icns /Applications/GIMP-2.10.app/Contents/Resources/gimp.icns

# open and close
open -a "GIMP-2.10.app"
# killall gimp
# open -a "GIMP-2.10.app"



# Remove outdated versions from the cellar.
brew cleanup
