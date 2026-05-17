#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
  >&2 echo "usage: $0 FILENAME[:LINENO][:IGNORED]"
  exit 1
fi

file=${1/#\~\//$HOME/}

center=0

if [[ ! -r $file ]]; then
  if [[ $file =~ ^(.+):([0-9]+)\ *$ ]] && [[ -r ${BASH_REMATCH[1]} ]]; then
    file=${BASH_REMATCH[1]}
    center=${BASH_REMATCH[2]}
  elif [[ $file =~ ^(.+):([0-9]+):[0-9]+\ *$ ]] \
    && [[ -r ${BASH_REMATCH[1]} ]]; then

    file=${BASH_REMATCH[1]}
    center=${BASH_REMATCH[2]}
  fi
fi

type=$(file --brief --dereference --mime -- "$file")

if [[ ! $type =~ image/ ]]; then
  if [[ $type =~ =binary ]]; then
    file "$1"
    exit
  fi

  cat "$1"
  exit
fi

dim=${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}

if [[ $dim == x ]]; then
  dim=$(stty size < /dev/tty | awk '{ print $2 "x" $1 }')
elif ((FZF_PREVIEW_TOP + FZF_PREVIEW_LINES \
  == $(stty size < /dev/tty | awk '{ print $1 }'))); then
  # Avoid scrolling issue when the Sixel image touches the bottom of the screen
  # * https://github.com/junegunn/fzf/issues/2544
  dim=${FZF_PREVIEW_COLUMNS}x$((FZF_PREVIEW_LINES - 1))
fi

# Use chafa with Sixel output
if command -v chafa > /dev/null; then
  chafa -s "$dim" "$file"
  # Add a new line character so that fzf can display multiple images in the preview window
  echo
# Cannot find any suitable method to preview the image
else
  file "$file"
fi
