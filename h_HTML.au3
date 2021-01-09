#include-once
#include "h_VariablesAndInclude.au3"


Func RenewHTML()
	_IfPressSystemButtonsThenOff()
	$get = WinGetHandle("[ACTIVE]");
	If ( $get = WinGetHandle("[REGEXPTITLE:.*Visual Studio Code.*]") ) Then
		_CTRL_PushSign("k")
		Send("s")
		ConsoleWrite("data" & @CRLF)
	EndIf
	; _CTRL_PushSign("s")
	WinActivate("[REGEXPTITLE:Firefox Developer Edition;REGEXPCLASS:MozillaWindowClass]")
	Send("{F5}");
	WinActivate($get);	
EndFunc
