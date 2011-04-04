[ -z "$PS1" ] && return

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.bashrc.bsd ]; then
    . ~/.bashrc.bsd
fi
