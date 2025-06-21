#!/bin/sh

# Conky: DISPLAY category
# ------------------------------------------------------------------------------
# Source {{{
# ------------------------------------------------------------------------------
. "${HOME}/.config/conky/utils/validate.sh"
# }}}
# ------------------------------------------------------------------------------
# Constants {{{
# ------------------------------------------------------------------------------
DISPLAY_OPTIONS='connection refresh resolution size'
# }}}
# ------------------------------------------------------------------------------
# Arguments {{{
# ------------------------------------------------------------------------------
option="$1"
# }}}
# ------------------------------------------------------------------------------
# Functions {{{
# ------------------------------------------------------------------------------
get_connection() {
  connection=$(xrandr | awk '/primary/ { print $1; exit }')
  validate_result "${connection}"
}

get_refresh() {
  refresh=$(xrandr | awk '/*/ { print int($2); exit }')
  validate_result "${refresh}"
}

get_resolution() {
  resolution=$(xrandr | awk '/*/ { print $1; exit }')
  validate_result "${resolution}"
}

get_size() {
  set -- $(xrandr | awk '/primary/ { print int($(NF-2)), int($NF); exit }')
  width="$1"
  height="$2"

  size=$(awk -v width="${width}" -v height="${height}" 'BEGIN {
    diagonal_mm = sqrt(width^2 + height^2);
    diagonal_in = diagonal_mm / 25.4;
    diagonal_rounded = int(diagonal_in + 0.5);
    print diagonal_rounded;
    exit
  }')

  validate_result "${size}"
}
# }}}
# ------------------------------------------------------------------------------
# Validation {{{
# ------------------------------------------------------------------------------
validate_option "${option}" "${DISPLAY_OPTIONS}"\
  && validate_function "${option}" \
  || exit 1
# }}}
# ------------------------------------------------------------------------------
# Main {{{
# ------------------------------------------------------------------------------
get_"${option}"

exit 0
# }}}
