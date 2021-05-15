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

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# npm
export PATH="$HOME/.npm-packages/bin:$PATH"

# Go
export GOPATH="$HOME/Work/go"
export PATH="$GOPATH/bin:$PATH"

# Rust
source "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"
