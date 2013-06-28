#!/bin/sh

# in .xmobarrc, place
# ", Run Com "/home/max/.bin/wireless.sh" [] "wifi" 30" in the commands
# and use "%wifi%" in the template.

# displays the volume as a graphical representation in forward slashes.
# example: if the wifi strength is at 54% and you're connected to "netgear", this will echo "netgear: /////-----"
#
# note: the color tags make the slashes a light blue and the hyphens a dark grey.

ip -4 addr show eth0 2>&1 | grep --quiet "inet " && {
  echo wired
  exit 0
 }

essid=`iwconfig wlan0 | awk --field-separator='"' '/ESSID/ {print $2}'`
strength=`iwconfig wlan0 | awk --field-separator='=' '/Quality/ {print $2}' | cut --delimiter='/' -fields=1`
bars=`expr $strength / 10`

case $bars in
	0)  bar=' <fc=#CCEBED></fc><fc=#444545>----------</fc> ' ;;
	1)  bar=' <fc=#CCEBED>/</fc><fc=#444545>---------</fc> ' ;;
	2)  bar=' <fc=#CCEBED>//</fc><fc=#444545>--------</fc> ' ;;
	3)  bar=' <fc=#CCEBED>///</fc><fc=#444545>-------</fc> ' ;;
	4)  bar=' <fc=#CCEBED>////</fc><fc=#444545>------</fc> ' ;;
	5)  bar=' <fc=#CCEBED>/////</fc><fc=#444545>-----</fc> ' ;;
	6)  bar=' <fc=#CCEBED>//////</fc><fc=#444545>----</fc> ' ;;
	7)  bar=' <fc=#CCEBED>///////</fc><fc=#444545>---</fc> ' ;;
	8)  bar=' <fc=#CCEBED>////////</fc><fc=#444545>--</fc> ' ;;
	9)  bar=' <fc=#CCEBED>/////////</fc><fc=#444545>-</fc> ' ;;
	10) bar=' <fc=#CCEBED>//////////</fc><fc=#444545></fc> ' ;;
	*)  bar='<fc=#444545>----<fc=#FF8980>!!</fc>----</fc>' ;;
esac

echo $essid $bar

exit 0
