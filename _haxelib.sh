#!/usr/bin/env bash

echo "Setup Haxe ..."

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

# Remove outdated versions from the cellar.
brew cleanup


# Set the haxelib path
haxelib setup /usr/local/lib/haxe/lib/

# installed
haxelib install buddy
haxelib install csv
haxelib install dat.GUI
haxelib install dox
haxelib install electron
haxelib install embed-js
haxelib install express
haxelib install format
haxelib install haxelow
haxelib install hx3compat
haxelib install hxColorToolkit
haxelib install hxcpp
haxelib install hxquicksettings
haxelib install hxgenjs
haxelib install hxjava
haxelib install hxnodejs
haxelib install hxquicksettings
haxelib install js-kit
haxelib install markdown
haxelib install Minifier
haxelib install mloader
haxelib install msignal
haxelib install npm
haxelib install thx.color
haxelib install thx.core
haxelib install thx.csv
haxelib install thx.promise
haxelib install tink_await
haxelib install tink_core
haxelib install tink_macro
haxelib install tink_priority
haxelib install tink_stringly
haxelib install tink_syntaxhub
haxelib install tink_url
haxelib install tjson
haxelib install uglifyjs

