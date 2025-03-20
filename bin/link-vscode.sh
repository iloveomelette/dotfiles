#!/bin/zsh

TARGET_DIR="${HOME}/Library/Application Support/Code/User"

if [ -e "${TARGET_DIR}/settings.json" ] || [ -e "${TARGET_DIR}/keybindings.json" ]; then
  echo -e "\e[32m[STEP1] Backup vscode settings\e[m"

  if [ ! -e "${HOME}/vscode-backup" ]; then
    mkdir -p "${HOME}/vscode-backup"
  fi
  cp -f "${TARGET_DIR}/settings.json" "${HOME}/vscode-backup/"
  cp -f "${TARGET_DIR}/keybindings.json" "${HOME}/vscode-backup/"

  echo -e "\e[32m[STEP2] Link vscode settings\e[m"

  ln -snfv "${HOME}/.dotfiles/vscode/settings.json" "${TARGET_DIR}/settings.json"
  ln -snfv "${HOME}/.dotfiles/vscode/keybindings.json" "${TARGET_DIR}/keybindings.json"
  ln -snfv "${HOME}/.dotfiles/vscode/snippets" "${TARGET_DIR}/snippets"

  echo -e "\e[32mVSCode settings backup completed.\e[m"
else
  echo -e "\e[31mVSCode settings not found.\e[m"
  exit 1
fi

# Wrap up
unset TARGET_DIR
