#!/usr/bin/bash

# Terminate already running bar instances
pkill polybar

# Launch bar top and bar bottom
polybar top & disown
polybar bottom & disown
