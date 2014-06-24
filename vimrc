set nocompatible              " be iMproved, required
filetype off

" Setup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
inoremap jj <ESC>

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set expandtab
