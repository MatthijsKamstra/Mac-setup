#!/usr/bin/env bash

echo "Setup brew ..."


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
brew upgrade

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# fonts
# brew tap caskroom/fonts                  # you only have to do this once!
# brew install --cask font-inconsolata

# Install other useful binaries.
brew install git
# brew install git-lfs
brew install git-flow
brew install git-extras
brew install imagemagick --with-webp
brew install youtube-dl
brew install ffmpeg
brew install node
# brew install haxe
# brew install imagemagick
# brew install imagemagick --with-webp
# brew install transmission # don't want the cli

# # Install Cask
# brew install caskroom/cask/brew-cask
# brew tap caskroom/versions

# develop
# brew install --cask virtualhostx
brew install --cask sourcetree
brew install --cask github-desktop
brew install --cask sqlitebrowser

# Android
# brew install ant
# brew install maven
# brew install gradle
# brew install android-sdk
# brew install --cask android-studio
# brew install --cask genymotion
# brew install --cask java

# web-editors
# brew install --cask atom
# brew install --cask brackets
brew install --cask sublime-text
brew install --cask visual-studio-code

# Core casks
# brew install --cask xquartz

# Development tool casks
brew install --cask iterm2
brew install --cask sublime-text
# brew install --cask atom
# brew install --cask virtualbox
brew install --cask macdown

# webdevelop
brew install --cask google-chrome
brew install --cask firefox
brew install --cask imageoptim
brew install --cask ampps
# brew install --cask mamp
# brew install --cask gitx
# brew install --cask filezilla

# same but how to describe this
# brew install --cask paw
# brew install --cask postman
# brew install --cask charles

# brew install --cask dash

# communication
brew install --cask skype
brew install --cask slack
brew install --cask franz

# storage
brew install --cask dropbox
brew install --cask google-drive

# design
brew install --cask licecap
# brew install --cask adobe-creative-cloud # not needed for now
# brew install --cask freemind # use freeplane now
brew install --cask freeplane
brew install --cask gimp
brew install --cask inkscape

# compare files / folders /images
brew install --cask diffmerge
# brew install --cask dupeguru

# text-editors
brew install --cask macdown
brew install --cask libreoffice

# sound // video
# brew install --cask handbrake
brew install --cask vlc
# brew install --cask audacity ## doesn't exist anymore
brew install --cask spotify
# brew install --cask spotifree # cheap, bought a license
brew install --cask kap
brew install --cask licecap

# misc
brew install --cask spectacle
# brew install --cask antirsi
brew install --cask appcleaner
brew install --cask keepassxc
# brew install --cask caffeine
brew install --cask ccleaner
brew install --cask flux
# brew install --cask name-mangler
brew install --cask the-unarchiver
brew install --cask tiddlywiki
# brew install --cask intellij-idea-ce
# brew install --cask sdformatter
# brew install --cask transmission # might be frowned upon


# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
# brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo qlprettypatch quicklook-csv betterzipql

# might need to following commands
# xattr -r ~/Library/QuickLook
# xattr -d -r com.apple.quarantine ~/Library/QuickLook

# Remove outdated versions from the cellar.
brew cleanup
