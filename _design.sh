#!/usr/bin/env bash

echo "🍺 Setup Design ..."

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

# design
# brew install --cask adobe-creative-cloud
brew install --cask gimp
brew install --cask inkscape
# brew install --cask sketch
# brew install --cask sketchup
# brew install --cask seashore
brew install --cask scribus
# brew install --cask scribus-dev
# brew install --cask synfigstudio
brew install --cask blender
# brew install --cask krita
# brew install --cask canva

# Remove outdated versions from the cellar.
brew cleanup

