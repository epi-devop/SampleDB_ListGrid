//%attributes = {}
// fillTable

C_OBJECT:C1216($obj_internals)
C_LONGINT:C283($l_counter)

$obj_internals:=New object:C1471()
$obj_internals.coll_records:=New collection:C1472()

For ($l_counter; 1; 800)
	$obj_internals.record:=New object:C1471()
	$obj_internals.record.Feld_2:=makeRndWord(7).string
	$obj_internals.record.Feld_3:=makeRndWord(5).string
	$obj_internals.record.Feld_4:=makeRndWord(12).string
	$obj_internals.record.Feld_5:=makeRndWord(9).string
	$obj_internals.coll_records.push($obj_internals.record)
End for 

ds:C1482.Tabelle_1.fromCollection($obj_internals.coll_records)

CLEAR VARIABLE:C89($obj_internals)
CLEAR VARIABLE:C89($v_iter_var)
