#!/bin/sh

# Constants {{{
PATH_AC='/sys/class/power_supply/AC0'
PATH_AC_ONLINE="${PATH_AC}/online"
AC_CONNECTED='ON'
AC_DISCONNECTED='OFF'
ERROR_FILE_NOT_FOUND='-\nError: required files not found in /sys/class/power_supply/'
# }}}

# Validation: Files {{{
if [ ! -f "$PATH_AC_ONLINE" ]; then
  echo -e "$ERROR_FILE_NOT_FOUND"
  exit 1
fi
# }}}

# Functions {{{
is_ac_connected() {
  local connected=$(cat "$PATH_AC_ONLINE")
  [ "$connected" = '1' ] && echo -e "$AC_CONNECTED" || echo -e "$AC_DISCONNECTED"
}
# }}}

# Main script {{{
is_ac_connected

exit 0
# }}}
