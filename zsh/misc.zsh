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

# add ruby gem bin directory in the path
if [ -d "$HOME/.gem/ruby/2.3.0/bin" ]; then
    export PATH="$PATH:$HOME/.gem/ruby/2.3.0/bin"
fi


if [ -f  "/usr/local/opt/nvm/nvm.sh" ]; then
    mkdir -p "$HOME/.nvm"
    export NVM_DIR="$HOME/.nvm"
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
fi

# use ag for fzf
if which ag > /dev/null ; then
    export FZF_DEFAULT_COMMAND='ag --hidden -g "" --no-color'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi


_zsh_cli_fg() { fg; }
zle -N _zsh_cli_fg
bindkey '^Z' _zsh_cli_fg
