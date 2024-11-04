#!/bin/bash

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

MONITOR=eDP-1 polybar example &
MONITOR=HDMI-1 polybar second_monitor &

