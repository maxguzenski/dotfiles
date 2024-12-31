#!/bin/bash

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo >>/Users/max/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>/Users/max/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew install \
  awscli \
  bat \
  eza \
  fd \
  fzf \
  gh \
  git \
  git-delta \
  lazydocker \
  lazygit \
  mise \
  fastfetch \
  neovim \
  ripgrep \
  stow \
  tree-sitter \
  zellij \
  zoxide \
  zsh-autosuggestions \
  zsh-fast-syntax-highlighting \
  yazi \
  wget \
  starship

brew install \
  1password \
  iterm2 \
  chatgpt \
  firefox \
  font-fira-code-nerd-font \
  font-jetbrains-mono-nerd-font \
  github \
  ghostty \
  notion \
  tor-browser \
  visual-studio-code \
  whatsapp \
  vlc \
  raycast

if [[ -f ~/.zshrc ]]; then
  rm -f ~/.zshrc.bak.1
  mv ~/.zshrc ~/.zshrc.bak.1
fi

stow zsh
stow bin
stow starship
stow lazyvim
stow yazi
stow ghostty

source ~/.zshrc
