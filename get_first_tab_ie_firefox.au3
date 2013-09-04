If WinExists("[CLASS:MozillaWindowClass]") Then
	WinActivate("[CLASS:MozillaWindowClass]")
	Send("!d")
	Send("^c")
	Sleep(100)
	Local $bak = ClipGet()
	MsgBox(0, "Firefox current url contains:", $bak)
Else
	MsgBox(0, "Firefox not running", "No instance of firefox is currently running")
EndIf

If WinExists("[CLASS:IEFrame]") Then
	WinActivate("[CLASS:IEFrame]")
	Send("!d")
	Send("^c")
	Sleep(100)
	Local $bak_ie = ClipGet()
	MsgBox(0, "IE current url contains:", $bak_ie)
Else
	MsgBox(0, "IE not running", "No instance of IE is currently running")
Endif

