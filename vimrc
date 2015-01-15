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
if !has('win32')
    Plugin 'shime/vim-livedown'
endif

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
if has('gui_running')
    colorscheme solarized
else
    colorscheme desert
    highlight ColorColumn ctermbg=5
endif

if has('gui_win32')
    set guifont=Consolas:h11:cANSI
    set guioptions-=T   " remove toolbar
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

let g:livedown_open = 1
let g:livedown_port = 1337
map gm :call LivedownPreview()


