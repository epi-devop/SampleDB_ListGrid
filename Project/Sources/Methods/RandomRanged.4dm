//%attributes = {}
C_OBJECT:C1216($1; $obj_range)
C_OBJECT:C1216($0)

$obj_range:=$1

C_OBJECT:C1216($obj_internals)
$obj_internals:=New object:C1471()
$obj_internals.success:=True:C214
$obj_internals.terminate:=False:C215

If ($obj_range=Null:C1517)
	$obj_range:=New object:C1471()
	$obj_range.start:=97
	$obj_range.end:=122
End if 

While ($obj_internals.terminate=False:C215)
	$obj_internals.number:=(Random:C100()%($obj_range.end-$obj_range.start+1))+$obj_range.start
	
	If ($obj_range.number#Null:C1517)
		If ($obj_range.number#$obj_internals.number)
			$obj_internals.terminate:=True:C214
		End if 
	Else 
		$obj_internals.terminate:=True:C214
	End if 
End while 

$obj_range.number:=$obj_internals.number

$0:=$obj_range

CLEAR VARIABLE:C89($obj_internals)
CLEAR VARIABLE:C89($obj_range)
