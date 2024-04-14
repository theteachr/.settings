. ~/.bash/aliases.bash
. ~/.bash/functions.bash

PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXIT="$?"
    PS1=""

    local c='\[\e[0m\]'    # reset / clear
    local r='\[\e[0;31m\]' # red
    local g='\[\e[0;32m\]' # green
    local y='\[\e[1;33m\]' # yellow
    local b='\[\e[1;34m\]' # blue
    local m='\[\e[0;35m\]' # magenta

    if [ $EXIT != 0 ]; then
        PS1+="${r}"
    else
        PS1+="${g}"
    fi

    PS1+="\u${c}${c}@${b}\h ${m}\W ${y}$ ${c}"
}

HOMEBREW_BIN=/opt/homebrew/bin
GOPATH=${HOME}/go
DOOM=${HOME}/.config/emacs/bin

export PATH=${HOMEBREW_BIN}:$PATH
export PATH=${GOPATH}/bin:$PATH
export PATH=${DOOM}:$PATH
export PATH=${HOME}/.local/bin:$PATH

eval $(opam env)
