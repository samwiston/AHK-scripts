;If you're wondering what this script does, read the description of the lights.ahk file
;This was an update to that one which worked a bit better
;But again, neither are relevent to my life anymore

Run, *RunAs "C:\Program Files (x86)\ESTONE A9 GAMING MOUSE\GamingMouse.exe"
Run C:\Program Files (x86)\Windows Kits\10\Tools\x64\devcon.exe remove "@USB\ROOT_HUB30\5&288CBAD5&0&0"
SoundGet, MuteState, Master, Mute
if MuteState=Off
    SoundSet, +1, , mute

XButton1::
    WinKill, ahk_exe GamingMouse.exe
    Run C:\Program Files (x86)\Windows Kits\10\Tools\x64\devcon.exe rescan
    Sleep 5000
    SoundSet, +1, , mute
	ExitApp