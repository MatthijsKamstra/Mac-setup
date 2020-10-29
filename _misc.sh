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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# copy manager
brew cask install copyclip
brew cask install jumpcut

# window manager
brew cask install spectacle

# mini calender
brew cask install itsycal

# measure it
brew cask install free-ruler

# flux
brew cask install flux

# not sleeping
# brew cask install caffeine

# something something
# brew cask install macs-fan-control
# brew cask install intel-power-gadget

# cleaners
# brew cask install ccleaner
# brew cask install appcleaner

# unzipping
# brew cask install betterzip

# screengrabbing
# brew cask install kap
# brew cask install licecap

# finder plus
# brew cask install commander-one
brew cask install mucommander


# Remove outdated versions from the cellar.
brew cleanup