# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Skip duplicates and lines starting with space in command history
export HISTCONTROL=ignoreboth
# Longer history
export HISTSIZE=2000
export HISTFILESIZE=4000

# Append to history file instead of overwriting it
shopt -s histappend

# Check window size periodically and update the LINES and COLUMNS
# environment variables
shopt -s checkwinsize


# Include local command completions
for i in ~/.local/share/bash-completion/completions/*; do
    source "$i"
done


# Set up a colorized prompt
reset="\[$(tput sgr0)\]"
dir_color="\[\033[38;5;10m\]"
lmbd_color="\[\033[38;5;14m\]"

PS1="[$reset$dir_color\w$reset] \n$lmbd_color λ $reset"

unset reset
unset dir_color
unset lmbd_color


# Create a command to run git for the dotfiles in the home directory
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
