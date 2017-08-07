# setup pyenv
if which pyenv > /dev/null ; then
    export PATH="/home/me/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# alias for the fuck
if which fuck > /dev/null ; then
    eval "$(thefuck --alias)"
fi

# add ruby gems in the path
if [ -d "$HOME/.gem/ruby/2.4.0/bin" ]; then
    PATH=~/.gem/ruby/2.4.0/bin:$PATH
fi

# add local bin directory in the path
if [ -d "$HOME/.local/bin" ]; then
    PATH=~/.local/bin:$PATH
fi

# initialize nvm
if [ -f "/usr/share/nvm/init-nvm.sh" ]; then
    source /usr/share/nvm/init-nvm.sh
fi

# use vim as text editor
export VISUAL="vim"
