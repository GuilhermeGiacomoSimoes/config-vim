# my config vim

## Install dependency for youCompleteMe
	sudo apt install build-essential cmake vim-nox python3-dev

## To install vim-plug
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Finally, start Vim and prompt vim-plug to install the plugins listed in ~/.vimrc:
	:PlugInstall

## Update plugins with vim-plug
	:PlugUpdate

## Restore plugins
	:PlugSnapshot ~/vim-plug.list
