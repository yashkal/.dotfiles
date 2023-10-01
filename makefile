SHELL := /bin/bash
USERNAME = $$(whoami)

.PHONY = help
help: ## Prints help for targets with comments
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY = build
build: dots ## Apply dotfiles ($EDITOR)
ifeq ($(EDITOR),nvim)
	nvim +UpdateRemotePlugins +qall
endif

.PHONY = clean
clean: clean-dots ## Remove dotfiles

.PHONY = build-all
build-all: build brew ## Install all dotfiles and apps (through Homebrew)

.PHONY = clean-all
clean-all: clean-dots clean-brew ## Remove all dotfiles and apps

.PHONY = brew
brew: /opt/homebrew
	-brew bundle
	@echo
	@echo "If you haven't done so, run the following to use the newest Bash shell"
	@echo "    chsh -s /opt/homebrew/bin/bash"
	@echo

.PHONY = brew_diff
brew_diff: ## (TODO) Check difference between Brew formulaes and casks
	@mkdir tmp.dir
	@-brew bundle dump --file=tmp.dir/Brewfile &> /dev/null
	@comm <(sort Brewfile) <(sort tmp.dir/Brewfile)
	@rm -rf tmp.dir

.PHONY = clean-brew
clean-brew:
	brew list --formula -1 | xargs brew uninstall
	brew list --cask -1 | xargs brew uninstall --cask
	[ -x /bin/zsh ] && chsh -s /bin/zsh || chsh -s /bin/bash
	@echo
	@echo "Run the following to uninstall Homebrew:"
	@echo
	@echo '    /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"'
	@echo
	@echo "May want to run the following to make sure Homebrew & Cask are gone:"
	@echo
	@echo "    sudo rm -rf /usr/local"
	@echo "    sudo rm -rf /Library/Caches/Homebrew"
	@echo "    sudo rm -rf /Users/$(USERNAME)/Library/Caches/Homebrew"
	@echo

.PHONY = dots
dots: .vim/bundle/Vundle.vim
	-@ln -sv ~/.dotfiles/.bash_profile ~
	-@ln -sv ~/.dotfiles/.bashrc ~
	-@ln -sv ~/.dotfiles/.aliases ~
	-@ln -sv ~/.dotfiles/.homebrew ~
	-@ln -sv ~/.dotfiles/.tmux.conf ~
	-@ln -sv ~/.dotfiles/.yabairc ~
	-@ln -sv ~/.dotfiles/.skhdrc ~
	-@ln -sv ~/.dotfiles/.inputrc ~
	-@ln -sv ~/.dotfiles/.vim ~
	-$${EDITOR:-vim} +PluginInstall +qall

.PHONY = clean-dots
clean-dots:
	-@rm -v ~/.bash_profile
	-@rm -v ~/.bashrc
	-@rm -v ~/.aliases
	-@rm -v ~/.homebrew
	-@rm -v ~/.tmux.conf
	-@rm -v ~/.yabairc
	-@rm -v ~/.skhdrc
	-@rm -v ~/.inputrc
	-rm -rf ~/.vim
	-rm -rf .vim/bundle/

.vim/bundle/Vundle.vim:
	git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim

/opt/homebrew: # For ARM MacBook
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
