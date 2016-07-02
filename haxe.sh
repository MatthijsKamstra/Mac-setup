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

# possible Haxe editors (you probably want to choose one and stick with that)
# web-based-editors
brew cask install atom
brew cask install brackets
brew cask install sublime-text
brew cask install visual-studio-code
# IDE
brew cask install intellij-idea-ce


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
# haxelib install HIDE
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
# haxelib install node-webkit
haxelib install npm
haxelib install openfl-samples
haxelib install openfl
haxelib install perf.js
haxelib install pixijs
haxelib install react
haxelib install refactor
haxelib install svg
# haxelib install svglib: [dev:/Users/matthijs/Documents/workingdir/haxe/svg/src]
haxelib install swf
haxelib install systools
haxelib install tjson



