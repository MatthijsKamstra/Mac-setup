# oh-my-zsh

- https://ohmyz.sh/
- https://sourabhbajaj.com/mac-setup/iTerm/zsh.html
- https://dev.to/danielbellmas/the-only-3-plugins-youll-ever-need-for-your-terminal-1bg4
- https://medium.com/wearetheledger/oh-my-zsh-made-for-cli-lovers-installation-guide-3131ca5491fb
- https://javascript.plainenglish.io/upgrading-your-terminal-with-oh-my-zsh-and-more-fa58d61d21d3
- https://medium.com/swlh/the-ultimate-terminal-emulator-with-oh-my-zsh-experience-f81f838c6daf

## install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

The installation script should set zsh to your default shell, but if it doesn't you can do it manually:

```bash
chsh -s $(which zsh)
```

## plugins

Add plugins to your shell by adding the name of the plugin to the `plugin` array in your `.zshrc`.


```sh
# plugins=(git colored-man-pages colorize pip python brew osx)
plugins=(git node bundler macos rake ruby python)
```


```bash

# zsh autosugge3stoin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


```




```sh
plugins=(
# other plugins...
zsh-autosuggestions
zsh-syntax-highlighting
)
```


```sh
# An example of a plugin setting
plugins=(
  git
  macos
  node
  zsh-autosuggestions
  zsh-syntax-highlighting
  iterm2
)
```


## theme


https://github.com/spaceship-prompt/spaceship-prompt


```bash
# install spaceship theme
brew install spaceship
echo "→ source $(brew --prefix)/opt/spaceship/spaceship.zsh" >>! ~/.zshrc
````


```bash
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# Symlink spaceship.zsh-theme to your oh-my-zsh custom themes directory:
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```



Inside the `~/.zshrc` file we will change the `ZSH_THEME` variable like this:

```bash
ZSH_THEME="spaceship"
```

```sh
ZSH_THEME="spaceship"
```


or

```sh
ZSH_THEME="agnoster"
```

## install fonts

- https://github.com/powerline/fonts

```bash
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

```bash
sudo apt install fonts-powerline
```

```bash
echo -e "\xee\x82\xa0" #> 
```



## install solartis

```bash
brew install wget
cd ~/Downloads
wget https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors
```


// https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Light.itermcolors

theme??

`iTerm -> Preferences -> Profiles -> Colors -> load presets -> Import`

activate font in iterm2

`iTerm -> preferences -> profiles -> text`
