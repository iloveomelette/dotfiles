#!/bin/zsh
set -ue

CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "[Step 1] Link dotfiles..."
for DOTFILE in "$CURRENT_DIR"/{git,runcom}/.??* ; do
  ln -snfv "$DOTFILE" "$HOME"
done

echo "[Step 2] Wrap up..."
unset DOTFILE CURRENT_DIR

echo "[Step 3] Reload zsh..."
source ${HOME}/.zshrc
