#!/usr/bin/env bash

# Format Definition
tmux set -goq @e-sf        "  #I:#W#F  "
tmux set -goq @e-scf       "#I:#W#F"
tmux set -goq @e-rf        "%Y-%m-%d %H:%M"
tmux set -goq @e-lf        "Session:#S/#(tmux ls | wc -l | tr -d ' ')"

# Color Definition
tmux set -goq @p-main      colour240
tmux set -goq @p-bg        colour233
tmux set -goq @p-accent    colour12
tmux set -goq @p-status-bg colour234
tmux set -goq @p-status-fg colour238
tmux set -goq @p-black     black

# Tmux
tmux set -gwF clock-mode-style             24
tmux set -gwF clock-mode-colour            "#{@p-main}"

tmux set -gF  display-panes-colour         "#{@p-bg}" 
tmux set -gF  display-panes-active-colour  "#{@p-status-fg}"

tmux set -gF  message-style                "fg=#{@p-black},bg=#{@p-main}"
tmux set -gF  message-command-style        "fg=#{@p-black},bg=#{@p-main}"

tmux set -gF  status-interval              1
tmux set -gF  status-justify               centre

tmux set -gF  status-left-length           40
tmux set -gF  status-right-length          150

tmux set -gF  status-style                 "fg=#{@p-status-fg},bg=#{@p-bg}"
tmux set -gF  status-left-style            "fg=#{@p-status-fg},bg=#{@p-bg}"
tmux set -gF  status-right-style           "fg=#{@p-status-fg},bg=#{@p-bg}"

tmux set -gwF mode-style                   "fg=#{@p-black},bg=#{@p-main}"

tmux set -gwF pane-border-style            "fg=#{@p-main},bg=default"
tmux set -gwF pane-active-border-style     "fg=#{@p-main},bg=default"

tmux set -gwF window-status-separator      ""
tmux set -gwF window-status-current-style  "fg=#{@p-accent},bg=#{@p-black}"
tmux set -gwF window-status-activity-style "fg=#{@p-status-fg},bg=#{@p-bg}"

tmux set -gF  status-left                  "#[fg=#{@p-main},bg=#{@p-status-bg},bold] #{@e-lf} #[fg=#{@p-status-bg},bg=#{@p-bg},nobold]"
tmux set -gF  status-right                 "#[fg=#{@p-status-bg},bg=#{@p-bg}]#[fg=#{@p-main},bg=#{@p-status-bg},bold] #{@e-rf} "
tmux set -gwF window-status-format         "#{@e-sf}"
tmux set -gwF window-status-current-format "#[fg=#{@p-bg},bg=#{@p-black}]#[fg=#{@p-accent},nobold] #{@e-scf} #[fg=#{@p-bg},bg=#{@p-black},nobold]"
