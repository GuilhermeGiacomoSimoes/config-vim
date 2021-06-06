let extension = expand('%:e')

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

let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat = 1
let g:prettier#autoformat_config_present = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2 
let g:netrw_altv = 1
let g:netrw_winsize = 20
let mapleader="\<space>"

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-lists',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-vimlsp',
  \ 'coc-tslint-plugin', 
  \ 'coc-css', 
  \ 'coc-json', 
  \ ]
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

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

	if(extension == "ts" || extension == "html" || extension == "js" || extension == "json")
		Plug 'HerringtonDarkholme/yats.vim'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'prettier/vim-prettier', {
		  \ 'do': 'yarn install',
		  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
	endif

	if(extension == "cpp" || extension == "cc" || extension == "c" || extension == "h" || extension == "hpp")
		Plug 'ycm-core/YouCompleteMe'
	endif

call plug#end()

highlight! link SignColumn LineNr

filetype plugin indent on

colorscheme gruvbox
set background=dark    " Setting dark mode
syntax enable
set completeopt=noinsert,menuone,noselect

let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]


"YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'

