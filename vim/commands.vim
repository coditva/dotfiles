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

function CloseBuffer ()
      let l:isOpen = 0

      if exists("g:NERDTree") && g:NERDTree.IsOpen()
            let l:isOpen = 1
            NERDTreeClose
      endif

      bd

      if l:isOpen
            NERDTreeToggle
            wincmd w
      endif
endfunction

command! CloseBuffer
      \ call CloseBuffer()

" Statusline
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction
