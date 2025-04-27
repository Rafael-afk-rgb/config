#!/bin/bash

# Lanza cava en Alacritty con el título 'cava'
alacritty --title 'cmus v2.12.0' -e cmus &

# Espera un poco para que la ventana se cree
sleep 0.5

# Redimensiona la ventana flotante
i3-msg '[title="cmus v2.12.0"] resize set 1890 980'

# Mueve la ventana flotante a una posición específica (por ejemplo, 500px desde la izquierda y 300px desde la parte superior)
i3-msg '[title="cmus v2.12.0"] move position 15 25'


