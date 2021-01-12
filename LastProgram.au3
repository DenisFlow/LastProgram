#include-once
#include "h_VariablesAndInclude.au3"


; #include "h_VLC.au3"
	HotKeySet("!{SPACE}", "PlayStopVLC");
	HotKeySet("!{RIGHT}", "ForwardVLC");
	HotKeySet("!{LEFT}", "BackVLC");
	HotKeySet("^+!{F12}", "fnOpenCloseLatvianAlphabet")

; #include "h_HTML.au3"
	HotKeySet("^+{F5}", "RenewHTML")

	HotKeySet("^!+{F11}", "fnOnlySwitchGitBash")
	HotKeySet("#^!+{F11}", "fnMakeActionGitBash")


#include "h_Dictionaries.au3"
	HotKeySet("^+z", "fnFormGoldenDictWord")

; fnFirstRunLatvianAlphabet()

While ( 1 )
	; $processGetInfo = _ProcessGetName(WinGetProcess("[ACTIVE]") )
	; If ( WinActive($GH_WOLFNOTEBOOK) And Not ProcessExists($GhMy_AddonMath1) ) Then
	; 	$GhMy_AddonMath1 = ShellExecute($CtMainPathWolf & "\@AllFastFunWolfram.exe")
	; 	$tTimer = _Timer_Init()
	; ElseIf ( WinActive($GC_H_ANKIMAIN) And Not ProcessExists($AnkiMain) ) Then
	; 	ConsoleWrite($CtMainPatLatvianWork & "\@DopsAnki.exe" & @CRLF)
	; 	$AnkiMain = ShellExecute($CtMainPatLatvianWork & "\@DopsAnki.exe")
	; 	$tTimer = _Timer_Init()			
	; EndIf
	Sleep(100)
WEnd


Func fnRemoveSeparator()
	Local $text = StringRegExpReplace(ClipGet(), "\t", "")
	ClipPut($text)
	Beep(300, 400)
EndFunc
; Smthg-----------------------------------------------