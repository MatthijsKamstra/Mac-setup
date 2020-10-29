#!/usr/bin/env bash

echo "Setup creative coding ..."

# Install command-line tools using Homebrew.

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

# Install useful binaries.
brew install git
brew install git-flow
brew install git-extras
brew install imagemagick
brew install imagemagick --with-webp
brew install youtube-dl
brew install ffmpeg
brew install node
# brew install haxe

# develop git related
brew cask install sourcetree

# editors
brew cask install sublime-text
brew cask install visual-studio-code

# Development tool casks
brew cask install iterm2

# browser
brew cask install google-chrome
brew cask install firefox

# storage
brew cask install dropbox
brew cask install google-drive

# record
brew cask install licecap
brew cask install gifsicle
brew cask install kap

# optimalisation
brew cask install imageoptim

# map ideas
brew cask install freeplane

# design tools
brew cask install adobe-creative-cloud
brew cask install gimp
brew cask install inkscape
brew cask install sketch
brew cask install sketchup
brew cask install seashore
brew cask install scribus
brew cask install synfigstudio
brew cask install blender

# finder +
brew cask install muCommander

# text-editors
brew cask install macdown
# brew cask install libreoffice

# sound // video
brew cask install vlc
brew cask install spotify
brew cask install spotifree

# Remove outdated versions from the cellar.
brew cleanup
