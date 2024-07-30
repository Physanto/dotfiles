#!/bin/bash

# sleep 1

killall -q polybar

polybar mainbar-i3-monitor-1 &
polybar mainbar-i3-monitor-2 &