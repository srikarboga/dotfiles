function fish_greeting
	if test "$TERM" = "xterm-kitty"
		set_color blue
		echo - $hostname (date +'%I:%M:%S %p')
		set_color cyan
		echo - (uptime -p)
	end
end

function fish_prompt
    set_color green
    echo -n (whoami)
    set_color normal
    echo -n "@"(hostname)" "
    set_color green
    echo -n (prompt_pwd)
    set_color normal
    echo -n "\$ "
end

