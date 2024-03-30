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
xcode-select --install > /dev/null

#
# ================
# Install homebrew
# ================
#
# No output messages about progress or results are displayed.
# doc: https://brew.sh/ja/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null
