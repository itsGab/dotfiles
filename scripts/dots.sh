#!/bin/bash


DOT_DIR="$HOME/Documents/dotfiles"

# 1. Bash
mkdir -p "$DOT_DIR/bash"
cp ~/.bashrc "$DOT_DIR/bash/.bashrc"
cp ~/.bash_aliases "$DOT_DIR/bash/.bash_aliases"

# 2. Alacritty
mkdir -p "$DOT_DIR/.config/alacritty"
cp -r ~/.config/alacritty/* "$DOT_DIR/.config/alacritty/"

# 3. VSCodium (settings.json e lista de extensões)
mkdir -p "$DOT_DIR/.config/VSCodium/User"
cp ~/.config/VSCodium/User/settings.json "$DOT_DIR/.config/VSCodium/User/"
# lista
codium --list-extensions > "$DOT_DIR/vscodium-exts.txt"

# 4. Scripts
mkdir -p "$DOT_DIR/scripts"
cp ~/Scripts/* "$DOT_DIR/scripts"

echo "Dotfiles sincronizados!"
