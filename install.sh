#!/bin/sh
# TODO: Commands for installing meslo font on linux

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
	sudo curl -sS https://starship.rs/install/sh | sh
	brew install --cask font-meslo-lg-nerd-font
	brew install stow\
	zoxide\
	fzf\
	bat\
	tree
else
	echo "No commands given to install on this OS. Peek at the install script to get an idea of what needs installing (it's relatively short)."
fi
