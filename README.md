# my config vim

- To install vim-plug
	<br>
	$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


- Finally, start Vim and prompt vim-plug to install the plugins listed in ~/.vimrc:
	:PlugInstall

- Update plugins with vim-plug
	:PlugUpdate

- Restore plugins
	:PlugSnapshot ~/vim-plug.list
