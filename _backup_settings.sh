#!/usr/bin/env bash

echo "Backup settins from different programmes I use regular ..."

# Ask for the administrator password upfront.
# sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# create folder (if needed)
mkdir -p export_don_t_upload

# brew
echo '├── Brew'
brew list --cask > export_don_t_upload/brew_cask_list.txt
brew list --formula > export_don_t_upload/brew_formula_list.txt

# NPM
echo '├── NPM'
npm list -g --depth 0 > export_don_t_upload/npm_global_list.txt

# VSCode
echo '├── VSCode (extensions)'
code --list-extensions >> export_don_t_upload/vs_code_extensions_list.txt

# Applications folder
echo '├── Applications folder'
ls /Applications > export_don_t_upload/applications_list.txt
# possible to get all apps installed on computer
# sudo find / -iname *.app > export_don_t_upload/applications_all_list.txt

# Haxe
echo '├── Haxe'
haxelib list > export_don_t_upload/haxelib_list.txt

# Sourcetree
echo '├── Sourcetree'
# create folder for sourcetree settings file
mkdir -p export_don_t_upload/SourceTree
# open ~/Library/Application\ Support/SourceTree/
# copy content
cp -r ~/Library/Application\ Support/SourceTree/ export_don_t_upload/SourceTree
# create instructions
touch export_don_t_upload/SourceTree/__delete__this__file.txt
echo "~/Library/Application Support/SourceTree/" > export_don_t_upload/SourceTree/__delete__this__file.txt
# zip it because we can
zip -r export_don_t_upload/SourceTree.zip export_don_t_upload/SourceTree

# Adobe
echo '├── Adobe'
mkdir -p export_don_t_upload/adobe
# open ~/.adobe/
# copy content
cp -r ~/.adobe/ export_don_t_upload/adobe
# create instructions
touch export_don_t_upload/adobe/__delete__this__file.txt
echo "~/.adobe/" > export_don_t_upload/adobe/__delete__this__file.txt
# zip it because we can
zip -r export_don_t_upload/adobe.zip export_don_t_upload/adobe


# FileZilla
echo '├── FileZilla'
mkdir -p export_don_t_upload/filezilla
# open ~/.filezilla/
# copy content
cp -r ~/.config/filezilla/ export_don_t_upload/filezilla
# create instructions
touch export_don_t_upload/filezilla/__delete__this__file.txt
echo "~/.config/filezilla/" > export_don_t_upload/filezilla/__delete__this__file.txt
# zip it because we can
zip -r export_don_t_upload/filezilla.zip export_don_t_upload/filezilla



echo '└── done!'