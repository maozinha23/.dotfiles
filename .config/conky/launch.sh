#!/bin/sh

# Terminate already running conky instances
pkill conky

# Launch two instances of conky, System and OS
conky --config=$HOME/.config/conky/conky-system.conf &
conky --config=$HOME/.config/conky/conky-os.conf &
