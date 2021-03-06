#!/usr/bin/env bash

echo "Setup with a clean install ..."

# Your mac is sooo fresh and so clean

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Download and install Command Line Tools
if [[ ! -x /usr/bin/gcc ]]; then
  echo "Install xcode"
  xcode-select --install
fi

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# install git (sort of minimal)
brew install git

# Remove outdated versions from the cellar.
brew cleanup