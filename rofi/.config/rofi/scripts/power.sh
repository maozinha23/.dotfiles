#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# CONSTANTS
#-------------------------------------------------------------------------------
readonly APP_LOCK='swaylock -f'
readonly APP_QUIT='swaymsg exit'
readonly APP_REBOOT='systemctl reboot'
readonly APP_SHUTDOWN='systemctl poweroff'
readonly APP_SUSPEND='systemctl suspend'
readonly ICON_LOCK='<span fgcolor="#aaaaaa">󰌾</span>'
readonly ICON_QUIT='<span fgcolor="#aaaaaa">󰿅</span>'
readonly ICON_REBOOT='<span fgcolor="#aaaaaa">󰑓</span>'
readonly ICON_SHUTDOWN='<span fgcolor="#aaaaaa">󰐥</span>'
readonly ICON_SUSPEND='<span fgcolor="#aaaaaa">󰒲</span>'
readonly TEXT_LOCK='Lock screen'
readonly TEXT_QUIT='Quit'
readonly TEXT_REBOOT='Reboot'
readonly TEXT_SHUTDOWN='Shutdown'
readonly TEXT_SUSPEND='Suspend'
#-------------------------------------------------------------------------------
# FUNCTIONS
#-------------------------------------------------------------------------------
# Launch the application in the background and exit rofi
start_application() {
  local app
  app="$1"

  coproc $app > /dev/null 2>&1 && exit
}
#-------------------------------------------------------------------------------
# MAIN
#-------------------------------------------------------------------------------
main() {
  local option
  option="$1"

  case "$option" in
    "$TEXT_LOCK") start_application "$APP_LOCK" ;;
    "$TEXT_QUIT") start_application "$APP_QUIT" ;;
    "$TEXT_REBOOT") start_application "$APP_REBOOT" ;;
    "$TEXT_SHUTDOWN") start_application "$APP_SHUTDOWN" ;;
    "$TEXT_SUSPEND") start_application "$APP_SUSPEND" ;;
  esac

  # rofi entry with icon (handled with markup string)
  # "Entry name\0icon\x1f<span color='#______'>character_icon</span>\n"
  printf '%s\0icon\x1f%s\n' "$TEXT_LOCK" "$ICON_LOCK"
  printf '%s\0icon\x1f%s\n' "$TEXT_SUSPEND" "$ICON_SUSPEND"
  printf '%s\0icon\x1f%s\n' "$TEXT_QUIT" "$ICON_QUIT"
  printf '%s\0icon\x1f%s\n' "$TEXT_REBOOT" "$ICON_REBOOT"
  printf '%s\0icon\x1f%s\n' "$TEXT_SHUTDOWN" "$ICON_SHUTDOWN"
}

main "$@"
