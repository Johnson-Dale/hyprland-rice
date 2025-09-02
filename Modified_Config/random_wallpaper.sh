#!/usr/bin/env bash

# Delays script from running to allow it to work on startup
sleep 2

# Sets wallpaper directory and checks currently loaded wallpaper
WALLPAPER_DIR="$HOME/.wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Gets a random wallpaper that isn`t the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Applies selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"
