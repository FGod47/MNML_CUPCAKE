#!/bin/bash
STATE_FILE="/home/fgod/.cache/waybar_hw_expanded"

if [[ -f "$STATE_FILE" ]]; then
  rm "$STATE_FILE"
else
  touch "$STATE_FILE"
fi