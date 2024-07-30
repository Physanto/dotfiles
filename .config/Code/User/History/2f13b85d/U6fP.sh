#!/bin/bash

# sleep 1

killall -q polybar

# polybar mainbar-i3 &

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar mainbar-i3 &
  done
else
    polybar mainbar-i3 &
fi
