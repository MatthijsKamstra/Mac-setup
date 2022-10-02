# personal reminder: Things to Backup

```sh
sh _backup_settings.sh
```

## Local disk

- .dotfiles/
- [Ensure committed & pushed]
- .ssh/
- .localrc
- Applications
  - check which are installed via app store / other ways
- Desktop
  - clean up, save to backup disk
- Documents
  - important
- Downloads
  - clean up, save to backup disk
- Dropbox
  - save to backup disk
- Library/
  - there be dragons here
  - Library/Application Support/
    - [Backup important apps]
- Movies
  - save to backup disk
- Music
  - nothing to do (spotify!)
- Pictures
  - save to backup disk
- Public
  - nothing to do

## Applications

_menu-bar_

- spectacles
  - Prefs > Launch at login
- itsycal
  - General > Launch on login
  - Appearance > use outline icon
  - Appearance > show calendar weeks

_web_

- Firefox
  - login
- Google Chrome
  - login
- keepassxc
  - copy files
  - open correct files
- Haxe
  - not sure why I don't do it via brew
  - download: https://haxe.org/download/
  - `sh _haxelib.sh`
- Filezilla
  - download: https://filezilla-project.org/download.php?platform=osx';
  - copy old icon and replac ugly original
  - install files from `_backup_settings.sh`
- muCommander
  - mostly use it default

_tools_

- vscode
  - use Sync via github
- Sublime Text
  - use `sh _backup_settings.sh` and use `install_sublimetext.sh `
- iTerm
  - copy settings
  - see `_ohmyzsh.sh`
- .ssh keys
  - git
  - gitignroe
  - git blah
  - .zshrc (posible)
- sourcetree
  - install files from `_backup_settings.sh`

_misc_

- Mail
- GIT repos

## errors with ssh

```
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
```

- https://stackabuse.com/how-to-fix-warning-unprotected-private-key-file-on-mac-and-linux/
- https://maximbilan.medium.com/ssh-keys-fixing-the-warning-unprotected-private-key-file-17fabdca7d3b
- http://www.techkaki.com/warning-unprotected-private-key-file/

```bash
# only one file
sudo chmod 600 /path/to/my/key.pem

# but probably the whole folder needs to have dif permisson
sudo chmod 755 ~/.ssh

```

## System

- Dock Config
