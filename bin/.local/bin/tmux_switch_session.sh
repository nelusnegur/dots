#!/usr/bin/env bash

tmux list-sessions | sed -E 's/:.*$//' | rg -v "^$(tmux display-message -p '#S')\$" | fzf --reverse | xargs tmux switch-client -t
