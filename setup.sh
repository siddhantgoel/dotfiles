set -xe

if ! [ -x "$(command -v age)" ]; then
  echo "Please install age." >&2
  exit 1
fi

if ! [ -x "$(command -v brew)" ]; then
  echo "Please install brew." >&2
  exit 1
fi

if ! [ -x "$(command -v dotbot)" ]; then
  echo "Please install dotbot." >&2
  exit 1
fi

# brew dependencies
pushd brew
brew bundle install
popd

# decrypt crestic password
age --decrypt --identity ~/.config/age/keys.txt --output crestic/password crestic/password.enc

# install
dotbot --config-file install.conf.yaml
