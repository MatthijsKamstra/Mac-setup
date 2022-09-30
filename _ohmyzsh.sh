#!/bin/bash

echo "Setup oh-my-zsh and iterm2 ..."


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

# install sublime-text/iterm2
brew install --cask sublime-text
brew install --cask iterm2
# brew install wget

# Remove outdated versions from the cellar.
brew cleanup

cd ~/Downloads



echo "Installing oh-my-zsh"
#  installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "Installing powerline fonts"
# Installing powerline fonts

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# or
# sudo apt install fonts-powerline

echo "Testing powerline fonts"
# Testing powerline fonts
echo -e "\xee\x82\xa0" #> 


echo "Installing spaceship theme"
#  Installing shaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# Symlink spaceship.zsh-theme to your oh-my-zsh custom themes directory:
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "Installing plugins"
# Installing plugins
# zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



echo 'Pimping iterm2'
# use donwload folder for this
cd ~/Downloads
curl -O  https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors
curl -O  https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors




# open file (default and sublime text)
# nano ~/.zshrc
open ~/.zshrc
open -a "Sublime Text" ~/.zshrc

# what do we need to change when we update the file?
echo '# change the following in the .zshrc file

# theme
ZSH_THEME="spaceship"

# An example of a plugin setting
plugins=(
  git
  macos
  node
  zsh-autosuggestions
  zsh-syntax-highlighting
  iterm2
)

'

open -a "iTerm"
# what do we need to change when we update the file?
echo '# update iTems Settings

# colors

- Go to iTerm2 > Preferences > Profiles > Colors Tab
- Click Color Presets… at the bottom right
- Click Import…
- Select the material-design-colors.itermcolors file
- Select the material-design-colors from Load Presets…

# font

- Go to iTerm2 > Preferences > Profiles > Text
- Click on Font and select Hack Nerd Font
- Click on Non-ASCII Font and select Hack Nerd Font
- Make sure Use Ligatures is turned on for better experience



'

