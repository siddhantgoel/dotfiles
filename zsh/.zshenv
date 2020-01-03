export RESTIC_PASSWORD_FILE=$HOME/.restic-password

# snaps
export PATH="/snap/bin:$PATH"

# python
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
source $HOME/.poetry/env

# npm
export PATH="$HOME/.npm-packages/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOPATH="$HOME/Work/go"
export PATH="$PATH:$(go env GOPATH)/bin"
