#!/usr/bin/env zsh

walldir=~/Media/Wallpaper
wallpaper=$(ls -A $walldir | fzf --preview "chafa -s 40 $walldir/{}")

[ -z "$wallpaper" ] && exit

wal -i "$walldir/$wallpaper"
pkill hyprpaper
setsid hyprpaper > /dev/null 2>&1 &
sleep 0.1
