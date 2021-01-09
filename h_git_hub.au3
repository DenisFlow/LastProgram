#include-once
#include "h_VariablesAndInclude.au3"

Func fnOnlySwitchGitBash()
	fnMainActionGit(True)
EndFunc
; Smthg-----------------------------------------------
Func fnMakeActionGitBash()
	fnMainActionGit(False)
EndFunc
; Smthg-----------------------------------------------


Func fnMainActionGit($onlySwitch = true)
	ConsoleWrite("data" & @CRLF)
	If ( $onlySwitch = False ) Then
		Local $search = fnSimpleForm("GitBush")
		If ( $search == False ) Then
			Return( False )
		EndIf
		
	EndIf
	; $h = WinGetHandle()
	If ( WinActive("[ACTIVE]") == WinGetHandle($GC_H_GITDASH) ) Then
		; $wisIsGitHub = True
	Else
		Local $sendOpenProject = ""
		If ( WinActive($GC_H_ANDROIDSTUDIO) ) Then
			$sFind = StringRegExp(WinGetTitle($GC_H_ANDROIDSTUDIO), "(?<=\[).+(?=\.app\])", $STR_REGEXPARRAYGLOBALMATCH)
			$sendOpenProject = "cd ""D:\Programming\AndroidProjects\"
		ElseIf ( WinActive($GC_H_SUBLIMETEXT) ) Then
			If ( StringRegExp(WinGetTitle($GC_H_SUBLIMETEXT), "(?<=Programming\\)AutoIt") ) Then
				$sFind = StringRegExp(WinGetTitle($GC_H_SUBLIMETEXT), "(?<=Programming\\AutoIt\\)[^\\]+", $STR_REGEXPARRAYGLOBALMATCH)
				$sendOpenProject = "cd ""D:\Programming\AutoIt\"				
			ConsoleWrite("sadfasdf" & @CRLF)
				
			EndIf
		EndIf
		If ( UBound($sFind) > 0 ) Then
			$h_git = WinGetHandle("[REGEXPTITLE:MINGW64:.*" & $sFind[0] & ".*;REGEXPCLASS:mintty]")
			If ( Not WinExists($h_git) ) Then
			; If ( WinExists($h_git) ) Then
				Run("C:\Program Files\Git\git-bash.exe")
				Sleep(500)
				Send($sendOpenProject & $sFind[0] & """")
				Send("{ENTER}")
			EndIf
			WinActivate($h_git)
		Else
			Return( False )	
		EndIf
		
	EndIf

	If ( $onlySwitch = False ) Then
		WinWaitActive($GC_H_GITDASH)
		$past = ""
		If ( StringRegExp($search, ".+\\.+") ) Then
			$inbox = $search
			$search = StringRegExp($search, ".+?(?=\\)", $STR_REGEXPARRAYGLOBALMATCH)
			; _ArrayDisplay($search)
			; $past = StringRegExp($search, "(?<=\\).+", $STR_REGEXPARRAYGLOBALMATCH)
			; _ArrayDisplay($past)
			If ( UBound($search) > 0 ) Then
				$search = $search[0]
				$past = StringRegExp($inbox, "(?<=" & $search & "\\).+", $STR_REGEXPARRAYGLOBALMATCH)
				; StringReplace(string, searchstring/start, replacestring, [occurrence], [casesense])
				If ( UBound($search) > 0 And  ) Then
					$past = $past[0]	
				Else
					$past = ""	
				EndIf
			Else
				ConsoleWrite("return false" & @CRLF)
				Return( False )
			EndIf
		EndIf
		If ( $search == "log" ) Then
			fnGetLog()
		ElseIf ( $search == "com" ) Then
			fnAddAndCommit($past)
		ElseIf ( $search == "sta" ) Then
			fnGetStatus()		
		ElseIf ( $search == "rem" ) Then
			fnGetRem($past)
		ElseIf ( $search == "pushforse" ) Then
			fnGetRem($past)	
		EndIf		
	EndIf


EndFunc
; Smthg-----------------------------------------------
Func fnGetPull()
	Sleep(100)
	_CTRLPastIns("git pull")
	; Send("{ENTER}")
	; fnGetStatus()
EndFunc
; Smthg-----------------------------------------------
Func fnAddAndCommit($comment)

	; _CTRLPastIns("git commit )
	Sleep(100)
	; _CTRLPastIns("git add .")
	Send("git add .")
	Send("{ENTER}")
	Sleep(500)
	; _CTRLPastIns("git commit -am """ & $comment & """")
	Send("git commit -am """ & $comment & """")
	If ( $comment == "" ) Then
		Send("{LEFT}")
	Else
		Send("{ENTER}")
		fnGetLog()

	EndIf
EndFunc
; Smthg-----------------------------------------------
Func fnGetLog()
	Sleep(500)
	_CTRLPastIns("git log --oneline --graph --decorate --all")
	Send("{ENTER}")	
EndFunc
; Smthg-----------------------------------------------
Func fnGetStatus()
	Sleep(100)
	_CTRLPastIns("git status")
	Send("{ENTER}")	
EndFunc
; Smthg-----------------------------------------------
Func fnGetRem($comment)
	Sleep(100)
	_CTRLPastIns("git remote set-url origin ")
	If ( $comment == "" ) Then

	Else
		Send("{ENTER}")
		Sleep(100)
		_CTRLPastIns("git remote -v")
		Send("{ENTER}")			
	EndIf	
EndFunc
; Smthg-----------------------------------------------
Func fnPushForse($comment)
	Sleep(100)
	_CTRLPastIns("git push --force origin ")
	If ( $comment == "" ) Then

	Else
		Send("{ENTER}")
	EndIf	
EndFunc
; Smthg-----------------------------------------------