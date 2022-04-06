" PLUGINS {{{
" Plugin code goes here

call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'ryanoasis/vim-devicons'
	Plug 'cespare/vim-toml', { 'branch': 'main' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'NLKNguyen/papercolor-theme'
call plug#end()

set background=dark
colorscheme PaperColor

" vim-airline config
let g:airline_powerline_fonts = 1
let g:airline_theme = 'violet' 

" }}}

" MAPPINGS {{{
" Mapping code goes here

nnoremap <leader><space> :nohlsearch<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <C-up> <C-w>+
noremap <C-down> <C-w>-
noremap <C-right> <C-w>>
noremap <C-left> <C-w><

inoremap jj <esc>
nnoremap Y y$

" insert new line without entering insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" nerdtree maps
nnoremap <F3> :NERDTreeToggle<Cr>
let NERDTreeIgnore=['\.git$']

" }}}

" VIM CONFIG {{{
" Vim configuration code goes here
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

set nocompatible
set cmdheight=2
filetype on
filetype plugin on
filetype indent on
syntax on
:set omnifunc=jedi#completions
set number
set backspace=indent,eol,start
set encoding=utf-8

set tabstop=4 
set shiftwidth=4

set nowrap
set nobackup

set incsearch

set showcmd
set showmode
set showmatch

set hlsearch
set history=1000

set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let g:NERDTreeIgnore = ['^__pycache__$', '\.git$', '\.swp$', '\.un\~$', '\~$', '\.idea$', '\.history$', '\.vscode$']
let NERDTreeShowHidden = 1

" cursorline on only in cmd mode
:autocmd InsertEnter * set nocul
:autocmd InsertLeave * set cul

" }}} 

" STATUS LINE {{{
" Status bar code goes here

set laststatus=2

" }}}
 
