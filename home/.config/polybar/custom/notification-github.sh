#!/bin/sh

USER="luciano-fiandesio"
TOKEN="553a2d155b3abba5c3789feddd4bcca6635479e0"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K-  https://api.github.com/notifications?participating=true | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "$notifications"
else
    echo "0"
fi