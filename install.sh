#!/usr/bin/env bash

# this script installs my dotfiles
#
# usage:
#   ./install.sh
#
# dependencies (for full functionality):
#   - git
#   - tmux
#   - unzip ( for installing language servers )
#   - neovim
#   - bash/zsh
#   - ripgrep if you want to use ripgrep
#   - fzf if you want to use fzf
#   - build-essential packages if you want to use clangd
#   - python3/pip3
#   - nodejs for typescript language server

set -e

# directories
DOTFILES="$HOME/dotfiles"
BACKUP="$HOME/.dotfiles-backup/$(date +%Y%m%d-%H%M%S)"

# create backup directory
mkdir -p "$BACKUP"

# link files
link () {
  src="$1"
  dest="$2"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    mkdir -p "$BACKUP/$(dirname "$dest")"
    mv "$dest" "$BACKUP/$dest"
    echo "backed up $dest"
  fi

  rm -rf "$dest"
  ln -s "$src" "$dest"
  echo "linked $dest → $src"
}

mkdir -p "$HOME/.config"

link "$DOTFILES/bash/.bashrc" "$HOME/.bashrc"
link "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
link "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
link "$DOTFILES/nvim" "$HOME/.config/nvim"

# finish
echo "[X] dotfiles installed"
echo "[X] backups in $BACKUP"

