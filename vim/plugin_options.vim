" plugin_options.vim: configuration for plugings

scriptencoding utf-8

if $VIMRC_DIR ==# ''
  let $VIMRC_DIR = $HOME . '.dotfiles/vim/'
endif

" settings for :Explore
let g:netrw_bufsettings =
      \ 'relativenumver nomodifiable nomodified nowrap readonly nobuflisted'
let g:netrw_liststyle   = 3
let g:netrw_winsize     = 25
let g:netrw_banner      = 0
" let g:netrw_browse_split= 4
let g:netrw_preview     = 1
let g:netrw_alto        = 1

augroup netrw
  autocmd!
  autocmd FileType netrw setl bufhidden=delete
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Ultisnips                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger        = '<tab>'
let g:UltiSnipsJumpForwardTrigger   = '<tab>'
let g:UltiSnipsJumpBackwardTrigger  = '<s-tab>'
let g:UltiSnipsEditSplit    = 'vertical'
let g:UltiSnipsSnippetsDir  = $VIMRC_DIR . '/snippets/'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  NerdTree                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeDirArrowExpandable    = '▸'
let g:NERDTreeDirArrowCollapsible   = '▾'
let g:nerdtree_tabs_autoclose       = 0
let g:nerdtree_tabs_startup_cd      = 1
let g:nerdtree_tabs_no_startup_for_diff = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               NerdCommenter                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims         = 1
let g:NERDCommentEmptyLines   = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDDefaultAlign        = 'left'
let g:NERDTrimTrailingWhitespace  = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Syntastic                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open           = 1
let g:syntastic_check_on_wq             = 0
let g:syntastic_cpp_compiler_options    = '--std=c++11'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Airline                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled            = 1
let g:airline#extensions#tabline#formatter          = 'default'
let g:airline#extensions#tabline#exclude_preview    = 1
let g:airline#extensions#tabline#overflow_marker    = '…'
let g:airline#extensions#tabline#close_symbol       = '✕'
let g:airline#extensions#tabline#left_sep       = ''
let g:airline#extensions#tabline#right_alt_sep  = ''

let g:airline#extensions#tabline#buffer_nr_show     = 1
let g:airline#extensions#tabline#buffers_label      = ''
let g:airline#extensions#tabline#buffer_min_count   = 2

let g:airline#extensions#coc#enabled            = 1
let g:airline#extensions#coc#error_symbol       = 'E:'
let g:airline#extensions#coc#warning_symbol     = 'W:'

let g:airline_symbols_ascii         = 0
let g:airline_powerline_fonts       = 1
let g:airline_skip_empty_sections   = 1
let g:airline_highlighting_cache    = 1
let g:airline_exclude_preview       = 1
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = '┊'
let g:airline_right_alt_sep = '┊'
let g:airline_symbols.dirty     = '!'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.spell     = 'S'
let g:airline_symbols.paste     = 'P'
let g:airline_symbols.linenr    = ''

" Hide showing "--INSERT--" on command line when using airline
set noshowmode


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Fzf                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_colors = {
      \ 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment']
      \ }
let g:fzf_history_dir       = '~/.local/share/fzf-history'
let g:fzf_nvim_statusline   = 1
let g:one_allow_italics     = 1
let g:fzf_layout = { 'window': {
      \ 'width': 0.8,
      \ 'height': 0.6,
      \ 'yoffset': 0.1,
      \ 'highlight': 'Comment',
      \ 'border': 'rounded'
      \ } }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Ale                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let vim-lsp do that (because it has diagnostics)
let g:ale_disable_lsp       = 1

let g:ale_lint_on_filetype_changed  = 1
let g:ale_lint_on_text_changed  = 'normal'
let g:ale_lint_on_insert_leave  = 1
let g:ale_lint_on_enter     = 1
let g:ale_lint_on_save      = 1
let g:ale_lint_delay        = 1000      " 1 second

let g:ale_fix_on_save       = 1

let g:ale_set_highlights    = 0
let g:ale_set_quickfix      = 0         " populate quickfix list with errors
let g:ale_set_loclist       = 0
let g:ale_set_signs         = 1

let g:ale_sign_error        = '»'
let g:ale_sign_warning      = '●'

let g:ale_completion_enabled            = 0

let g:ale_sign_column_always            = 1
let g:ale_use_global_executables        = 1
let g:ale_close_preview_on_insert       = 0
let g:ale_javascript_jshint_use_global  = 1

let g:ale_echo_cursor         = 0
let g:ale_virtualtext_cursor  = 1
let g:ale_virtualtext_prefix  = '   '

let g:ale_c_parse_compile_commands = 0
let g:ale_c_parse_makefile = 0

let g:ale_linters = {
      \ 'c': [
      \     'clangtidy',
      \     'clangd',
      \     'flawfinder',
      \     'cquery' ]
      \ }

let g:ale_fixers = {
      \ 'javascript': [
      \     'eslint',
      \     'importjs',
      \     'remove_trailing_lines',
      \     'trim_whitespace'
      \ ],
      \ 'c': [
      \     'clangtidy',
      \     'clang-format'
      \ ],
      \ 'git commit': [ 'gitlint' ],
      \ '*': [
      \     'remove_trailing_lines',
      \     'trim_whitespace'
      \ ]
      \ }

let g:ale_javascript_eslint_executable    = '/usr/local/bin/eslint'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Startify                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_session_persistence  = 1      " save sessions automatically
let g:startify_session_autoload     = 1
let g:startify_change_to_vcs_root   = 1
let g:startify_custom_header        = ['   coditva''s Neovim']
let g:startify_fortune_use_unicode  = 1
let g:startify_padding_left         = 5

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
      \ { 'type': 'sessions',                 'header': ['   Sessions']       },
      \ { 'type': function('s:gitModified'),  'header': ['   Modified']       },
      \ { 'type': function('s:gitUntracked'), 'header': ['   Untracked']      },
      \ { 'type': 'dir',                      'header': ['   MRU '. getcwd()] },
      \ { 'type': 'files',                    'header': ['   MRU']            },
      \ { 'type': 'bookmarks',                'header': ['   Bookmarks']      },
      \ { 'type': 'commands',                 'header': ['   Commands']       },
      \ ]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Coc                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use <c-n> for trigger completion and navigate to the next complete item
if exists('coc#refresh')
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  inoremap <silent><expr> <C-n>
        \ pumvisible() ? '\<C-n>' :
        \ <SID>check_back_space() ? '\<C-n>' :
        \ coc#refresh()
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 GitGutter                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_map_keys = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Blamer                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:blamer_relative_time = 1
highlight Blamer guifg=lightgrey


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              Highlighted yank                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:highlightedyank_highlight_duration = 150

highlight link HighlightedyankRegion NonText


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Nvim Compe                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:compe                   = {}
let g:compe.autocomplete      = v:false
let g:compe.min_length        = 3
let g:compe.preselect         = 'always'

let g:compe.source                  = {}
let g:compe.source.path             = v:true
let g:compe.source.buffer           = v:false
let g:compe.source.spell            = v:true
let g:compe.source.tags             = v:true
let g:compe.source.calc             = v:true
let g:compe.source.nvim_lua         = v:true
let g:compe.source.vsnip            = v:true
let g:compe.source.nvim_lsp         = v:true
let g:compe.source.snippets_nvim    = v:true
let g:compe.source.treesitter       = v:true

set completeopt=menu,menuone,noselect

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                context.vim                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:context_enabled         = 0
let g:context_nvim_no_redraw  = 1
