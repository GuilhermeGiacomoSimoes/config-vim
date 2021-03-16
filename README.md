# my config vim

## To neovim
	vim ~/.config/nvim/init.vim
	paste: 
		set runtimepath^=~/.vim runtimepath+=~/.vim/after
		let &packpath=&runtimepath
		source ~/.vimrc

## To install pathogen 
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## To install syntax Swift
	cd ~/.vim/bundle && \
	git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
	
	cd ~/.vim/bundle && \
	git clone --depth=1 https://github.com/keith/swift.vim

## To install vim-plug
	$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## To install vim-gitgutter
	mkdir -p ~/.vim/pack/airblade/start
	cd ~/.vim/pack/airblade/start
	git clone https://github.com/airblade/vim-gitgutter.git
	vim -u NONE -c "helptags vim-gitgutter/doc" -c q

	- Activation
		turn off with :GitGutterDisable
		turn on with  :GitGutterEnable
 

## To install surround.vim
	mkdir -p ~/.vim/pack/tpope/start
	cd ~/.vim/pack/tpope/start
	git clone https://tpope.io/vim/surround.git
	vim -u NONE -c "helptags surround/doc" -c q

## To install ALE 
	mkdir -p ~/.vim/pack/git-plugins/start
	git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

## Finally, start Vim and prompt vim-plug to install the plugins listed in ~/.vimrc:
	:PlugInstall

## Update plugins with vim-plug
	:PlugUpdate

## Restore plugins
	:PlugSnapshot ~/vim-plug.list
