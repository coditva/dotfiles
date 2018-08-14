" --------------------------------------------------
" Autocmds file
" Author: Utkarsh Maheshwari (github.com/UtkarshMe)
" --------------------------------------------------

" remember last position in file
autocmd BufReadPost * if line("'\'") > 0 && line("'\'") <= line("$")
            \ | exe "normal g'\"" | endif

" check spellings in commit message and readme
autocmd FileType gitcommit setlocal spell
autocmd FileType markdown setlocal spell

" vimrc specific
augroup vimScript " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC       " reload vimrc on save
augroup END " }

" html specific commands
autocmd filetype html setlocal 
            \ tabstop=2 shiftwidth=2 softtabstop=2      " smaller indent
            \ textwidth=0                               " allow larger lines

" javascript specific commands
autocmd filetype javascript setlocal 
            \ tabstop=2 shiftwidth=2 softtabstop=2      " smaller indent
autocmd filetype json setlocal 
            \ tabstop=2 shiftwidth=2 softtabstop=2      " smaller indent
