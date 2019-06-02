# setup pyenv
if which pyenv > /dev/null ; then
    export PATH="$PATH:$HOME/.pyenv/bin"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# alias for the fuck
if which fuck > /dev/null ; then
    eval "$(thefuck --alias)"
fi

# add ruby gems in the path
if [ -d "$HOME/.gem/ruby/2.4.0/bin" ]; then
    export PATH="$PATH:$HOME/.gem/ruby/2.4.0/bin"
fi

# add local bin directory in the path
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$PATH:$HOME/.local/bin"
fi

# initialize nvm
if [ -f "/usr/share/nvm/init-nvm.sh" ]; then
    source /usr/share/nvm/init-nvm.sh
fi

# use vim as text editor
export VISUAL="vim"
export MANPAGER="nvim -c 'set ft=man' -"

# add anaconda to path if present
if [ -d "$HOME/bin/anaconda3" ]; then
    export PATH="$PATH:$HOME/bin/anaconda3/bin"
fi

# add an askpass program
if [ -f "/usr/lib/seahorse/ssh-askpass" ]; then
    export SUDO_ASKPASS="/usr/lib/seahorse/ssh-askpass"
fi

# add cargo bin directory in the path
if [ -d "$HOME/.cargo/bin" ]; then
    export PATH="$PATH:$HOME/.cargo/bin"
fi
