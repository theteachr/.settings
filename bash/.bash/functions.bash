function tc {
	local session_name=${1:-$(basename "`pwd`")}
	tmux new-session -s "$session_name"
}
