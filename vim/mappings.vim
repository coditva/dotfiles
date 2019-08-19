" mappings.vim: define key bindings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Mappings in all modes                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F3> :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Insert mode mappings                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" because jk is easier to type
inoremap jk <Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Normal mode mappings                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" better navigation for wrapped text
nnoremap j gj
nnoremap k gk
nnoremap 0 h0
nnoremap $ g$

" easier window navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" open a 15 lines terminal window at the bottom
nnoremap <c-t> :below 15split<cr>:term<cr>

nnoremap <leader><space> :Files <return>
nnoremap <leader>b :Buffers<return>

" easier switching between buffers
"   5<leader>` switches to the buffer number 5
"   <leader>` switches to the alternate buffer
nnoremap <leader>` <c-^>

" easier jumping between buffers
nnoremap <leader><tab> :bn<return>
nnoremap <leader><s-tab> :bp<return>

" search inside files with the silver searcher
nnoremap <leader>f :Ag<CR>
" search for the word under the cursor
nnoremap <leader>F :execute 'Ag ' . expand('<cword>') <return>

nnoremap <leader>h :Startify<return>

" use language server capabilities
nnoremap <silent> gd :ALEGoToDefinition<cr>
nnoremap <silent> gy :ALEGoToTypeDefinition<cr>
nnoremap <silent> gi :ALEGoToDefinition<cr>
nnoremap <silent> gr :ALEFindReferences<cr>
