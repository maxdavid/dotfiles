import XMonad
import XMonad.Hooks.ManageDocks     (manageDocks, avoidStruts)
import XMonad.Actions.NoBorders
import XMonad.Util.EZConfig

main = xmonad $ defaultConfig
	{ layoutHook = avoidStruts $ layoutHook defaultConfig
	, borderWidth = 1
	, manageHook = composeAll [ 
		manageDocks
		, className =? "gcalctool" --> doFloat
		, manageHook defaultConfig
	]
	, terminal = "urxvt"
	, normalBorderColor = "#cccccc"
	, focusedBorderColor = "#664400" } `additionalKeysP`
	[ ("M-g", withFocused toggleBorder)
	,("M-a", spawn "xterm")
	,("M-p", spawn "exe=`dmenu_path | dmenu_run` && eval \"exec $exe\"")  -- easy program spawning
	,("M-w", spawn "chromium")
	,("M-m", spawn "vlc")
	,("M-d", spawn "libreoffice")
	,("<XF86AudioPause>", spawn "xmessage 'audio pause'")
	,("<XF86AudioLowerVolume>", spawn "amixer sset -q Master 2-")
	,("<XF86AudioRaiseVolume>", spawn "amixer sset -q Master 2+")
	,("<XF86AudioMute>", spawn "/home/max/.bin/togglemute.sh")   -- a script to fix my desktop's mute problem
	,("<XF86Calculator>", spawn "gcalctool")
	,("<Print>", spawn "scrot")
	]

