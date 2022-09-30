#!/usr/bin/env bash

echo "🍺 Setup web ..."

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
brew upgrade --all

# Install other useful binaries.
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install node

# Install Cask
# brew install caskroom/cask/brew-cask
# brew tap caskroom/versions

# develop
# brew install --cask virtualhostx
brew install --cask sourcetree
brew install --cask github-desktop
brew install --cask sqlitebrowser

# Web-editors
# brew install --cask atom
# brew install --cask brackets
brew install --cask sublime-text
brew install --cask visual-studio-code

# Development tool casks
# brew install --cask virtualbox
brew install --cask mucommander

# Misc casks
brew install --cask firefox
# brew install --cask charles
# brew install --cask gitx
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask imageoptim
# brew install --cask name-mangler
# brew install --cask dash
brew install --cask the-unarchiver
brew install --cask macdown
# brew install --cask paw
# brew install --cask postman
# brew install --cask charles
brew install --cask diffmerge
brew install --cask filezilla
brew install --cask mamp

# Core casks
brew install --cask iterm2
brew install --cask sublime-text
brew install --cask sourcetree
# brew install --cask gitx

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar.
brew cleanup

npm install -g coffee-script
npm install -g gulp
npm install -g grunt-cli
npm install -g jshint
npm install -g less