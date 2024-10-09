
# source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
#
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
#
# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


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

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"
source <(fzf --zsh)

export FZF_DEFAULT_OPTS='--tmux center --border'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export EDITOR="nvim"


#
# Aliases
#
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

PATH="$PATH:$(pwd)/.local/bin:/Applications/Postgres.app/Contents/Versions/16/bin"

