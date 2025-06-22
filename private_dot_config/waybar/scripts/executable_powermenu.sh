#!/bin/bash

# Prevent multiple instances
if pgrep -x "swaynag" > /dev/null; then
  exit 0
fi

# Run swaynag with auto-dismiss in 10 seconds
(sleep 10 && pkill -f "swaynag.*Power Menu Options") &

swaynag -t warning \
  --message "Shutdown?" \
  --background 2f3e4dcc \
  --border 445C71cc \
  --border-bottom 445C71ff \
  --button-background 445C71ff \
  --button-text ffffff \
  --text dcdfe1 \
  --border-bottom-size 3 \
  --button-border-size 2 \
  --button-gap 15 \
  --button-dismiss-gap 15 \
  --button-margin-right 20 \
  --button-padding 20 \
  --message-padding 20 \
  -Z "Yes" "systemctl poweroff" \
  --dismiss-button "No"
