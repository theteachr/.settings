fpath+=$HOME/.zsh/typewritten

export TYPEWRITTEN_LEFT_PROMPT_PREFIX_FUNCTION=(date +%H:%M:%S)
export TYPEWRITTEN_CURSOR="terminal"

autoload -U promptinit; promptinit
prompt typewritten

path=(${HOME}/go/bin $path)

bindkey -v

bindkey ^R history-incremental-search-backward
bindkey ^S history-incremental-search-forward
bindkey ^L clear-screen
