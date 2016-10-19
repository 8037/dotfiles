" ----------------------
" vim configuration file
" ----------------------

" must be first
set nocompatible

" show numbers
set number

" follmethod
set foldmethod=marker

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cursorline
set list listchars=tab:»-,trail:·,extends:»,precedes:«



" syntax highlighting
syntax on
filetype off 

" don't create .swp files
set noswapfile

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle
Plugin 'VundleVim/Vundle.vim'
" lightline
Plugin 'itchyny/lightline.vim'
" gruvbox colorscheme
Plugin 'morhetz/gruvbox'


" add plugins here
call vundle#end()
filetype plugin indent on

" makes lightline pretty
set laststatus=2
set noshowmode

" load sierra on default
colorscheme gruvbox
set background=dark

" vundle cheat sheet
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

