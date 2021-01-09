TraySetIcon("shell32.dll", -16)

#include <Misc.au3>
#include <MsgBoxConstants.au3>
#include <Process.au3>
#include <_My_Add++.au3>

#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

Global $GC_WinVLC = "[REGEXPTITLE:.*VLC media player]"
Global $GhMy_AddonMath1
Global $GhMy_AddonMath2
Global $AnkiMain
Global $GH_WOLFNOTEBOOK = '[REGEXPTITLE:Wolfram Mathematica]'
; Global $CtMainPath = StringRegExp(@ScriptDir, "(.*\\)", $STR_REGEXPARRAYGLOBALMATCH)[0]
Global $CtMainPathWolf = "C:\Users\User\Documents\@Projects_Dzen\Wolfram Mathematica\AutoIt"
Global $CtMainPatLatvianWork = "C:\Users\User\Documents\@Projects_Dzen\Latvija\AutoIt"
Global $GC_H_WINDGNDICT = '[CLASS:QWidget]'
Global $GCT_SLEEPALL = 50
Global $G_NANEPROGRAMALPHABET = "@Typing.exe"
Global $GC_H_ANKIMAIN = "[TITLE:User 1 - Anki;Class:Qt5QWindowIcon]"
Global $GC_H_MOZILA = "[CLASS:MozillaWindowClass;REGEXPTITLE:.+YouTube — Mozilla Firefox]"
Global $GC_H_ANDROIDSTUDIO = "[REGEXPTITLE:Android Studio;REGEXPCLASS:SunAwtFrame]"
Global $GC_H_GITDASH = "[REGEXPTITLE:MINGW64;REGEXPCLASS:mintty]"
Global $GC_H_SUBLIMETEXT	 = "[REGEXPTITLE:\) - Sublime Text]"

Global $InputGD
Global $GDForm
Global $idDummyEnter


#include "h_VLC.au3"
	; HotKeySet("!{SPACE}", "PlayStopVLC");
	; HotKeySet("!{RIGHT}", "ForwardVLC");
	; HotKeySet("!{LEFT}", "BackVLC");


#include "h_Dictionaries.au3"

#include "h_LatvianAlphabet.au3"

#include "h_HTML.au3"

#include "h_SimpleForm.au3"

#include "h_git_hub.au3"