#!/bin/bash
pactl set-sink-mute alsa_output.pci-0000_00_1f.3.analog-stereo off; 
pactl set-sink-volume  alsa_output.pci-0000_00_1f.3.analog-stereo +5%; 
notify-send -i /usr/share/icons/Adwaita/32x32/status/audio-volume-high-symbolic.symbolic.png "volume++" -t 1000
