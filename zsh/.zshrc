export TYPEWRITTEN_LEFT_PROMPT_PREFIX_FUNCTION=(date +%H:%M:%S)
export TYPEWRITTEN_COLORS="left_prompt_prefix:yellow"
export TYPEWRITTEN_CURSOR="bar"

fpath+=${HOME}/.zsh/typewritten

autoload -U promptinit; promptinit
prompt typewritten

path=(
  ${HOME}/go/bin
  /opt/homebrew/opt/openjdk/bin
  $path
)

bindkey -v

bindkey ^R history-incremental-search-backward
bindkey ^S history-incremental-search-forward
bindkey ^L clear-screen
