#!/usr/bin/env bash

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
brew install emscripten
brew install ffmpeg
brew install git
brew install git-extras
brew install git-flow
brew install gitlab-runner
brew install heroku
brew install heroku-node
brew install imagemagick
brew install libsass
brew install lua
brew install luarocks
brew install mariadb
brew install mongodb-community
brew install node
brew install pandoc
brew install python
brew install python3
brew install python@3.8
brew install sqlite
brew install youtube-dl


# Remove outdated versions from the cellar.
brew cleanup
