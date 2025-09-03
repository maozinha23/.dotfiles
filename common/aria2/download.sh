#!/bin/sh

DOWNLOAD_DIR=$( \
  if command -v xdg-user-dir >/dev/null 2>&1; then
    xdg-user-dir DOWNLOAD
  else
    printf "%s" "${HOME}"
  fi )

files="$1"
[ -z "${files}" ] && exit 1
aria2c --dir="${DOWNLOAD_DIR}" "${files}"
