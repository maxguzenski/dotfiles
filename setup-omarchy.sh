#!/bin/bash

yay -Rns \
  kdenlive \
  obs-studio \
  signal-desktop

omarchy-webapp-remove HEY
omarchy-webapp-remove Discord
omarchy-webapp-remove Basecamp
omarchy-webapp-remove Fizzy
omarchy-webapp-remove "Google Contacts"
omarchy-webapp-remove "Google Messages"

# mise use -g node@24

sudo pacman -Sy \
  stow \
  zellij \
  ast-grep \
  xh \
  luarocks \
  gnome-tweaks \
  kitty \
  vulkan-radeon \
  mangohud \
  gamescope \
  steam \
  yazi \
  tree-sitter-cli \
  zed

yay -S \
  --needed \
  --answerdiff None \
  --answerclean None \
  brave-bin \
  yaak-bin \
  github-desktop-bin
