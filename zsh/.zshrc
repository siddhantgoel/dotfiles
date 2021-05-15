# history

HISTFILE=~/.histfile

# editor

EDITOR=vim
VISUAL=vim

# options

unsetopt beep
bindkey -e
setopt HIST_IGNORE_DUPS

# zplug

source /usr/share/zplug/init.zsh

zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

alias dock="docker-compose"

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
