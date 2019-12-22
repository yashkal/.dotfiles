USER=$$(whoami)
.PHONY = all clean dots brew clean-all clean-dots clean-brew

all: dots brew

clean: clean-dots 

clean-all: clean-dots clean-brew

/usr/local/bin/brew:
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew: /usr/local/bin/brew
	brew bundle 
	@echo
	@echo "Run the following to use new bash"
	@echo "    chsh -s /usr/local/bin/bash"

clean-brew: /usr/local/bin/brew
	brew ls -1 | xargs brew rm
	brew cask ls -1 | xargs brew cask rm
	@echo
	@echo "May want to run the following to make sure Homebrew & Cask are gone"
	@echo "    sudo rm -rf /usr/local"
	@echo "    sudo rm -rf /Library/Caches/Homebrew"
	@echo "    sudo rm -rf /Users/$(USER)/Library/Caches/Homebrew"

.vim/bundle/Vundle.vim:
	git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim

dots: .vim/bundle/Vundle.vim
	-@ln -sv ~/.dotfiles/.bash_profile ~
	-@ln -sv ~/.dotfiles/.bashrc ~
	-@ln -sv ~/.dotfiles/.aliases ~
	-@ln -sv ~/.dotfiles/.tmux.conf ~
	-@ln -sv ~/.dotfiles/.vim ~
	-vim +PluginInstall +qall

clean-dots:
	-@rm -v ~/.bash_profile
	-@rm -v ~/.bashrc
	-@rm -v ~/.aliases
	-@rm -v ~/.tmux.conf
	-rm -rf ~/.vim
	-rm -rf .vim/bundle/
