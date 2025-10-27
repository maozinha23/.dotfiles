#!/bin/sh

ICON_REMOVE="window-close"
NOTIFICATION_TITLE_CHANGE="FEH"
NOTIFICATION_TITLE_REMOVE="HSETROOT"
NOTIFICATION_MESSAGE_CHANGE="Wallpaper changed"
NOTIFICATION_MESSAGE_REMOVE="Wallpaper removed"
TEXT_REMOVE="REMOVE"

wallpaper="$1"

# Set the wallpaper with feh
if [ -n "${wallpaper}" ]; then
  if [ "${wallpaper}" = "${TEXT_REMOVE}" ]; then
    hsetroot -solid black
    notify-send "${NOTIFICATION_TITLE_REMOVE}" "${NOTIFICATION_MESSAGE_REMOVE}"
  else
    feh --bg-scale --no-fehbg "${wallpaper}"
    notify-send "${NOTIFICATION_TITLE_CHANGE}" "${NOTIFICATION_MESSAGE_CHANGE}"
  fi

  exit 0
fi

# If the XDG PICTURES directory exists, set as the root directory for searching
# for wallpapers. If it fails, choose the HOME directory instead
if ! command -v xdg-user-dir >/dev/null 2>&1 \
  && img_dir="$(xdg-user-dir PICTURES)" \
  && [ -d "${img_dir}" ]; then

  img_dir="${HOME}"
else
  img_dir="$(xdg-user-dir PICTURES)"
fi

# Find images at the defined root directory and its sub directories
img_path=$(find "${img_dir}"/ -type f \( \
  -iname "*.bmp" \
  -o -iname "*.gif" \
  -o -iname "*.jpg" \
  -o -iname "*.png" \) \
  | sort --ignore-case)

# Add an option to remove the wallpaper (set the background black)
printf "%s\0icon\x1f%s\n" "${TEXT_REMOVE}" "${ICON_REMOVE}"

while IFS= read -r img; do
  # rofi entry with an icon thumbnail using gdk_pixbuff_thumbnailer
  # "Entry name\0icon\x1fthumbnail://path/to/file\n"
  printf "%s\0icon\x1fthumbnail://%s\n" "${img}" "${img}"
done <<INPUT
${img_path}
INPUT
