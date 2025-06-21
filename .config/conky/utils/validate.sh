#!/bin/sh
#
# Validate the output of conky scripts
# ------------------------------------------------------------------------------
# Constants {{{
# ------------------------------------------------------------------------------
ERROR_FILE_NOT_FOUND='Error: file not found:'
ERROR_FUNCTION_NOT_FOUND='Error: not implemented yet'
ERROR_OPTION_INVALID='Error: not a valid argument\nOptions:'
ERROR_OPTION_MISSING='Error: missing argument\nOptions:'
ERROR_RESULT='Error: unable to get the value of selected option'
# }}}
# ------------------------------------------------------------------------------
# Functions {{{
# ------------------------------------------------------------------------------
# Prints an error message.
err() {
  printf '%b' "$*" >&2
}

# Checks if the option is invalid.
is_invalid_option() {
  option="$1"
  valid_options="$2"
  valid='false'

  for opt in ${valid_options}; do
    if [ "${opt}" = "${option}" ]; then
      valid='true'
      break
    fi
  done

  if [ "${valid}" = 'false' ]; then
    err "${ERROR_OPTION_INVALID} [ ${valid_options} ]"
    return 1
  fi

  return 0
}

# Checks if the option is missing.
is_missing_option() {
  option="$1"
  valid_options="$2"

  if [ -z "${option}" ]; then
    err "${ERROR_OPTION_MISSING} [ ${valid_options} ]"
    return 1
  fi

  return 0
}

# Checks if the files exist.
validate_files() {
  files="$1"

  for f in ${files}; do
    if [ ! -f "${f}" ]; then
      err "${ERROR_FILE_NOT_FOUND} ${f}"
      return 1
    fi
  done

  return 0
}

# Checks if the functions exist.
validate_function() {
  option="$1"

  if ! type get_"${option}" >/dev/null 2>&1; then
    err "${ERROR_FUNCTION_NOT_FOUND} "
    return 1
  fi

  return 0
}

# Checks if the option is present and it is valid.
validate_option() {
  option="$1"
  valid_options="$2"

  is_missing_option "${option}" "${valid_options}"
  return_status="$?"
  [ "${return_status}" -gt 0 ] && return "${return_status}"

  is_invalid_option "${option}" "${valid_options}"
  return_status="$?"
  [ "${return_status}" -gt 0 ] && return "${return_status}"

  return 0
}

# Checks if there is a result.
validate_result() {
  result="$1"

  if [ -n "${result}" ]; then
    echo "${result}"
  else
    err "${ERROR_RESULT}"
    return 1
  fi

  return 0
}
# }}}
