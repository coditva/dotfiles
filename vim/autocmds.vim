" autocmds.vim: autocmds and file specific settings

augroup customOptions
  autocmd!
  autocmd FileType gitcommit  setlocal spell colorcolumn=72
  autocmd FileType markdown   setlocal spell
augroup END

augroup customIndent
  autocmd!
  autocmd FileType html       setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
  autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType json       setlocal tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType vim        setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END

augroup customMappings
  autocmd!
  autocmd FileType man        nnoremap <buffer> d <c-d>
  autocmd FileType man        nnoremap <buffer> u <c-u>
  autocmd FileType nerdtree   nnoremap <buffer> <silent> <esc> :NERDTreeClose<cr>
  autocmd FileType help       nnoremap <buffer> <silent> <esc> :bd<cr>
augroup END

augroup misc
  autocmd!

  " remember last position in file
  autocmd BufReadPost *       if line("'\'") > 0 && line("'\'") <= line('$')
        \ | exe "normal g'\""
        \ | endif

  " hide status line when running an FZF command
  autocmd FileType fzf        set laststatus=0 noshowmode noruler
        \ | autocmd BufLeave <buffer> set laststatus=2 showmode ruler

  " add syntax highlighting for JS style comments in JSON
  autocmd FileType json       syntax match Comment +\/\/.\+$+
augroup END
