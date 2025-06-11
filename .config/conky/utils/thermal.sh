#!/bin/sh

# Constants {{{
THERMAL_CPU_FAN_SPEED='cpu_fan'
THERMAL_CPU_FAN_PWM='pwm'
THERMAL_CPU_TEMP='Package id 0'
THERMAL_OPTIONS='cpu cpufan'
ERROR_ARGUMENT_MISSING='-\nError: missing argument. Must supply an option: cpu or cpufan'
ERROR_OPTION_INVALID='-\nError: not a valid option'
ERROR_CPU_FAN='-\nError: failed to get CPU fan speed'
ERROR_CPU_TEMP='-\nError: failed to get CPU temperature'
# }}}

# Arguments {{{
option="$1"
# }}}

# Validation: Arguments {{{
# Check for missing argument
if [ -z "$1" ]; then
  echo -e "$ERROR_ARGUMENT_MISSING"
  exit 1
fi

# Check for invalid option
valid_option='false'

for opt in ${THERMAL_OPTIONS}; do
  if [ "$opt" = "$option" ];then
    valid_option='true'
    break
  fi
done

if [ "$valid_option" = 'false' ]; then
  echo -e "$ERROR_OPTION_INVALID"
  exit 1
fi
# }}}

# Functions {{{
get_cpu_temp() {
  temp=$(sensors | awk -v temp="$THERMAL_CPU_TEMP" '$0 ~ temp { print int($4); exit }')

  [ -n "$temp" ] && echo -e "${temp}ºC" || echo -e "$ERROR_CPU_TEMP"
}

get_cpu_fan_speed() {
  set -- $(sensors | awk -v fan_speed="$THERMAL_CPU_FAN_SPEED" -v fan_pwm="$THERMAL_CPU_FAN_PWM" '
    $0 ~ fan_speed && s == "" { s = $2 }
    $0 ~ fan_pwm && p == "" { p = $2 }
    END { print s, p }
  ')

  speed=$1
  pwm=$2

  if [ -n "$speed" ] && [ -n "$pwm" ]; then
    echo -e "${speed}RPM - ${pwm}"
  else
    echo -e "$ERROR_CPU_FAN"
  fi
}
# }}}

# Main script {{{
  case "$option" in
    'cpu')
      get_cpu_temp
      ;;
    'cpufan')
      get_cpu_fan_speed
      ;;
  esac

exit 0
# }}}
