#!/bin/bash

brew install \
  adsf \
  awscli \
  bat \
  eza \
  fd \
  fzf \
  gh \
  git \
  lazydocker \
  lazygit \
  mise \
  neofetch \
  neovim \
  powerlevel10k \
  ripgrep \
  stow \
  tmux \
  tree-sitter \
  zellij \
  zoxide \
  zsh-autosuggestions \
  zsh-fast-syntax-highlighting \
  yazi

brew install \
  chatgpt \
  firefox \
  font-fira-code-nerd-font \
  font-jetbrains-mono-nerd-font \
  github \
  kitty \
  notion \
  tor-browser \
  visual-studio-code \
  vlc

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [[ -f ~/.zshrc ]]; then
  mv ~/.zshrc ~/.zshrc.bak.1
fi

stow zsh
stow tmux
stow nvim
stow bin

source ~/.zshrc
