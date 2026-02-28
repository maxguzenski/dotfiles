#!/bin/bash

DEVICE="${1}"

if [ -z "$DEVICE" ] || { [ "$DEVICE" != "desktop" ] && [ "$DEVICE" != "zenbook" ]; }; then
  echo "Usage: $0 <device>"
  echo "  device must be 'desktop' or 'zenbook'"
  exit 1
fi

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
omarchy-webapp-install "Gmail" "https://gmail.com" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/gmail.png"
omarchy-webapp-install "Google Sheets" "https://docs.google.com/spreadsheets/u/0/" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-sheets.png"
omarchy-webapp-install "Google Calendar" "https://calendar.google.com/calendar/u/0/r" "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-calendar.png"

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
  gamemode \
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

echo "source ~/dotfiles/bashrc" >>~/.bashrc
stow bin

#
# set custom device config
#
rm ./hypr/.config/hypr/current.conf || true
ln -s ./hypr/.config/hypr/custom/${DEVICE}.conf ./hypr/.config/hypr/current.conf

#
# Backup existing config directories and stow dotfiles
#
configs=("ghostty" "kitty" "yazi" "zed" "hypr", "tmux")

for config in "${configs[@]}"; do
  if [ -d ~/.config/$config ]; then
    mv ~/.config/$config ~/.config/$config.bkp
  fi

  stow $config
done

# others
./switch-nvim.sh lazyvim
