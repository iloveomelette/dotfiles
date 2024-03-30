#!/usr/bin/env bash
set -ue

if [ "$(uname)" != "Darwin" ]; then
  echo -e "\033[0;31mError\033[0m This script is only for macOS\!"
  exit 1
fi

#
# ================================
# Install xcode command line tools
# ================================
#
# No output messages about progress or results are displayed.
if which xcode-select >/dev/null 2>&1; then
  echo -e "\033[0;32m Installing Xcode...\033[0m"
  xcode-select --install > /dev/null
fi

#
# ================
# Install homebrew
# ================
#
# No output messages about progress or results are displayed.
# doc: https://brew.sh/ja/
if which brew >/dev/null 2>&1; then
  echo -e "\033[0;32m Installing Homebrew...\033[0m"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null
fi
