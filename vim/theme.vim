" theme.vim: theme and eye candy stuff


" Use 24-bit colors
if (has('termguicolors'))
  set termguicolors
endif

if g:has_plugins == v:true
  colorscheme one
  let g:airline_theme='one'
endif

function SetTheme (theme)
  let &background = a:theme
  let g:theme = a:theme

  if g:no_background == v:true
    " Use the background color of the terminal
    hi Normal guibg=NONE ctermbg=NONE
  endif
endfunction

function ToggleTheme ()
  if g:theme ==# 'dark'
    call SetTheme('light')
  else
    call SetTheme('dark')
  endif
endfunction

" Switch vim theme based on terminal theme
if $ITERM_PROFILE  ==# 'Dark'
  let g:no_background = v:true
  call SetTheme('dark')
elseif $ITERM_PROFILE ==# 'Light'
  let g:no_background = v:true
  call SetTheme('light')
else
  let g:no_background = v:false
  call SetTheme('dark')
endif
