" --------------------------------------------------
" Options for Vimrc file
" Author: UTkarsh Maheshwari (github.com/UtkarshMe)
" --------------------------------------------------


"
" Set options
"

set nocompatible        " improved mode

set number              " line numbers
set relativenumber      " make the numbers relative for easier nav
set scrolloff=5         " leave space at start and end
set wildmenu            " autocomple commands
set wildmode=full       " show me a menu
set undofile            " remember undo
set laststatus=1        " only show statusline when more than 1 window

set hlsearch            " highlight searches
set incsearch           " search as I type
set ignorecase          " ignore if all lower

set tabstop=4           " 4 is sexy...
set shiftwidth=4
set softtabstop=4
set shiftround          " indent properly

set copyindent          " ...or whatever the file already has
set autoindent          " autoindent
set smartindent         " make it smarter

set showmatch           " show matching braces
set showcmd             " show commands in the statusbar
set ruler               " show cursor position
set title               " show title of the file

set expandtab           " spaces over tabs
set smarttab            " insert and delete spaces smartly

set wrap                " dont let text overflow
set linebreak           " better wrapping
set showbreak=>\        " show the wrapping

set pastetoggle=<F2>    " enable easy clipboard pasting
set updatetime=100      " reduce updatetime to 100ms

set background=dark     " dark is good

syntax enable           " enable syntax highlighting


" Keep project directories uncluttered by using a custom
" directory for all vim stuff
set backupdir=~/.vim_backup,.,/tmp
set directory=~/.vim_backup,.,/tmp
set undodir=~/.vim_backup,.,/tmp


"
" Define autocommands and groups
"

" remember last position in file
autocmd BufReadPost * if line("'\'") > 0 && line("'\'") <= line("$") | exe "normal g'\"" | endif

" Check spellings in commit message and readme
autocmd FileType gitcommit setlocal spell
autocmd FileType markdown setlocal spell


" vimrc specific
augroup vimScript " {

    autocmd!

    " reload vimrc on save changes in vimrc
    autocmd BufWritePost $MYVIMRC source $MYVIMRC

augroup END " }


" html specific commands
augroup HtmlCmds

    " needs lesser indentation
    autocmd filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2

    " larger lines are allowed
    autocmd filetype html setlocal textwidth=0

augroup END


" javascript specific commands
augroup JSCmds

    " needs lesser indentation
    autocmd filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2

augroup END
