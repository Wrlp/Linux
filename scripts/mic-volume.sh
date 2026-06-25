#!/usr/bin/env bash
while true; do
    wpctl set-volume @DEFAULT_SOURCE@ 0.25
    sleep 2
done
