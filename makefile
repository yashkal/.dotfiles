.PHONY = dots clean

clean:
	@rm -v ~/.bash_profile
	@rm -v ~/.bashrc
	@rm -v ~/.aliases
	@rm -v ~/.tmux.conf
	@rm -rfv ~/.vim

dots:
	@ln -sv ~/.dotfiles/.bash_profile ~
	@ln -sv ~/.dotfiles/.bashrc ~
	@ln -sv ~/.dotfiles/.aliases ~
	@ln -sv ~/.dotfiles/.tmux.conf ~
	@ln -sv ~/.dotfiles/.vim ~
