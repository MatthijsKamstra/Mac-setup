# iterm2

- https://shyr.io/blog/sync-iterm2-configs
- https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c

- https://medium.com/swlh/the-ultimate-terminal-emulator-with-oh-my-zsh-experience-f81f838c6daf


```bash
# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/System/OSX/iTerm/settings"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
```


```
# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
```



```
defaults write com.googlecode.iterm2 "Normal Font" -string "SourceCodePro-Regular"
defaults write com.googlecode.iterm2 "Non Ascii Font" -string "SourceCodePro-Regular"
```




```
- Go to iTerm2 > Preferences > Profiles > Colors Tab
- Click Color Presets… at the bottom right
- Click Import…
- Select the material-design-colors.itermcolors file
- Select the material-design-colors from Load Presets…
```

```
Update iTerm2:

- Go to iTerm2 > Preferences > Profiles > Text
- Click on Font and select Hack Nerd Font
- Click on Non-ASCII Font and select Hack Nerd Font
- Make sure Use Ligatures is turned on for better experience


 ```