#!/usr/bin/env bash
pactl subscribe | grep --line-buffered "source" | while read -r event; do
    sleep 0.5
    wpctl set-volume @DEFAULT_SOURCE@ 0.25
done
