" mappings.vim: define key bindings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Mappings in all modes                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><leader>nn         :NERDTreeToggle<cr>
nnoremap <silent><leader>nf         :NERDTreeFind<cr>
nnoremap <silent><leader>nw         :NERDTreeClose<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Insert mode mappings                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" because jk is easier to type
inoremap jk                         <Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Normal mode mappings                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" better navigation for wrapped text
nnoremap j                          gj
nnoremap k                          gk
nnoremap 0                          h0
nnoremap $                          g$

" easier window navigation
nnoremap <c-h>                      <c-w>h
nnoremap <c-j>                      <c-w>j
nnoremap <c-k>                      <c-w>k
nnoremap <c-l>                      <c-w>l

" open a 15 lines terminal window at the bottom
nnoremap <silent><c-t>              :below 15split<cr>:term<cr>i

" mappings for fzf
nnoremap <silent><leader>z<space>   :Files<return>
nnoremap <silent><leader><space>    :Files<return>
nnoremap <silent><leader>zf         :Ag<return>
nnoremap <silent><leader>f          :Ag<return>
nnoremap <silent><leader>zb         :Buffers<return>
nnoremap <silent><leader>zh         :Helptags<return>
nnoremap <silent><leader>zr         :History<return>
nnoremap <silent><leader>zc         :BCommits<return>
nnoremap <silent><leader>zC         :Commits<return>
nnoremap <silent><leader>zl         :BLines<return>
nnoremap <silent><leader>zL         :Lines<return>
nnoremap <silent><leader>zg         :GFiles?<return>
nnoremap <silent><leader>zo         :Sessions<return>
" search for the word under the cursor
nnoremap <silent><leader>zF         :execute 'Ag ' . expand('<cword>')<return>

" easier switching between buffers
"   5<leader>` switches to the buffer number 5
"   <leader>` switches to the alternate buffer
nnoremap <leader>` <c-^>

" easier jumping between buffers
nnoremap <silent><leader><tab>      :bn<cr>
nnoremap <silent>gn                 :bn<cr>
nnoremap <silent><leader><s-tab>    :bp<cr>
nnoremap <silent>gN                 :bp<cr>
nnoremap <leader>w                  :CloseBuffer<cr>

nnoremap <leader>h                  :Startify<return>

" use language server capabilities
nnoremap <silent> gd                :LspDefinition<cr>
nnoremap <silent> gD                :LspPeekDefinition<cr>
nnoremap <silent> gy                :LspTypeDefinition<cr>
nnoremap <silent> gY                :LspPeekTypeDefinition<cr>
nnoremap <silent> gi                :LspImplementation<cr>
nnoremap <silent> gI                :LspPeekImplementation<cr>
nnoremap <silent> gu                :LspDeclaration<cr>
nnoremap <silent> gU                :LspPeekDeclaration<cr>
nnoremap <silent> gr                :LspReferences<cr>
nnoremap <silent> K                 :LspHover<cr>

" autocmd Filetype rust,python,go,c,cpp setl omnifunc=lsp#omnifunc
" nnoremap <silent> ;d                :call lsp#text_document_definition()<CR>
" nnoremap <silent> ;i                :call lsp#text_document_implementation()<CR>
" nnoremap <silent> ;y                :call lsp#text_document_declaration()<CR>
" nnoremap <silent> ;h                :call lsp#text_document_hover()<CR>
" nnoremap <silent> ;s                :call lsp#text_document_signature_help()<CR>
" nnoremap <silent> ;t                :call lsp#text_document_type_definition()<CR>

" easier control for git hunks
nnoremap <silent><leader>gn         :GitGutterNextHunk<cr>
nnoremap <silent><leader>gN         :GitGutterPrevHunk<cr>
nnoremap <silent><leader>ga         :GitGutterStageHunk<cr>
nnoremap <silent><leader>gA         :!git add %<cr><cr>
nnoremap <silent><leader>gu         :GitGutterUndoHunk<cr>
nnoremap <silent><leader>gs         :GitGutterPreviewHunk<cr>
nnoremap <silent><leader>gz         :GitGutterFoldHunk<cr>

" theme switching
nnoremap <silent><leader>tt         :call ToggleTheme()<cr>
nnoremap <silent><leader>tl         :call SetTheme('light')<cr>
nnoremap <silent><leader>td         :call SetTheme('dark')<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Mappings in terminal mode                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
tnoremap <Esc>                      <C-\><C-n>
