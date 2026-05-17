#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# CONSTANTS
#-------------------------------------------------------------------------------
readonly APP_BLUETOOTH='foot --title="bluetui" bluetui'
readonly APP_BRIGHTNESS='foot --title="brightness" brightness'
readonly APP_DISK='foot --title="ncdu" ncdu'
readonly APP_FONT='foot --title="font-viewer" font-viewer'
readonly APP_SYS_MONITOR='foot --title="btop" btop'
readonly APP_SYS_UPDATE='foot --title="pacman" sudo pacman --sync --refresh --sysupgrade'
readonly APP_VOLUME='foot --title="pulsemixer" pulsemixer'
readonly APP_WIRELESS='foot --title="nmtui" nmtui'
readonly ICON_BLUETOOTH='<span fgcolor="#aaaaaa"></span>'
readonly ICON_BRIGHTNESS='<span fgcolor="#aaaaaa">󰃟</span>'
readonly ICON_DISK='<span fgcolor="#aaaaaa">󰋊</span>'
readonly ICON_FONT='<span fgcolor="#aaaaaa">󰛖</span>'
readonly ICON_SYS_MONITOR='<span fgcolor="#aaaaaa"></span>'
readonly ICON_SYS_UPDATE='<span fgcolor="#aaaaaa">󰚰</span>'
readonly ICON_VOLUME='<span fgcolor="#aaaaaa"></span>'
readonly ICON_WIRELESS='<span fgcolor="#aaaaaa"></span>'
readonly TEXT_BLUETOOTH='Bluetooth'
readonly TEXT_BRIGHTNESS='Brightness'
readonly TEXT_DISK='Disk usage'
readonly TEXT_FONT='Font viewer'
readonly TEXT_SYS_MONITOR='System monitor'
readonly TEXT_SYS_UPDATE='System update'
readonly TEXT_VOLUME='Volume'
readonly TEXT_WIRELESS='Wireless'
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
    "$TEXT_BLUETOOTH") start_application "$APP_BLUETOOTH" ;;
    "$TEXT_BRIGHTNESS") start_application "$APP_BRIGHTNESS" ;;
    "$TEXT_DISK") start_application "$APP_DISK" ;;
    "$TEXT_FONT") start_application "$APP_FONT" ;;
    "$TEXT_SYS_MONITOR") start_application "$APP_SYS_MONITOR" ;;
    "$TEXT_SYS_UPDATE") start_application "$APP_SYS_UPDATE" ;;
    "$TEXT_VOLUME") start_application "$APP_VOLUME" ;;
    "$TEXT_WIRELESS") start_application "$APP_WIRELESS" ;;
  esac

  # rofi entry with icon (handled with markup string)
  # "Entry name\0icon\x1f<span color='#______'>character_icon</span>\n"
  printf '%s\0icon\x1f%s\n' "$TEXT_BLUETOOTH" "$ICON_BLUETOOTH"
  printf '%s\0icon\x1f%s\n' "$TEXT_BRIGHTNESS" "$ICON_BRIGHTNESS"
  printf '%s\0icon\x1f%s\n' "$TEXT_DISK" "$ICON_DISK"
  printf '%s\0icon\x1f%s\n' "$TEXT_FONT" "$ICON_FONT"
  printf '%s\0icon\x1f%s\n' "$TEXT_SYS_MONITOR" "$ICON_SYS_MONITOR"
  printf '%s\0icon\x1f%s\n' "$TEXT_SYS_UPDATE" "$ICON_SYS_UPDATE"
  printf '%s\0icon\x1f%s\n' "$TEXT_VOLUME" "$ICON_VOLUME"
  printf '%s\0icon\x1f%s\n' "$TEXT_WIRELESS" "$ICON_WIRELESS"
}

main "$@"
