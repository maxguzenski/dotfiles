#!/bin/bash

mv ~/.config/nvim "~/.config/nvim.bkp_$(date +%Y%m%d%H%M%S)"

rm -Rf ~/.local/state/nvim
rm -Rf ~/.local/share/nvim
rm -Rf ~/.cache/nvim

stow $1
