# Mac-setup

My Mac OS X development environment setup. Automated setup scripts for developer tools like Sublime Text, iTerm, web development, ~~Android development~~, and dev-based OS X defaults.

# Reminder

I use this script to fully provision **my** development machine.
There is a lot of duplicates in the scripts, I need to sort it out.

# Prerequisites

I tried to minimise the manual steps as much as I could. These still remain...

- XCode is installed (via the App Store)
- Install Xcode from the Apple store and accept TOS
- XCode command line tools are installed (xcode-select --install will prompt up a dialog)

# Create backup

Before we can install a fresh computer, we want to backup the old settings

- dotfiles
- ssh
- vscode
- sourcetree
- filezilla
- sublimetext
- brew
- brew cask
- npm
- application folder
- haxe
- Adobe?
- Fonts

```
git clone https://github.com/MatthijsKamstra/Mac-setup.git
cd Mac-setup
sh _backup_settings.sh
```

# okay, empty computer has no git

- open https://raw.githubusercontent.com/MatthijsKamstra/Mac-setup/master/_clean.sh
- save on your computer (cmd + s)
- open that folder `cd path/to/saved/folder`
- run script `sh _clean.sh`

it will install:

- xcode
- brew
- git

# Start

Download or clone this repository.

```
git clone https://github.com/MatthijsKamstra/Mac-setup.git
cd Mac-setup
sh install.sh
```

<!--
or use a specific bash file

- For Android development: [Android setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/android.sh)
- Lazy I-Want-It-All install: [Brew setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/brew.sh)
- Minimal install (xcode/brew/git): [Clean setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/clean.sh)
- Minimal design setup: [Design setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/design.sh)
- Quick start for [Haxe](http://haxe.org): [Haxe setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/haxe.sh)
- Update OSX: [OSX prep setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/osxprep.sh)
- Change default OSX settings: [OSX setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/osx.sh)
- Web dev setup (git/node/editors/plugins/programs/etc): [Web development setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/_web.sh)

# Sublime Text setup

- Install Package control: <https://packagecontrol.io/installation>
- And then install via `cmc+shift+p` + `install` the following:
  - Alignment
  - AutoFileName
  - Browser Refresh
  - Color Highlighter
  - ColorPicker
  - DocBlockr
  - GitGutter
  - Haxe
  - Indent XML
  - Minifier
  - Pretty JSON
  - SideBarEnhancements
  - SourceTree
  - Trimmer
  - Terminal

User preferences:

```
{
	// "word_wrap": true,
	"font_face": "Inconsolata",
	"font_size": 14,
	"highlight_line": true,
	"trim_trailing_white_space_on_save": true,
	// "auto_complete_commit_on_tab": true,
	// "draw_white_space": "all",
	"highlight_modified_tabs": true,
	"bold_folder_labels": false
}

```

[resource](http://www.thenerdary.net/post/29338253893/my-sublime-text-2-config)

-->

# Programming fonts

For my editor I use `JetBrains Mono`. (https://www.jetbrains.com/lp/mono/)

My previous font was `Inconsolata`. (https://fonts.google.com/specimen/Inconsolata)

Source if you want to choose your own:

- https://www.slant.co/topics/67/~best-programming-fonts
- https://www.elegantthemes.com/blog/wordpress/best-programming-fonts
- https://developer-tech.com/news/2018/may/16/10-best-fonts-programming/
- https://itnext.io/11-best-programming-fonts-724283a9ed57
- <http://wesbos.com/programming-fonts/>

<!--
# Filezilla

How to backup Filezilla

**Step 1**
Open up your copy of FileZilla, select the ‘Export…’ option from the ‘File’ menu and click the checkbox that reads ‘Export Site Manager entries’. At this point you may also want to select to export your settings and the current transfer queue if one exists.

**Step 2**
Click ‘OK’ and you’ll be asked where you want to save the exported file to. The export is in the format of a XML file and should be saved in a suitable location.

**Step 3**
Now we have our FileZilla site manager safe and sound its time to look at importing our sites back into FileZilla. To do this, with FileZilla open, select the ‘Import…’ option from the ‘File’ menu and navigate to where the saved XML file is sitting. Simply click ‘OK’ and watch as your settings flood back in. It’s almost as if you were never FileZilla-less.

Resource: <http://biostall.com/how-to-copy-or-backup-your-filezilla-site-manager/>

# Mail

Ways to backup personal mail

Resource:

- <https://support.apple.com/kb/PH19174?locale=en_US>
- <http://www.cnet.com/how-to/a-better-way-to-archive-email-in-apple-mail/>
- <http://ccm.net/faq/11317-mac-os-back-up-your-mail-folder>

-->

## Resources:

Inspiration for the-mac-setup:

- <https://github.com/arbitrarily/Fresh-Install>
- <https://github.com/alichtman/shallow-backup/blob/d28e4e51542f375af527c026b0af77314fbfe01e/shallow_backup/config.py>
- <https://sourabhbajaj.com/mac-setup/Git/README.html>
- <https://github.com/rafeca/dotfiles/tree/master/osx/apps>
- <https://github.com/donnemartin/dev-setup>
- <https://github.com/DanielZwijnenburg/Mac-setup>
- <http://www.codejuggle.dj/my-mac-os-x-development-setup/>
- <https://gist.github.com/g3d/2709563>
- <https://github.com/mathiasbynens/dotfiles/blob/master/.macos>
- <https://gist.github.com/patrickhammond/4ddbe49a67e5eb1b9c03>
