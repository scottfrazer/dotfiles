# branch name plus dirtiness
function parse_git_branch {
    if git update-index -q --refresh 2>/dev/null; git diff-index --quiet --cached HEAD --ignore-submodules -- 2>/dev/null && git diff-files --quiet --ignore-submodules 2>/dev/null
        then dirty=""
    else
        dirty="*"
    fi

    _branch=$(git symbolic-ref HEAD 2>/dev/null)
    _branch=${_branch#refs/heads/} # apparently faster than sed
    branch="" # need this to clear it when we leave a repo
    if [[ -n $_branch ]]; then
        branch=" [${_branch}${dirty}]"
    fi

    echo $branch
}

# Open a manpage in Preview, which can be saved to PDF
function pman {
  man -t "${1}" | open -f -a /Applications/Preview.app
}

# Open a manpage in the browser
function bman {
  man "${1}" | man2html | browser
}

# Gets the current git branch, if one exists.
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}

####
# Colors!
####
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
# 256-color supported colors
LIGHT_BLUE256="\[\033[38;5;38m\]"
LIGHT_PURPLE256="\[\033[38;5;177m\]"
PASTEL_GREEN256="\[\033[38;5;120m\]"
PASTEL_YELLOW256="\[\033[38;5;221m\]"
BRIGHT_GREEN="\[\033[38;5;34m\]"

export GIT_EDITOR=vim
export GIT_AUTHOR_NAME='Scott Frazer'
export GIT_AUTHOR_EMAIL='scott.d.frazer@gmail.com'
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib:~/lib
export VIMRC=$HOME/.vimrc
export PS1="$LIGHT_BLUE256\u$PASTEL_GREEN256 \w $PASTEL_YELLOW256\$(git_branch)$BRIGHT_GREEN\$$NO_COLOR "
export EDITOR='mate'
export GIT_EDITOR='mate -wl1'
export LSCOLORS=hxfxcxdxbxegedabagHxHx
alias grep="grep --color"
alias ls="ls --color=auto"
alias ll="ls --color=auto -l"
alias la="ls --color=auto -la"
alias tree='tree -Ca -I ".git|.svn|*.pyc|*.swp"'
alias sandbox="ssh -A sfrazer@sandgate.bluestatedigital.com -p 2174"

