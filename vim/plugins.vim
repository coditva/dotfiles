" plugins.vim: plugins and addons

" Set the runtime path to include vim-plug and initialize
call plug#begin('~/.vim/autoload')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Workflow                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'                         " Snippets engine
Plug 'honza/vim-snippets'                       " Snippets

Plug 'kkoomen/vim-doge',                        " DOcumentation GEneration
      \ { 'on': 'DogeGenerate' }

Plug 'junegunn/fzf.vim'                         " Fuzzy searching with fzf
Plug '/usr/local/opt/fzf'

Plug 'airblade/vim-gitgutter'                   " Live git diff symbols
Plug 'tpope/vim-fugitive'                       " Git blame

Plug 'tpope/vim-sleuth'                         " Adjusts indent based on file
Plug 'tpope/vim-repeat'                         " Use `.` with plugins

Plug 'machakann/vim-sandwich'                   " Change/delete surroundings
Plug 'scrooloose/nerdcommenter'                 " Shortcut for commenting

Plug 'https://github.com/tpope/vim-vinegar'     " Source tree


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Eye candy                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mhinz/vim-startify',                      " Startup page
      \ { 'on': 'Startify' }
Plug 'vim-airline/vim-airline'                  " A nice little statusline


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

Plug 'moll/vim-node',                     { 'for': ['javascript'] }
Plug 'pangloss/vim-javascript',           { 'for': ['javascript'] }
Plug 'mxw/vim-jsx',                       { 'for': ['javascript'] }
Plug 'mustache/vim-mustache-handlebars',  { 'for': 'mustache' }
Plug 'leafgarland/typescript-vim',        { 'for': 'typescript' }
Plug 'justinmk/vim-syntax-extra',         { 'for': ['c', 'yacc', 'lex'] }
Plug 'elzr/vim-json',                     { 'for': 'json' }


call plug#end()         " All of Plugins must be added before this line

source $VIMRC_DIR/plugin_options.vim          " Load plugin options
