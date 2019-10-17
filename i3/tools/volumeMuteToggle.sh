#!/bin/bash
pactl set-sink-mute alsa_output.pci-0000_00_1f.3.analog-stereo toggle; 
notify-send -i /usr/share/icons/Adwaita/32x32/status/audio-volume-high-symbolic.symbolic.png "volume (un)mute" -t 1000
