function :w
    echo "You're not in vim you dumbass"
end
function listcolors
    ls ~/.config/colorschemes/mbadolato/xrdb
end
function take
    mkdir -p $argv
    cd $argv
end
function sudo
	if test "$argv" = !!
		eval command sudo $history[1]
	else
		command sudo $argv
	end
end
function S
    vim ~/.config/fish/config.fish
end
function tml
    tmux list-sessions
end
function tma
    tmux attach-session -t $argv
end
