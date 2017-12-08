#!/bin/sh
echo -n $(
	upower -i /org/freedesktop/UPower/devices/DisplayDevice\
		| grep percentage\
		| cut -d ',' -f 1\
		| grep '[0-9]*' -o
	) && echo "%"
