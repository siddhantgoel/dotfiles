# history

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[green]%}%~ %{$reset_color%}%% "

# editor

EDITOR=vim
VISUAL=vim

# options

unsetopt beep
bindkey -e
setopt HIST_IGNORE_DUPS

# autoload

autoload -Uz compinit promptinit colors

colors
compinit
promptinit

alias dock="docker-compose"

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi
