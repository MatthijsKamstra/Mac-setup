#!/usr/bin/env bash

echo "Setup brew cask ..."

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


# install based upon my previous installation
# quick and dirty install casks

# previous install list, going to clean this a bit

# brew install --cask adobe-creative-cloud
# brew install --cask ampps
# brew install --cask appcleaner
# brew install --cask betterzip
# brew install --cask blender
# brew install --cask ccleaner
# brew install --cask copyclip
# brew install --cask db-browser-for-sqlite
# brew install --cask diffmerge
# brew install --cask discord
# brew install --cask disk-inventory-x
# brew install --cask dropbox
# brew install --cask firefox
# brew install --cask flux
# brew install --cask font-inconsolata
# brew install --cask font-jetbrains-mono
# brew install --cask franz
# brew install --cask free-ruler
# brew install --cask freeplane
# brew install --cask fritzing
# brew install --cask gimp
# brew install --cask google-chrome
# brew install --cask imageoptim
# brew install --cask inkscape
# brew install --cask iterm2
# brew install --cask itsycal
# brew install --cask jumpcut
# brew install --cask kap
# brew install --cask keepassxc
# brew install --cask libreoffice
# brew install --cask licecap
# brew install --cask lmms
# brew install --cask macdown
# brew install --cask microsoft-teams
# brew install --cask mucommander
# brew install --cask obs
# brew install --cask processing
# brew install --cask qlcolorcode
# brew install --cask qlimagesize
# brew install --cask qlmarkdown
# brew install --cask qlprettypatch
# brew install --cask qlstephen
# brew install --cask qlvideo
# brew install --cask quicklook-csv
# brew install --cask quicklook-json
# brew install --cask quicklookase
# brew install --cask scribus-dev
# brew install --cask seashore
# brew install --cask sketch
# brew install --cask sketchup
# brew install --cask skype
# brew install --cask slack
# brew install --cask sourcetree
# brew install --cask spectacle
# brew install --cask spotifree
# brew install --cask spotify
# brew install --cask sublime-text
# brew install --cask suspicious-package
# brew install --cask synfigstudio
# brew install --cask the-unarchiver
# brew install --cask tiddly
# brew install --cask transmission
# brew install --cask visual-studio-code
# brew install --cask vlc
# brew install --cask webpquicklook
# brew install --cask zoomus





# currated list?

# brew install --cask adobe-creative-cloud # end of an era
# brew install --cask ampps # there is probably a better solution
brew install --cask appcleaner
# brew install --cask betterzip # what is the best zipper?
# brew install --cask blender
# brew install --cask copyclip # copy tools, don't seem to be using it a lot
# brew install --cask db-browser-for-sqlite
brew install --cask diffmerge
# brew install --cask discord
brew install --cask disk-inventory-x
brew install --cask dropbox
brew install --cask firefox
# brew install --cask flux
brew install --cask font-inconsolata
brew install --cask font-jetbrains-mono
brew install --cask franz
brew install --cask free-ruler
brew install --cask freeplane
# brew install --cask fritzing
brew install --cask gimp
brew install --cask google-chrome
brew install --cask imageoptim
brew install --cask inkscape
brew install --cask iterm2
brew install --cask itsycal
# brew install --cask jumpcut # copy tools, don't seem to be using it a lot
brew install --cask kap
brew install --cask keepassxc
brew install --cask libreoffice # might not be needed (microsoft company)
brew install --cask licecap
# brew install --cask lmms # digital audio workstation
brew install --cask macdown
# brew install --cask maczip # need to figure out which one I want to use
# brew install --cask microsoft-teams # not sure (yet)
brew install --cask mucommander
# brew install --cask obs # OBS (Open Broadcaster Software) is free and open source software for video recording and live streaming
# brew install --cask processing
brew install --cask qlcolorcode
brew install --cask qlimagesize
brew install --cask qlmarkdown
brew install --cask qlprettypatch
brew install --cask qlstephen
brew install --cask qlvideo
brew install --cask quicklook-csv
brew install --cask quicklook-json
brew install --cask quicklookase
# brew install --cask scribus-dev
brew install --cask scribus
# brew install --cask seashore # photoshop clone
# brew install --cask sketch
# brew install --cask sketchup
# brew install --cask skype # microsoft again
# brew install --cask slack # microsoft again
brew install --cask sourcetree
brew install --cask spectacle
# brew install --cask spotifree # cheap
brew install --cask spotify
brew install --cask sublime-text
brew install --cask suspicious-package
# brew install --cask synfigstudio # when I need it
# brew install --cask the-unarchiver # need to figure out which one I want to use
brew install --cask tiddly
# brew install --cask transmission # probably not the best idea for now
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask webpquicklook
# brew install --cask xampp # there is probably a better solution
# brew install --cask zoom # microsoft again










# Remove outdated versions from the cellar.
brew cleanup
