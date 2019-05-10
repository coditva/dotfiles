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
    set background=dark
    let theme = 'gruvbox'
    colorscheme gruvbox

    if theme == 'material'
        let g:material_theme_style = &background
    elseif theme == 'gruvbox'
        let g:gruvbox_contrast_dark = 'hard'
        set cursorline
    endif

    let g:airline_theme = theme

endif
