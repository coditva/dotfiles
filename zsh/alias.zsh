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

if which npm > /dev/null; then
    alias nr="npm run"
fi

# fuzzy branch checkout
if which fzf > /dev/null; then
    if [ -d "$HOME/.dotfiles/fzf-gems/" ]; then
        alias gcof='git checkout `fzf-gitgb`'
    else
        alias gcof='git checkout `git branch | fzf`'
    fi
fi

alias gfoc='git fetch origin `git branch --show-current`'

alias rmrf="rm -rf"

alias note='mkdir -p `date "+$HOME/notes/%Y/%m/"` && e `date "+$HOME/notes/%Y/%m/%d.md"`'
