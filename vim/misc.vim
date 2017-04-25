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
