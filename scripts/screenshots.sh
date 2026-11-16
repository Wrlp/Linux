#grim -g "$(slurp)" "$HOME/screenshot/screenshot.png" && wl-copy < $HOME/screenshot/screenshot.png && notify-send "Capture" "Copiée dans le presse-papier" && imv $HOME/screenshot/screenshot.png &
#!/usr/bin/env bash
#grim -g "$(slurp)" "$HOME/screenshot/screenshot.png" && \
#wl-copy --type image/png < "$HOME/screenshot/screenshot.png" && \
#notify-send "Capture" "Copiée dans le presse-papier" && \
#imv "$HOME/screenshot/screenshot.png" && \
#hyprctl dispatch focuswindow lastactive

#!/usr/bin/env bash
#FOCUSED=$(hyprctl activewindow -j | grep -o '"address": "[^"]*"' | head -1 | cut -d'"' -f4)
#grim -g "$(slurp)" - | wl-copy --type image/png
#notify-send "Capture" "Copiée dans le presse-papier"
#hyprctl dispatch focuswindow address:$FOCUSED

#!/usr/bin/env bash

set -euo pipefail

# Sélection de la zone
GEOMETRY=$(slurp) || exit 0

# Annuler si aucune zone n'est sélectionnée
[ -n "$GEOMETRY" ] || exit 0

# Capture et copie dans le presse-papier
grim -g "$GEOMETRY" - | wl-copy --type image/png

# Notification
notify-send "Capture" "Copiée dans le presse-papier"
