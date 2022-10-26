#!/usr/bin/env bash

echo "🦊 Installing PhotoGimp..."

#
# installing photogimp_osx
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/MatthijsKamstra/Mac-setup/master/install/photogimp_osx.sh)"
#

echo "→ Make sure GIMP is closed"
killall gimp

echo "→ Downloading PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip"
# Downloading PhotoGimp

curl -L https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -o ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip && unzip ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -d ~/Downloads && cp -R ~/Downloads/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak/.var/app/org.gimp.GIMP/config/GIMP/2.10/ ~/Library/Application\ Support/GIMP/2.10

# create icons
# https://gist.github.com/jamieweavis/b4c394607641e1280d447deed5fc85fc
# https://www.codingforentrepreneurs.com/blog/create-icns-icons-for-macos-apps/

echo "→ Create new icon for GIMP"

# original icon file
input=~/Downloads/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak/.icons/photogimp.png
# icon name
output="gimp.iconset"
# create icons folder
cd ~/Downloads
mkdir $output

# convert images to create the different sizes for the icon
sips -z 16 16     $input --out "${output}/icon_16x16.png"
sips -z 32 32     $input --out "${output}/icon_16x16@2x.png"
sips -z 32 32     $input --out "${output}/icon_32x32.png"
sips -z 64 64     $input --out "${output}/icon_32x32@2x.png"
sips -z 128 128   $input --out "${output}/icon_128x128.png"
sips -z 256 256   $input --out "${output}/icon_128x128@2x.png"
sips -z 256 256   $input --out "${output}/icon_256x256.png"
sips -z 512 512   $input --out "${output}/icon_256x256@2x.png"
sips -z 512 512   $input --out "${output}/icon_512x512.png"
sips -z 1024 1024   $input --out "${output}/icon_512x512@2x.png"

# create icon.icns
iconutil -c icns $output_iconset_name

# move icon to the correct folder
cp ~/Downloads/gimp.icns /Applications/GIMP-2.10.app/Contents/Resources/gimp.icns

# delete the folder with generate images
# rm -R ~/Downloads/$output_iconset_name


# open GIMP
open -a "GIMP-2.10.app"


# remove zip
# rm ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip

