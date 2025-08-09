#!/bin/sh

# ------------------------------------------------------------------------------
# Conky: THERMAL category
# ------------------------------------------------------------------------------
. "${HOME}/.config/conky/utils/validate.sh"

THERMAL_OPTIONS='cpu_temp cpu_fan_percent cpu_fan_speed'

get_cpu_temp() {
  cpu_temp=$(sensors | awk '/Package id/ { print int($4); exit }')
  validate_result "${cpu_temp}"
}

get_cpu_fan_percent() {
  cpu_fan_percent=$(sensors | awk '/pwm/ { print int($2); exit }')
  validate_result "${cpu_fan_percent}"
}

get_cpu_fan_speed() {
  cpu_fan_speed=$(sensors | awk '/cpu_fan/ { print int($2); exit }')
  validate_result "${cpu_fan_speed}"
}

option="$1"

validate_option "${option}" "${THERMAL_OPTIONS}" \
  && validate_function "${option}" \
  || exit 1

get_"${option}"

exit 0
