" autocmds.vim: autocmds and file specific settings

" spell is enabled by default in options.vim
" augroup customOptions
"   autocmd!
"   autocmd FileType gitcommit  setlocal spell colorcolumn=72
"   autocmd FileType markdown   setlocal spell
" augroup END

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
  autocmd FileType fzf        tnoremap <buffer> <silent> <esc> <c-c>
augroup END

" augroup remember_folds
"   autocmd!
"   " autocmd BufWinLeave ?* silent! mkview | filetype detect
"   autocmd BufWinEnter ? silent! loadview | filetype detect
" augroup END

augroup misc
  autocmd!

  " remember last position in file
  autocmd BufReadPost *
        \ if line("'\'") > 0 && line("'\'") <= line('$')
        \ | exe "normal g'\""
        \ | endif

  " add syntax highlighting for JS style comments in JSON
  autocmd FileType json       syntax match Comment +\/\/.\+$+

  " close the preview window with esc
  autocmd WinEnter *          if &previewwindow
        \ | nnoremap <buffer><silent><esc> :pc<cr>
        \ | endif
augroup END

augroup terminal
  autocmd!

  if has('nvim')
    " close the terminal by pressing enter rather than typing command again when
    " terminal process is running
    autocmd TermOpen *          setlocal confirm
  endif

  " change to insert mode automatically on switching to terminal
  " autocmd WinEnter *          if &buftype ==# 'terminal'
  "       \ | :startinsert
  "       \ | endif
augroup END

" augroup plugins
"   autocmd!
"
"   " automatically install vim-plug
"   if empty(glob('~/.vim/autoload/plug.vim'))
"     silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"           \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"     autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"   endif
"
"   " install plugins on startup
"   autocmd VimEnter *          if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"         \|   PlugInstall --sync | q
"         \| endif
" augroup END
