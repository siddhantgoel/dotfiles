#!/bin/bash

set -e

if ! [ -x "$(command -v stow)" ]; then
  echo "Please install GNU Stow." >&2
  exit 1
fi

stow tmux --target $HOME
stow zsh --target $HOME

stow glrnvim --target $HOME/.config
stow crestic --target $HOME/.config/crestic
stow nvim --target $HOME/.config/nvim
stow systemd --target $HOME/.config/systemd
stow kitty --target $HOME/.config/kitty

echo "All done!"
