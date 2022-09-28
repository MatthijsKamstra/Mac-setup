#!/usr/bin/env bash

echo "Setup Haxe ..."

# ugh, not really usefull at this moment.
# I rather install Haxe via the installer
# and visueal studio and sublime are probably installed via other script

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
# sudo -v

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
brew upgrade

# Install Haxe
# brew install haxe # not sure I want to do this

# Haxe editors (you probably want to choose one and stick with that)
brew install --cask visual-studio-code
brew install --cask sublime-text
# brew install --cask atom
# brew install --cask brackets

# IDE
# brew install --cask intellij-idea-ce

# Favorite editor is Visual Studio Code, install https://marketplace.visualstudio.com/items?itemName=haxedevs.haxe
# I primarily use Sublime-text for Haxe development, so check out https://github.com/MatthijsKamstra/Mac-setup#sublime-text-setup for more settings/plugins/etc

# Remove outdated versions from the cellar.
brew cleanup


# # Set the haxelib path
# haxelib setup /usr/local/lib/haxe/lib/


# # haxelib (s) I use
# haxelib install csv
# haxelib install electron
# haxelib install express
# haxelib install format
# haxelib install haxelow
# haxelib install hxColorToolkit
# haxelib install hxcpp
# haxelib install hxjava
# haxelib install hxnodejs
# haxelib install hxssl
# haxelib install jQueryExtern
# haxelib git js-kit https://github.com/clemos/haxe-js-kit.git haxelib
# haxelib install markdown
# haxelib install msignal
# haxelib install npm
# haxelib install refactor
# # haxelib install svglib: [dev:/path/to/svg/src]
# haxelib install tjson




