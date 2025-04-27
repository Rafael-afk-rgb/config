#!/bin/bash

# Lanza cava en Alacritty con el título 'cava'
alacritty --title cava -e cava &

# Espera un poco para que la ventana se cree
sleep 0.5

# Redimensiona la ventana flotante
i3-msg '[title="cava"] resize set 1800 70'

# Mueve la ventana flotante a una posición específica (por ejemplo, 500px desde la izquierda y 300px desde la parte superior)
i3-msg '[title="cava"] move position 60 1020'

