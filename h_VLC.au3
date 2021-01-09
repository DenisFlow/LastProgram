#include-once
#include "h_VariablesAndInclude.au3"

Func PlayStopVLC()
	MainFunction("{SPACE}");
EndFunc

Func BackVLC()
	MainFunction("{LEFT}");
EndFunc

Func ForwardVLC()
	MainFunction("{RIGHT}");
EndFunc

Func MainFunction($SendSmthng)
	Local $wasActive = False
	_IfPressSystemButtonsThenOff()
	$get = WinGetHandle("[ACTIVE]");
	If ( WinExists($GC_WinVLC) ) Then
		WinActivate($GC_WinVLC);
		$wasActive = True
			
	ElseIf ( WinExists($GC_H_MOZILA) ) Then
		WinActivate($GC_H_MOZILA);
		$wasActive = True

	EndIf

	If ( $wasActive ) Then
		Send($SendSmthng);
		WinActivate($get);		
	EndIf
	; CheckIsPressed();
EndFunc

Func fnYouTube()
	
EndFunc
; Smthg-----------------------------------------------