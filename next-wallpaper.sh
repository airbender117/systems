#!/bin/bash
# next-wallpaper.sh

WALLPAPER_DIR="$HOME/wall/" # folder with wallpapers

# pick a random wallpaper
FILE=$(ls "$WALLPAPER_DIR" | shuf -n1)
feh --bg-scale "$WALLPAPER_DIR/$FILE"
