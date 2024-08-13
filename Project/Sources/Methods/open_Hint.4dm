//%attributes = {}
$obj_form_message:=New object:C1471
$obj_form_message.success:=False:C215

$l_win:=Open form window:C675("Hint"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
DIALOG:C40("Hint"; $obj_form_message)
CLOSE WINDOW:C154

