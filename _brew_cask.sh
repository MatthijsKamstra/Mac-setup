#!/usr/bin/env bash

echo "Setup brew cask ..."

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade


# install based upon my previous installation
# quick and dirty install casks
brew cask install adobe-creative-cloud
brew cask install ampps
brew cask install appcleaner
brew cask install betterzip
brew cask install blender
brew cask install ccleaner
brew cask install copyclip
brew cask install db-browser-for-sqlite
brew cask install diffmerge
brew cask install discord
brew cask install disk-inventory-x
brew cask install dropbox
brew cask install firefox
brew cask install flux
brew cask install font-inconsolata
brew cask install font-jetbrains-mono
brew cask install franz
brew cask install free-ruler
brew cask install freeplane
brew cask install fritzing
brew cask install gimp
brew cask install google-chrome
brew cask install imageoptim
brew cask install inkscape
brew cask install iterm2
brew cask install itsycal
brew cask install jumpcut
brew cask install kap
brew cask install keepassxc
brew cask install libreoffice
brew cask install licecap
brew cask install lmms
brew cask install macdown
brew cask install microsoft-teams
brew cask install mucommander
brew cask install obs
brew cask install processing
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install qlvideo
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install quicklookase
brew cask install scribus-dev
brew cask install seashore
brew cask install sketch
brew cask install sketchup
brew cask install skype
brew cask install slack
brew cask install sourcetree
brew cask install spectacle
brew cask install spotifree
brew cask install spotify
brew cask install sublime-text
brew cask install suspicious-package
brew cask install synfigstudio
brew cask install the-unarchiver
brew cask install tiddly
brew cask install transmission
brew cask install visual-studio-code
brew cask install vlc
brew cask install webpquicklook
brew cask install zoomus

# Remove outdated versions from the cellar.
brew cleanup
