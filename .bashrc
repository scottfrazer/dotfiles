#!/usr/bin/bash -l

function parse_hostname {
    echo $(uname -n | cut -f1 -d'.')
}

function parse_git_in_rebase {
  [[ -d .git/rebase-apply ]] && echo " REBASING"
}

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  branch=$(git symbolic-ref HEAD 2>/dev/null)
  branch=${branch#refs/heads/} # because it's faster than sed
  #branch=$(git branch 2> /dev/null | grep "*" | sed -e s/^..//g)
  if [[ -z ${branch} ]]; then
    return
  fi
  echo "["${branch}$(parse_git_dirty)$(parse_git_in_rebase)"] "
}

function pman {
  man -t "${1}" | open -f -a /Applications/Preview.app
}

function bman {
  man "${1}" | man2html | browser
}

function venv {
  source ~/virtualenvs/$1/bin/activate
}

function venv-reset {
  pushd ~/virtualenvs/$1
  git co .
  git clean -df
  popd
}

# Homebrew Bash completion
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

BLACK="\[\033[0;30m\]"
BLUE="\[\033[0;32m\]"
GREEN="\[\033[0;34m\]"
CYAN="\[\033[0;36m\]"
RED="\[\033[0;31m\]"
PURPLE="\[\033[0;35m\]"
BROWN="\[\033[0;33m\]"
LIGHT_GRAY="\[\033[0;37m\]"
DARK_GRAY="\[\033[1;30m\]"
LIGHT_BLUE="\[\033[1;34m\]"
LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_CYAN="\[\033[1;36m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
NO_COLOR="\[\033[0m\]"
LIGHT_BLUE256="\[\033[38;5;38m\]"
LIGHT_PURPLE256="\[\033[38;5;177m\]"
PASTEL_GREEN256="\[\033[38;5;120m\]"
PASTEL_YELLOW256="\[\033[38;5;221m\]"
BRIGHT_GREEN="\[\033[38;5;34m\]"
ORANGE="\[\033[38;5;208m\]"

export EDITOR='vim'
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/local/share/python:/usr/local/share/python3
export LD_LIBRARY_PATH=/usr/local/lib:~/lib
export VIMRC=$HOME/.vimrc
export LSCOLORS=hxfxcxdxbxegedabagHxHx

export GIT_AUTHOR_NAME=''
export GIT_AUTHOR_EMAIL=''
export GIT_EDITOR=$EDITOR

alias grep="grep --color"
alias ls="ls --color=auto"
alias ll="ls --color=auto -l"
alias la="ls --color=auto -la"
alias tree='tree -Ca -I ".git|.svn|*.pyc|*.swp"'

export PS1="($LIGHT_BLUE256\u$NO_COLOR@$LIGHT_PURPLE\$(parse_hostname)$NO_COLOR) $LIGHT_RED\A$NO_COLOR\n$PASTEL_GREEN256\w $PASTEL_YELLOW256\$(parse_git_branch)$BRIGHT_GREEN\$$NO_COLOR "
