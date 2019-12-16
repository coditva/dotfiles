
# if hub is installed, alias it as git
if which hub > /dev/null; then
    alias git=hub
fi

if which nvim > /dev/null; then
    alias vim=nvim
    alias e=nvim
    alias vimrc="vim ~/.dotfiles/vim/*.vim"
fi

if which vlc > /dev/null; then
    alias vlcrandom="vlc -Z"
fi

if [[ -f "$HOME/.spacevim/init.vim" ]]; then
    alias svim="nvim -u $HOME/.spacevim/init.vim"
fi

if which jsctags > /dev/null; then
    alias jstags="find . -type f -iregex '.*\.js$' -not -path './node_modules/*' -exec jsctags {} -f \; | sed '/^$/d' | LANG=C sort > tags"
fi

alias rmrf="rm -rf"
