#!/bin/bash

brew install \
  awscli bat eza fd fzf gh lazydocker lazygit ripgrep \
  stow tree-sitter zellij tmux zoxide powerlevel10k neovim \
  zsh-autosuggestions zsh-fast-syntax-highlighting

brew install \
  chatgpt firefox font-fira-code-nerd-font font-jetbrains-mono-nerd-font \
  github kitty notion tor-browser visual-studio-code vlc

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

stow .
source ~/.zshrc
