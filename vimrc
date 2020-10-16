set hidden
set number
syntax on
set mouse=a
set hlsearch
filetype plugin on
set tabstop=4
set softtabstop=0
set shiftwidth=4
set noexpandtab
set relativenumber
set noswapfile 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2 
let g:netrw_altv = 1
let g:netrw_winsize = 20
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


call plug#begin()
call plug#end()
