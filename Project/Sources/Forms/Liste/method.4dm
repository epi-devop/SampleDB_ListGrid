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
		//CREATE SET([Tabelle_1]; "origin_set")
		//COPY NAMED SELECTION([Tabelle_1]; "$temp_AllRecords")
		COPY SET:C600("ListGrid_Set0"; "$temp_Selection")  // remember selected row
		
		If (vl_callPK>0)
			//BEEP
			
			vl_callPK:=0
			// do nothing
			
		Else 
			If (vl_callPK<0)  // add record to set
				CREATE EMPTY SET:C140([Tabelle_1:1]; "$new")
				QUERY:C277([Tabelle_1:1]; [Tabelle_1:1]Primary_Key:1=Abs:C99(vl_callPK))
				ADD TO SET:C119([Tabelle_1:1]; "$new")
				UNION:C120("origin_set"; "$new"; "origin_set")
				
				COPY SET:C600("$new"; "$temp_Selection")  // new selected row
			End if 
		End if 
		
		USE SET:C118("origin_set")
		ORDER BY:C49([Tabelle_1:1]; [Tabelle_1:1]Feld_2:2; >; [Tabelle_1:1]Feld_3:3; >; [Tabelle_1:1]Feld_4:4; >; [Tabelle_1:1]Feld_5:5; >)
		
		//USE NAMED SELECTION("$temp_AllRecords")
		COPY SET:C600("$temp_Selection"; "ListGrid_Set0")  // restore selected row
		
		//CLEAR NAMED SELECTION("$temp_AllRecords")
		CLEAR SET:C117("$temp_Selection")
		CLEAR SET:C117("$new")
		
		
		
		
	: (Form event code:C388=On Unload:K2:2)
		
End case 
