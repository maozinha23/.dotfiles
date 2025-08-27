#!/usr/bin/zsh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias definitions
[ -f "${XDG_CONFIG_HOME}"/shell/aliases ] \
  && . "${XDG_CONFIG_HOME}"/shell/aliases

# Set LS_COLORS environment variable
[ -x /usr/bin/dircolors ] && eval "$(dircolors --bourne-shell)"

# Use XDG dirs for completion and history files
[ -d "${XDG_STATE_HOME}"/zsh ] || mkdir -p "${XDG_STATE_HOME}"/zsh

HISTFILE="${XDG_STATE_HOME}"/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

[ -d "${XDG_CACHE_HOME}"/zsh ] || mkdir --parents "${XDG_CACHE_HOME}"/zsh

zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}"/zsh/zcompcache
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME}"/zsh/zcompdump-"${ZSH_VERSION}"

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

# Prompt customization
# Format: new line[ current directory (in bold blue) ]:space
PROMPT=$'\n[ %B%F{blue}%~%f%b ]: '

# Set fzf key bindings and fuzzy completion
. <(fzf --zsh)

# Autostart X at login
[ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ] && startx
