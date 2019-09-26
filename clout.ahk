;A tool to designed to be used on a minecraft server called clout craft
;Instructions: hold numpad 1 to buy and numpad2 to sell
;Note: this script singlehandedly destroyed the economy of that minecraft server by exploiting a price difference

Numpad1::
   While GetKeyState("Numpad1","P")
      {
         Click, right
         Sleep 125
         Click, right, 699, 350
         Sleep 125
      }
   return
   
 Numpad2::
   While GetKeyState("Numpad2","P")
      {
         Click, right
         Sleep 125
         Click, right, 1250, 350
         Sleep 125
      }
   return