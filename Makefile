# Execute all.

all: init link

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
	@echo "\033[0;32mStart Start bundle...\033[0m"
	@bin/brew.sh
	@echo "\033[0;32m✨ success\033[0m Completed packages"
