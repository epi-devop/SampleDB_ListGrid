Case of 
	: (Form event code:C388=On Header Click:K2:40)
		
	: (Form event code:C388=On After Sort:K2:28)
		
	: (Form event code:C388=On Column Moved:K2:30)
		
	: (Form event code:C388=On Column Resize:K2:31)
		
	: (Form event code:C388=On Clicked:K2:4)
		
	: (Form event code:C388=On Double Clicked:K2:5)
		LOAD RECORD:C52([Tabelle_1:1])
		
		If (Records in set:C195("ListGrid_Set0")>0) & ([Tabelle_1:1]Primary_Key:1>0)
			
			$Nil:=New process:C317("D_Tabelle1_edit"; 0; "Tabelle 1 edit"; [Tabelle_1:1]Primary_Key:1; Current process:C322)
			
		End if 
		
		
	: (Form event code:C388=On Selection Change:K2:29)
		
End case 

