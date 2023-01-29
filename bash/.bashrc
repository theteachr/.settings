[[ -f ~/.bash_profile ]] && . ~/.bash_profile

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias gs='git status -sb'

source "${XDG_DATA_HOME:-${HOME}/.local/share}/xelabash/xela.bash"

export PATH=$PATH:${HOME}/.cargo/bin:${HOME}/.local/bin
export EDITOR=vim
