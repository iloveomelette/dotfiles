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
# ==================================
# Fetch the newest version of zinit
# ==================================
#

if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
  zsh -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
fi

#
# =====
# Setup
# =====
#
cd ${HOME}/.dotfiles
make
