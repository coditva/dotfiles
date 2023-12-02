" plugins.vim: plugins and addons

" Set the runtime path to include vim-plug and initialize
call plug#begin('~/.vim/autoload')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Workflow                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
      " Plug 'SirVer/ultisnips'                   " Snippets engine
      Plug 'hrsh7th/nvim-compe'                 " Completion engine
endif
Plug 'honza/vim-snippets'                       " Snippets

" Plug 'kkoomen/vim-doge',                        " DOcumentation GEneration
"       \ { 'on': 'DogeGenerate' }

let $FZF_DEFAULT_COMMAND = 'ag -g ""'           " Use .gitignore
Plug 'junegunn/fzf.vim'                         " Fuzzy searching with fzf
Plug '/usr/local/opt/fzf'

" Plug 'airblade/vim-gitgutter'                   " Live git diff symbols
Plug 'nvim-lua/plenary.nvim'                    " Required by gitsigns
Plug 'lewis6991/gitsigns.nvim'                  " Live git diff symbols
Plug 'tpope/vim-fugitive'                       " Git blame

Plug 'tpope/vim-sleuth'                         " Adjusts indent based on file
Plug 'tpope/vim-repeat'                         " Use `.` with plugins
Plug 'tpope/vim-unimpaired'                     " Mappings!

Plug 'machakann/vim-sandwich'                   " Change/delete surroundings

Plug 'scrooloose/nerdcommenter'                 " Shortcut for commenting
Plug 'scrooloose/nerdtree'                      " File explorer

" Plug 'ms-jpq/chadtree',
"       \ {
"       \   'branch': 'chad',
"       \   'do': 'python3 -m chadtree deps'
"       \ }

Plug 'pechorin/any-jump.vim'                    " Jump/Search

Plug 'AndrewRadev/splitjoin.vim'                " Split and join code

Plug 'wellle/context.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Eye candy                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mhinz/vim-startify',                      " Startup page
      \ { 'on': 'Startify' }
Plug 'vim-airline/vim-airline'                  " A nice little statusline

Plug 'ryanoasis/vim-devicons'                   " Icons in vim

Plug 'machakann/vim-highlightedyank'            " Flashes the text on yanking
Plug 'psliwka/vim-smoothie'                     " Scrolling, smooth af!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Themes                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rakr/vim-one'                             " OneDark+OneLight


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Syntax highlighting and LSP                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'w0rp/ale'                                 " Linting

if has('nvim')
      Plug 'neovim/nvim-lspconfig'              " Use nvim's LSP
      Plug 'nvim-lua/lsp-status.nvim'           " LSP statusline

      Plug 'jose-elias-alvarez/null-ls.nvim'    " Dependency for prettier.nvim
      Plug 'MunifTanjim/prettier.nvim'
endif

Plug 'sheerun/vim-polyglot'                     " Language packs for everyone!

Plug 'github/copilot.vim'

" Plug 'stevearc/aerial.nvim'

call plug#end()         " All of Plugins must be added before this line

source $VIMRC_DIR/plugin_options.vim          " Load plugin options
