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
set updatetime=100

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2 
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:gitgutter_async=0

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
call plug#begin()
	Plug 'terryma/vim-multiple-cursors'
	Plug 'wOrp/ale'
	Plug 'skaji/syntax-check-perl'
	Plug 'NLKNguyen/papercolor-theme'
call plug#end()

highlight! link SignColumn LineNr

let g:gitgutter_set_sign_backgrounds = 1

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

let g:ale_linters = { 'perl' : ['perl'] }
let g:ale_perl_perl_executable =  g:plug_home . '/syntax-check-perl/syntax-check'
let g:ale_perl_perl_options = '%s'

execute pathogen#infect()
syntax on
filetype plugin indent on
