If (Records in set:C195("ListGrid_Set0")>0)
	LOAD RECORD:C52([Tabelle_1:1])
	
	If ([Tabelle_1:1]Primary_Key:1>0)
		
		$Nil:=New process:C317("D_Tabelle1_add"; 0; "Tabelle 1 edit"; Current process:C322)
		
	End if 
End if 