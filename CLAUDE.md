# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a macOS-focused dotfiles repository that manages system configuration, shell setup, and application settings through symlinks and installation scripts.

## Architecture

### Directory Structure

- `bin/`: Installation and setup scripts
- `git/`: Git configuration files (`.gitconfig`, `.gitignore_global`, etc.)
- `runcom/`: Shell runtime configuration (`.zshrc`, `.zprofile`)
- `system/`: Shell customizations (`.aliases`, `.functions`)
- `vscode/`: VSCode settings, keybindings, and snippets

### Symlink System

The repository uses symlinks to connect dotfiles to their target locations:
- `make link`: Symlinks files from `git/` and `runcom/` directories to `$HOME`
- `make link-vscode`: Symlinks VSCode settings from `vscode/` to `~/Library/Application Support/Code/User/`

## Common Commands

### Setup and Installation
```sh
# Full setup (init + link + brew + macos)
make all

# Individual steps
make init          # Initialize preferences (installs Homebrew if needed)
make link          # Symlink dotfiles (git, runcom)
make brew          # Install packages via Brewfile
make macos         # Apply macOS defaults
make link-vscode   # Symlink VSCode settings
```

### Development Tasks
```sh
# Install packages via Homebrew bundle
brew bundle --file=bin/Brewfile

# Test individual scripts
./bin/init.sh
./bin/link.sh
./bin/brew.sh
./bin/defaults.sh
./bin/link-vscode.sh
```

## Key Implementation Details

### Zsh Configuration
- Uses zinit for plugin management (auto-installs on first run)
- Loads system dotfiles from `system/.aliases` and `system/.functions` in `.zshrc`
- Integrates with mise for version management and kubectl for Kubernetes autocompletion

### VSCode Settings
- VSCode settings must be manually created first (JSON files) before running `make link-vscode`
- Backup is created at `~/vscode-backup/` before linking

### Package Management
- All Homebrew packages and casks are defined in `bin/Brewfile`
- Uses mise for programming language version management
