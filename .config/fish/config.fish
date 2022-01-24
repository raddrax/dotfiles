if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # Activates pywal color scheme
    # cat ~/.cache/wal/sequences
end

if test "$XDG_SESSION_DESKTOP" = "sway"
    export _JAVA_AWT_WM_NONREPARENTING=1
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/ruir/.ghcup/bin $PATH # ghcup-env

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /usr/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

starship init fish | source
# fish_ssh_agent
# source ~/.cache/wal/colors.fish

set -gx JAVA_HOME /etc/alternatives/jre

# set theme
# theme.sh ayu-mirage-simple-cursor

# opam configuration
source /home/ruir/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

zoxide init fish | source
