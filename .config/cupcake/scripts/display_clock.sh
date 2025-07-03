#!/bin/bash

STATE_FILE="/tmp/waybar_clock_state"
STATE=$(cat "$STATE_FILE" 2>/dev/null || echo "compact")

if [ "$STATE" = "expanded" ]; then
  echo "{\"text\": \"$(date '+%A ⦵ %d %B %Y')\", \"tooltip\": false}"
else
  echo "{\"text\": \"󰥔 $(date '+%I:%M %p')\", \"tooltip\": \"$(date '+%A ⦵ %d %B %Y')\"}"
fi
