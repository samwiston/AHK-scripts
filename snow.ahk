;Automatically throws snowballs at where your cursor is in Project Winter
;Note: this still needs some timing optimization but generally works

Numpad1::
   While GetKeyState("Numpad1","P")
      {
		Click, down, right
		Sleep, 125
		Click
		Click, up, right
		Sleep 100
		}
return