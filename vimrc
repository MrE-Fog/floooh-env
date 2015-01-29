set nocompatible
if !has('win32')
    set shell=/bin/bash     " this is necessary if using a different shell on OSX
endif
filetype off
if has('win32')
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    let path='~/vimfiles/bundle'
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'kien/ctrlp.vim'
Plugin 'mh21/errormarker.vim'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
if has('gui_running')
    colorscheme solarized
    set guioptions-=T   " removes toolbar in GUI vims
else
    colorscheme solarized 
    highlight ColorColumn ctermbg=4
endif

if has('gui_win32')
    set guifont=Consolas:h11:cANSI
endif

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


