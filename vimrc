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
set splitright

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:netrw_banner = 0
let g:netrw_liststyle = 0 
let g:netrw_browse_split = 2 
let g:netrw_altv = 1
let g:netrw_winsize = 20
let mapleader="\<space>"
set equalprg=xmllint\ --format\ -

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier'
  \ ]

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 1

nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

autocmd filetype netrw call Netrw_mappings()
function! Netrw_mappings()
  noremap <buffer>% :call CreateInPreview()<cr>
endfunction

function! CreateInPreview()
  let l:filename = input("filename: ")
  execute 'vsp ' . b:netrw_curdir.'/'.l:filename
endf

nnoremap <leader>; A; <esc>
nnoremap <leader>, A, <esc>
nnoremap <leader>y "+y
nnoremap <leader>p "+p

set clipboard+=unnamedplus

syntax enable
set background=dark

function! Rnvar()
  let word_to_replace = expand("<cword>")
  let replacement = input("new name: ")
  execute '%s/\(\W\)' . word_to_replace . '\(\W\)/\1' . replacement . '\2/gc'
endfunction

call plug#begin()
	Plug 'terryma/vim-multiple-cursors'
	Plug 'jiangmiao/auto-pairs'
	Plug 'itchyny/lightline.vim'
	Plug 'morhetz/gruvbox'
	Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
	Plug 'jparise/vim-graphql'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()

highlight! link SignColumn LineNr

filetype plugin indent on

colorscheme gruvbox
set background=dark    " Setting dark mode
syntax enable
set completeopt=noinsert,menuone,noselect
