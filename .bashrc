#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set LS_COLORS environment variable
if [[ -x /usr/bin/dircolors ]]; then
  eval "$(dircolors --bourne-shell)"
fi

# Export environmental variables
if [[ -f ~/.env ]]; then
  export $(envsubst < $HOME/.env)
fi

# Alias definitions
if [[ -f ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

# Prompt customization
# Format: new line[ current directory (in blue) ]:space
PS1='\n[ \[\e[1;34m\]\w\[\e[0m\] ]: '

# Auto "cd" when entering just a path
shopt -s autocd

# fzf integration
eval "$(fzf --bash)"

# Autostart X at login
#if [[ -z "$DISPLAY" ]] && [[ "$XDG_VTNR" = 1 ]]; then
#  startx
#fi
