#!/usr/bin/env bash

echo "🦊 Setup Android ..."

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
  echo "→ Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew install --cask java
brew install --cask intellij-idea-ce
brew install --cask android-studio
# Install HAXM for blazing fast emulators.
brew install --cask intel-haxm
brew install --cask genymotion

# make sure java is installed

# Use Homebrew to install Android dev tools:
brew install ant
brew install maven
brew install gradle
brew install android-sdk
brew install android-ndk

# Remove outdated versions from the cellar.
brew cleanup

# Install all of the Android SDK components (you will be prompted to agree to license info and then this will take a while to run):
android update sdk --no-ui



# https://gist.github.com/patrickhammond/4ddbe49a67e5eb1b9c03

echo "→
Update your environment variables:

export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk

"

echo "→
Update your paths (bonus points to a better solution to the hardcoded build tools version):

export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/19.1.0:$PATH

"

echo "→

Periodically run these commands again to ensure you're staying up to date:

brew update
android update sdk --no-ui

"

