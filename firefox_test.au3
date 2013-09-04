WinActivate("[CLASS:MozillaWindowClass]")
Send("!d")
Send("^c")
Sleep(100)
Local $bak = ClipGet()
MsgBox(0, "Firefox current url contains:", $bak)

WinActivate("[CLASS:IEFrame]")
Send("!d")
Send("^c")
Sleep(100)
Local $bak_ie = ClipGet()
MsgBox(0, "IE current url contains:", $bak_ie)

