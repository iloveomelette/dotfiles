#!/bin/zsh
set -ue

if [ "$(uname)" != "Darwin" ]; then
  echo -e "\033[0;31mError\033[0m This script is only for macOS\!"
  exit 1
fi

#
# ================
# Install homebrew
# ================
#
# No output messages about progress or results are displayed.
# doc: https://brew.sh/ja/
if command -v brew >/dev/null 2>&1; then
  echo -e "\033[0;34mInfo\033[0m Since Homebrew is already installed, skip this process."
else
  echo -e "\033[0;32m Installing Homebrew...\033[0m"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo -e "\033[0;32m Add Homebrew to my PATH...\033[0m"
  echo >> ${HOME}/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ${HOME}/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
