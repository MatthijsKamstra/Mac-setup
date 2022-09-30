#!/usr/bin/env bash

echo "🍺 Setup brew ..."

# not sure this is very helpfull anymore
# maybe the split is better
# see:
# - _brew_cask.sh
# - _brew_list.sh


# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install other useful binaries.
brew install git
brew install git-extras
brew install git-flow
brew install git-lfs
brew install imagemagick --with-webp
brew install youtube-dl
brew install ffmpeg
brew install node
# brew install haxe # doesn't work very well in my outdated opinion


# develop
# brew install --cask virtualhostx
brew install --cask sourcetree
# brew install --cask github-desktop
# brew install --cask sqlitebrowser

# Android
# brew install ant
# brew install maven
# brew install gradle
# brew install android-sdk
# brew install --cask android-studio
# brew install --cask genymotion
# brew install --cask java

# Code-editors
# brew install --cask atom
# brew install --cask brackets
brew install --cask sublime-text
brew install --cask visual-studio-code

# Core casks
# brew install --cask xquartz

# Development tool casks
brew install --cask iterm2
# brew install --cask sublime-text
# brew install --cask atom
# brew install --cask virtualbox
brew install --cask macdown

# webdevelop
brew install --cask google-chrome
brew install --cask firefox
brew install --cask imageoptim
# brew install --cask ampps # find a better solution
# brew install --cask mamp
# brew install --cask filezilla

# same but how to describe this
# brew install --cask paw
# brew install --cask postman
# brew install --cask charles

# brew install --cask dash

# communication
# brew install --cask skype # microsoft
# brew install --cask slack # microsoft
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
# brew install --cask ccleaner # horror program
brew install --cask flux
# brew install --cask name-mangler
# brew install --cask the-unarchiver
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
