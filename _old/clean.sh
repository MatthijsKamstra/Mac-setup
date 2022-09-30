#!/usr/bin/env bash

echo "🍺 Setup clean install ..."

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
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

brew install git

# Remove outdated versions from the cellar.
brew cleanup