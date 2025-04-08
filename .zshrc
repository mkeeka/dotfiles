# Start SSH agent and add key
eval "$(ssh-agent -s)"
ssh-add -q ~/.ssh/id_rsa

# Start Starship
eval "$(starship init zsh)"
