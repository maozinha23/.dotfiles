#!/bin/sh
#
# ------------------------------------------------------------------------------
# Validate the output of conky scripts
# ------------------------------------------------------------------------------
ERROR_FILE_NOT_FOUND='Error: file not found:'
ERROR_FUNCTION_NOT_FOUND='Error: not implemented yet'
ERROR_OPTION_INVALID='Error: not a valid argument\nOptions:'
ERROR_OPTION_MISSING='Error: missing argument\nOptions:'
ERROR_RESULT='Error: unable to get the value of selected option'

err() {
  printf '%b' "$*" >&2
}

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

is_missing_option() {
  option="$1"
  valid_options="$2"

  if [ -z "${option}" ]; then
    err "${ERROR_OPTION_MISSING} [ ${valid_options} ]"
    return 1
  fi

  return 0
}

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

validate_function() {
  option="$1"

  if ! type get_"${option}" >/dev/null 2>&1; then
    err "${ERROR_FUNCTION_NOT_FOUND}"
    return 1
  fi

  return 0
}

validate_option() {
  option="$1"
  valid_options="$2"

  is_missing_option "${option}" "${valid_options}"
  return_status="$?"
  [ "${return_status}" -eq 1 ] && return 1

  is_invalid_option "${option}" "${valid_options}"
  return_status="$?"

  return "${return_status}"
}

validate_result() {
  result="$1"

  if [ -n "${result}" ]; then
    printf '%s\n' "${result}"
  else
    err "${ERROR_RESULT}"
    return 1
  fi

  return 0
}
