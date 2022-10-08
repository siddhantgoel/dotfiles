before:
	@command -v brew >/dev/null 2>&1 || echo "brew is missing"
	@command -v age >/dev/null 2>&1 || echo "age is missing"
	@command -v dotbot >/dev/null 2>&1 || echo "dotbo is missing."

brew: before
	@cd brew && brew bundle install

age: before
	@age --decrypt --identity ~/.config/age/keys.txt --output crestic/password crestic/password.enc

dotbot: before
	@dotbot --config-file install.conf.yaml

setup: brew age dotbot

.PHONY: brew age dotbot
