#!/usr/bin/env bash

echo "Install fonts via brew"

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
# sudo -v

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

# Cask
brew tap homebrew/cask

# fonts
brew tap homebrew/cask-fonts         # You only need to do this once!
#  install fonts
brew install --cask font-inconsolata
brew install --cask font-jetbrains-mono
# brew install --cask font-jetbrains-mono-nerd-font

# all fonts installable via brew
# brew search "/font-/"
# brew search "/font-/" > brew_fonts_install.txt

# Remove outdated versions from the cellar.
brew cleanup
