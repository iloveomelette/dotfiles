#!/usr/bin/env bash
set -ue

echo -e "\033[0;32m Check your system for potential problems...\033[0m"
brew doctor

echo -e "\033[0;32m Fetch the newest version of Homebrew and all formulae from GitHub using git and perform any necessary migrations...\033[0m"
brew update

echo -e "\033[0;32m Upgrade outdated casks and outdated, unpinned formulae using the same options they were originally installed with, plus any appended brew formula options...\033[0m"
brew upgrade

echo -e "\033[0;32m Bundler for non-Ruby dependencies from Homebrew, Homebrew Cask, Mac App Store, Whalebrew and Visual Studio Code...\033[0m"
brew bundle --file=${HOME}/.dotfiles/bin/Brewfile

echo -e "\033[0;32m Remove stale lock files and outdated downloads for all formulae and casks, and remove old versions of installed formulae...\033[0m"
brew cleanup
