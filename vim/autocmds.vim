" autocmds.vim: autocmds and file specific settings

" remember last position in file
autocmd BufReadPost * if line("'\'") > 0 && line("'\'") <= line('$')
            \ | exe "normal g'\"" | endif


autocmd FileType gitcommit  setlocal
            \ spell
            \ colorcolumn=72

autocmd FileType markdown   setlocal spell

autocmd FileType html       setlocal
            \ tabstop=2 shiftwidth=2 softtabstop=2      " smaller indent
            \ textwidth=0                               " allow larger lines

autocmd FileType javascript setlocal
            \ tabstop=2 shiftwidth=2 softtabstop=2      " smaller indent

autocmd FileType json       setlocal
            \ tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType json       syntax match Comment +\/\/.\+$+

autocmd FileType man        nnoremap d <c-d>
autocmd FileType man        nnoremap u <c-u>

" hide status line when running an FZF command
autocmd! FileType fzf
autocmd FileType fzf        set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
