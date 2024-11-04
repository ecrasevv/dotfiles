#!/bin/bash

# Uccide tutte le istanze di polybar in esecuzione
killall -q polybar

# Attende che tutte le istanze siano effettivamente terminate
while pgrep -x polybar >/dev/null; do sleep 1; done

# Avvia la barra su entrambi i monitor
MONITOR=eDP-1 polybar example &
MONITOR=HDMI-1 polybar second_monitor &

