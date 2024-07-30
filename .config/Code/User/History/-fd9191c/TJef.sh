#!/bin/bash

# Obtener el nivel de volumen actual
VOLUME=$(amixer get Master | grep -oP '\d+%' | head -1 | tr -d '%')

# Determinar el icono basado en el nivel de volumen
if [ "$VOLUME" -ge 80 ]; then
    ICON=" "  # Icono para volumen alto

elif [ "$VOLUME" -ge 40 ]; then
    ICON=" "  # Icono para volumen medio

else
    ICON=" "  # Icono para volumen bajo
fi

echo "$ICON $VOLUME%"