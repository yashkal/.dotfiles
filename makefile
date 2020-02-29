.PHONY = all clean dots clean-dots

all: dots

clean: clean-dots 

.vim/bundle/Vundle.vim:
	git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim

dots: .vim/bundle/Vundle.vim
	-@ln -sv ~/.dotfiles/.bash_profile ~
	-@ln -sv ~/.dotfiles/.bashrc ~
	-@ln -sv ~/.dotfiles/.aliases ~
	-@ln -sv ~/.dotfiles/.vim ~
	-vim +PluginInstall +qall

clean-dots:
	-@rm -v ~/.bash_profile
	-@rm -v ~/.bashrc
	-@rm -v ~/.aliases
	-rm -rf ~/.vim
	-rm -rf .vim/bundle/
