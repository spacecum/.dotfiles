#!/bin/env sh

pacmanPak=(luarocks lua51 cargo npm lua51-jsregexp mason)

echo "Installing: ${pacmanPak[@]}"
sudo pacman -S "${pacmanPak[@]}"
