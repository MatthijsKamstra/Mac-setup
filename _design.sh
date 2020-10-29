#!/usr/bin/env bash

echo "Setup Design ..."

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

# design
brew cask install adobe-creative-cloud
brew cask install gimp
brew cask install inkscape
brew cask install sketch
brew cask install sketchup
brew cask install seashore
brew cask install scribus
brew cask install scribus-dev
brew cask install synfigstudio
brew cask install blender
# brew cask install krita

# Remove outdated versions from the cellar.
brew cleanup

