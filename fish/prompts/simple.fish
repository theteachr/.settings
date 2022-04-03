function fish_prompt
    if test $status -ne 0
        set_color red
    else
        set_color brgreen
    end
    echo -n "><> "
    set_color normal
end

function fish_right_prompt
	set_color magenta
    basename (prompt_pwd)
    set_color normal
end
