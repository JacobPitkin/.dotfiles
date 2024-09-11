#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	. /etc/os-release
	
	case $ID in
		arch)
			sudo curl -sS https://starship.rs/install.sh | sh
			sudo pacman -S stow zoxide fzf bat tree
			;;

		*)
			sudo curl -sS https://starship.rs/install.sh | sh
			sudo apt install stow zoxide fzf bat tree
			;;
	esac
elif [[ "$OSTYPE" == "darwin"* ]]; then
	NEW_ZSH=false

	if [ ! -f ~/.zshrc ]
	then
		NEW_ZSH=true
		touch ~/.zshrc
		echo "PATH=$PATH:/opt/homebrew/bin" >> ~/.zshrc
	fi

	brew install --cask alacritty
	brew install --cask font-meslo-lg-nerd-font
	brew install starship\
	stow\
	zoxide\
	fzf\
	bat\
	tree

	cd ~/.dotfiles
	stow .
	cd ~

	if [ $NEW_ZSH ]
	then
		echo "source ~/.zshconfig" >> ~/.zshrc
	fi

	source ~/.zshrc
else
	echo "No commands given to install on this OS. Peek at the install script to get an idea of what needs installing (it's relatively short)."
fi
