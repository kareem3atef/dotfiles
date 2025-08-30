#!/usr/bin/env bash

# remove all instances
killall -q polybar

# Enable bar for each monitor
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar ibar &
  done
else
  polybar ibar &
fi

echo "Bars launched..."
