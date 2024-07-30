#!/bin/bash

sleep 1

killall -q polybar

polybar mainbar-i3 &
