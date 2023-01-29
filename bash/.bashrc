# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ${HOME}/.bash/aliases
source ${HOME}/.bash/functions

export EDITOR=vim

function __prompt_command {
    local EXIT="$?"
    PS1=""

    local RESET='\[\e[0m\]'

    local RED='\[\e[0;31m\]'
    local GREEN='\[\e[0;32m\]'
    local BYELLOW='\[\e[1;33m\]'
    local BBLUE='\[\e[1;34m\]'
    local MAGENTA='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${RED}\u${RESET}"
    else
        PS1+="${GREEN}\u${RESET}"
    fi

    PS1+="${RESET}@${BBLUE}\h ${MAGENTA}\W${BYELLOW}$ ${RESET}"
}

PROMPT_COMMAND=__prompt_command

export PATH=$PATH:${HOME}/.cargo/bin:${HOME}/.local/bin
export EDITOR=vim
