#!/bin/bash

if [ "$(playerctl status >>/dev/null 2>&1; echo $?)" == "1" ]
then
	echo " Not Active"
	exit 0
fi

if [ "$(playerctl --player=spotify status)" == "Playing" ]
then
	title=$(playerctl metadata xesam:title)
	artist=$(playerctl metadata xesam:artist)
	echo "Spotify: $title | $artist"
else
	echo "Spotify: Music Stopped"
fi



SMALLTAB=' '
MENU_ICON=$(echo "")

SEPARATOR=$(echo "-")


INFO="<txt>"
INFO+="${MENU_ICON}"
INFO+="${SMALLTAB}"
INFO+="${title}"
INFO+="${SMALLTAB}"
INFO+="${SEPARATOR}"
INFO+="${SMALLTAB}"
INFO+="${artist}"
INFO+="</txt>"
INFO+="<txtclick>$HOME/.config/eww/player/scripts/spotify-launcher</txtclick>"


MORE_INFO="<tool>"
MORE_INFO+="${NULL_VALUE}" #to hide the tooltip
MORE_INFO+="</tool>"
# Panel Print
echo -e "${INFO}"

# Tooltip Print
echo -e "${MORE_INFO}"
