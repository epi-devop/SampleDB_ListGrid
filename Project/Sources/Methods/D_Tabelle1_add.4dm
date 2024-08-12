//%attributes = {}

C_LONGINT:C283($l_callerTask; $1; $l_win)
$l_callerTask:=$1

CREATE RECORD:C68([Tabelle_1:1])

$obj_form_message:=New object:C1471
$obj_form_message.success:=False:C215

$l_win:=Open form window:C675([Tabelle_1:1]; "Eingabe"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
DIALOG:C40([Tabelle_1:1]; "Eingabe"; $obj_form_message)
CLOSE WINDOW:C154

If ($obj_form_message.success=True:C214)
	SAVE RECORD:C53([Tabelle_1:1])
	
	SET PROCESS VARIABLE:C370($l_callerTask; vl_callPK; [Tabelle_1:1]Primary_Key:1*(-1))
	POST OUTSIDE CALL:C329($l_callerTask)  // Redraw in der Liste
End if 

READ ONLY:C145([Tabelle_1:1])
UNLOAD RECORD:C212([Tabelle_1:1])
