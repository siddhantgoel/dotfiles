before-all:
	@command -v brew >/dev/null 2>&1 || echo "brew is missing"
	@command -v age >/dev/null 2>&1 || echo "age is missing"
	@command -v dotbot >/dev/null 2>&1 || echo "dotbo is missing."

before-age:
	@test -f ~/.config/age/keys.txt || echo "Missing age keys"

brew: before-all
	@cd brew && brew bundle install

age: before-all before-age
	@age --decrypt --identity ~/.config/age/keys.txt --output crestic/password crestic/password.enc

dotbot: before-all
	@dotbot --config-file install.conf.yaml

setup: brew age dotbot

.PHONY: brew age dotbot
