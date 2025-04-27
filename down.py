import subprocess
import sys

rep = subprocess.run(['playerctl', '-p', 'cmus', 'status'], capture_output=True, text=True).stdout.strip()

if rep == 'Playing':
    subprocess.run(['notify-send', 'Tienes que estar en Spotify para Descargar canciones, ahora estas en CMUS :| xd'])
    subprocess.run(['paplay', '/home/rafael/sounds/mixkit-correct-answer-tone-2870.wav'])
    sys.exit()

# Ejecutar el script bash y capturar la salida
resultado = subprocess.run(['/home/rafael/tools//id_cancion.sh'], capture_output=True, text=True)

# Obtener la URL desde stdout
url = resultado.stdout.strip()

# Detectar canción con playerctl
titulo = subprocess.run(['playerctl', '-p', 'spotify', 'metadata', 'xesam:title'], capture_output=True, text=True).stdout.strip()
artista = subprocess.run(['playerctl', '-p', 'spotify', 'metadata', 'xesam:artist'], capture_output=True, text=True).stdout.strip()

# Crear mensaje de notificación
mensaje = f"{titulo} - {artista}"

# Mostrar notificación con notify-send
subprocess.run(['notify-send', '🎵 Descargando canción', mensaje])

# Reproducir sonido de notificación (por ejemplo, con aplay para un archivo .wav)
subprocess.run(['paplay', '/home/rafael/sounds/mixkit-correct-answer-tone-2870.wav'])

# Verificar que la URL no esté vacía
if url:
    print(f"Descargando: {url}")
    subprocess.run(['/home/rafael/venv/bin/spotdl', url])
else:
    print("No se pudo obtener la URL.")
   
