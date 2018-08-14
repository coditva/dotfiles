" --------------------------------------------------
" Plugins for vimrc file
" Author: Utkarsh Maheshwari (github.com/UtkarshMe)
" --------------------------------------------------

filetype off                                    " Required for vundle

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                   " The plugin manager

" ----- Workflow -----
Plugin 'airblade/vim-gitgutter'                 " Live git diff symbols
Plugin 'SirVer/ultisnips'                       " Snippets engine
Plugin 'honza/vim-snippets'                     " Snippets
Plugin 'scrooloose/nerdtree'                    " Source tree
Plugin 'jistr/vim-nerdtree-tabs'                " Seperate tree from tabs
Plugin 'vim-syntastic/syntastic'                " Syntax checker
Plugin 'scrooloose/nerdcommenter'               " Shortcut for commenting

" ----- Eyecandy -----
Plugin 'mhinz/vim-startify'                     " Startup page
Plugin 'vim-airline/vim-airline'                " A nice little statusline

" ----- Themes -----
Plugin 'morhetz/gruvbox'                        " Gruvbox theme

" ----- Language support -----
Plugin 'pangloss/vim-javascript'                " JavaScript
Plugin 'moll/vim-node'                          " NodeJS
Plugin 'tkztmk/vim-vala'                        " Vala

" All of Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Load plugin options
source ~/.dotfiles/vim/plugin_options.vim
