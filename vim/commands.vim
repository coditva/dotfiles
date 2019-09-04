" commands.vim: define custom commands

" Prevent including file names in search with Ag
" also, show a preview
command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \   fzf#vim#with_preview({
      \       'options': '--delimiter : --nth 4..'
      \     }, 'up:60%'),
      \   <bang>0)

" Fuzzy search sessions
command! Sessions
      \ call fzf#run(fzf#wrap({
      \   'dir': g:vim_sessions_dir,
      \   'options': '--prompt "Session> "',
      \   'sink*': {
      \     lines -> execute('SLoad ' . join(lines, "\n"))
      \   }
      \ }))
