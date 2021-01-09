#include-once
#include "h_VariablesAndInclude.au3"



Func fnFormGoldenDictWord()
	fnSimpleForm("GoldenDict")
EndFunc
; -----------------------------------------------
Func fnGoldenDictSearch($vVandSearcch)
	; ClipPut($vVandSearcch)
	ConsoleWrite($vVandSearcch & @CRLF)
	fnGoldenDictActive()
	_CTRLPastV($vVandSearcch)
	Send('{Enter}')
	Sleep($GCT_SLEEPALL)
EndFunc   ;==>fnGoldenDictSearch
; Smthg-----------------------------------------------
Func fnGoldenDictActive()
	_WinActivAndWaitError($GC_H_WINDGNDICT)
	Sleep($GCT_SLEEPALL)
	Send('{Esc}')
	Sleep($GCT_SLEEPALL)
EndFunc
;Smthg-----------------------------------------------
Func fnFindSmthngGoldenDict($vVandSearcch)
	fnGoldenDictActive()
	_CTRL_PushSign("HOME")
	_CTRL_PushSign("f")
	_CTRLPastV($vVandSearcch)
	Sleep($GCT_SLEEPALL)
EndFunc
; ========================================================================
; pirkt 

; language
; fnDubGoldenDictSearch()
; Func fnDubGoldenDictSearch()
; 	Local $hOfActWin = WinGetHandle('[ACTIVE]')
; 	Local $sPast
; 	Local $newLine = ""
; 	_IfPressSystemButtonsThenOff()
; 	$sPast = _CTRLCopyIns(False)

; 	If ( $sPast <> "" ) Then
; 		$sPast = StringRegExpReplace(ClipGet(), "\\\[UpArrow\]", "↑")
; 		$sPast = fnRedactTextReturn($sPast)
; 		If ( StringRegExp($sPast, "[^\w ]") ) Then
; 			$newLine = InputBox("RedactLine", "You can redact phrase", $sPast)
; 			If ( Not @error And $newLine <> "" ) Then
; 				$sPast = $newLine
; 			Else
; 				Return( False )	
; 			EndIf
; 		EndIf
; 		fnGoldenDictSearch($sPast)
; 		_WinActivAndWaitError($hOfActWin)
; 	Else
; 		_WinActivAndWaitError($H_WINDGNDICT)
; 	EndIf
; EndFunc   ;==>fnDubGoldenDictSearch
; ; -----------------------------------------------
; Func fnRedactTextReturn($sPast)
; 	Return( StringRegExpReplace($sPast, "\*", "") )
; EndFunc
; ; Smthg-----------------------------------------------
; Func fnDubGoldenDictSmthngSearch()
; 	Local $hOfActWin = WinGetHandle('[ACTIVE]')
; 	Local $sPast
; 	_IfPressSystemButtonsThenOff()
; 	$sPast = _CTRLCopyIns()
; 	If ( $sPast <> "" ) Then
; 		Sleep(50)
; 		fnWolfImage($sPast, True)
; 		Sleep(50)
; 		fnFindSmthngGoldenDict($sPast)
; 		_WinActivAndWaitError($hOfActWin)
; 	Else
; 		_WinActivAndWaitError($GC_H_WINDGNDICT)
; 	EndIf
; EndFunc   ;==>fnDubGoldenDictSearch



; Func fnDubTildeDictSearch()
; 	Local $hOfActWin = WinGetHandle('[ACTIVE]')
; 	_CTRL_SHIFT_PushSign("t")
; 	Sleep(700)
; 	_WinActivAndWaitError($hOfActWin)
; 	ClipPut("")
; EndFunc
; ; Smthg-----------------------------------------------