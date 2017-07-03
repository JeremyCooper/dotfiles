function take
    mkdir -p $argv
    cd $argv
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
