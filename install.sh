#!/bin/bash

# Exit script on error
set -e

# Define the source directory of your dotfiles
DOTFILES_DIR=$(pwd)

# Create necessary directories if they don't exist
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.obsidian"

# Copy dotfiles to appropriate locations
echo "Copying dotfiles..."
cp -r "$DOTFILES_DIR"/* "$HOME/"

echo "Dotfiles installation complete!"
