#include <IE.au3>
Local $bak = ""
If WinExists("[CLASS:MozillaWindowClass]") Then
	WinActivate("[CLASS:MozillaWindowClass]")
	WinWaitActive("[CLASS:MozillaWindowClass]")
	Send("!d")
	Send("^c")
	Sleep(100)
	$bak = $bak & "Current Firefox Tab is: "  & ClipGet() & " | "
EndIf

If WinExists("[CLASS:IEFrame]") Then
	Local $o_ie = _IEAttach(WinGetHandle(""),"instance")
	$bak = $bak & "Current IE Tab is : " &_IEPropertyGet($o_ie, "locationURL")
EndIf

MsgBox(0, "Current Tabs :", $bak)
