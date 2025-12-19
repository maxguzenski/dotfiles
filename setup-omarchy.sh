#!/bin/bash

yay -Rns \
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
  ast-grep \
  xh \
  luarocks \
  gnome-tweaks \
  kitty \
  vulkan-radeon \
  mangohub \
  gamescope \
  steam \
  yazi \
  tree-sitter-cli

yay -S \
  --noconfirm \
  --needed \
  --answerdiff None \
  --answerclean None \
  brave-bin \
  yaak-bin \
  github-desktop-bin
