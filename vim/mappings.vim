" mappings.vim: define key bindings

" because jk is easier to type
imap jk <Esc>

" better navigation in wrap
nnoremap j gj
nnoremap k gk
nnoremap 0 h0
nnoremap $ g$

" easy indentation in visual mode
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <

" open files using fzf
nnoremap <leader><space> :Files <return>

" search inside files with the silver searcher
nnoremap <leader>f :Ag <return>
