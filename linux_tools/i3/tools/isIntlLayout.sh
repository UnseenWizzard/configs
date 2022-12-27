#!/bin/bash
isIntl=$(setxkbmap -query | grep intl)

if [ -n "$isIntl" ]
then
	echo "US-intl"
else 
	echo "US"
fi
