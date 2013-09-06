#include <IE.au3>

Local $aIE[1]
$aIE[0] = 0

Local $i = 1
Local $all_urls = ""
While 1
    $oIE = _IEAttach("", "instance", $i)
    If @error = $_IEStatus_NoMatch Then ExitLoop
    ReDim $aIE[$i + 1]
    $aIE[$i] = $oIE
	$all_urls = $all_urls & " | " & _IEPropertyGet($aIE[$i], "locationURL")
    $aIE[0] = $i
    $i += 1
WEnd


MsgBox(0, "Browsers Found", "Number of browser instances loaded: " & $aIE[0] & " and there url(s) are: " & $all_urls)
