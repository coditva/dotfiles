# make opening easy
alias open="xdg-open"

# update the system with one command
alias sysupdate="sudo apt-get update && sudo apt-get dist-upgrade --show-progress && sudo apt-get autoremove && sudo apt-get clean && echo Done"

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
