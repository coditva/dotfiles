" plugins.vim: plugins and addons

" Set the runtime path to include vim-plug and initialize
call plug#begin('~/.vim/autoload')

" ----- Workflow -----
Plug 'airblade/vim-gitgutter'                   " Live git diff symbols
Plug 'SirVer/ultisnips'                         " Snippets engine
Plug 'honza/vim-snippets'                       " Snippets
Plug 'scrooloose/nerdtree'                      " Source tree
Plug 'jistr/vim-nerdtree-tabs'                  " Seperate tree from tabs
Plug 'vim-syntastic/syntastic'                  " Syntax checker
Plug 'scrooloose/nerdcommenter'                 " Shortcut for commenting
Plug 'tpope/vim-fugitive'                       " Git blame
Plug 'junegunn/fzf.vim'                         " Fuzzy searching with fzf

" ----- Eyecandy -----
Plug 'mhinz/vim-startify'                       " Startup page
Plug 'vim-airline/vim-airline'                  " A nice little statusline

" ----- Themes -----
"Plug 'morhetz/gruvbox'                          " Gruvbox theme
Plug 'rakr/vim-one'                              " OneDark+OneLight

" ----- Language support -----
"Plug 'pangloss/vim-javascript'                  " JavaScript
"Plug 'moll/vim-node'                            " NodeJS
"Plug 'tkztmk/vim-vala'                          " Vala


Plug '/usr/local/opt/fzf'

" All of Plugins must be added before the following line
call plug#end()

" Load plugin options
source ~/.dotfiles/vim/plugin_options.vim
