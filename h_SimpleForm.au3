#include-once
#include "h_VariablesAndInclude.au3"

Func fnSimpleForm($forWhat)
	$get = WinGetHandle("[ACTIVE]");

	If ( Not WinExists("[REGEXPTITLE:.*SimpleForm.*]") ) Then
		$copy = _CTRLCopyIns()
		$GDForm = GUICreate("SimpleForm", 207, 49, 854, 470)
		$InputGD = GUICtrlCreateInput($copy, 8, 8, 185, 24)
		GUICtrlSetFont(-1, 12, 400, 0)
		GUISetState(@SW_SHOW)


		$idDummyEnter = GUICtrlCreateDummy()
	 	Local $iComboList_AccelTable[1][2] = _
	 	[["{ENTER}", $idDummyEnter]]
		GUISetAccelerators($iComboList_AccelTable)

		While 1
			If ( WinActivate("[ACTIVE]") <> WinGetHandle($GDForm) ) Then
				ExitLoop
			EndIf
			$nMsg = GUIGetMsg()
			Switch $nMsg
				Case $GUI_EVENT_CLOSE
					ExitLoop
				Case $idDummyEnter
					$vVandSearcch = GUICtrlRead($InputGD)
					GUIDelete($GDForm)
					If ( $forWhat == "GoldenDict" ) Then
						fnGoldenDictSearch($vVandSearcch)
						WinActivate($get);
						Return( True )			
					ElseIf ( $forWhat == "GitBush" ) Then
						Return( $vVandSearcch )	
					EndIf

			EndSwitch
			Sleep(10)
		WEnd
		GUIDelete($GDForm)
		WinActivate($get);
		
	EndIf

	Return( False )
EndFunc
