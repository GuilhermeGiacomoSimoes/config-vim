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
set tags+=./tags;/

let g:netrw_banner = 0
let g:netrw_liststyle = 0 
let g:netrw_browse_split = 2 
let g:netrw_altv = 1
let g:netrw_winsize = 20
let mapleader="\<space>"
set equalprg=xmllint\ --format\ -

nnoremap <silent><leader>1 :source ~/.config/nvim/init.vim \| :PlugInstall<CR>

autocmd filetype netrw call Netrw_mappings()
function! Netrw_mappings()
  noremap <buffer>% :call CreateInPreview()<cr>
endfunction

map <C-p> :Files <CR>

function! CreateInPreview()
  let l:filename = input("filename: ")
  execute 'vsp ' . b:netrw_curdir.'/'.l:filename
endf

nnoremap <leader>; A; <esc>
nnoremap <leader>, A, <esc>

let g:ale_linters = {
    \ 'c': ['clang'],
    \ }

command! -bang -nargs=* Rg
	\ call fzf#vim#grep(
	\ 'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>),1,
	\ fzf#vim#with_preview(), <bang>0)

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
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'dense-analysis/ale'
	Plug 'projekt0n/github-nvim-theme'
call plug#end()

highlight! link SignColumn LineNr

filetype plugin indent on

set completeopt=noinsert,menuone,noselect

autocmd FileType gitcommit setlocal textwidth=72

colorscheme github_dark_dimmed
