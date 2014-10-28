set nocompatible              " be iMproved, required
filetype off

" Setup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'chase/vim-ansible-yaml'
Bundle 'derekwyatt/vim-scala'
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'dag/vim2hs'
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
inoremap jj <ESC>

" Change leader
let mapleader=","

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

" Create parent directories for files if needed
function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

" Strip trailing whitespace on save
autocmd BufWritePre *.py :%s/\s\+$//e

" Ignore vendor directories
set wildignore+=*/_vendor/*
