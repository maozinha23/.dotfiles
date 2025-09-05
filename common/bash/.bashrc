#!/usr/bin/bash

# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return ;;
esac

# Export environmental variables
[ -f "${HOME}"/.config/shell/env.sh ] && . "${HOME}"/.config/shell/env.sh

# Set LS_COLORS environment variable
[ -x /usr/bin/dircolors ] && eval "$(dircolors --bourne-shell)"

# Alias definitions
[ -f "${XDG_CONFIG_HOME}"/shell/aliases ] \
  && . "${XDG_CONFIG_HOME}"/shell/aliases

# History configuration
export HISTFILE="${XDG_STATE_HOME}/bash/history"
export HISTCONTROL='ignoreboth:erasedups'

# Prompt customization
# Format: new line[ current directory (in blue) ]:space
PS1='\n[ \[\e[1;34m\]\w\[\e[0m\] ]: '

# Auto "cd" when entering just a path
shopt -s autocd

# fzf integration
eval "$(fzf --bash)"

# Autostart X at login
[ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ] && startx
