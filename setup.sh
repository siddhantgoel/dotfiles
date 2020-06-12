#!/bin/bash

if ! [ -x "$(command -v stow)" ]; then
  echo "Please install GNU Stow." >&2
  exit 1
fi

$CONFIG=$HOME/.config

stow tmux --target $HOME
stow zsh --target $HOME

stow crestic --target $CONFIG/crestic
stow nvim --target $CONFIG/nvim
stow systemd --target $CONFIG/systemd
