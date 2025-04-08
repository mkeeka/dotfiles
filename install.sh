#!/bin/bash

# Exit script on error
set -e

# Define the source directory of your dotfiles
DOTFILES_DIR=$(pwd)

# Create necessary directories if they don't exist
mkdir -p "$HOME/.config" "$HOME/.obsidian"

# Copy dotfiles to appropriate locations
echo "Copying dotfiles..."
cp -r "$DOTFILES_DIR/.config"/* "$HOME/.config/"
cp -r "$DOTFILES_DIR/.obsidian"/* "$HOME/.obsidian/"
cp "$DOTFILES_DIR/.zshrc" "$HOME/"
cp "$DOTFILES_DIR/.gitconfig" "$HOME/"

echo "Dotfiles installation complete!"
