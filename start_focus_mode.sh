#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Start Focus Session
# @raycast.mode silent
# @raycast.argument1 { "type": "text", "placeholder": "Minutes" }

# Optional parameters:
# @raycast.icon ⌛

# Documentation:
# @raycast.author evglevin
# @raycast.authorURL https://github.com/evglevin

MINUTES="$1"

if [[ -z "$MINUTES" ]] || ! [[ "$MINUTES" =~ ^[0-9]+$ ]]; then
  echo "Please provide the duration in minutes (number only)."
  exit 1
fi

SECONDS=$(( MINUTES * 60 ))

# Focus session configuration
GOAL="Deep%20Work"  # URL-encoded
CATEGORIES="social,news,shopping,messaging,streaming,travel,crossover,gaming"
MODE="block"

# Launch Raycast Focus mode
open "raycast://focus/start?goal=${GOAL}&categories=${CATEGORIES}&duration=${SECONDS}&mode=${MODE}"
