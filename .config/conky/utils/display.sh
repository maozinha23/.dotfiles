#!/bin/sh

# Constants {{{
DISPLAY_OPTIONS='connection refresh resolution size'
ERROR_ARGUMENT_MISSING='-\nError: missing argument. Must supply an option: connection, refresh, resolution or size'
ERROR_OPTION_INVALID='-\nError: not a valid option'
ERROR_CONNECTION='-\nError: failed to get the display connection'
ERROR_REFRESH='-\nError: failed to get the display refresh rate'
ERROR_RESOLUTION='-\nError: failed to get the display resolution'
ERROR_SIZE='-\nError: failed to get the display size'
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

for opt in ${DISPLAY_OPTIONS}; do
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
get_connection() {
  connection=$(xrandr | awk '/primary/ { print $1; exit }')

  [ -n "$connection" ] && echo -e "$connection" || echo -e "$ERROR_CONNECTION"
}

get_refresh_rate() {
  refresh=$(xrandr | awk '/*/ { print int($2); exit }')

  [ -n "$refresh" ] && echo -e "$refresh" || echo -e "$ERROR_REFRESH"
}

get_resolution() {
  resolution=$(xrandr | awk '/*/ { print $1; exit }')

  [ -n "$resolution" ] && echo -e "$resolution" || echo -e "$ERROR_RESOLUTION"
}

get_size() {
  set -- $(xrandr | awk '/primary/ { print int($(NF-2)), int($NF); exit }')

  width="$1"
  height="$2"

  size=$(awk -v width="$width" -v height="$height" 'BEGIN {
    diagonal_mm = sqrt(width^2 + height^2);
    diagonal_in = diagonal_mm / 25.4;
    diagonal_rounded = int(diagonal_in + 0.5);
    print diagonal_rounded;
    exit
  }')

  [ -n "$size" ] && echo -e "$size" || echo -e "$ERROR_SIZE"
}
# }}}

# Main script {{{
  case "$option" in
    'connection')
     get_connection
      ;;
    'refresh')
      get_refresh_rate
      ;;
    'resolution')
      get_resolution
      ;;
    'size')
      get_size
      ;;
  esac

exit 0
# }}}
