" options.vim: settings and config for vim

set number                              " line numbers
set relativenumber                      " make the numbers relative
set scrolloff=5                         " leave space at start and end
set wildmenu                            " autocomple commands
set wildmode=full                       " show me a menu
set undofile                            " remember undo
set laststatus=1                        " only show statusline if window > 1

set hlsearch                            " highlight searches
set incsearch                           " search as I type
set ignorecase                          " ignore if all lower...
set smartcase                           " ...unless the query contains case

set shiftround                          " indent properly
set tabstop=4                           " 4 is sexy...
set shiftwidth=4
set softtabstop=4

set copyindent                          " ...or whatever the file already has
set autoindent                          " autoindent
set smartindent                         " make it smarter

set showmatch                           " show matching braces
set showcmd                             " show commands in the statusbar
set ruler                               " show cursor position
set cursorline                          " highlight cursor row
set title                               " show title of the file

set expandtab                           " spaces over tabs
set smarttab                            " insert and delete spaces smartly

set nowrap                              " don't mess up my view on small screen
set linebreak                           " better wrapping
set showbreak=>\                        " show the wrapping
set colorcolumn=80,100,120              " show a guide at standard columns
set signcolumn=yes                      " always show signcolumn

set pastetoggle=<F2>                    " enable easy clipboard pasting
set updatetime=2000                     " reduce updatetime to 2000ms
set hidden                              " allow hiding modified buffers
set autoread                            " read file again on change outside vim
au FocusGained * :checktime             " re-read file changes on editor focus

set splitbelow                          " open splits just like my window
set splitright                          " manager

set mouse=a                             " turn on mouse interaction

set spell                               " spell checking

syntax enable                           " enable syntax highlighting

" set shared data options for storing vim info between sessions
if has('nvim')
  set shada='1000                         " 1000 files for mark
endif

set backupdir=~/.vim_backup,.,/tmp      " keep project directories uncluttered
set directory=~/.vim_backup,.,/tmp      " by using a custom directory for all
set undodir=~/.vim_backup,.,/tmp        " vim stuff

let $PATH = '/usr/local/bin:' . $PATH
let g:node_host_prog = '/opt/homebrew/bin/neovim-node-host'
let g:loaded_perl_provider = 0
let g:loaded_python3_provider = 0
let g:loaded_ruby_provider = 0
