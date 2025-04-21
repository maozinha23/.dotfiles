#!/bin/sh

INDICATOR_RADIUS=120

INSIDE_COLOR='#000000'

RING_COLOR='#AAAAAA'
RING_WIDTH=30

RIGHT_COLOR='#0000AA'
WRONG_COLOR='#AA0000'

TEXT_COLOR='#FFFFFF'
TEXT_FONT='Cousine Nerd Font Mono'
TEXT_SIZE=24
TEXT_VERIF='VERIFYING'
TEXT_WRONG='WRONG'
TEXT_NOINPUT='NO INPUT'
TEXT_LOCK='LOCKING'
TEXT_LOCK_FAILED='LOCK FAILED'
TEXT_GREETER=''

TIME='%H:%M:%S'
DATE='%d/%m/%Y'

i3lock \
  --nofork \
  --blur=sigma \
  --clock \
  --indicator \
  --radius="$INDICATOR_RADIUS" \
  --ring-width="$RING_WIDTH" \
  --inside-color="$INSIDE_COLOR" --ring-color="$RING_COLOR" \
  --insidever-color="$RIGHT_COLOR" --ringver-color="$RING_COLOR" \
  --insidewrong-color="$WRONG_COLOR" --ringwrong-color="$RING_COLOR" \
  --line-uses-ring \
  --keyhl-color="$RIGHT_COLOR" --bshl-color="$WRONG_COLOR" \
  --separator-color="$RING_COLOR" \
  --verif-color="$TEXT_COLOR" --wrong-color="$TEXT_COLOR" --modif-color="$TEXT_COLOR" \
  --layout-color="$TEXT_COLOR" --time-color="$TEXT_COLOR" --date-color="$TEXT_COLOR" --greeter-color="$TEXT_COLOR" \
  --time-str="$TIME" \
  --date-str="$DATE" \
  --verif-text="$TEXT_VERIF" \
  --wrong-text="$TEXT_WRONG" \
  --noinput-text="$TEXT_NOINPUT" \
  --lock-text="$TEXT_LOCK" \
  --lockfailed-text="$TEXT_LOCK_FAILED" \
  --greeter-text="$TEXT_GREETER" \
  --time-font="$TEXT_FONT" --date-font="$TEXT_FONT" --layout-font="$TEXT_FONT" --verif-font="$TEXT_FONT" --wrong-font="$TEXT_FONT" --greeter-font="$TEXT_FONT" \
  --time-size="$TEXT_SIZE" --date-size="$TEXT_SIZE" --layout-size="$TEXT_SIZE" --verif-size="$TEXT_SIZE" --wrong-size="$TEXT_SIZE" --greeter-size="$TEXT_SIZE"
