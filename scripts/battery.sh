#!/bin/bash
NOTIFIED_20=0
NOTIFIED_10=0

while true; do
    BATTERY=$(cat /sys/class/power_supply/BAT1/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT1/status)
    
    if [ "$STATUS" != "Charging" ]; then
        if [ "$BATTERY" -le 20 ] && [ "$NOTIFIED_20" -eq 0 ]; then
            dunstify -u low "Batterie faible" "Batterie a ${BATTERY}%, branchez le chargeur"
            NOTIFIED_20=1
        elif [ "$BATTERY" -le 10 ] && [ "$NOTIFIED_10" -eq 0 ]; then
            dunstify -u critical "Batterie critique" "Batterie a ${BATTERY}% !"
            NOTIFIED_10=1
        fi
    fi
    
    if [ "$STATUS" = "Charging" ]; then
        NOTIFIED_20=0
        NOTIFIED_10=0
    fi
    
    sleep 60
done