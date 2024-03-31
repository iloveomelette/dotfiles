#!/usr/bin/env bash
set -ue

for DOTFILE in "$HOME"/.dotfiles/.??* ; do
  [[ "$DOTFILE" == "$HOME/.dotfiles/.git" ]] && continue
  [[ "$DOTFILE" == "$HOME/.dotfiles/.github" ]] && continue
  [[ "$DOTFILE" == "$HOME/.dotfiles/.DS_Store" ]] && continue

  ln -snfv "$DOTFILE" "$HOME"
done

# Wrap up
unset DOTFILE
