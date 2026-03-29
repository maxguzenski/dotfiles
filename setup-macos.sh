#!/bin/bash

# if ! command -v brew >/dev/null 2>&1; then
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#
#   echo >>/Users/max/.zprofile
#   echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>/Users/max/.zprofile
#   eval "$(/opt/homebrew/bin/brew shellenv)"
# fi

brew install \
  ast-grep \
  bat \
  eza \
  fastfetch \
  fd \
  fish \
  fzf \
  gh \
  git \
  lazydocker \
  lazygit \
  luarocks \
  mise \
  neovim \
  ripgrep \
  starship \
  stow \
  tree-sitter \
  wget \
  zellij \
  zoxide \
  yazi

brew install \
  1password \
  brave-browser \
  chatgpt \
  font-fira-code-nerd-font \
  font-jetbrains-mono-nerd-font \
  ghostty \
  google-chrome \
  iterm2 \
  notion \
  notunes \
  rectangle \
  vlc \
  zed

# if [[ -f ~/.zshrc ]]; then
#   rm -f ~/.zshrc.bak.1
#   mv ~/.zshrc ~/.zshrc.bak.1
# fi

stow fish
stow starship
# stow bat
stow bin
stow lazygit
stow lazyvim
stow yazi
stow zed
stow ghostty

# source ~/.zshrc
