#
# brew install eza zoxide zsh-autosuggestions zsh-syntax-highlighting powerlevel10k
#

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PATH="$PATH:$(pwd)/.local/bin:/Applications/Postgres.app/Contents/Versions/16/bin"

eval "$(init zsh zoxide)"

alias cd="z"

alias ls="eza --icons=always"
alias ll="ls -lh"
alias la="ls -lAh"

alias vim="nvim"
alias v="nvim"

alias zcode="nvim ~/.zshrc"

