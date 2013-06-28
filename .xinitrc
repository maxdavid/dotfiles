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

# nm-applet &
dropboxd &
mpd ~/.mpd.conf &

#
# Desktop init --------------------
#

# Set ctrl+alt+backspace to restart X
setxkbmap -option terminate:ctrl_alt_bksp &

# Set cursor
xsetroot -cursor_name left_ptr &

# Set a background
if [ -f ~/.fehbg ];
then
  eval $(cat ~/.fehbg) &
else
  feh --bg-fill ~/.wallpaper/zerocool.jpg &
fi

# Disable screensaver / standby
xset -dpms &
xset s off &

# Start xscreensaver
/usr/bin/xscreensaver -no-splash &

# Set screen brightness to a nice default
/usr/bin/xbacklight -set 50 &

# Start muted
/usr/bin/amixer sset Master mute &

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
