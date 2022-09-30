#!/usr/bin/env bash

echo "🦊 Backup settings from different programs I use regular..."

# - dotfiles
# - ssh
# - vscode
# - sourcetree
# - filezilla
# - sublimetext
# - brew
# - brew cask
# - npm
# - application folder
# - Haxe
# - Adobe?
# - Fonts
# - Inkscape settings?
# - Gimp settings?
# - KeepassX? (or don't forget!)
# - iTerm2


# Ask for the administrator password upfront.

# sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

EXPORT_FOLDER=export_don_t_upload

# create folder (if needed)
# create a folder with the files in it, in the folder structure you run the script in
mkdir -p ${EXPORT_FOLDER}



############################################
# Dotfiles and dotfolders
############################################

# ssh
echo '├── ssh'
mkdir -p ${EXPORT_FOLDER}/ssh
# open ~/.ssh/
# copy content
cp -r ~/.ssh/ ${EXPORT_FOLDER}/ssh
# create instructions
touch ${EXPORT_FOLDER}/ssh/__delete__this__file.txt
echo "→ ~/.ssh/" > ${EXPORT_FOLDER}/ssh/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/_ssh.zip ${EXPORT_FOLDER}/ssh

# dotfile
echo '├── dotfile'
mkdir -p ${EXPORT_FOLDER}/dotfile
# copy content
cp -r ~/.bash_profile ${EXPORT_FOLDER}/dotfile/
cp -r ~/.config/git ${EXPORT_FOLDER}/dotfile/config/
cp -r ~/.config/filezilla ${EXPORT_FOLDER}/dotfile/config/
cp -r ~/.gitconfig ${EXPORT_FOLDER}/dotfile/
cp -r ~/.gitflow_export ${EXPORT_FOLDER}/dotfile/
cp -r ~/.gitignore_global ${EXPORT_FOLDER}/dotfile/
cp -r ~/.haxelib ${EXPORT_FOLDER}/dotfile/
cp -r ~/.profile ${EXPORT_FOLDER}/dotfile/
cp -r ~/.zshrc ${EXPORT_FOLDER}/dotfile/
cp -r ~/.ssh ${EXPORT_FOLDER}/dotfile/


# perhaps homebrew files
cp -r ~/.zprofile ${EXPORT_FOLDER}/dotfile/

# oh-my-zsh
# the installer will rename an existing .zshrc file to .zshrc.pre-oh-my-zsh.


# iTerm settings
# get the original iTerm
# mkdir -p ${EXPORT_FOLDER}/dotfile/iTerm/settings
# cp -r ~/Library/Preferences/com.googlecode.iterm2.plist ${EXPORT_FOLDER}/dotfile/iTerm/settings

# iTerm settings
# use the new generated file
mkdir -p ${EXPORT_FOLDER}/dotfile/iTerm/settings
cp -r ~/.dotfiles/iTerm/settings/com.googlecode.iterm2.plist ${EXPORT_FOLDER}/dotfile/iTerm/settings



# create instructions
touch ${EXPORT_FOLDER}/dotfile/__delete__this__file.txt
echo "→ ~/.bash_profile\n~/.config/git\n~/.config/filezilla\n~/.gitconfig\n~/.gitflow_export\n~/.gitignore_global\n~/.haxelib\n~/.profile\n~/.zshrc\n~/.ssh\n~/.zprofile\n~/Library/Preferences/com.googlecode.iterm2.plist" > ${EXPORT_FOLDER}/dotfile/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/_dotfile.zip ${EXPORT_FOLDER}/dotfile



############################################
# App Config Files
############################################

# VSCode
echo '├── VSCode (extensions)'
code --list-extensions >> ${EXPORT_FOLDER}/vs_code_extensions_list.txt
#
# create folder for vscode settings file
mkdir -p ${EXPORT_FOLDER}/vscode
# open ~/Library/Application\ Support/vscode/
# copy content
# cp -r ~/Library/Application\ Support/Code/User/ ${EXPORT_FOLDER}/vscode
cp -r ~/Library/Application\ Support/Code/User/settings.json ${EXPORT_FOLDER}/vscode/settings.json
cp -r ~/Library/Application\ Support/Code/User/keybindings.json ${EXPORT_FOLDER}/vscode/keybindings.json
cp -r ~/Library/Application\ Support/Code/User/snippets ${EXPORT_FOLDER}/vscode/
# create instructions
touch ${EXPORT_FOLDER}/vscode/__delete__this__file.txt
echo "→ ~/Library/Application Support/Code/User/" > ${EXPORT_FOLDER}/vscode/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/_vscode.zip ${EXPORT_FOLDER}/vscode

# Sourcetree
echo '├── Sourcetree'
# create folder for sourcetree settings file
mkdir -p ${EXPORT_FOLDER}/SourceTree
# open ~/Library/Application\ Support/SourceTree/
# copy content
cp -r ~/Library/Application\ Support/SourceTree/ ${EXPORT_FOLDER}/SourceTree
# create instructions
touch ${EXPORT_FOLDER}/SourceTree/__delete__this__file.txt
echo "→ ~/Library/Application Support/SourceTree/" > ${EXPORT_FOLDER}/SourceTree/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/_SourceTree.zip ${EXPORT_FOLDER}/SourceTree


# FileZilla
echo '├── FileZilla'
mkdir -p ${EXPORT_FOLDER}/filezilla
# open ~/.filezilla/
# copy content
cp -r ~/.config/filezilla/ ${EXPORT_FOLDER}/filezilla
# create instructions
touch ${EXPORT_FOLDER}/filezilla/__delete__this__file.txt
echo "→ ~/.config/filezilla/" > ${EXPORT_FOLDER}/filezilla/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/_filezilla.zip ${EXPORT_FOLDER}/filezilla

# sublimetext
echo '├── sublimetext'
# create folder for sublimetext settings file
mkdir -p ${EXPORT_FOLDER}/sublimetext
# open ~/Library/Application\ Support/Sublime\ Text\ 3/
# copy content
# cp -r ~/Library/Application\ Support/Sublime\ Text\ 3/ ${EXPORT_FOLDER}/sublimetext
# open ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
cp -r  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ${EXPORT_FOLDER}/sublimetext
# create instructions
touch ${EXPORT_FOLDER}/sublimetext/__delete__this__file.txt
echo "→ ~/Library/Application Support/Sublime Text 3/Packages/User" > ${EXPORT_FOLDER}/sublimetext/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/_sublimetext.zip ${EXPORT_FOLDER}/sublimetext


############################################
# Installed Packages
############################################

# brew
echo '├── Brew'
brew list --cask > ${EXPORT_FOLDER}/brew_cask_list.txt
brew list --formula > ${EXPORT_FOLDER}/brew_formula_list.txt

# NPM
echo '├── NPM'
npm list -g --depth 0 > ${EXPORT_FOLDER}/npm_global_list.txt

# Applications folder
echo '├── Applications folder'
ls /Applications > ${EXPORT_FOLDER}/applications_list.txt
# possible to get all apps installed on computer
# sudo find / -iname *.app > ${EXPORT_FOLDER}/applications_all_list.txt

# Haxe
echo '├── Haxe'
haxelib list > ${EXPORT_FOLDER}/haxelib_list.txt

# Adobe
# the next phase of my career will probably be without Adobe
echo '├── Adobe'
mkdir -p ${EXPORT_FOLDER}/adobe
# open ~/.adobe/
# copy content
cp -r ~/.adobe/ ${EXPORT_FOLDER}/adobe
# create instructions
touch ${EXPORT_FOLDER}/adobe/__delete__this__file.txt
echo "→ ~/.adobe/" > ${EXPORT_FOLDER}/adobe/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/_adobe.zip ${EXPORT_FOLDER}/adobe



############################################
# Fonts
############################################

# fonts
echo '├── Fonts'
mkdir -p ${EXPORT_FOLDER}/fonts
# open ~/Library/Fonts
# copy content
cp -r ~/Library/Fonts/ ${EXPORT_FOLDER}/fonts
# create instructions
touch ${EXPORT_FOLDER}/fonts/__delete__this__file.txt
echo "→ ~/Library/Fonts" > ${EXPORT_FOLDER}/fonts/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/_fonts.zip ${EXPORT_FOLDER}/fonts



echo '└── done!'