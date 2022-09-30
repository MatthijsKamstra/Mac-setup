#!/usr/bin/env bash

echo "Setup handy  ..."

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# copy manager
# don't use this enough
# brew install --cask copyclip
# brew install --cask jumpcut

# window manager
brew install --cask spectacle

# mini calender
brew install --cask itsycal

# measure it
brew install --cask free-ruler

# flux
# brew install --cask flux

# not sleeping
# brew install --cask caffeine

# something something
# brew install --cask macs-fan-control
# brew install --cask intel-power-gadget

# cleaners
# brew install --cask ccleaner
# brew install --cask appcleaner

# unzipping
# brew install --cask betterzip
# brew install --cask the-unarchiver # need to figure out which one I want to use
#
# screengrabbing
# brew install --cask kap
# brew install --cask licecap

# finder plus
# brew install --cask commander-one
brew install --cask mucommander


# Remove outdated versions from the cellar.
brew cleanup