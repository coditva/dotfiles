" plugins.vim: plugins and addons

" Set the runtime path to include vim-plug and initialize
call plug#begin('~/.vim/autoload')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Workflow                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'                         " Snippets engine
Plug 'honza/vim-snippets'                       " Snippets

Plug 'junegunn/fzf.vim'                         " Fuzzy searching with fzf
Plug '/usr/local/opt/fzf'

Plug 'airblade/vim-gitgutter'                   " Live git diff symbols
Plug 'tpope/vim-fugitive'                       " Git blame

Plug 'tpope/vim-sleuth'                         " Adjusts indent based on file
Plug 'tpope/vim-repeat'                         " Use `.` with plugins

Plug 'tpope/vim-surround'                       " Change/delete surroundings
Plug 'scrooloose/nerdcommenter'                 " Shortcut for commenting

Plug 'scrooloose/nerdtree'                      " Source tree
Plug 'jistr/vim-nerdtree-tabs'                  " Seperate tree from tabs


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Eye candy                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mhinz/vim-startify'                       " Startup page
Plug 'vim-airline/vim-airline'                  " A nice little statusline


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Themes                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rakr/vim-one'                             " OneDark+OneLight


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Syntax highlighting and LSP                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language servers
Plug 'w0rp/ale'                                 " Language servers and linters

Plug 'moll/vim-node'                            " NodeJS
Plug 'pangloss/vim-javascript'                  " JavaScript
Plug 'mxw/vim-jsx'                              " JSX
Plug 'mustache/vim-mustache-handlebars'         " Mustache templating
Plug 'leafgarland/typescript-vim'               " Typescript
Plug 'justinmk/vim-syntax-extra'                " C, Bison, Flex highlights


call plug#end()         " All of Plugins must be added before this line

source $VIMRC_DIR/plugin_options.vim          " Load plugin options
