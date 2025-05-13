#!/bin/bash

rm -Rf ~/.config/nvim
rm -Rf ~/.local/state/nvim
rm -Rf ~/.local/share/nvim
rm -Rf ~/.cache/nvim

stow $1
