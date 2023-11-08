#!/usr/bin/osascript

on run argv

  set spaceId to item 1 of argv as integer

  set missionControlApp to "/System/Applications/Mission Control.app/Contents/MacOS/Mission Control"

  tell application "System Events"

    -- create new space on the right
    do shell script quoted form of missionControlApp
    click button 1 of group "Spaces Bar" of group spaceId of group "Mission Control" of process "Dock"
    do shell script quoted form of missionControlApp

    -- move to the "rightmost" space
    repeat 8 times
      key code 124 using (control down) -- move right 1 space (⌘ + →)
    end repeat

    delay 1

    -- open new Alacritty instance
    do shell script "open --new -a Alacritty"

  end tell

end run
