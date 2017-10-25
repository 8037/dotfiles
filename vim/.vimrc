set nocompatible
filetype off
set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cursorline
set list listchars=tab:»-,trail:·,extends:»,precedes:«

syntax on
filetype off
set noswapfile

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

set laststatus=2
set noshowmode
