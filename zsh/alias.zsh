
# if hub is installed, alias it as git
if which hub > /dev/null; then
    alias git=hub
fi

if which nvim > /dev/null; then
    alias vim=nvim
fi

if which vlc > /dev/null; then
    alias vlcrandom="vlc -Z"
fi

if [[ -f "$HOME/.spacevim/init.vim" ]]; then
    alias svim="nvim -u $HOME/.spacevim/init.vim"
fi
