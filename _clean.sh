#!/usr/bin/env bash

echo "🍺 Setup with a clean install ..."

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
  # the next line should work... but not 100% sure it will
  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# update from brew
# ==> Next steps:
# - Run these three commands in your terminal to add Homebrew to your PATH:
#     echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/matthijskamstra/.zprofile
#     echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/matthijskamstra/.zprofile
#     eval "$(/opt/homebrew/bin/brew shellenv)"
# - Run brew help to get started
# - Further documentation:
#     https://docs.brew.sh



# Make sure we’re using the latest Homebrew.
brew update

# install git (sort of minimal)
brew install git

# Remove outdated versions from the cellar.
brew cleanup
