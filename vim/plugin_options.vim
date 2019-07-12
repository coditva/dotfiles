" plugin_options.vim: configuration for plugings

" Set options for vim snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

" Set options for nerdTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Set options for syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options="--std=c++11"

" Set options for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_symbols_ascii = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline_skip_empty_sections = 1
let g:airline_highlighting_cache = 1
set noshowmode

" Set shortcut for nerd-tree
map <F3> :NERDTreeToggle<CR>

" Set options for fuzzy finder
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
      \ 'header':  ['fg', 'Comment'] }
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_nvim_statusline = 0
let g:one_allow_italics = 1

" Set options for ale
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_set_highlights = 1
let g:ale_set_quickfix = 1      " populate quickfix list with errors
let g:ale_set_signs = 1
let g:ale_fix_on_save = 1
let g:ale_lint_delay = 1000     " 1 second
let g:ale_sign_error = '»'
let g:ale_sign_warning = '●'
let g:ale_use_global_executables = 1
let g:ale_fixers = {
      \ 'javascript': [
      \     'eslint',
      \     'importjs',
      \     'prettier',
      \     'jshint',
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
      \ '*': [
      \     'prettier',
      \     'remove_trailing_lines',
      \     'trim_whitespace' ]
      \ }
