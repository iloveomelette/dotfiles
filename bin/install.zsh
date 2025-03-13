#!/bin/zsh

#
# ====================================
# Fetch the newest version of dotfiles
# ====================================
#
if [[ ! -e ${HOME}/.dotfiles ]]; then
  git clone https://github.com/iloveomelette/dotfiles ${HOME}/.dotfiles
else
  git -C ${HOME}/.dotfiles pull
fi

#
# =====
# Setup
# =====
#
cd ${HOME}/.dotfiles
make
