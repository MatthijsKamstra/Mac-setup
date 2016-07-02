#!/usr/bin/env bash

echo "Setup Android ..."

# source:
# 	  https://gist.github.com/patrickhammond/4ddbe49a67e5eb1b9c03
#     https://github.com/donnemartin/dev-setup/blob/master/android.sh

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

# Use Homebrew to install Android dev tools:
brew install ant
brew install maven
brew install gradle
brew install android-sdk
brew install android-ndk
brew install genymotion

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install java
brew cask install intellij-idea-ce
brew cask install android-studio
# Install HAXM for blazing fast emulators.
brew cask install intel-haxm

# Remove outdated versions from the cellar.
brew cleanup

# Install all of the Android SDK components (you will be prompted to agree to license info and then this will take a while to run):
android update sdk --no-ui