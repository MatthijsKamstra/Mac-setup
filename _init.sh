#!/bin/bash
#
#
# My (Matthijs Kamstra) Mac-setup.
# I would not recommend using it without reading everyting I do
# Choose what works for you
#

sh clean.sh

sh osxprep.sh
# sh osx.sh ## might be a bit overkill, lets see what I notice when I start from scratch
sh brew.sh
sh design.sh
sh haxe.sh
sh web.sh
# sh android.sh ## not doing android anymore

