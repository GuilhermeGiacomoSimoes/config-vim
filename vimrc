syntax on

filetype plugin on
filetype indent on

set hidden
set number
set mouse=a
set hlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set noexpandtab
set relativenumber
set noswapfile 
set path+=**
set wildmenu
set inccommand=split

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2 
let g:netrw_altv = 1
let g:netrw_winsize = 20
let mapleader="\<space>"
nnoremap <leader>; A; <esc>
nnoremap <leader>, A, <esc>

set clipboard+=unnamedplus

syntax enable
set background=dark

call plug#begin()
	Plug 'terryma/vim-multiple-cursors'
	Plug 'jiangmiao/auto-pairs'
	Plug 'itchyny/lightline.vim'
	Plug 'morhetz/gruvbox'
	Plug 'ycm-core/YouCompleteMe'
call plug#end()

highlight! link SignColumn LineNr

filetype plugin indent on

colorscheme gruvbox
set background=dark    " Setting dark mode
syntax enable
set completeopt=noinsert,menuone,noselect

autocmd BufEnter * call ncm2#enable_for_buffer()
