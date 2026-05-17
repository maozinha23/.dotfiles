#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# CONSTANTS
#-------------------------------------------------------------------------------
readonly APP_CAPTURE_AREA='screenshot area'
readonly APP_CAPTURE_SCREEN='screenshot screen'
readonly APP_CAPTURE_WINDOW='screenshot window'
readonly ICON_CAPTURE_AREA='<span fgcolor="#aaaaaa">󱣵</span>'
readonly ICON_CAPTURE_SCREEN='<span fgcolor="#aaaaaa">󰹑</span>'
readonly ICON_CAPTURE_WINDOW='<span fgcolor="#aaaaaa"></span>'
readonly TEXT_CAPTURE_AREA='Area'
readonly TEXT_CAPTURE_SCREEN='Full screen'
readonly TEXT_CAPTURE_WINDOW='Window'
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
    "$TEXT_CAPTURE_AREA") start_application "$APP_CAPTURE_AREA" ;;
    "$TEXT_CAPTURE_SCREEN") start_application "$APP_CAPTURE_SCREEN" ;;
    "$TEXT_CAPTURE_WINDOW") start_application "$APP_CAPTURE_WINDOW" ;;
  esac

  # rofi entry with icon (handled with markup string)
  # "Entry name\0icon\x1f<span color='#______'>character_icon</span>\n"
  printf '%s\0icon\x1f%s\n' "$TEXT_CAPTURE_SCREEN" "$ICON_CAPTURE_SCREEN"
  printf '%s\0icon\x1f%s\n' "$TEXT_CAPTURE_WINDOW" "$ICON_CAPTURE_WINDOW"
  printf '%s\0icon\x1f%s\n' "$TEXT_CAPTURE_AREA" "$ICON_CAPTURE_AREA"
}

main "$@"
