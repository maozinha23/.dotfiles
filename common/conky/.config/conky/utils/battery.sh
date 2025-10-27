#!/bin/sh

# ------------------------------------------------------------------------------
# Conky: POWER category - Battery
# ------------------------------------------------------------------------------
. "${HOME}/.config/conky/utils/validate.sh"

PATH_BAT='/sys/class/power_supply/BAT0'
FILE_BAT_CAPACITY="${PATH_BAT}/capacity"
FILE_BAT_ENERGY_FULL="${PATH_BAT}/energy_full"
FILE_BAT_ENERGY_FULL_DESIGN="${PATH_BAT}/energy_full_design"
FILE_BAT_PRESENT="${PATH_BAT}/present"
FILE_BAT_PRESENT_TRUE='1'
FILE_BAT_STATUS="${PATH_BAT}/status"
BAT_OPTIONS='capacity connected health status'
BAT_CONNECTED='ON'
BAT_DISCONNECTED='OFF'
BAT_INVALID='-'

get_capacity() {
  connected=$(get_connected)

  [ "${connected}" = "${BAT_CONNECTED}" ] \
    && capacity=$(cat "${FILE_BAT_CAPACITY}") \
    || capacity="${BAT_INVALID}"

  validate_result "${capacity}"
}

get_connected() {
  connected=$(cat "${FILE_BAT_PRESENT}")

  [ "${connected}" = "${FILE_BAT_PRESENT_TRUE}" ] \
    && connected="${BAT_CONNECTED}" \
    || connected="${BAT_DISCONNECTED}"

  validate_result "${connected}"
}

get_health() {
  connected=$(get_connected)

  if [ "${connected}" = "${BAT_CONNECTED}" ]; then
    energy_full=$(cat "${FILE_BAT_ENERGY_FULL}")
    energy_full_design=$(cat "${FILE_BAT_ENERGY_FULL_DESIGN}")
    health=$(( ( "${energy_full}" * 100 ) / "${energy_full_design}" ))
  fi

  validate_result "${health}"
}

get_status() {
  connected=$(get_connected)

  [ "${connected}" = "${BAT_CONNECTED}" ] \
    && status=$(cat "${FILE_BAT_STATUS}") \
    || status="${BAT_INVALID}"

  validate_result "${status}"
}

option="$1"

validate_files "${FILE_BAT_CAPACITY} ${FILE_BAT_ENERGY_FULL} \
${FILE_BAT_ENERGY_FULL_DESIGN} ${FILE_BAT_PRESENT} ${FILE_BAT_STATUS}" \
  && validate_option "${option}" "${BAT_OPTIONS}" \
  && validate_function "${option}" \
  || exit 1

get_"${option}"

exit 0
