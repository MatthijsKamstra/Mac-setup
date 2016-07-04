#!/usr/bin/env bash

# ~/osx.sh — Originally from https://mths.be/osx
# source:
# 		https://github.com/DanielZwijnenburg/Mac-setup/blob/master/roles/danielz/tasks/config.yml
# 		https://raw.githubusercontent.com/donnemartin/dev-setup/master/osx.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# - name: Config | OSX | Disable app quarantine window
defaults write com.apple.LaunchServices LSQuarantine -bool false

# - name: Config | OSX | Check everyday for software updates
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable Notification Center and remove the menu bar icon
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null


# http://osxdaily.com/2012/08/06/disable-notification-center-remove-menu-bar-icon-os-x/
# How this disables Notification Center
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
killall NotificationCenter
# How this re-enables Notification Center
launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
open /System/Library/CoreServices/NotificationCenter.app/



# # - name: Config | OSX | Hot corners - Misson Control
# defaults write com.apple.dock wvous-tl-corner -int 2

# # - name: Config | OSX | Hot corners - Misson Control modifier
# defaults write com.apple.dock wvous-tl-modifier -int 0

# # - name: Config | OSX | Hot corners - Show Desktop
# defaults write com.apple.dock wvous-tr-corner -int 4

# # - name: Config | OSX | Hot corners - Show Desktop modifier
# defaults write com.apple.dock wvous-tr-modifier -int 0

# # - name: Config | OSX | Hot corners - Application Windows
# defaults write com.apple.dock wvous-bl-corner -int 3"

# # - name: Config | OSX | Hot corners - Application modifier
# defaults write com.apple.dock wvous-bl-modifier -int 0"

# # - name: Config | OSX | Hot corners - Start Screensaver
# defaults write com.apple.dock wvous-br-corner -int 5"

# # - name: Config | OSX | Hot corners - Start Screensaver modifier
# defaults write com.apple.dock wvous-br-modifier -int 0"

# - name: Config | OSX | Keyboard - Disable press and hold
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# - name: Config | OSX | Keyboard - Blazingly fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 0

# - name: Config | OSX | Keyboard - Zoom with scroll
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true

# - name: Config | OSX | Keyboard - Zoom with control modifier
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# - name: Config | OSX | Keyboard - Enable tab in modal windows
# defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# - name: Config | OSX | Keyboard - Disable auto-correct
# defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# - name: Config | OSX | Trackpad - Right click
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true


###############################################################################
# Screen                                                                      #
###############################################################################

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots to the Pictures/Screenshots
# mkdir ${HOME}/Pictures/Screenshots
# defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
# defaults write com.apple.screencapture disable-shadow -bool true

###############################################################################
# Mail                                                                        #
###############################################################################

# - name: Config | OSX | AppleMail - Normal copy of e-mail addresses
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false



# - name: Config | OSX | Chrome - Install user scripts via github & userscripts
# defaults write com.google.Chrome ExtensionInstallSources -array "https://gist.githubusercontent.com/" "http://userscripts.org/*"

# - name: Config | OSX | Finder - Expand save panel
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# - name: Config | OSX | Finder - Expand print panel
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true


###############################################################################
# Finder                                                                      #
###############################################################################

# Set Desktop as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Downloads/"


# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true


# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# defaults write com.apple.dock autohide -bool true 
# defaults write com.apple.dock autohide-delay -float 0 
# defaults write com.apple.dock autohide-time-modifier -float 0

# iterm2
#  
# # Disable warning when quitting
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

###############################################################################
# Transmission.app                                                            #
###############################################################################

# Set up
mkdir -p ~/Downloads/Torrents
mkdir -p ~/Downloads/bt

# Set up download folders
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Torrents"
defaults write org.m0k.transmission DownloadLocationConstant -bool true
defaults write org.m0k.transmission DownloadFolder -string "${HOME}/Downloads/bt"

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Don't ask before opening Magnet links
defaults write org.m0k.transmission MagnetOpenAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false



echo "Done. Note that some of these changes require a logout/restart of your OS to take effect.  At a minimum, be sure to restart your Terminal."
