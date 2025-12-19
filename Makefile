.PHONY: install-macos
install-macos: check-macos
	@echo "Applying dotfiles..."
	@stow -d ./macos -t ${HOME} .
	@echo "Done!"

.PHONY: check-macos
check-macos:
	@./macos/setup.sh
