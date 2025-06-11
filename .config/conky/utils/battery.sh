#!/bin/sh

# Constants {{{
PATH_BAT='/sys/class/power_supply/BAT0'
PATH_BAT_PRESENT="${PATH_BAT}/present"
PATH_BAT_STATUS="${PATH_BAT}/status"
PATH_BAT_CAPACITY="${PATH_BAT}/capacity"
PATH_BAT_ENERGY_FULL="${PATH_BAT}/energy_full"
PATH_BAT_ENERGY_FULL_DESIGN="${PATH_BAT}/energy_full_design"
BAT_CONNECTED='ON'
BAT_DISCONNECTED='OFF'
BAT_OPTIONS='connected status capacity health'
ERROR_FILE_NOT_FOUND='-\nError: required files not found in /sys/class/power_supply/'
ERROR_ARGUMENT_MISSING='-\nError: missing argument. Must supply an option: connected, status, capacity or health'
ERROR_OPTION_INVALID='-\nError: not a valid option'
ERROR_STATUS='-\nError: failed to get battery status'
ERROR_CAPACITY='-\nError: failed to get battery capacity'
ERROR_HEALTH='-\nError: failed to get battery health'
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

for opt in ${BAT_OPTIONS}; do
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
is_bat_connected() {
  if  [ ! -f "$PATH_BAT_PRESENT" ] || \
    [ ! -f "$PATH_BAT_STATUS" ] || \
    [ ! -f "$PATH_BAT_CAPACITY" ] || \
    [ ! -f "$PATH_BAT_ENERGY_FULL" ] || \
    [ ! -f "$PATH_BAT_ENERGY_FULL_DESIGN" ]; then

    echo -e "$BAT_DISCONNECTED"
  else
    echo -e "$BAT_CONNECTED"
  fi
}

get_bat_status() {
  [ $(is_bat_connected) = "$BAT_CONNECTED" ] \
    && cat "$PATH_BAT_STATUS" \
    || echo -e "$ERROR_STATUS"
}

get_bat_capacity() {
  [ $(is_bat_connected) = "$BAT_CONNECTED" ] \
    && echo -e "$(cat ${PATH_BAT_CAPACITY})%" \
    || echo -e "$ERROR_CAPACITY"
}

get_bat_health() {
  if [ $(is_bat_connected) = "$BAT_CONNECTED" ]; then
    energy_full=$(cat "$PATH_BAT_ENERGY_FULL")
    energy_full_design=$(cat "$PATH_BAT_ENERGY_FULL_DESIGN")
    health=$(( ( "$energy_full" * 100 ) / "$energy_full_design" ))
    echo -e "${health}%"
  else
    echo -e "$ERROR_HEALTH"
  fi
}
# }}}

# Main script {{{
  case "$option" in
    'connected')
      is_bat_connected
      ;;
    'status')
      get_bat_status
      ;;
    'capacity')
      get_bat_capacity
      ;;
    'health')
      get_bat_health
      ;;
  esac

exit 0
# }}}
