//%attributes = {}
C_LONGINT:C283($1; $l_length)
C_OBJECT:C1216($0; $obj_result)

$l_length:=$1

C_OBJECT:C1216($obj_internals)
C_LONGINT:C283($l_counter)

$obj_internals:=New object:C1471()
$obj_result:=New object:C1471()
$obj_result.bytearray:=New collection:C1472()
$obj_result.string:=""

$obj_internals.success:=True:C214

If ($l_length>0)
	$obj_internals.length:=$l_length
Else 
	$obj_internals.range:=New object:C1471()
	$obj_internals.range.start:=3
	$obj_internals.range.end:=12
	$obj_internals.result:=RandomRanged($obj_internals.range)
	$obj_internals.length:=$obj_internals.result.number
	$obj_internals.range:=Null:C1517
End if 

For ($l_counter; 1; $obj_internals.length)
	$obj_internals.range:=RandomRanged($obj_internals.range)
	$obj_result.bytearray.push($obj_internals.range.number)
End for 
$obj_result.string:=$obj_result.bytearray.map(Formula:C1597(Char:C90($1.value))).join()

$0:=$obj_result
