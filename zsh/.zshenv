# restic
export RESTIC_PASSWORD_FILE=$HOME/.restic-password

# pipx
export PATH="$HOME/.local/bin:$PATH"

# snaps
export PATH="/snap/bin:$PATH"

# python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source $HOME/.poetry/env

# npm
export PATH="$HOME/.npm-packages/bin:$PATH"
