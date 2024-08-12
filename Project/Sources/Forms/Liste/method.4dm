Case of 
	: (Form event code:C388=On Load:K2:1)
		C_LONGINT:C283(vl_callPK)
		vl_callPK:=0
		
		READ ONLY:C145([Tabelle_1:1])
		ALL RECORDS:C47([Tabelle_1:1])
		
		ORDER BY:C49([Tabelle_1:1]; [Tabelle_1:1]Feld_2:2; >; [Tabelle_1:1]Feld_3:3; >; [Tabelle_1:1]Feld_4:4; >; [Tabelle_1:1]Feld_5:5; >)
		
		CREATE SET:C116([Tabelle_1:1]; "origin_set")
		CREATE EMPTY SET:C140([Tabelle_1:1]; "ListGrid_Set0")
		
		
		
	: (Form event code:C388=On Outside Call:K2:11)
		
		If (vl_callPK>0)
			BEEP:C151
			
			vl_callPK:=0
		End if 
		
		COPY NAMED SELECTION:C331([Tabelle_1:1]; "$temp_AllRecords")
		COPY SET:C600("ListGrid_Set0"; "$temp_Selection")  // Selection merken
		
		USE NAMED SELECTION:C332("$temp_AllRecords")
		COPY SET:C600("$temp_Selection"; "ListGrid_Set0")  // Selection wieder herstellen
		
		CLEAR NAMED SELECTION:C333("$temp_AllRecords")
		CLEAR SET:C117("$temp_Selection")
		
		
		
		
	: (Form event code:C388=On Unload:K2:2)
		
End case 
