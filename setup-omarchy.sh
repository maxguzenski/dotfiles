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

omarchy-webapp-install "Twitch" "https://twitch.tv" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/twitch.png"
omarchy-webapp-install "Notion" "https://www.notion.so/" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/notion-light.png"
omarchy-webapp-install "Google Sheets" "https://docs.google.com/spreadsheets/u/0/" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-sheets.png"
omarchy-webapp-install "Gmail" "https://gmail.com" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/gmail.png"

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
  jujutsu \
  zed

yay -S \
  --needed \
  --answerdiff None \
  --answerclean None \
  brave-bin \
  yaak-bin \
  github-desktop-bin

echo "source ~/dotfiles/bashrc" >>~/.bashrc

stow yazi
stow zed
