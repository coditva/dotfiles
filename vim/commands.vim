" commands.vim: define custom commands

" Prevent including file names in search with Ag
" also, show a preview
command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \   fzf#vim#with_preview({
      \       'options': '--delimiter : --nth 4..'
      \     }, 'up:60%'),
      \   <bang>0)
