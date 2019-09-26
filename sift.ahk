;If you've ever played the skyfactory 3 minecraft modpack, you may already get this one
;Basically there's a lot of time spent right clicking on one thing and this automates that

Numpad0::
   While GetKeyState("Numpad0","P")
      {
       Send {Ctrl down}
       Click, right
       Sleep 25
      }
Send {Ctrl up}
   return