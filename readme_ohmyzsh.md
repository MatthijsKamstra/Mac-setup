##

install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

install fonts

// https://github.com/powerline/fonts

```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

install solartis

```
brew install wget
cd ~/Downloads
wget https://raw.github.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
```

theme??

`iTerm -> Preferences -> Profiles -> Colors -> load presets -> Import`

activate font in iterm2

`iTerm -> preferences -> profiles -> text`
