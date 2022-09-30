#!/usr/bin/env bash

echo "🍺 Setup screencap.."

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

# convert to different formats
# brew install imagemagick
brew install imagemagick --with-webp
brew install ffmpeg

# screen capture
brew install --cask kap
brew install --cask licecap
# brew install --cask obs

# convert screen captures to different movie/gif
brew install --cask imageoptim
# brew install gifsicle

# Remove outdated versions from the cellar.
brew cleanup
