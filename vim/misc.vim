" -------------------------------------------------- 
" Misc options file
" Author: UTkarsh Maheshwari (github.com/UtkarshMe)
" -------------------------------------------------- 


" Set triggers for vim snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"


" Set options for nerdTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" Set syntastic options
let g:syntastic_check_on_open = 1   " check on open
let g:syntastic_check_on_wq = 0     " dont check on close
let g:syntastic_cpp_compiler_options="--std=c++11"


" Set airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_symbols_ascii = 1
"let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline_skip_empty_sections = 1
let g:airline_highlighting_cache = 1
set noshowmode
