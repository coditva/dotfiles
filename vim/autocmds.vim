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
  autocmd FileType fzf        tnoremap <buffer> <silent> <esc> <c-\><c-n>:q<cr>
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

  " close the preview window with esc
  autocmd WinEnter *          if &previewwindow
        \ | nnoremap <buffer><silent><esc> :pc<cr>
        \ | endif
augroup END

augroup terminal
  autocmd!

  " close the terminal by pressing enter rather than typing command again when
  " terminal process is running
  autocmd TermOpen *          setlocal confirm

  " change to insert mode automatically on switching to terminal
  autocmd WinEnter *          if &buftype ==# 'terminal'
        \ | :startinsert
        \ | endif
augroup END

augroup plugins
  autocmd!

  " automatically install vim-plug
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  " install plugins on startup
  autocmd VimEnter *          if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
        \|   PlugInstall --sync | q
        \| endif
augroup END

augroup float_window
  autocmd!

  " use esc key to close preview window if opened
  autocmd User lsp_float_opened nmap <buffer> <silent> <esc>
        \ <Plug>(lsp-preview-close)
  autocmd User lsp_float_closed nunmap <buffer> <esc>
augroup END

augroup lspvim
  autocmd!

  " setup language servers to use with their filetypes and completions
  if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
          \ 'name': 'typescript-language-server',
          \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
          \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
          \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
          \ })
    autocmd FileType javascript,javascript.jsx,javascriptreact setlocal omnifunc=lsp#complete
  endif

  if executable('clangd')
    au User lsp_setup call lsp#register_server({
          \ 'name': 'clangd',
          \ 'cmd': { server_info->[&shell, &shellcmdflag, 'clangd']},
          \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
          \ 'whitelist': ['c', 'cpp']
          \ })
  endif
augroup END

augroup lsp_folding
  autocmd!
  autocmd FileType javascript,javascript.jsx,javascriptreact setlocal
        \ foldexpr=lsp#ui#vim#folding#foldexpr()
        \ foldtext=lsp#ui#vim#folding#foldtext()
augroup end
