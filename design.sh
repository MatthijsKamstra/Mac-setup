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
brew install sip

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew tap caskroom/fonts                  # you only have to do this once!
brew cask install font-inconsolata

# go!
brew cask install adobe-creative-cloud
brew cask install gimp
brew cask install inkscape
brew cask install licecap
brew cask install sketch

# Remove outdated versions from the cellar.
brew cleanup

# Install all of the Android SDK components (you will be prompted to agree to license info and then this will take a while to run):
android update sdk --no-ui