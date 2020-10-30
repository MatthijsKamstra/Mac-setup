#!/bin/bash
#
#
# My (Matthijs Kamstra) Mac-setup.
# I would not recommend using it without reading everyting I do
# Choose what works for you
#

# sh clean.sh

# sh osxprep.sh
# # sh osx.sh ## might be a bit overkill, lets see what I notice when I start from scratch
# sh brew.sh
# sh design.sh
# sh haxe.sh
# sh web.sh
# sh android.sh ## not doing android anymore



sh _clean.sh
sh _osxprep.sh

sh _brew_cask.sh
sh _brew_list.sh
sh _brew.sh

sh _npm.sh

sh _creativecoding.sh
sh _design.sh

sh _haxe.sh
sh _socials.sh
sh _web.sh
sh _misc.sh

sh _pomodore.sh
sh _screencapture.sh

# run `sh _backup_settings.sh` if you want to backup some
# sh _backup_settings.sh
# sh _list_program.sh

