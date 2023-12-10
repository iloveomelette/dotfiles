# Load the shell dotfiles. (Order matters)
for DOTFILE in "$HOME"/.dotfiles/system/.{aliases,functions}; do
  [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Configuration framework for Zsh
# doc: https://github.com/sorin-ionescu/prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Wrap up
unset DOTFILE
