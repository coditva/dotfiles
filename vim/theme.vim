" theme.vim: theme and eye candy stuff


" Use 24-bit colors
if (has('termguicolors'))
  set termguicolors
endif


if g:has_plugins == v:true
  colorscheme one

  " Switch vim theme based on terminal theme
  if $ITERM_PROFILE  ==# 'Dark'
    set background=dark
  elseif $ITERM_PROFILE ==# 'Light'
    set background=light
  endif

  let g:airline_theme='one'

  if $ITERM_PROFILE ==# 'Dark' || $ITERM_PROFILE ==# 'Light'
    " Use the background color of the terminal
    hi Normal guibg=NONE ctermbg=NONE
  endif
endif
