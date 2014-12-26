import XMonad
import XMonad.Config.Gnome
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ICCCMFocus
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.UrgencyHook
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.EwmhDesktops


import XMonad.Layout.Accordion
{-import XMonad.Layout.Circle-}
{-import XMonad.Layout.BoringWindows-}
import XMonad.Layout.DecorationMadness
{-import XMonad.Layout.Dishes-}
{-import XMonad.Layout.DragPane-}
{-import XMonad.Layout.Drawer -}
import XMonad.Layout.Cross
import XMonad.Layout.Grid
import XMonad.Layout.MosaicAlt
import XMonad.Layout.Minimize
import XMonad.Layout.ResizableTile
import XMonad.Layout.Spiral
import XMonad.Layout.StackTile
import XMonad.Layout.SimpleDecoration
import XMonad.Layout.DwmStyle
import XMonad.Layout.WindowArranger
import XMonad.Util.Themes
import XMonad.Config.Desktop (desktopLayoutModifiers)
import System.Exit

import XMonad.Util.Run
import XMonad.Operations
import System.IO
import System.Exit

import qualified Data.Map as M
import qualified XMonad.StackSet as W

 
-- The default number of workspaces (virtual screens) and their names.
-- By default we use numeric strings, but any string may be used as a
-- workspace name. The number of workspaces is determined by the length
-- of this list.
--
-- A tagging example:
--
-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]
--
-- myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]
-- myWorkspaces    = ["~", "1","2","3","4","5","6","7","8","9", "0", "-", "+"]
 
-- Border colors for unfocused and focused windows, respectively.
--
myNormalBorderColor  = "#dddddd"
myFocusedBorderColor = "#ff0000"

wspaces :: [WorkspaceId]
wspaces =  ["~", "1","2","3","4","5","6","7","8","9", "0", "-", "=", "Del", "F6", "F7", "F8", "F9", "F10"]
wspaces_keys = [xK_grave, xK_1, xK_2, xK_3, xK_4, xK_5, xK_6, xK_7, xK_8, xK_9, xK_0, xK_minus, xK_equal, xK_BackSpace, xK_F6, xK_F7, xK_F8, xK_F9, xK_F10 ]
 
 
------------------------------------------------------------------------
-- Key bindings. Add, modify or remove key bindings here.
--
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
 
    -- launch a terminal
    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)
 
    -- launch dmenu
    , ((modm,               xK_p     ), spawn "exe=`99path | dmenu` && eval \"exec $exe\"")
 
    -- launch gmrun
    , ((modm .|. shiftMask, xK_p     ), spawn "gmrun")
 
    -- close focused window
    , ((modm .|. shiftMask, xK_c     ), kill)
 
     -- Rotate through the available layout algorithms
    , ((modm,               xK_space ), sendMessage NextLayout)
 
    --  Reset the layouts on the current workspace to default
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)
 
    -- Resize viewed windows to the correct size
    , ((modm,               xK_n     ), refresh)
 
    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)
 
    -- Move focus to the next window
    , ((modm,               xK_j     ), windows W.focusDown)
 
    -- Move focus to the previous window
    , ((modm,               xK_k     ), windows W.focusUp  )
 
    -- Move focus to the master window
    {-, ((modm,               xK_m     ), windows W.focusMaster  )-}
 
    -- Swap the focused window and the master window
    , ((modm,               xK_Return), windows W.swapMaster)
 
    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )
 
    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )
 
    -- Shrink the master area
    , ((modm,               xK_h     ), sendMessage Shrink)
 
    -- Expand the master area
    , ((modm,               xK_l     ), sendMessage Expand)
 
    -- Push window back into tiling
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)
 
    -- Increment the number of windows in the master area
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))
 
    -- Deincrement the number of windows in the master area
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))
 
    -- Toggle the status bar gap
    -- Use this binding with avoidStruts from Hooks.ManageDocks.
    -- See also the statusBar function from Hooks.DynamicLog.
    --
    -- , ((modm              , xK_b     ), sendMessage ToggleStruts)
 
    -- Quit xmonad
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))
 
    -- Restart xmonad
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
    , ((modm,               xK_m     ), withFocused minimizeWindow)
    , ((modm .|. shiftMask, xK_m     ), sendMessage RestoreNextMinimizedWin)

    , ((modm .|. controlMask              , xK_s    ), sendMessage  Arrange         )
    , ((modm .|. controlMask .|. shiftMask, xK_s    ), sendMessage  DeArrange       )
    , ((modm .|. controlMask              , xK_Left ), sendMessage (MoveLeft      10))
    , ((modm .|. controlMask              , xK_Right), sendMessage (MoveRight     10))
    , ((modm .|. controlMask              , xK_Down ), sendMessage (MoveDown      10))
    , ((modm .|. controlMask              , xK_Up   ), sendMessage (MoveUp        10))
    , ((modm                 .|. shiftMask, xK_Left ), sendMessage (IncreaseLeft  10))
    , ((modm                 .|. shiftMask, xK_Right), sendMessage (IncreaseRight 10))
    , ((modm                 .|. shiftMask, xK_Down ), sendMessage (IncreaseDown  10))
    , ((modm                 .|. shiftMask, xK_Up   ), sendMessage (IncreaseUp    10))
    , ((modm .|. controlMask .|. shiftMask, xK_Left ), sendMessage (DecreaseLeft  10))
    , ((modm .|. controlMask .|. shiftMask, xK_Right), sendMessage (DecreaseRight 10))
    , ((modm .|. controlMask .|. shiftMask, xK_Down ), sendMessage (DecreaseDown  10))
    , ((modm .|. controlMask .|. shiftMask, xK_Up   ), sendMessage (DecreaseUp    10))
    ]
    ++
 
    --
    -- mod-[1..9], Switch to workspace N
    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
    --    | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
    -- extend to 14 workspaces
        | (i, k) <- zip (XMonad.workspaces conf)  wspaces_keys
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++
 
    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
    ++
    
    --
    -- For ResizableTile layout
    [ ((modm, xK_z), sendMessage MirrorShrink)
    , ((modm, xK_a), sendMessage MirrorExpand)
    ]
 
 
-- myLayout = tiled ||| Mirror tiled ||| Full ||| Mirror Accordion ||| GridRatio (9/16) ||| StackTile 1 (3/100) (1/2)
myLayout = minimize ( tallSimpleTabbed ||| mirrorTallSimpleTabbed ||| Full ||| Mirror Accordion ||| GridRatio (9/16)  ||| Mirror (StackTile 1 (2/100) (2/3) )  )
 {-||| GridRatio(16/9) -}
    where
    -- default tiling algorithm partitions the screen into two panes
    tiled   = ResizableTall nmaster delta ratio []
 
    -- The default number of windows in the master pane
    nmaster = 1
 
    -- Default proportion of screen occupied by master pane
    ratio   = 1/2
 
    -- Percent of screen to increment by when resizing panes
    delta   = 3/100
 
-- myL = simpleDeco shrinkText defaultTheme myLayout
-- myL = dwmStyle shrinkText defaultTheme myLayout

             
myL = dwmStyle shrinkText defaultTheme { activeColor         = "#4c7899"
                                               , inactiveColor       = "#333333"
                                               , activeBorderColor   = "#285577"
                                               , inactiveBorderColor = "#222222"
                                               , activeTextColor     = "#ffffff"
                                               , inactiveTextColor   = "#ffffff"
                                               , fontName            = "-*-fixed-medium-r-*--16-*-*-*-*-*-iso8859-1"
                                               , decoHeight          = 16
                                               } myLayout
myXmonadBar = "dzen2 -x '30' -y '1180' -h '20' -w '1920' -ta 'l' -fg '#FFFFFF' -bg '#1B1D1E' -xs 1  "
myStatusBar = "conky -c /nfs/nhome/live/wittawat/.xmonad/.conky_dzen | dzen2 -m -x '1300' -w '620'  -y '1180' -h '20' -ta 'r' -bg '#1B1D1E' -fg '#FFFFFF' -xs 1"


myBitmapsDir = "/usr/share/dzen2"
--Bar
myLogHook :: Handle -> X ()
myLogHook h = dynamicLogWithPP $ defaultPP
    {
        ppCurrent           =   dzenColor "#ebac54" "#1B1D1E" . pad
      , ppVisible           =   dzenColor "white" "#1B1D1E" . pad
      , ppHidden            =   dzenColor "white" "#1B1D1E" . pad
      , ppHiddenNoWindows   =   dzenColor "#7b7b7b" "#1B1D1E" . pad
      , ppUrgent            =   dzenColor "#ff0000" "#1B1D1E" . pad
      , ppWsSep             =   ""
      , ppSep               =   dzenColor "red" "#1B1D1E" "  |::|  "
      , ppLayout            =   dzenColor "#ebac54" "#1B1D1E" .
                                (\x -> case x of
                                    "ResizableTall"             ->      "^i(" ++ myBitmapsDir ++ "/tall.xbm)"
                                    "Mirror ResizableTall"      ->      "^i(" ++ myBitmapsDir ++ "/mtall.xbm)"
                                    "Full"                      ->      "^i(" ++ myBitmapsDir ++ "/full.xbm)"
                                    "Simple Float"              ->      "~"
                                    _                           ->      x
                                )
      , ppTitle             =   (" " ++) . dzenColor "white" "#1B1D1E" . dzenEscape
      , ppOutput            =   hPutStrLn h  
    }

main = do        
    dzenLeftBar <- spawnPipe myXmonadBar
    --dzenRightBar <- spawnPipe myStatusBar
    xmonad gnomeConfig
        { modMask = mod4Mask -- Use Win instead of Alt
--        , manageHook = myManageHook <+> manageHook defaultConfig-- make sure to include myManageHook definition from above
        , startupHook = setWMName "LG3D"
        , focusFollowsMouse = False
        , layoutHook  = desktopLayoutModifiers myL
        , keys = myKeys
        , borderWidth = 2
        , logHook = takeTopFocus >> myLogHook dzenLeftBar >> fadeInactiveLogHook 0xdddddddd
        --, logHook = myLogHook dzenLeftBar >> fadeInactiveLogHook 0xdddddddd
        , XMonad.workspaces = wspaces
        }
        
        
    
