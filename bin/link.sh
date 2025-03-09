#!/bin/zsh
set -ue

echo "[Step 1] Link dotfiles..."
for DOTFILE in "$HOME"/.dotfiles/{git,runcom}/.??* ; do
  ln -snfv "$DOTFILE" "$HOME"
done

echo "[Step 2] Wrap up..."
unset DOTFILE

echo "[Step 3] Reload zsh..."
source ${HOME}/.zshrc
