#!/bin/zsh

TARGET_DIR="${HOME}/Library/Application\ Support/Code/User"

echo "[STEP1] Backup vscode settings"
if [ -e "${TARGET_DIR}/settings.json" ] || [ -e "${TARGET_DIR}/keybindings.json" ]; then
  if [ ! -e "${HOME}/vscode-backup" ]; then
    mkdir -p "${HOME}/vscode-backup"
  fi
  cp -f "${TARGET_DIR}/settings.json" "${HOME}/vscode-backup/"
  cp -f "${TARGET_DIR}/keybindings.json" "${HOME}/vscode-backup/"
fi

echo "[STEP2] Link vscode settings"
for FILE in "$HOME"/.dotfiles/vscode/*; do
  BASE_NAME=$(basename "${FILE}")
  TARGET_PATH="${TARGET_DIR}/${BASE_NAME}"

  ln -snfv "${FILE}" "${TARGET_PATH}"
done

# Wrap up
unset TARGET_DIR FILE BASE_NAME TARGET_PATH
