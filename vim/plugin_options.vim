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
let g:airline_symbols.spell     = 'Ꞩ'
let g:airline_symbols.paste     = 'ρ'
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
let g:fzf_nvim_statusline   = 0
let g:one_allow_italics     = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Ale                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" See :h ale-completion-completopt-bug
set completeopt=menu,menuone,preview,noselect,noinsert

let g:ale_disable_lsp       = 1         " let vim-lsp do that

let g:ale_lint_on_filetype_changed  = 1
let g:ale_lint_on_text_changed  = 1
let g:ale_lint_on_insert_leave  = 1
let g:ale_lint_on_enter     = 1
let g:ale_lint_on_save      = 1
let g:ale_lint_delay        = 1000      " 1 second

let g:ale_fix_on_save       = 0

let g:ale_set_highlights    = 0
let g:ale_set_quickfix      = 1         " populate quickfix list with errors
let g:ale_set_signs         = 1

let g:ale_sign_error        = '»'
let g:ale_sign_warning      = '●'

let g:ale_completion_enabled              = 1
let g:ale_completion_tsserver_autoimport  = 1

let g:ale_sign_column_always            = 1
let g:ale_use_global_executables        = 1
let g:ale_close_preview_on_insert       = 1
let g:ale_javascript_jshint_use_global  = 1

let g:ale_echo_cursor         = 0
let g:ale_virtualtext_cursor  = 1
let g:ale_virtualtext_prefix  = '   '

let g:ale_fixers = {
      \ 'javascript': [
      \     'eslint',
      \     'importjs',
      \     'prettier',
      \     'remove_trailing_lines',
      \     'trim_whitespace' ],
      \ 'json': [
      \     'jsonlint',
      \     'prettier' ],
      \ 'c': [
      \     'clang',
      \     'gcc',
      \     'clang-tidy',
      \     'clang-format' ],
      \ 'git commit': [
      \     'gitlint' ],
      \ 'vim': [
      \     'vint'
      \ ],
      \ '*': [
      \     'prettier',
      \     'remove_trailing_lines',
      \     'trim_whitespace' ]
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Startify                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_session_persistence  = 1      " save sessions automatically
let g:startify_session_autoload     = 1
let g:startify_change_to_vcs_root   = 1
let g:startify_custom_header        = ['   coditva''s Neovim']
let g:startify_fortune_use_unicode  = 1
let g:startify_padding_left         = 5

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
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
"                                  lsp-vim                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimlsp
  autocmd!

  " use esc key to close preview window if opened
  autocmd User lsp_float_opened nmap <buffer> <silent> <esc>
        \ <Plug>(lsp-preview-close)
  autocmd User lsp_float_closed nunmap <buffer> <esc>

  " setup language servers to use with their filetypes and completions
  if executable('javascript-typescript-stdio') && v:false
    au User lsp_setup call lsp#register_server({
          \ 'name': 'javascript-typescript-stdio',
          \ 'cmd': { server_info->[&shell, &shellcmdflag, 'javascript-typescript-stdio']},
          \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
          \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
          \ })
    autocmd FileType javascript,javascript.jsx,javascriptreact setlocal omnifunc=lsp#complete
  endif
  if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
          \ 'name': 'typescript-language-server',
          \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
          \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
          \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
          \ })
    autocmd FileType javascript,javascript.jsx,javascriptreact setlocal omnifunc=lsp#complete
  endif
  if executable('clangd')
    au User lsp_setup call lsp#register_server({
          \ 'name': 'clangd',
          \ 'cmd': { server_info->[&shell, &shellcmdflag, 'clangd']},
          \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
          \ 'whitelist': ['c', 'cpp']
          \ })
  endif

  autocmd FileType javascript,javascript.jsx,javascriptreact setlocal
        \ foldexpr=lsp#ui#vim#folding#foldexpr()
        \ foldtext=lsp#ui#vim#folding#foldtext()
augroup END

let g:lsp_diagnostics_echo_cursor = 0
let g:lsp_hover_conceal           = 0

highlight link LspErrorText       ErrorMsg
highlight link LspWarningText     NonText
highlight link LspHintText        NonText
highlight link LspInformationText NonText

highlight clear LspErrorHighlight
highlight clear LspWarningHighlight
highlight clear LspHintHighlight
highlight clear LspInformationHighlight

let g:lsp_signs_error   = { 'text': '»' }
let g:lsp_signs_warning = { 'text': '●' }
let g:lsp_signs_hint    = { 'text': '‣' }
let g:lsp_signs_information   = { 'text': '‣' }
let g:lsp_preview_max_height  = 15
let g:lsp_preview_max_width   = 80
let g:lsp_virtual_text_prefix = '  ‣ '
