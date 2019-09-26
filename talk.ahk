;Little script for rapidly talking to shopkeepers in tower unite
;Made for getting the Store Fixation achievement for "Talk to store attendants 250 times"

Numpad0::
   While GetKeyState("Numpad0","P")
      {
        Send, {e down}
        Sleep 10
        Send, {e up}

        Sleep, 200

        Send, {Esc down}
        Sleep 10
        Send, {Esc up}

        Sleep, 200

        Send, {Esc down}
        Sleep 10
        Send, {Esc up}

        Sleep, 200
      }
   return