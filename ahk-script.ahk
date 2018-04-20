; Uncomment the following line to disable tray icon
; #NoTrayIcon


; -------------------------------------------- ;
;   Part I: Virtual Desktop Switch             ;
; -------------------------------------------- ;

n = 0
#`::svd()
svd()
{
	global n
	if (n=0)
	{
		Send {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up}
	}
	else
	{
		Send {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}
	}
	n := Abs(n-1)
}


; --------------------------------------------- ;
;   Part II: Horizontal Scroll with Shift       ;
; --------------------------------------------- ;

+WheelDown::WheelRight
+WheelUp::WheelLeft
;~Shift & WheelUp::  ; Scroll left
;  ControlGetFocus, fcontrol, A
;  Loop 2  ; <-- Increase this value to scroll faster.
;    SendMessage, 0x114, 0, 0, %fcontrol%, A  ; 0x114=WM_HSCROLL; 0=SB_LINELEFT
;return
;
;~Shift & WheelDown::  ; Scroll right
;  ControlGetFocus, fcontrol, A
;  Loop 2  ; <-- Increase this value to scroll faster.
;    SendMessage, 0x114, 1, 0, %fcontrol%, A  ; 0x114=WM_HSCROLL; 1=SB_LINERIGHT
;return


; --------------------------------------------- ;
;   Part III: Markdown Keyboard Remapping       ;
; --------------------------------------------- ;

!`:: Send {Asc 096}    ;"`"
;!1:: Send {ASC 033}    ;"!"
;!4:: Send {ASC 036}    ;"$"
!6:: Send {ASC 094}    ;"^"
!9:: Send {ASC 040}    ;"("
!0:: Send {ASC 041}    ;")"
!-:: Send {ASC 095}    ;"_"
![:: Send {ASC 091}    ;"["
!]:: Send {ASC 093}    ;"]"
!\:: Send {ASC 092}    ;"\"
!;:: Send {ASC 059}    ;":"
!':: Send {ASC 034}    ;"""
!,:: Send {ASC 060}    ;"<"
!.:: Send {ASC 062}    ;">"
!/:: Send {ASC 063}    ;"?"
NumpadDot:: Send {ASC 046}    ;"."