" -------------------------------------------------- 
" Options for Vimrc file
" Author: UTkarsh Maheshwari (github.com/UtkarshMe)
" Created: 17 Dec 2016
" Modified: 01 Mar 2017
" -------------------------------------------------- 


"
" Set options
"

set nocompatible        " improved mode

set number              " Line numbers
set scrolloff=5         " Leave space at start and end
set wildmenu            " Autocomple commands
set undofile            " Remember undo

set hlsearch            " Highlight searches 
set incsearch           " Search as I type

set tabstop=4           " 4 is sexy...
set shiftwidth=4
set softtabstop=4

set copyindent          " ...or whatever the file already has
set autoindent          " autoindent
set smartindent         " make it smarter

set showmatch           " show matching braces
set ruler               " show cursor position
set title               " show title of the file

set expandtab           " spaces over tabs
set smarttab            " insert and delete spaces smartly

set pastetoggle=<F2>    "enable easy clipboard pasting

syntax enable           " enable syntax highlighting
