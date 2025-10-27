#!/bin/sh

# ------------------------------------------------------------------------------
# Conky: POWER category - AC Adapter
# ------------------------------------------------------------------------------
. "${HOME}/.config/conky/utils/validate.sh"

PATH_AC='/sys/class/power_supply/AC0'
FILE_AC_ONLINE="${PATH_AC}/online"
FILE_AC_ONLINE_TRUE='1'
AC_CONNECTED='ON'
AC_DISCONNECTED='OFF'

get_connected() {
  connected=$(cat "${FILE_AC_ONLINE}")

  [ "${connected}" = "${FILE_AC_ONLINE_TRUE}" ] \
    && connected="${AC_CONNECTED}" \
    || connected="${AC_DISCONNECTED}"

  validate_result "${connected}"
}

validate_files "${FILE_AC_ONLINE}" || exit 1
get_connected

exit 0
