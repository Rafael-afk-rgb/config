#!/bin/bash
track_id=$(playerctl metadata --format '{{mpris:trackid}}' | awk -F '/' '{print $5}')
echo "https://open.spotify.com/track/$track_id"

