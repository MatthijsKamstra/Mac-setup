#!/usr/bin/env bash

echo "🦊 Setup brew ..."

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

# Upgrade any already-installed formulae.
brew upgrade

# quick and dirty install casks

# older list

# brew install emscripten
# brew install ffmpeg
# brew install git
# brew install git-extras
# brew install git-flow
# brew install gitlab-runner
# brew install heroku
# brew install heroku-node
# brew install imagemagick
# brew install libsass
# brew install lua
# brew install luarocks
# brew install mariadb
# brew install mongodb-community
# brew install node
# brew install pandoc
# brew install python
# brew install python3
# brew install python@3.8
# brew install sqlite
# brew install youtube-dl


# same again, just a list
#

brew install aspell
# brew install composer
# brew install docbook
# brew install docbook-xsl
# brew install emscripten
brew install ffmpeg
# brew install gifsicle
brew install git
brew install git-extras
brew install git-flow
brew install git-lfs
brew install gitlab-runner
brew install glib
brew install imagemagick
# brew install lua
# brew install luarocks
# brew install mariadb
brew install node
brew install pandoc
# brew install python
# brew install sqlite
brew install tree
# brew install webp
brew install youtube-dl
# brew install yuicompressor
brew install zsh-syntax-highlighting



# Remove outdated versions from the cellar.
brew cleanup
