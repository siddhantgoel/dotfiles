# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/siddhant/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[green]%}%~ %{$reset_color%}%% "

setopt HIST_IGNORE_DUPS

[[ -z $DISPLAY && XDG_VTNR -eq 1 ]] && exec startx

EDITOR=vim
VISUAL=vim

xset r rate 200 32

WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

PATH="/usr/local/heroku/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export GOPATH=~/Work/Go
export PATH=$PATH:~/Work/Go/bin
