#!/bin/sh

# in .xmobarrc, place
# ", Run Com "/home/max/.bin/audio.sh" [] "volume" 10" in the commands
# and use "%volume%" in the template.

# displays the volume as a percentage and a graphical representation in forward slashes.
# example: if the volume is at 54%, this will echo "54 /////-----"
#
# note: the color tags make the slashes a light blue and the hyphens a dark grey.

 vol=$(amixer -c 0 get Master | awk --field-separator='[]%[]' '/%/ {if ($7 == "off") { print "Muted" } else { print $2 }}')
 bars=`expr $vol / 10`

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
	*)  bar=' <fc=#444545>----<fc=#FF8980>!!</fc>----</fc> ' ;;
esac

echo $vol $bar

exit 0
