#!/usr/bin/bash

# Terminate already running conky instances
pkill conky

# Launch two instances of conky, OS and System
conky --config=$HOME/.config/conky/conky-os.conf &
conky --config=$HOME/.config/conky/conky-system.conf &
