" theme.vim: theme and eye candy stuff

" Nvim specific stuff
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

if g:has_plugins == v:true
    colorscheme one
    if $ITERM_PROFILE  == 'Dark'
        set background=dark
    else
        set background=light
    endif

    let g:airline_theme='one'

    " Use the background color of the terminal
    hi Normal guibg=NONE ctermbg=NONE
endif
