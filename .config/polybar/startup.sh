#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 3; done

polybar -r top &

echo "Bars launched..."
