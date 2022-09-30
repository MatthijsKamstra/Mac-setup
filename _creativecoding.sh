#!/usr/bin/env bash

echo "Setup creative coding ..."

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

# Install useful binaries.
brew install git
brew install git-flow
brew install git-extras
# brew install imagemagick
brew install imagemagick --with-webp
brew install youtube-dl
brew install ffmpeg
brew install node
# brew install haxe

# develop git related
brew install --cask sourcetree

# editors
brew install --cask sublime-text
brew install --cask visual-studio-code

# Development tool casks
brew install --cask iterm2

# browser
brew install --cask google-chrome
brew install --cask firefox

# storage
brew install --cask dropbox
brew install --cask google-drive

# record
brew install --cask licecap
brew install gifsicle
brew install --cask kap

# optimalisation
brew install --cask imageoptim

# map ideas
brew install --cask freeplane

# design tools
# brew install --cask adobe-creative-cloud
brew install --cask gimp
brew install --cask inkscape
# brew install --cask sketch
# brew install --cask sketchup
# brew install --cask seashore
brew install --cask scribus
# brew install --cask synfigstudio
# brew install --cask blender

# finder +
brew install --cask muCommander

# text-editors
brew install --cask macdown
# brew install --cask libreoffice

# sound // video
brew install --cask vlc
brew install --cask spotify
# brew install --cask spotifree

# Remove outdated versions from the cellar.
brew cleanup
