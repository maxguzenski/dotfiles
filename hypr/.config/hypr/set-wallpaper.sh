#!/bin/bash

# check if swww-daemon is running on background
if ! pgrep -x "swww-daemon" >/dev/null; then
  swww-daemon &
fi

sleep 1
swww img ~/dotfiles/backgrounds/shaded_landscape.png
