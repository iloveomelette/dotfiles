# Execute all.

all: init link brew macos

# Initialize preferences.
init:
	@echo "\033[0;32mStart initializing...\033[0m"
	@bin/init.sh
	@echo "\033[0;32m✨ success\033[0m Initialize preferences"

# Link dotfiles.
link:
	@echo "\033[0;32mStart linking...\033[0m"
	@bin/link.sh
	@echo "\033[0;32m✨ success\033[0m Link dotfiles"

# Brew bundle.
brew:
	@echo "\033[0;32mStart bundle...\033[0m"
	@bin/brew.sh
	@echo "\033[0;32m✨ success\033[0m Completed packages"

# Link vscode settings.
link-vscode:
	@echo "\033[0;32mStart linking for vscode...\033[0m"
	@bin/link-vscode.sh
	@echo "\033[0;32m✨ success\033[0m Link dotfiles"

# Set up macOS defaults.
macos:
	@echo "\033[0;32mStart setting up macOS defaults...\033[0m"
	@bin/defaults.sh
	@echo "\033[0;32m✨ success\033[0m Set up macOS defaults"
