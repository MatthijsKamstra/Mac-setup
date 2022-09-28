#!/usr/bin/env bash

echo "Setup socials (skype, discord, slack...)"

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
brew upgrade --all

# quick and dirty install casks
brew install --cask franz
# brew install --cask skype
# brew install --cask slack
# brew install --cask discord
# brew install --cask zoomus
# brew install --cask microsoft-teams

# Remove outdated versions from the cellar.
brew cleanup
