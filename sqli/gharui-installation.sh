#!/bin/bash

# Install dependencies
if command -v apt >/dev/null 2>&1; then
    sudo apt update && sudo apt install -y git python3 python3-pip
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Sy --noconfirm git python python-pip
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y git python3 python3-pip
elif command -v yum >/dev/null 2>&1; then
    sudo yum install -y git python3 python3-pip
else
    echo "Unsupported package manager. Install git and python3 manually."
    exit 1
fi

# Clone Ghauri repository
git clone https://github.com/r0oth3x49/ghauri.git "$HOME/ghauri"

# Install Python dependencies
pip3 install -r "$HOME/ghauri/requirements.txt"

# Ensure ~/.local/bin exists
mkdir -p "$HOME/.local/bin"

# Create a symlink
ln -sf "$HOME/ghauri/ghauri.py" "$HOME/.local/bin/ghauri"

# Ensure ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc"
    export PATH="$HOME/.local/bin:$PATH"
    echo "Added ~/.local/bin to PATH. Restart your terminal or run 'source ~/.bashrc' to apply changes."
fi

echo "Installation complete! Run 'ghauri' from anywhere to use the tool."

