# C-b is not acceptable -- Vim uses it
set-option -g prefix C-a
bind-key C-a last-window

# Start numbering at 1
set -g base-index 1

# Allows for faster key repetition
set -s escape-time 0

# Set status bar
# set -g status-bg black
# set -g status-fg white
# set -g status-left ""
# set -g status-right "#[fg=green]#H"

# Rather than constraining window size to the maximum size of any client 
# connected to the *session*, constrain window size to the maximum size of any 
# client connected to *that window*. Much more reasonable.
setw -g aggressive-resize on

# Allows us to use C-a a <command> to send commands to a TMUX session inside 
# another TMUX session
bind-key a send-prefix

# Activity monitoring
#setw -g monitor-activity on
#set -g visual-activity on

# Example of using a shell command in the status line
#set -g status-right "#[fg=yellow]#(uptime | cut -d ',' -f 2-)"

# Highlight active window
 # set-window-option -g window-status-current-bg red


# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

set -g @plugin 'Nybkox/tmux-kanagawa'
# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

set -g @kanagawa-fixed-location "Barcelona, Catalonia, Spain"
# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
