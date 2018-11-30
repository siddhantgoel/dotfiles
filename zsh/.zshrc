# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

zstyle :compinstall filename '/home/siddhant/.zshrc'

autoload -Uz compinit promptinit

compinit
promptinit

autoload -U colors && colors

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[green]%}%~ %{$reset_color%}%% "

setopt HIST_IGNORE_DUPS

[[ -z $DISPLAY && XDG_VTNR -eq 1 ]] && exec startx

EDITOR=vim
VISUAL=vim

xset r rate 200 32

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

pdfmerge() {
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=$@ ;
}
