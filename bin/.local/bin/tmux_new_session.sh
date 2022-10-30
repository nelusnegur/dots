#!/usr/bin/env bash

selected_dir=$(find ~/ -type d 2>/dev/null | fzf --height 40% --reverse)

if [[ -z $selected_dir ]]; then
    exit 0
fi

session_name=$(basename "$selected_dir")
is_tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $is_tmux_running ]]; then
    tmux new-session -s $session_name -c $selected_dir
    exit 0
fi

if ! tmux has-session -t $session_name 2> /dev/null; then
    tmux new-session -ds $session_name -c $selected_dir
fi

tmux switch-client -t $session_name
