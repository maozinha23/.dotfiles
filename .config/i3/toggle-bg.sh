#!/bin/sh

WALLPAPER_PATH="$1"
CONKY_PATH="${HOME}/.config/conky/launch.sh"

if [ -z "${WALLPAPER_PATH}" ]; then
  echo 'Error: missing argument - wallpaper path'
  exit 1
elif [ ! -f "${WALLPAPER_PATH}" ]; then
  echo "Error: wallpaper file not found - ${WALLPAPER_PATH}"
  exit 1
elif [ ! -f "${CONKY_PATH}" ]; then
  echo "Error: conky launch file not found - ${CONKY_PATH}"
  exit 1
fi

if pgrep conky; then
  pkill conky
  feh --bg-scale --no-fehbg "${WALLPAPER_PATH}"
else
  ${CONKY_PATH}
fi

exit 0
