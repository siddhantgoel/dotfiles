#!/bin/bash

if ! [ -x "$(command -v stow)" ]; then
  echo "Please install GNU Stow." >&2
  exit 1
fi

stow tmux --target $HOME
stow zsh --target $HOME

stow crestic --target $HOME/.config/crestic
stow nvim --target $HOME/.config/nvim
stow systemd --target $HOME/.config/systemd

echo "All done!"
