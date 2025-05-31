if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.local/bin
fish_add_path /Applications/Postgres.app/Contents/Versions/16/bin

starship init fish | source
zoxide init fish | source
fzf --fish | source
mise activate fish | source

set EDITOR nvim
set VISUAL zed
set XDG_CONFIG_HOME "$HOME/.config"
set fish_greeting ""
set HOMEBREW_NO_ENV_HINTS 1

alias cd="z"
alias c="clear"

alias ls="eza --icons=always --group-directories-first"
alias ll="ls -lh"
alias la="ls -lah"
alias lt="ls -ha -TI .git"

# alias ianvim="ANTHROPIC_API_KEY=$ANTHROPIC_API_KEY nvim"
alias vim="nvim"
alias v="nvim"

alias zfish="nvim ~/.config/fish/config.fish"
