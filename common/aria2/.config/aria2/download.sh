#!/bin/sh

DOWNLOAD_DIR=$( \
  if command -v xdg-user-dir >/dev/null 2>&1; then
    xdg-user-dir DOWNLOAD
  else
    printf "%s" "${HOME}"
  fi )

link="$1"
[ -z "${link}" ] && exit 1
aria2c --dir="${DOWNLOAD_DIR}" "${link}"
