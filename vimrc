set nocompatible              " be iMproved, required
filetype off

" Setup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'chase/vim-ansible-yaml'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
inoremap jj <ESC>

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set expandtab

set backspace=indent,eol,start   " Make backspace work normally

" Easier Window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Change new splits to open on the right and bottom
set splitbelow
set splitright
