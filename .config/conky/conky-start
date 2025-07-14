#!/bin/sh

# Terminate already running conky instances
pkill conky

# Generate conky's config file
$HOME/.config/conky/utils/gen-config.sh $HOME/.config/conky/config.lua

# Launch conky
conky --config=$HOME/.config/conky/config.lua &
