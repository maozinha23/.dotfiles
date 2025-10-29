#!/bin/sh

# ------------------------------------------------------------------------------
# Conky: DISPLAY category
# ------------------------------------------------------------------------------
. "${HOME}/.config/conky/utils/validate.sh"

DISPLAY_OPTIONS='connection refresh resolution size'

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
    diagonal_in_rounded = int(diagonal_in + 0.5);
    print diagonal_in_rounded;
    exit
  }')

  validate_result "${size}"
}

option="$1"

validate_option "${option}" "${DISPLAY_OPTIONS}" \
  && validate_function "${option}" \
  || exit 1

get_"${option}"

exit 0
