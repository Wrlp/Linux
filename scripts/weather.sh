
#!/bin/bash

# Charge le .env
source "$HOME/Linux/.env"

# Ville
CITY="Chicoutimi,CA"

# Récupération météo
WEATHER=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=$CITY&units=metric&appid=$WEATHER_API_KEY")

# Vérification que la réponse est valide
if ! echo "$WEATHER" | jq -e '.main' > /dev/null 2>&1; then
  echo '{"text": "⚠ météo indispo"}'
  exit 1
fi

# Extraction
TEMP=$(echo "$WEATHER" | jq '.main.temp' | cut -d '.' -f1)
DESC=$(echo "$WEATHER" | jq -r '.weather[0].main')

# Waybar
echo "{\"text\": \"$TEMP°C $DESC\"}"