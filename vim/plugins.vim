" -------------------------------------------------- 
" Plugins for vimrc file
" Author: UTkarsh Maheshwari (github.com/UtkarshMe)
" Created: 17 Dec 2016
" Modified: 17 Dec 2016
" -------------------------------------------------- 


"
" ------- Using vundle to manage plugins ----------- 
"

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Text-mate like snippets for vim
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
" Plugin 'ervandew/supertab'

" Multiple cursors like sublime-text
Plugin 'terryma/vim-multiple-cursors'

" Shortcut for commenting
Plugin 'scrooloose/nerdcommenter'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" Use tab for all completion commands
Plugin 'ervandew/supertab'

" Tree for vim
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'



" All of Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
