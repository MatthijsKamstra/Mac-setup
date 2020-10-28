#!/usr/bin/env bash

echo "Setup web ..."

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
# brew cask install virtualhostx
brew cask install sourcetree
brew cask install github-desktop
brew cask install sqlitebrowser

# Web-editors
# brew cask install atom
# brew cask install brackets
brew cask install sublime-text
brew cask install visual-studio-code

# Development tool casks
# brew cask install virtualbox
brew cask install mucommander

# Misc casks
brew cask install firefox
# brew cask install charles
# brew cask install gitx
brew cask install google-chrome
brew cask install google-drive
brew cask install imageoptim
# brew cask install name-mangler
# brew cask install dash
brew cask install the-unarchiver
brew cask install macdown
# brew cask install paw
# brew cask install postman
# brew cask install charles
brew cask install diffmerge
brew cask install filezilla
brew cask install mamp

# Core casks
brew cask install iterm2
brew cask install sublime-text
brew cask install sourcetree
# brew cask install gitx

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar.
brew cleanup

npm install -g coffee-script
npm install -g gulp
npm install -g grunt-cli
npm install -g jshint
npm install -g less