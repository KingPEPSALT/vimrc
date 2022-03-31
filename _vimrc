" PLUGINS {{{
" Plugin code goes here

call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-fugitive'
call plug#end()

" }}}

" MAPPINGS {{{
" Mapping code goes here

nnoremap <leader><space> :nohlsearch<CR>

inoremap jj <esc>
nnoremap Y y$


" nerdtree maps
nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.git$']

" }}}

" VIM CONFIG {{{
" Vim configuration code goes here

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

set nocompatible

filetype on
filetype plugin on
filetype indent on
syntax on

set number

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

set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ (%b\ \|\ 0x%B)\ pos:\ (%l,\ %c)

set laststatus=2

" }}}
 
