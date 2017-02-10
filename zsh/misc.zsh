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
