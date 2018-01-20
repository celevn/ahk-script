; Uncomment the following line to disable tray icon
; #NoTrayIcon


; -------------------------------------------- ;
; ------Part I : Virtual Desktop Switch------- ;
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
; ----Part II : Markdown Keyboard Remapping---- ;
; --------------------------------------------- ;

NumpadDot:: Send {ASC 46}    ;"."
;!1:: Send {ASC 33}    ;"!"
!':: Send {ASC 34}    ;"""
;!4:: Send {ASC 36}    ;"$"
!9:: Send {ASC 40}    ;"("
!0:: Send {ASC 41}    ;")"
!;:: Send {ASC 59}    ;":"
!,:: Send {ASC 60}    ;"<"
!.:: Send {ASC 62}    ;">"
!/:: Send {ASC 63}    ;"?"
![:: Send {ASC 91}    ;"["
!\:: Send {ASC 92}    ;"\"
!]:: Send {ASC 93}    ;"]"
!6:: Send {ASC 94}    ;"^"
!-:: Send {ASC 95}    ;"_"
!`:: Send {Asc 96}    ;"`"