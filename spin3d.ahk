;Version of my original spin program for 3d games
;I believe that this was designed with tower unite and project winter in mind
;Note: does not work, timing is all over the place

Numpad1::
   While GetKeyState("Numpad1","P")
      {
        Send, {a down}
        Sleep 10
        Send, {a up}
		
		Sleep, 100
		
		Send, {w down}
        Sleep 10
        Send, {w up}
		
		Sleep, 100

        Send, {d down}
        Sleep 10
        Send, {d up}
		
		Sleep, 100
		
		Send, {s down}
        Sleep 10
        Send, {s up}
		
		Sleep, 100
      }
Send {Ctrl up}
   return
   