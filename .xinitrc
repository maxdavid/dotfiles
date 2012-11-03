#!/bin/bash

#
# servers and daemons -------------
#

# make sure urxvt is up to date
xrdb -merge ~/.Xresources &
# start the compositing manager
xcompmgr &

dropbox start &
mpd &

#
# Desktop init --------------------
#

# Set cursor
xsetroot -cursor_name left_ptr&

# Set a background
feh --bg-fill ~/.wallpaper/lake.jpg&

# Disable screensaver / standby
xset -dpms&
xset s off&

# Make java work
wmname LG3D&

#
# Init desktop environment --------
#

# xmobar & trayer
xmobar &
trayer --edge top --alpha 0 --align right --SetDockType true --SetPartialStrut true --expand true --width 5 --transparent true --tint 0x000000 --height 12 &

# Start xmonad - should always be last
 exec xmonad
