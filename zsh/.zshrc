THIS_PROMPT="starship"

# se this_prompt is p10k 
if [[ "$THIS_PROMPT" == "p10k" ]]; then
  source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
  
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
else
  eval "$(starship init zsh)"
fi
  

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

alias ls="eza --icons=always --group-directories-first"
alias ll="ls -lh"
alias la="ls -lah"
alias lt="ls -ha -TI .git"

alias vim="nvim"
alias vi="nvim"
alias v="nvim"

alias zcode="nvim ~/.zshrc"
alias lazygit="lazygit -ucf ~/.config/lazygit/config.yml"

PATH="$PATH:$(pwd)/.local/bin:/Applications/Postgres.app/Contents/Versions/16/bin"

