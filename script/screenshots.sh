#!/usr/bin/env bash

grim -g "$(slurp)" "$HOME/screenshot/screenshot.png" && wl-copy < $HOME/screenshot/screenshot.png && notify-send "Capture" "Copiée dans le presse-papier" && imv $HOME/screenshot/screenshot.png &
