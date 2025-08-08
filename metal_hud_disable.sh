#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Disable Metal HUD
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎮

# Documentation:
# @raycast.description Disables FPS counter
# @raycast.author evglevin
# @raycast.authorURL https://github.com/evglevin

/bin/launchctl setenv MTL_HUD_ENABLED 0
echo "Metal HUD disabled"

