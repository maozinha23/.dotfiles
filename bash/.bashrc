#!/usr/bin/bash
#-------------------------------------------------------------------------------
# If not running interactively, don't do anything
#-------------------------------------------------------------------------------
[[ $- != *i* ]] && return
#-------------------------------------------------------------------------------
# Export environmental variables
#-------------------------------------------------------------------------------
[[ -f "${HOME}/.config/shell/env.sh" ]] && source "${HOME}/.config/shell/env.sh"

# Set LS_COLORS environment variable
[[ -x /usr/bin/dircolors ]] && eval "$(dircolors --bourne-shell)"
#-------------------------------------------------------------------------------
# Aliases
#-------------------------------------------------------------------------------
[[ -f "${XDG_CONFIG_HOME}/shell/aliases" ]] \
  && source "${XDG_CONFIG_HOME}/shell/aliases"
#-------------------------------------------------------------------------------
# History
#-------------------------------------------------------------------------------
export HISTFILE="${XDG_STATE_HOME}/bash/history"
export HISTCONTROL='ignoreboth:erasedups'
#-------------------------------------------------------------------------------
# Options
#-------------------------------------------------------------------------------
# Auto "cd" when entering just a path
shopt -s autocd
#-------------------------------------------------------------------------------
# Prompt
#-------------------------------------------------------------------------------
# Load git information
get_git_prompt() {
  local git_branch
  git_branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
  [[ -n "$git_branch" ]] && printf 'git->%s: ' "$git_branch"
}

# Format:
# new line[ current directory ]: git->branch:space
PS1='\n[ \w ]: $(get_git_prompt)'
#-------------------------------------------------------------------------------
# Set fzf key bindings and fuzzy completion
#-------------------------------------------------------------------------------
eval "$(fzf --bash)"
#-------------------------------------------------------------------------------
# Append directories to the PATH environment variable
#-------------------------------------------------------------------------------
add_paths() {
  for dir in "$@"; do
    [[ -d "$dir" && ! "$PATH" =~ (^|:)${dir}(:|$) ]] && PATH="${PATH}:${dir}"
  done
}

add_paths "${HOME}/.local/bin"
