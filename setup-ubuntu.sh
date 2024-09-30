#!/bin/bash

apt-get update

apt-get install -y \
  bat \
  curl \
  eza \
  fd-find \
  fzf \
  git \
  jq \
  less \
  ripgrep \
  stow \
  tmux \
  zoxide \
  zsh

ln -s $(which fdfind) /usr/local/bin/fd

#git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1
