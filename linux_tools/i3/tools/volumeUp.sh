#!/bin/bash
pactl set-sink-mute @DEFAULT_SINK@ off; 
pactl set-sink-volume @DEFAULT_SINK@ +5%; 
notify-send -i /usr/share/icons/Adwaita/32x32/status/audio-volume-high-symbolic.symbolic.png "volume++" -t 1000
