source ~/.bash/aliases.bash

PROMPT_COMMAND=__prompt_command    # Function to generate PS1 after CMDs

__prompt_command() {
    local EXIT="$?"                # This needs to be first
    PS1=""

    local reset='\[\e[0m\]'

    local red='\[\e[0;31m\]'
    local gre='\[\e[0;32m\]'
    local yel='\[\e[1;33m\]'
    local blu='\[\e[1;34m\]'
    local pur='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${red}\u${reset}"        # Add red if exit code non 0
    else
        PS1+="${gre}\u${reset}"
    fi

    PS1+="${reset}@${blu}\h ${pur}\W${yel}$ ${reset}"
}

HOMEBREW_BIN=/opt/homebrew/bin/
PATH=${HOMEBREW_BIN}:$PATH
