# Execute all.

all: init

# Initialize preferences.
init:
	@echo "\033[0;32mStart initializing...\033[0m"
	@bin/init.sh
	@echo "\033[0;32m✨ success\033[0m Initialize preferences"
