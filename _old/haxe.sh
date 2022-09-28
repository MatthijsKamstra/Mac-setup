#!/usr/bin/env bash

echo "Setup Haxe ..."

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

# Install Haxe
brew install haxe

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# fonts
brew tap caskroom/fonts                  # you only have to do this once!
brew install --cask font-inconsolata
# font is not necessary but I need it from my sublime setup

# possible Haxe editors (you probably want to choose one and stick with that)
# web-based-editors
brew install --cask atom
brew install --cask brackets
brew install --cask sublime-text
brew install --cask visual-studio-code
# IDE
brew install --cask intellij-idea-ce

# I primarily use Sublime-text for Haxe development, so check out https://github.com/MatthijsKamstra/Mac-setup#sublime-text-setup for more settings/plugins/etc
# Second favorite editor is Visual Studio Code, install https://marketplace.visualstudio.com/items?itemName=haxedevs.haxe

# Remove outdated versions from the cellar.
brew cleanup


# Set the haxelib path
haxelib setup /usr/local/lib/haxe/lib/

# Install lime / Install OpenFL
haxelib install lime
haxelib install openfl

# haxelib (s) I use
haxelib install actuate
haxelib install box2d
haxelib install csv
haxelib install electron
haxelib install express
haxelib install feffects
haxelib install format
haxelib install haxelow
haxelib install hxColorToolkit
haxelib install hxcpp
haxelib install hxjava
haxelib install hxnodejs
haxelib install hxssl
haxelib install jQueryExtern
haxelib git js-kit https://github.com/clemos/haxe-js-kit.git haxelib
haxelib install jsfps
haxelib install layout
haxelib install lime-samples
haxelib install lime
haxelib install markdown
haxelib install msignal
haxelib install npm
haxelib install openfl-samples
haxelib install openfl
haxelib install perf.js
haxelib install pixijs
haxelib install react
haxelib install refactor
haxelib install svg
# haxelib install svglib: [dev:/path/to/svg/src]
haxelib install swf
haxelib install systools
haxelib install tjson



