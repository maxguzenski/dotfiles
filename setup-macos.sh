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
  awscli \
  bat \
  eza \
  fastfetch \
  fd \
  fish \
  fzf \
  gemini-cli \
  gh \
  git \
  lazydocker \
  lazygit \
  luarocks \
  mise \
  neovim \
  posting \
  rclone \
  ripgrep \
  starship \
  stow \
  tree-sitter \
  wget \
  xh \
  zellij \
  zoxide

brew install \
  1password \
  brave-browser \
  chatgpt \
  cursor \
  firefox \
  font-fira-code-nerd-font \
  font-jetbrains-mono-nerd-font \
  ghostty \
  github \
  google-chrome \
  iterm2 \
  notion \
  notunes \
  raycast \
  rectangle \
  spotify \
  visual-studio-code \
  vlc \
  whatsapp \
  sst/tap/opencode \
  zed

# if [[ -f ~/.zshrc ]]; then
#   rm -f ~/.zshrc.bak.1
#   mv ~/.zshrc ~/.zshrc.bak.1
# fi

stow fish
stow starship
stow bat
stow bin
stow lazygit
stow lazyvim
stow yazi
stow zed
stow ghostty

# source ~/.zshrc
