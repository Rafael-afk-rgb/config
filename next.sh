#!/usr/bin/bash
rep=$(playerctl -p spotify status)

if [ "$rep" = "Playing" ]; then
  playerctl -p spotify next
else
  playerctl -p cmus next
fi

name=$(playerctl metadata xesam:title)
art=$(playerctl metadata xesam:artist)

notify-send "$name - $art"
