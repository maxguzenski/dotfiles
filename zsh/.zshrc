HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#
# MACOS
#
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

if [[ -r "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -r "/opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" ]]; then 
  source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fi 
#
# MACOS END
#

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
alias c="clear"

alias ls="eza --icons=always --group-directories-first"
alias ll="ls -lh"
alias la="ls -lah"
alias lt="ls -ha -TI .git"

alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias nvimdiff="nvim -d"

alias zhypr="nvim ~/.config/hypr/hyprland.conf"
alias zkitty="nvim ~/.config/kitty/kitty.conf"
alias zzsh="nvim ~/.zshrc"

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
# alias lazygit="lazygit -ucf ~/.config/lazygit/config.yml"

XDG_CONFIG_HOME="$HOME/.config"
PATH="$PATH:$HOME/.local/bin:/Applications/Postgres.app/Contents/Versions/16/bin"
