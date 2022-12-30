function tc --argument-names session_name --description "Create a named tmux session"
	if test -z $session_name
		set session_name (basename (pwd))
	end

	echo $session_name

	tmux new-session -s $session_name
end
