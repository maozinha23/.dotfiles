#!/usr/bin/zsh

# Export environmental variables
[ -f "${HOME}"/.config/shell/env.sh ] && . "${HOME}"/.config/shell/env.sh

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
