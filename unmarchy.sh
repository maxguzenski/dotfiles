#!/bin/bash

yay -Rcs \
  kdenlive \
  obs-studio \
  signal-desktop

omarchy-webapp-remove HEY
omarchy-webapp-remove Basecamp
omarchy-webapp-remove "Google contacts"

mise use -g node@24

pacman -Sy \
  stow \
  zellij \
  ast-grep
