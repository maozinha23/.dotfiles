#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# CONSTANTS
#-------------------------------------------------------------------------------
readonly APP_CALC='foot --title="qalc" qalc'
readonly APP_CAPTURE='rofi -modes capture -show'
readonly APP_DOWNLOAD='foot --title="download" download'
readonly APP_FILE_MANAGER='foot --title="lf" lf -log /tmp/lf.log'
readonly APP_FILE_TRANSFER='localsend'
readonly APP_IMG_EDITOR='pinta'
readonly APP_INTERNET='firefox'
readonly APP_OFFICE='libreoffice --nologo'
readonly APP_TERMINAL='foot'
readonly APP_TXT_EDITOR='foot --title="nvim" nvim'
readonly ICON_CALC='<span fgcolor="#aaaaaa">󰃬</span>'
readonly ICON_CAPTURE='<span fgcolor="#aaaaaa">󰹑</span>'
readonly ICON_DOWNLOAD='<span fgcolor="#aaaaaa">󰇚</span>'
readonly ICON_FILE_MANAGER='<span fgcolor="#aaaaaa">󰪶</span>'
readonly ICON_FILE_TRANSFER='<span fgcolor="#aaaaaa"></span>'
readonly ICON_IMG_EDITOR='<span fgcolor="#aaaaaa">󱇣</span>'
readonly ICON_INTERNET='<span fgcolor="#aaaaaa">󰖟</span>'
readonly ICON_OFFICE='<span fgcolor="#aaaaaa">󰈙</span>'
readonly ICON_TERMINAL='<span fgcolor="#aaaaaa"></span>'
readonly ICON_TXT_EDITOR='<span fgcolor="#aaaaaa">󱩼</span>'
readonly TEXT_CALC='Calculator'
readonly TEXT_CAPTURE='Screen capture'
readonly TEXT_DOWNLOAD='Download'
readonly TEXT_FILE_MANAGER='File manager'
readonly TEXT_FILE_TRANSFER='File transfer'
readonly TEXT_IMG_EDITOR='Image editor'
readonly TEXT_INTERNET='Internet browser'
readonly TEXT_OFFICE='Office suite'
readonly TEXT_TERMINAL='Terminal'
readonly TEXT_TXT_EDITOR='Text editor'
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
    "$TEXT_CALC") start_application "$APP_CALC" ;;
    "$TEXT_CAPTURE") start_application "$APP_CAPTURE" ;;
    "$TEXT_DOWNLOAD") start_application "$APP_DOWNLOAD" ;;
    "$TEXT_FILE_MANAGER") start_application "$APP_FILE_MANAGER" ;;
    "$TEXT_FILE_TRANSFER") start_application "$APP_FILE_TRANSFER" ;;
    "$TEXT_IMG_EDITOR") start_application "$APP_IMG_EDITOR" ;;
    "$TEXT_INTERNET") start_application "$APP_INTERNET" ;;
    "$TEXT_OFFICE") start_application "$APP_OFFICE" ;;
    "$TEXT_TERMINAL") start_application "$APP_TERMINAL" ;;
    "$TEXT_TXT_EDITOR") start_application "$APP_TXT_EDITOR" ;;
  esac

  # rofi entry with icon (handled with markup string)
  # "Entry name\0icon\x1f<span color='#______'>character_icon</span>\n"
  printf '%s\0icon\x1f%s\n' "$TEXT_CALC" "$ICON_CALC"
  printf '%s\0icon\x1f%s\n' "$TEXT_DOWNLOAD" "$ICON_DOWNLOAD"
  printf '%s\0icon\x1f%s\n' "$TEXT_FILE_MANAGER" "$ICON_FILE_MANAGER"
  printf '%s\0icon\x1f%s\n' "$TEXT_FILE_TRANSFER" "$ICON_FILE_TRANSFER"
  printf '%s\0icon\x1f%s\n' "$TEXT_IMG_EDITOR" "$ICON_IMG_EDITOR"
  printf '%s\0icon\x1f%s\n' "$TEXT_INTERNET" "$ICON_INTERNET"
  printf '%s\0icon\x1f%s\n' "$TEXT_OFFICE" "$ICON_OFFICE"
  printf '%s\0icon\x1f%s\n' "$TEXT_CAPTURE" "$ICON_CAPTURE"
  printf '%s\0icon\x1f%s\n' "$TEXT_TERMINAL" "$ICON_TERMINAL"
  printf '%s\0icon\x1f%s\n' "$TEXT_TXT_EDITOR" "$ICON_TXT_EDITOR"
}

main "$@"
