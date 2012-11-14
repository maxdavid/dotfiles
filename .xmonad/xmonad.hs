import XMonad
import XMonad.Hooks.ManageDocks     (manageDocks, avoidStruts)
import XMonad.Actions.NoBorders
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageHelpers

main = xmonad $ defaultConfig
	{ layoutHook = avoidStruts $ layoutHook defaultConfig
	, borderWidth = 1
	, manageHook = composeAll [ 
		manageDocks
		, className =? "gcalctool" --> doFloat
		, manageHook defaultConfig
		, isFullscreen --> doFullFloat
	]
	, terminal = "urxvt"
	, normalBorderColor = "#cccccc"
	, focusedBorderColor = "#664400" } `additionalKeysP`
	[ ("M-g", withFocused toggleBorder)
	,("M-p", spawn "exe=`dmenu_path | dmenu_run` && eval \"exec $exe\"")
	,("M-w", spawn "chromium")
	,("M-v", spawn "vlc")
	,("<XF86AudioPlay>", spawn "mpc toggle")
	,("<XF86AudioLowerVolume>", spawn "amixer -q -c 0 -- sset Master 2-")
	,("<XF86AudioRaiseVolume>", spawn "amixer -q -c 0 -- sset Master 2+")
	,("<XF86AudioMute>", spawn "amixer sset Master toggle")
	,("<XF86Calculator>", spawn "gcalctool")
	,("<Print>", spawn "scrot")
	]
