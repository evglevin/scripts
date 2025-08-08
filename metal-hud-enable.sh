#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Enable Metal HUD
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎮

# Documentation:
# @raycast.description Enables FPS counter
# @raycast.author elevin

/bin/launchctl setenv MTL_HUD_ENABLED 1
echo "Metal HUD enabled"

