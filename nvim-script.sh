#!/bin/env bash

rm -rf ~/.config/nvim
mkdir -p ~/.config/nvim # creating the folder where all the configuration files live
cd ~/.config/nvim # optional, but makes the commands shorter
touch init.lua && echo "require('core')" > init.lua # creates the file nedded for everything to start
mkdir lua && mkdir lua/core; mkdir about && mkdir about/plugin # folders where all the files will be, all folders needed
cd ./lua/core # same thing as cd ~/.config/nvim, now it's just ~/.config/nvim/lua/core
touch init.lua && echo "require('core.options')" > init.lua # creates the file nedded for everything to start correctly for (again)
touch options.lua

echo "do you want some additional configuration (line numbers and smaller indenting when tab is pressed)? [y/N]" && read NUMLINES
sleep 1
if [[ "$NUMLINES" == "y" ]] || [[ "$NUMLINES" == "Y" ]];
then
	echo "local o = vim.opt
	local indentSize = 2
	o.number = true
	o.relativenumber = true
	o.shiftwidth = indentSize
	o.tabstop = indentSize" > options.lua
	echo "Everything's done..."
else
	echo "Everything's done..."
fi
