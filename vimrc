set nocompatible
set shell=/bin/bash     " this is necessary if using a different shell on OSX
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'MarcWeber/vim-addon-local-vimrc'
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set laststatus=2
set autoindent
set backspace=indent,eol,start
set ruler
set showcmd
set colorcolumn=80
if has('mouse')
    set mouse=a
endif
set makeprg=cd\ $HOME/projects/oryol;./oryol\ make 
