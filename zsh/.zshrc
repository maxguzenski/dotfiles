
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit

  # zstyle ':completion:*:*:*:default' menu yes select search
fi

if [[ -r "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -r "/opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" ]]; then 
  source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fi 

if type zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi

if type fzf &>/dev/null; then
  source <(fzf --zsh)
fi

# if type starship &>/dev/null; then
#   eval "$(starship init zsh)"
# fi
#

#
# Custom alias and commands 
#

PATH="$PATH:$(pwd)/.local/bin:/Applications/Postgres.app/Contents/Versions/16/bin"

function fdex() {
  CMD=${1:-"zsh"}
	CONTAINER=`docker ps | rg -v CONTAINER | awk '-F ' ' {print $NF}' | fzf`
	if [ ! -z $CONTAINER ]
	then
		docker exec -it $CONTAINER $CMD 
	fi
}

alias cd="z"

alias ls="eza --icons=always"
alias ll="ls -lh"
alias la="ls -lah"
alias lt="ls -ha -TI .git"

alias vim="nvim"
alias vi="nvim"
alias v="nvim"

alias zcode="nvim ~/.zshrc"

