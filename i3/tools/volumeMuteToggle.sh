#!/bin/bash
pactl set-sink-mute @DEFAULT_SINK@ toggle; 
notify-send -i /usr/share/icons/Adwaita/32x32/status/audio-volume-high-symbolic.symbolic.png "volume (un)mute" -t 1000
