HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -e

zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit promptinit

compinit
promptinit

autoload -U colors && colors

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[green]%}%~ %{$reset_color%}%% "

setopt HIST_IGNORE_DUPS

EDITOR=vim
VISUAL=vim

pdfmerge() {
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=$@ ;
}

source $HOME/.poetry/env
