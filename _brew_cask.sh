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
brew install --cask adobe-creative-cloud
brew install --cask ampps
brew install --cask appcleaner
brew install --cask betterzip
brew install --cask blender
brew install --cask ccleaner
brew install --cask copyclip
brew install --cask db-browser-for-sqlite
brew install --cask diffmerge
brew install --cask discord
brew install --cask disk-inventory-x
brew install --cask dropbox
brew install --cask firefox
brew install --cask flux
brew install --cask font-inconsolata
brew install --cask font-jetbrains-mono
brew install --cask franz
brew install --cask free-ruler
brew install --cask freeplane
brew install --cask fritzing
brew install --cask gimp
brew install --cask google-chrome
brew install --cask imageoptim
brew install --cask inkscape
brew install --cask iterm2
brew install --cask itsycal
brew install --cask jumpcut
brew install --cask kap
brew install --cask keepassxc
brew install --cask libreoffice
brew install --cask licecap
brew install --cask lmms
brew install --cask macdown
brew install --cask microsoft-teams
brew install --cask mucommander
brew install --cask obs
brew install --cask processing
brew install --cask qlcolorcode
brew install --cask qlimagesize
brew install --cask qlmarkdown
brew install --cask qlprettypatch
brew install --cask qlstephen
brew install --cask qlvideo
brew install --cask quicklook-csv
brew install --cask quicklook-json
brew install --cask quicklookase
brew install --cask scribus-dev
brew install --cask seashore
brew install --cask sketch
brew install --cask sketchup
brew install --cask skype
brew install --cask slack
brew install --cask sourcetree
brew install --cask spectacle
brew install --cask spotifree
brew install --cask spotify
brew install --cask sublime-text
brew install --cask suspicious-package
brew install --cask synfigstudio
brew install --cask the-unarchiver
brew install --cask tiddly
brew install --cask transmission
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask webpquicklook
brew install --cask zoomus

# Remove outdated versions from the cellar.
brew cleanup
