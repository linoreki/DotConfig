#!/usr/bin/env sh

## Terminar las instancias de Polybar en ejecución
killall -q polybar

## Esperar hasta que los procesos se hayan cerrado
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


## Lanzar las barras en el primer monitor (DP-4)
MONITOR=DP-4 polybar log -c ~/.config/polybar/current.ini &
MONITOR=DP-4 polybar secondary -c ~/.config/polybar/current.ini &
MONITOR=DP-4 polybar terciary -c ~/.config/polybar/current.ini &
MONITOR=DP-4 polybar quaternary -c ~/.config/polybar/current.ini &
MONITOR=DP-4 polybar quinary -c ~/.config/polybar/current.ini &
MONITOR=DP-4 polybar primary -c ~/.config/polybar/current.ini &

## Lanzar las barras en el segundo monitor (DP-0) usando la configuración secundaria
MONITOR=DP-0 polybar log -c ~/.config/polybar/secondary.ini &
MONITOR=DP-0 polybar secondary -c ~/.config/polybar/secondary.ini &
MONITOR=DP-0 polybar terciary -c ~/.config/polybar/secondary.ini &
MONITOR=DP-0 polybar quaternary -c ~/.config/polybar/secondary.ini &
MONITOR=DP-0 polybar quinary -c ~/.config/polybar/secondary.ini &
MONITOR=DP-0 polybar primary -c ~/.config/polybar/secondary.ini &

## Barra central para ambos monitores (usando el archivo workspace.ini)
MONITOR=DP-0 polybar primary -c ~/.config/polybar/workspace2.ini &
MONITOR=DP-4 polybar primary -c ~/.config/polybar/workspace.ini &

## Opcionalmente, también puedes tener barras separadas para cada monitor si lo deseas
MONITOR=DP-4 polybar top -c ~/.config/polybar/current.ini &
MONITOR=DP-0 polybar top -c ~/.config/polybar/secondary.ini &
