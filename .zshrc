ssh_start() {
	eval "$(ssh-agent -s)"
	ssh-add --apple-use-keychain ~/.ssh/id_rsa
}

# Start Starship
eval "$(starship init zsh)"
