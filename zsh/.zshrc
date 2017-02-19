# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

zstyle :compinstall filename '/home/siddhant/.zshrc'

autoload -Uz compinit promptinit

compinit
promptinit

prompt walters

autoload -U colors && colors

setopt HIST_IGNORE_DUPS

[[ -z $DISPLAY && XDG_VTNR -eq 1 ]] && exec startx

EDITOR=vim
VISUAL=vim

xset r rate 200 32

WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Go
export GOPATH=~/Work/Go
export PATH=$PATH:~/Work/Go/bin

PATH="/usr/local/heroku/bin:$PATH"

source $HOME/.aliases

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
