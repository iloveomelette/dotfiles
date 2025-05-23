#
# Official GitHub repository: https://github.com/zdharma-continuum/zinit
# ==========================
# Added by Zinit's installer
# ==========================
#
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
#
# ==============================
# End of Zinit's installer chunk
# ==============================
#

#
# ========================
# Plugins loaded for Zinit
# ========================
#
# Load the pure theme, with zsh-async library that's bundled with it.
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting

#
# ========================
# Custom Zsh configuration
# ========================
#
export PURE_PROMPT_SYMBOL="$" # pure theme

#
# ========================================
# Load the shell dotfiles. (Order matters)
# ========================================
#
for DOTFILE in "$HOME"/.dotfiles/system/.{aliases,functions}; do
  [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && . "$DOTFILE"
done

#
# =============
# Activate mise
# =============
#
if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

#
# =======
# Wrap up
# =======
#
unset DOTFILE
