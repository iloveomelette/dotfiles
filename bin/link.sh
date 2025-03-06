#!/usr/bin/env bash
set -ue

CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "[Step 1] Link dotfiles..."
for DOTFILE in "$CURRENT_DIR"/{git,runcom}/.??* ; do
  ln -snfv "$DOTFILE" "$HOME"
done

# Wrap up
echo "[Step 2] Wrap up..."
unset DOTFILE CURRENT_DIR

echo "[Step 3] Reload zsh..."
source ${HOME}/.zshrc
