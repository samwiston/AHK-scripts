;Pretty simple spinning script
;Originally made for turning back and forth in terraria, but works pretty well on other games

Numpad0::
   While GetKeyState("Numpad0","P")
      {
        Send, {a down}
        Sleep 10
        Send, {a up}

        Send, {d down}
        Sleep 10
        Send, {d up}
      }
Send {Ctrl up}
   return