#!/bin/sh

# ------------------------------------------------------------------------------
# Validation: argument {{{
# ------------------------------------------------------------------------------
if [ -z "$1" ]; then
  echo 'Error: Missing argument. Expected: output file.'
  exit 1
fi
# }}}
# ------------------------------------------------------------------------------
# Contants {{{
# ------------------------------------------------------------------------------
FILE_OPTIONS="$HOME/.config/conky/options.conf"
FILE_TEMPLATE_CONFIG="$HOME/.config/conky/templates/conky_config.lua"
FILE_TEMPLATE_TEXT="$HOME/.config/conky/templates/conky_text.lua"
FILE_OUTPUT="$1"
OPTION_SEPARATOR='='
# }}}
# ------------------------------------------------------------------------------
# Main script {{{
# ------------------------------------------------------------------------------
awk -v separator="${OPTION_SEPARATOR}" '
FNR==NR {
  separator_index = index($0, separator)

  if (separator_index > 0) {
    key = substr($0, 1, separator_index - 1)
    value = substr($0, separator_index + 1)
    options[key] = value
  }

  next
}
{
  for (key in options) {
    gsub(key, options[key])
  }

  print
}
' "${FILE_OPTIONS}" "${FILE_TEMPLATE_CONFIG}" "${FILE_TEMPLATE_TEXT}" > "${FILE_OUTPUT}"

exit 0
# }}}
