#!/bin/sh
NOTIFICATION_TITLE="FEH"
NOTIFICATION_MESSAGE="Wallpaper changed"

wallpaper="$1"

# Set the wallpaper with feh
if [ -n "${wallpaper}" ]; then
  feh --bg-scale --no-fehbg "${wallpaper}"
  notify-send "${NOTIFICATION_TITLE}" "${NOTIFICATION_MESSAGE}"
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

while IFS= read -r img; do
  # rofi entry with an icon thumbnail using gdk_pixbuff_thumbnailer
  # "Entry name\0icon\x1fthumbnail://path/to/file\n"
  printf "%s\0icon\x1fthumbnail://%s\n" "${img}" "${img}"
done <<INPUT
${img_path}
INPUT
