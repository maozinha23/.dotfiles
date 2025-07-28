#!/bin/sh

# CONSTANTS
ICON_QUIT="system-log-out"
ICON_REBOOT="system-reboot"
ICON_SHUTDOWN="system-shutdown"
TEXT_QUIT="Quit"
TEXT_REBOOT="Reboot"
TEXT_SHUTDOWN="Shutdown"

# SCRIPT
option="$1"

case "${option}" in
  "${TEXT_QUIT}") i3-msg exit ;;
  "${TEXT_REBOOT}") systemctl reboot ;;
  "${TEXT_SHUTDOWN}") systemctl poweroff ;;
esac

# rofi entry with icon-name, this is looked up via the icon-theme
# "Entry name\0icon\x1fFREEDESKTOP_ICON_NAME\n"
printf "%s\0icon\x1f%s\n" "${TEXT_QUIT}" "${ICON_QUIT}"
printf "%s\0icon\x1f%s\n" "${TEXT_REBOOT}" "${ICON_REBOOT}"
printf "%s\0icon\x1f%s\n" "${TEXT_SHUTDOWN}" "${ICON_SHUTDOWN}"
