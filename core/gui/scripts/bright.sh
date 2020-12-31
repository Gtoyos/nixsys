#!/bin/sh

#simple brightness control
#requiers writing permision in backlight controller

b_max=$(cat /sys/class/backlight/intel_backlight/max_brightness)
b_now=$(cat /sys/class/backlight/intel_backlight/actual_brightness)

if [ -z $1 ]
then
	echo No arguments found
	exit 0
elif [ $1 = dec ]
then
	b_new=$(expr $b_now - 440)
	if [ $b_now -le 440 ]
	then
		exit 0
	else
		echo $b_new | tee /sys/class/backlight/intel_backlight/brightness
	fi
elif [ $1 = inc ]
then
	b_new=$(expr $b_now + 440)
	if [ $b_max -le $b_new ]
	then
		exit 0
	else
		echo $b_new | tee /sys/class/backlight/intel_backlight/brightness
	fi
else
	echo No valid arguments
	exit 0
fi
