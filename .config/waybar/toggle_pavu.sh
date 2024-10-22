#!/bin/zsh

# Check if pavucontrol is running
if pgrep -x "pavucontrol" > /dev/null; then
    # If running, kill it
    pkill pavucontrol
else
    # If not running, start it
    pavucontrol &
fi
