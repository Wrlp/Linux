#!/bin/bash

# Lancer swaylock en arrière-plan (ne pas bloquer le script)
swaylock \
  --indicator --clock --indicator-radius 120 \
  --indicator-thickness 15 \
  --image /home/wrlp/.config/hypr/sid.jpg \
  --effect-blur 10x5 \
  --effect-vignette 0.5:0.5 \
  --ring-color 33ccffAA \
  --key-hl-color ffcc00 \
  --inside-color 00000033 \
  --line-color 00000000 \
  --separator-color 00000000 \
  --text-color ffffff \
  --indicator-radius 100 \
  --indicator-thickness 10 \
  --fade-in 0.2 & 


# Petite pause pour laisser swaylock se lancer
sleep 0.5

# Mise en veille
systemctl sleep
