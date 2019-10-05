#!/bin/bash
isIntl=$(setxkbmap -query | grep intl) 
if [ -n "$isIntl" ] 
then
	setxkbmap us
	echo "layout US"
else
	setxkbmap us -variant intl
	echo "layout US intl"
fi
