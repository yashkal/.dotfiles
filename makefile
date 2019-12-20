.PHONY = all dots clean vundle brew

all: dots vundle

clean: clean-dots clean-vundle

/usr/local/bin/brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install bash

brew: /usr/local/bin/brew
	brew bundle 

.vim/bundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

dots:
	@ln -sv ~/.dotfiles/.bash_profile ~
	@ln -sv ~/.dotfiles/.bashrc ~
	@ln -sv ~/.dotfiles/.aliases ~
	@ln -sv ~/.dotfiles/.tmux.conf ~
	@ln -sv ~/.dotfiles/.vim ~

vundle: .vim/bundle
	vim +PluginInstall +qall

clean-dots:
	@rm -v ~/.bash_profile
	@rm -v ~/.bashrc
	@rm -v ~/.aliases
	@rm -v ~/.tmux.conf
	rm -rf ~/.vim

clean-vundle:
	rm -rf .vim/bundle/
