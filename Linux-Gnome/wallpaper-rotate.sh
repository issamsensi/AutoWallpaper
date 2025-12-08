#!/bin/bash

folder="$HOME/Pictures/wallpapers"
interval=600

while true; do
  pic=$(find "$folder" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)
  gsettings set org.gnome.desktop.background picture-uri "file://$pic"
  gsettings set org.gnome.desktop.background picture-uri-dark "file://$pic"
  sleep $interval
done
