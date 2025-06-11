#!/bin/sh

# Constants {{{
PATH_PACMAN_LOG='/var/log/pacman.log'
ERROR_FILE_NOT_FOUND="-\nError: pacman log file not found: ${PATH_PACMAN_LOG}"
ERROR_UPDATE_DATE='-\nError: unable to get update date'
# }}}

# Validation: Files {{{
if [ ! -f "$PATH_PACMAN_LOG" ]; then
  echo -e "$ERROR_FILE_NOT_FOUND"
  exit 1
fi
# }}}

# Main script {{{
update_date=$(tac "$PATH_PACMAN_LOG" | awk '/upgraded/ { print substr($1, 2, 10); exit }' | date --file=- +%x)

[ -n "$update_date" ] && echo -e "$update_date" || echo -e "$ERROR_UPDATE_DATE"

exit 0
# }}}
