;Ok this script is pretty esoteric
;Basically I'm a #gamer and so I have an RGB keyboard and mouse
;The purpose of this script is to turn off those lights when I lock the computer
;I accomplish this in 2 steps
;1. Start the driver software for the mouse which turns off those lights
;2. Use the windows devcon tool to remove the keyboard from the machine
;I also mute it cause this is generally when I'm going to sleep

;Thing is, I no longer use the keyboard and mouse that this was designed for.
;And my new keyboard has a times out and turns off the lights after 10 min
;So none of this is relevent anymore

;But maybe someone else can learn something from the 3+ hours I spent on this

global state := "good"

#l::
	Sleep, 100
	Run, *RunAs "C:\Program Files (x86)\ESTONE A9 GAMING MOUSE\GamingMouse.exe"
	Run C:\Program Files (x86)\Windows Kits\10\Tools\x64\devcon.exe remove "@USB\ROOT_HUB30\5&288CBAD5&0&0"
	SoundGet, MuteState, Master, Mute
	if MuteState=Off
		SoundSet, +1, , mute
	state := "disabled"
	return

XButton1::
	if(state = "disabled")
	{
		WinKill, ahk_exe GamingMouse.exe
		Run C:\Program Files (x86)\Windows Kits\10\Tools\x64\devcon.exe rescan
		state := "good"
		Sleep 5000
		SoundSet, +1, , mute
	}
	else
	{
		SendInput {XButton1}
	}
	return