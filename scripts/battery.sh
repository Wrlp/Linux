#!/bin/bash
while true; do
    BATTERY=$(cat /sys/class/power_supply/BAT1/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT1/status)
    
    if [ "$STATUS" != "Charging" ]; then
        if [ "$BATTERY" -eq 20 ]; then
            notify-send -u normal "Batterie faible" "Batterie à 20%, branchez le chargeur" -i battery-low
        elif [ "$BATTERY" -eq 10 ]; then
            notify-send -u critical "Batterie critique" "Batterie à 10% !" -i battery-caution
        fi
    fi
    
    sleep 60
done