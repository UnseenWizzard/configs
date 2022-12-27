#!/bin/bash
cmd=$1
abort='Abort Mission!'

if [ -z $1 ]
then
	select=$(echo -e 'Abort Mission!\nshutdown\nreboot\nlogout' | dmenu -nb '#073642' -nf '#586e75' -sb '#b58900' -sf '#fdf6e3' -i -p "What will it be?")
else
	select=$(echo -e 'no\nyes' | dmenu -nb '#073642' -nf '#586e75' -sb '#b58900' -sf '#fdf6e3' -i -p "Really ${cmd}?")
fi

if [[ "$select" == "shutdown"  ||  ("$select" == "yes" && "$cmd" == "shutdown") ]] 
then
	echo 'shutting down'
	shutdown now
elif [[ "$select" == "reboot"  ||  ("$select" == "yes" && "$cmd" == "reboot") ]] 
then
	echo 'rebooting'
	reboot
elif [[ "$select" == "logout"  ||  ("$select" == "yes" && "$cmd" == "logout") ]] 
then
	echo 'logging out'
	i3-msg exit
elif [[ "$select"=="$abort" || "$select"=="no" ]] 
then
	echo 'Aborted'
else 
	echo "Command $cmd not one of shutdown|reboot|logout"
	exit 1 
fi

exit 0
#bindsym $mod+Mod1+l exec "i3-nagbar -t warning -m 'Really logout?' -B 'Do it!' 'i3-msg exit'"
#bindsym $mod+Mod1+x exec "i3-nagbar -t warning -m 'Really shutdown?' -b 'Do it!' 'shutdown now'"
#bindsym $mod+Mod1+r exec "i3-nagbar -t warning -m 'Really reboot?' -b 'Do it!' 'reboot'"

