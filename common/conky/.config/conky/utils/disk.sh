#!/bin/sh

# ------------------------------------------------------------------------------
# Conky: DISK category
# ------------------------------------------------------------------------------
. "${HOME}/.config/conky/utils/validate.sh"

DISK_OPTIONS='root_disk_name root_disk_model root_disk_size'

get_root_disk_model() {
  disk=$(get_root_disk_name)
  model=$(lsblk --output KNAME,MODEL | awk -v disk="${disk}" \
    '$0 ~ disk { $1=""; print substr($0, 2); exit }')

  validate_result "${model}"
}

get_root_disk_name() {
  name=$(lsblk --output KNAME,MOUNTPOINT \
    | awk '/\/$/ { gsub(/[0-9]/, "", $1); print $1; exit }')

  validate_result "${name}"
}

get_root_disk_size() {
  disk=$(get_root_disk_name)
  size=$(lsblk --output KNAME,SIZE | awk -v disk="${disk}" \
    '$0 ~ disk { $1=""; print substr($0, 2); exit }')

  validate_result "${size}"
}

option="$1"

validate_option "${option}" "${DISK_OPTIONS}" \
  && validate_function "${option}" \
  || exit 1

get_"${option}"

exit 0
