" mappings.vim: define key bindings

" because jk is easier to type
imap jk <Esc>

" better navigation in wrap
nnoremap j gj
nnoremap k gk
nnoremap 0 h0
nnoremap $ g$

" open files using fzf
nnoremap <leader><space> :Files <return>

" search inside files with the silver searcher
nnoremap <leader>f :Ag<space>
nnoremap <leader>F :execute "Ag " . expand("<cword>") <return>

nnoremap <leader><tab> :bn<return>
nnoremap <leader><s-tab> :bp<return>

" use language server capabilities
nnoremap <silent> <leader>d :ALEGoToDefinition<CR>
nnoremap <silent> <leader>s :ALEGoToDefinitionInSplit<CR>
nnoremap <silent> <leader>r :ALEFindReferences<CR>
