#!/bin/bash

# Lanza cava en Alacritty con el título 'cava'
gtk-launch spotify-adblock.desktop

# Espera un poco para que la ventana se cree
sleep 0.5

# Redimensiona la ventana flotante
i3-msg '[title="Spotify Free"] resize set 1890 980'
#1920 995
# Mueve la ventana flotante a una posición específica (por ejemplo, 500px desde la izquierda y 300px desde la parte superior)
i3-msg '[title="Spotify Free"] move position 15 25'
#9 24


