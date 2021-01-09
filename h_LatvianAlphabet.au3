#include-once
#include "h_VariablesAndInclude.au3"


Func fnOpenCloseLatvianAlphabet()
	If ( fnProgramLatvianAlphabetRunning() ) Then
		ProcessClose($G_NANEPROGRAMALPHABET)
	Else
		fnRunAlphabetLatvian()	
	EndIf
	
EndFunc
; Smthg-----------------------------------------------

Func fnProgramLatvianAlphabetRunning()
	Return( ProcessExists($G_NANEPROGRAMALPHABET) )
EndFunc
; Smthg-----------------------------------------------

Func fnFirstRunLatvianAlphabet()
	If ( Not fnProgramLatvianAlphabetRunning() ) Then
		fnRunAlphabetLatvian()
	EndIf	
EndFunc
; Smthg-----------------------------------------------

Func fnRunAlphabetLatvian()
	ShellExecute("C:\Users\User\Documents\@Projects_Dzen\Latvija\Typing\" & $G_NANEPROGRAMALPHABET)
EndFunc
; Smthg-----------------------------------------------