set -e

if ! [ -x "$(command -v dotbot)" ]; then
  echo "Please install dotbot." >&2
  exit 1
fi

dotbot --config-file install.conf.yaml
