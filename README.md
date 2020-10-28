# Mac-setup

My Mac OS X development environment setup. Automated setup scripts for developer tools like Sublime Text, iTerm, web development, Android development, and dev-based OS X defaults.

# Reminder

I use this script to fully provision **my** development machine.
There is a lot of duplicates in the scripts, I need to sort it out.

# Prerequisites

I tried to minimise the manual steps as much as I could. These still remain...

- XCode is installed (via the App Store)
- Install Xcode from the Apple store and accept TOS
- XCode command line tools are installed (xcode-select --install will prompt up a dialog)

# Get preinstalled brew / cask

```
brew cask list > brew_cask_list.txt
brew list > brew_list.txt
```

# Start

Download or clone this repository.

```
cd /to/the/correct/folder
sh _init.sh
```

or use a specific bash file

- For Android development: [Android setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/android.sh)
- Lazy I-Want-It-All install: [Brew setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/brew.sh)
- Minimal install (xcode/brew/git): [Clean setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/clean.sh)
- Minimal design setup: [Design setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/design.sh)
- Quick start for [Haxe](http://haxe.org): [Haxe setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/haxe.sh)
- Update OSX: [OSX prep setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/osxprep.sh)
- Change default OSX settings: [OSX setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/osx.sh)
- Web dev setup (git/node/editors/plugins/programs/etc): [Web development setup](https://github.com/MatthijsKamstra/Mac-setup/blob/master/web.sh)

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

# Programming fonts

Currently I use `Inconsolata`, but that might change.
So to be prepared for that: <http://wesbos.com/programming-fonts/>

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

## Resources:

Inspiration for the-mac-setup:

- <https://github.com/rafeca/dotfiles/tree/master/osx/apps>
- <https://github.com/donnemartin/dev-setup>
- <https://github.com/DanielZwijnenburg/Mac-setup>
- <http://www.codejuggle.dj/my-mac-os-x-development-setup/>
- <https://gist.github.com/g3d/2709563>
- <https://github.com/mathiasbynens/dotfiles/blob/master/.macos>
- <https://gist.github.com/patrickhammond/4ddbe49a67e5eb1b9c03>
