" -------------------------------------------------- 
" Mappings file
" Author: UTkarsh Maheshwari (github.com/UtkarshMe)
" Created: 17 Dec 2016
" Modified: 17 Dec 2016
" -------------------------------------------------- 

" Because jj is easier to type
imap jj <Esc>

" Stop using arrow keys
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

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

" Never ever go to Ex mode
nnoremap Q <nop>

" shortcut for nerd-tree
map <F3> :NERDTreeToggle<CR> 
