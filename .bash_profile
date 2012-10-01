[ -z "$PS1" ] && return

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

exec ssh-agent /usr/bin/env bash
