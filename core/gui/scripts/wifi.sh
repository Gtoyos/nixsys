#!/bin/bash
#Copyright (C) 2014 Alexander Keller 
#Copyright (C) 2020 Guillermo Toyos
#License: GNU General Public License
INTERFACE="${BLOCK_INSTANCE:-wlan0}"

[[ ! -d /sys/class/net/${INTERFACE}/wireless ]] ||
	    [[ "$(cat /sys/class/net/$INTERFACE/operstate)" = 'down' ]] && exit
QUALITY=$(grep $INTERFACE /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')
WIFINAME=$(iwgetid $INTERFACE --raw)
#full_text
echo "🌐 $WIFINAME ($QUALITY%)" 
#short_text
echo "WIFI@$QUALITY%"
#color
if [[ $QUALITY -ge 80 ]]; then
	    echo "#00FF00"
    elif [[ $QUALITY -ge 60 ]]; then
	        echo "#FFF600"
	elif [[ $QUALITY -ge 40 ]]; then
		    echo "#FFAE00"
	    else
		        echo "#FF0000"
fi
