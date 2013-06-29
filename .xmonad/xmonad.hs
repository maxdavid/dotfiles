import XMonad
import XMonad.Hooks.ManageDocks     (manageDocks, avoidStruts)
import XMonad.Layout.NoBorders
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageHelpers

main = xmonad $ defaultConfig
  { layoutHook = smartBorders $ lessBorders OnlyFloat $ avoidStruts $ layoutHook defaultConfig
  , handleEventHook = fullscreenEventHook
  , manageHook = composeAll [ 
    manageDocks
    , className =? "gnome-calculator" --> doFloat
    , manageHook defaultConfig
    , isFullscreen --> doFullFloat
  ]
  , terminal = "urxvt"
  , normalBorderColor = "#cccccc"
  , focusedBorderColor = "#cc9900" 
  } `additionalKeysP`
  [ ("M-p", spawn "exe=`dmenu_path | dmenu_run` && eval \"exec $exe\"")
  ,("M-w", spawn "firefox")
  ,("M-v", spawn "vlc")
  ,("<XF86AudioPlay>", spawn "mpc toggle")
  ,("<XF86AudioLowerVolume>", spawn "amixer -q -c 0 -- sset Master 2-")
  ,("<XF86AudioRaiseVolume>", spawn "amixer -q -c 0 -- sset Master 2+")
  ,("<XF86MonBrightnessUp>", spawn "xbacklight -inc 10")
  ,("<XF86MonBrightnessDown>", spawn "xbacklight -dec 10")
  ,("<XF86AudioMute>", spawn "amixer sset Master toggle")
  ,("<XF86Launch1>", spawn "gnome-calculator")
  ,("<Print>", spawn "scrot")
  ]
