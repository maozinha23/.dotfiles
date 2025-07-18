#!/bin/sh

# CONSTANTS {{{
COLOR_ICON="white"
ICON_QUIT="󰩈"
ICON_REBOOT="󰜉"
ICON_SHUTDOWN="󰐥"
TEXT_QUIT="Quit"
TEXT_REBOOT="Reboot"
TEXT_SHUTDOWN="Shutdown"
# }}}

# SCRIPT {{{
option="$1"

case "${option}" in
  "${TEXT_QUIT}") i3-msg exit ;;
  "${TEXT_REBOOT}") systemctl reboot ;;
  "${TEXT_SHUTDOWN}") systemctl poweroff ;;
esac

# rofi entry with a markup string icon using pango
# "Entry name\0icon\x1f<span color='color_name'>string_icon</span>\n"
printf "%s\0icon\x1f<span color='${COLOR_ICON}'>%s</span>\n" \
  "${TEXT_QUIT}" "${ICON_QUIT}"
printf "%s\0icon\x1f<span color='${COLOR_ICON}'>%s</span>\n" \
  "${TEXT_REBOOT}" "${ICON_REBOOT}"
printf "%s\0icon\x1f<span color='${COLOR_ICON}'>%s</span>\n" \
  "${TEXT_SHUTDOWN}" "${ICON_SHUTDOWN}"
# }}}
