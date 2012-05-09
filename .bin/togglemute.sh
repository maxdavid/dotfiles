#!/bin/sh

# fixes the alsa-mixer unmute on my desktop by toggling mute and wiggling the volume of each mutable output. this seems to work, yet no one knows why.

amixer sset -q Master toggleMute

# 1 == unmuted, 0 == muted
mutebool=$(amixer get Master | awk -F'[]%[]' '/%/ {if ($7 == "on") { print 1 } else { print 0 }}')

if [ $mutebool ]; then
	amixer sset -q Headphone unmute &
	amixer sset -q Front unmute &
	amixer sset -q Surround unmute &
	amixer sset -q Center unmute &
	amixer sset -q LFE unmute &

	amixer sset -q Master 1%+ 
	amixer sset -q Master 1%- 
	amixer sset -q Headphone 1%+ 
	amixer sset -q Headphone 1%- 
	amixer sset -q Front 1%+ 
	amixer sset -q Front 1%- 
	amixer sset -q Surround 1%+ 
	amixer sset -q Surround 1%- 
	amixer sset -q Center 1%+ 
	amixer sset -q Center 1%- 
	amixer sset -q LFE 1%+ 
	amixer sset -q LFE 1%- 
fi

exit 0
