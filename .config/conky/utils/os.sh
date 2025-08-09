#!/bin/sh

# ------------------------------------------------------------------------------
# Conky: OS category
# ------------------------------------------------------------------------------
. "${HOME}/.config/conky/utils/validate.sh"

FILE_OS_RELEASE='/etc/os-release'
FILE_PACMAN_LOG='/var/log/pacman.log'
OS_OPTIONS="editor name pager shell term update user visual win_manager \
win_system"

get_editor() {
  editor=$(basename "${EDITOR}")
  validate_result "${editor}"
}

get_name() {
  name=$(awk -F '=' '/^NAME/ { gsub(/"/, "", $2); print $2; exit }' \
    "${FILE_OS_RELEASE}")

  validate_result "${name}"
}

get_pager() {
  pager=$(basename "${PAGER}")
  validate_result "${pager}"
}

get_shell() {
  shell=$(basename "${SHELL}")
  validate_result "${shell}"
}

get_term() {
  term=$(basename "${TERM}")
  validate_result "${term}"
}

get_update() {
  update=$(tac "${FILE_PACMAN_LOG}" \
    | awk '/upgraded/ { print substr($1, 2, 10); exit }' \
    | date --file=- +%x)

  validate_result "${update}"
}

get_user() {
  user=$(whoami)
  validate_result "${user}"
}

get_visual() {
  visual=$(basename "${VISUAL}")
  validate_result "${visual}"
}

get_win_manager() {
  win_manager="$XDG_CURRENT_DESKTOP"
  validate_result "${win_manager}"
}

get_win_system() {
  win_system="$XDG_SESSION_TYPE"
  validate_result "${win_system}"
}

option="$1"

validate_files "${FILE_OS_RELEASE} ${FILE_PACMAN_LOG}" \
  && validate_option "${option}" "${OS_OPTIONS}" \
  && validate_function "${option}" \
  || exit 1

get_"${option}"

exit 0
