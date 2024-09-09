#!/bin/sh
# TODO: Commands for installing meslo font on linux

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	. /etc/os-release
	
	case $ID in
		arch)
			sudo pacman -S zoxide fzf bat tree
			;;

		*)
			sudo apt install zoxide fzf bat tree
			;;
	esac
elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew install --cask font-meslo-lg-nerd-font
	brew install zoxide\
	fzf\
	bat\
	tree
fi
