#!/bin/bash
# Configuración de monitores con xrandr utilizando --left-of y --right-of

# Configura DP-4 a la izquierda de DP-0
xrandr --output DP-0 --mode 1920x1080 --rate 144 --rotate normal --pos 0x0 \
       --output DP-4 --primary --mode 1920x1080 --rate 144 --pos 1920x0 --rotate normal

