if status is-interactive
fish_add_path ~/.local/bin    # Commands to run in interactive sessions can go here

# BASIC UI CLEAN
set -g fish_greeting ""

# COLOR (dark friendly)
set -U fish_color_normal cdd6f4
set -U fish_color_command 89b4fa
set -U fish_color_param f5c2e7
set -U fish_color_error f38ba8

# ALIAS BASIC PRODUCTIVITY
alias ll="ls -lah"
alias la="ls -A"
alias gs="git status"

# NAVIGATION SHORTCUT
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# STARTUP CLEAN MESSAGE
echo "I'am ready — let's create new world" 
end

# Sharhip
starship init fish | source
