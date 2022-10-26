#!/usr/bin/env bash

echo "🦊 Installing PhotoGimp..."

#
# installing photogimp_osx
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/MatthijsKamstra/Mac-setup/master/install/photogimp_osx.sh)"
#

echo "→ Closing GIMP if it is open"
killall gimp

echo "→ Downloading PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip"
# Downloading PhotoGimp
# original install
# curl -L https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -o ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip && unzip -q ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -d ~/Downloads && cp -R ~/Downloads/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak/.var/app/org.gimp.GIMP/config/GIMP/2.10/ ~/Library/Application\ Support/GIMP/2.10
# adjusted install (foldername is changed, removing the zip is at the bottom of this file)
curl -L --progress-bar https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -o ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip && unzip -q ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip -d ~/Downloads && mv ~/Downloads/PhotoGIMP\ by\ Diolinux\ v2020\ for\ Flatpak ~/Downloads/PhotoGIMP_by_Diolinux_v2020_for_Flatpak && cp -R ~/Downloads/PhotoGIMP_by_Diolinux_v2020_for_Flatpak/.var/app/org.gimp.GIMP/config/GIMP/2.10/ ~/Library/Application\ Support/GIMP/2.10


echo "→ Create new icon for GIMP"
# create icons
# https://gist.github.com/jamieweavis/b4c394607641e1280d447deed5fc85fc
# https://www.codingforentrepreneurs.com/blog/create-icns-icons-for-macos-apps/
# visit download foler
cd ~/Downloads

# original icon file
INPUT=~/Downloads/PhotoGIMP_by_Diolinux_v2020_for_Flatpak/.icons/photogimp.png
# icon name
OUTPUT=gimp.iconset
# create icons folder
mkdir $OUTPUT


echo "→ Generate all icons with sips"
# convert images to create the different sizes for the icon
sips -z 16 16     	$INPUT --out ${OUTPUT}/icon_16x16.png
sips -z 32 32     	$INPUT --out ${OUTPUT}/icon_16x16@2x.png
sips -z 32 32     	$INPUT --out ${OUTPUT}/icon_32x32.png
sips -z 64 64     	$INPUT --out ${OUTPUT}/icon_32x32@2x.png
sips -z 128 128   	$INPUT --out ${OUTPUT}/icon_128x128.png
sips -z 256 256   	$INPUT --out ${OUTPUT}/icon_128x128@2x.png
sips -z 256 256  	$INPUT --out ${OUTPUT}/icon_256x256.png
sips -z 512 512   	$INPUT --out ${OUTPUT}/icon_256x256@2x.png
sips -z 512 512  	$INPUT --out ${OUTPUT}/icon_512x512.png
sips -z 1024 1024   $INPUT --out ${OUTPUT}/icon_512x512@2x.png


echo "→ Create new (photo)GIMP icon"
# create icon.icns
iconutil -c icns $OUTPUT


echo "→ Move new (photo)GIMP icon to the GIMP application"
# move icon to the correct folder
cp ~/Downloads/gimp.icns /Applications/GIMP-2.10.app/Contents/Resources/gimp.icns


echo "→ Open GIMP"
# open GIMP
open -a "GIMP-2.10.app"


echo "→ Delete all files downloaded/generated"
# delete the folder with generate images
rm -rf ~/Downloads/$OUTPUT
rm ~/Downloads/gimp.icns
# delete zip and unziped folder
rm ~/Downloads/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip
rm -rf ~/Downloads/PhotoGIMP_by_Diolinux_v2020_for_Flatpakopen


echo "→ You are now the owner of photoGIMP"
