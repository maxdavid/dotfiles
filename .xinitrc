#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#
# servers and daemons -------------
#

# make sure urxvt is up to date
xrdb -merge ~/.Xresources &
# start the compositing manager
xcompmgr &

# notification daemon
/usr/lib/notification-daemon-1.0/notification-daemon &

# nm-applet &
checkgmail &
dropboxd &
mpd ~/.mpd.conf &

#
# Desktop init --------------------
#

# Let the HDMI port set auto resolution
# xrandr --output HDMI-0 --primary --auto && xrandr --output DVI-1 --left-of HDMI-0 --rotate left &

# Set ctrl+alt+backspace to restart X
setxkbmap -option terminate:ctrl_alt_bksp &

# Set cursor
xsetroot -cursor_name left_ptr &

# Set a background
if [ -f ~/.fehbg ];
then
	eval $(cat ~/.fehbg) &
else
	feh --bg-fill ~/.wallpaper/lake.jpg &
fi

# Disable screensaver / standby
xset -dpms &
xset s off &

# Make java work
wmname LG3D &

#
# Init desktop environment --------
#

# xmobar & trayer
xmobar &
trayer --edge top --alpha 0 --align right --SetDockType true --SetPartialStrut true --expand true --width 5 --transparent true --tint 0x000000 --height 12 &

# Start xmonad - should always be last
exec xmonad
