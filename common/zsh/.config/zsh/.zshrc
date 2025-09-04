#!/usr/bin/zsh

#-------------------------------------------------------------------------------
# If not running interactively, don't do anything
#-------------------------------------------------------------------------------
[[ $- != *i* ]] && return
#-------------------------------------------------------------------------------
# Alias
#-------------------------------------------------------------------------------
[ -f "${XDG_CONFIG_HOME}"/shell/aliases ] \
  && . "${XDG_CONFIG_HOME}"/shell/aliases
#-------------------------------------------------------------------------------
# Set LS_COLORS environment variable
#-------------------------------------------------------------------------------
[ -x /usr/bin/dircolors ] && eval "$(dircolors --bourne-shell)"
#-------------------------------------------------------------------------------
# History
#-------------------------------------------------------------------------------
[ -d "${XDG_STATE_HOME}"/zsh ] || mkdir -p "${XDG_STATE_HOME}"/zsh

HISTFILE="${XDG_STATE_HOME}"/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
#-------------------------------------------------------------------------------
# Completion system
#-------------------------------------------------------------------------------
[ -d "${XDG_CACHE_HOME}"/zsh ] || mkdir --parents "${XDG_CACHE_HOME}"/zsh

autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME}"/zsh/zcompdump-"${ZSH_VERSION}"
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}"/zsh/zcompcache
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#-------------------------------------------------------------------------------
# Options
#-------------------------------------------------------------------------------
# If a command is issued that can’t be executed as a normal command, and the
# command is the name of a directory, perform the cd command to that directory.
# This option is only applicable if the option SHIN_STDIN is set, i.e. if
# commands are being read from standard input. The option is designed for
# interactive use; it is recommended that cd be used explicitly in scripts to
# avoid ambiguity
setopt autocd

# Do not require a leading '.' in a filename to be matched explicitly
setopt globdots

# If a new command line being added to the history list duplicates an older one,
# the older command is removed from the list (even if it is not the previous
# event)
setopt histignorealldups

# This option works like APPEND_HISTORY except that new history lines are added
# to the $HISTFILE incrementally (as soon as they are entered), rather than
# waiting until the shell exits. The file will still be periodically re-written
# to trim it when the number of lines grows 20% beyond the value specified by
# $SAVEHIST (see also the HIST_SAVE_BY_COPY option)
setopt incappendhistory

# Print the exit value of programs with non-zero exit status. This is only
# available at the command line in interactive shells
setopt printexitvalue

# If set, parameter expansion, command substitution and arithmetic expansion are
# performed in prompts. Substitutions within prompts do not affect the command
# status
setopt prompt_subst
#-------------------------------------------------------------------------------
# Keybinding
#-------------------------------------------------------------------------------
bindkey -v

bindkey -M vicmd "^[[3~" vi-delete-char
bindkey -M vicmd "^[[H" vi-beginning-of-line
bindkey -M vicmd "^[[F" vi-end-of-line

bindkey -M viins "^[[3~" vi-delete-char
bindkey -M viins "^[[H" vi-beginning-of-line
bindkey -M viins "^[[F" vi-end-of-line
#-------------------------------------------------------------------------------
# Prompt
#-------------------------------------------------------------------------------
# Load git information
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

# Format:
# new line[ current directory (bold blue) ]: [ git branch (yellow) ]:space
PROMPT=$'\n[ %B%F{blue}%~%f%b ]: ${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '[ %F{11}%b%f ]: '
#-------------------------------------------------------------------------------
# Set fzf key bindings and fuzzy completion
#-------------------------------------------------------------------------------
. <(fzf --zsh)
#-------------------------------------------------------------------------------
# Autostart X at login
#-------------------------------------------------------------------------------
[ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ] && startx
