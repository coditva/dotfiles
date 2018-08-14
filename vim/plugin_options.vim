" --------------------------------------------------
" Plugin options file
" Author: Utkarsh Maheshwari (github.com/UtkarshMe)
" --------------------------------------------------

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
