" plugins.vim: plugins and addons

" Set the runtime path to include vim-plug and initialize
call plug#begin('~/.vim/autoload')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Workflow                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
      Plug 'SirVer/ultisnips'                   " Snippets engine
endif
Plug 'honza/vim-snippets'                       " Snippets

Plug 'kkoomen/vim-doge',                        " DOcumentation GEneration
      \ { 'on': 'DogeGenerate' }

let $FZF_DEFAULT_COMMAND = 'ag -g ""'           " Use .gitignore
Plug 'junegunn/fzf.vim'                         " Fuzzy searching with fzf
Plug '/usr/local/opt/fzf'

Plug 'airblade/vim-gitgutter'                   " Live git diff symbols
Plug 'tpope/vim-fugitive'                       " Git blame

Plug 'tpope/vim-sleuth'                         " Adjusts indent based on file
Plug 'tpope/vim-repeat'                         " Use `.` with plugins
Plug 'tpope/vim-unimpaired'                     " Mappings!

Plug 'machakann/vim-sandwich'                   " Change/delete surroundings
Plug 'scrooloose/nerdcommenter'                 " Shortcut for commenting
Plug 'scrooloose/nerdtree'                      " Shortcut for commenting

Plug 'AndrewRadev/splitjoin.vim'                " Split and join code

Plug 'https://github.com/tpope/vim-vinegar'     " Source tree

Plug 'wellle/targets.vim'                       " More targets to work on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Eye candy                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mhinz/vim-startify',                      " Startup page
      \ { 'on': 'Startify' }
Plug 'vim-airline/vim-airline'                  " A nice little statusline

Plug 'machakann/vim-highlightedyank'            " Flashes the text on yanking
Plug 'psliwka/vim-smoothie'                     " Scrolling, smooth af!

Plug 'APZelos/blamer.nvim'                      " Add blames at the end of line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Themes                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rakr/vim-one'                             " OneDark+OneLight


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Syntax highlighting and LSP                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'prabirshrestha/vim-lsp'                   " LSP client
Plug 'prabirshrestha/async.vim'                 " Dependency for vim-lsp
Plug 'thomasfaingnaert/vim-lsp-ultisnips'       " Use snippets with vim-lsp

Plug 'w0rp/ale'                                 " Linting

Plug 'sheerun/vim-polyglot'                     " Language packs for everyone!


call plug#end()         " All of Plugins must be added before this line

source $VIMRC_DIR/plugin_options.vim          " Load plugin options
