#!/bin/bash

# Clé API OpenWeatherMap
API_KEY="REMOVED"
# Ville ou coordonnée
CITY="Chicoutimi,CA"

# Récupération de la météo en JSON
WEATHER=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=$CITY&units=metric&appid=$API_KEY")

# Extraction de la température et description
TEMP=$(echo $WEATHER | jq '.main.temp' | cut -d '.' -f1)
DESC=$(echo $WEATHER | jq -r '.weather[0].main')

# Affichage pour Waybar
echo "{\"text\": \"$TEMP°C $DESC\"}"

