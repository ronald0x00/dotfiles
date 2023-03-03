#!/usr/bin/env bash

#genmon script for displaying the time
#displays date and time on the tooltip

TIME=$(echo "\ue356 ")
DATE=$(echo "\uf073 ")
DATE+=`date '+ %d %B %A %H:%M'`
TIME+=`date '+%H:%M'`

# Panel
INFO="<txt>"
INFO+="${TIME}"
INFO+="</txt>"

INFO+="<txtclick>$HOME/.config/eww/calendar/scripts/calendarlauncher</txtclick>"

# Tooltip
MORE_INFO="<tool>"
MORE_INFO+="${DATE}"
MORE_INFO+="</tool>"

# Panel Print
echo -e "${INFO}"

# Tooltip Print
echo -e "${MORE_INFO}"


