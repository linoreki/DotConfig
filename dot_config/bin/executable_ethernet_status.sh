#!/bin/sh

echo "%{F#a486dd} %{F#FFFFFF}$(/usr/sbin/ifconfig enp42s0 | grep "inet " | awk '{print $2}')%{u-}"
