//%attributes = {}
// fillTable

//dummy code
C_COLLECTION:C1488($1; $coll_wordlist; $coll_wordpair)
$coll_wordlist:=New collection:C1472

C_OBJECT:C1216($obj_wordlist)
$obj_wordlist:=Folder:C1567(fk resources folder:K87:11).file("wordlist.csv")

$h_ref:=Open document:C264($obj_wordlist.platformPath)
If (Ok=1)
	Repeat 
		RECEIVE PACKET:C104($h_ref; $t_input; Char:C90(10))
		
		If (Ok=1)
			$coll_wordpair:=Split string:C1554($t_input; Char:C90(Tab:K15:37); sk trim spaces:K86:2)
			
			$coll_wordlist.push($coll_wordpair[0])
			$coll_wordlist.push($coll_wordpair[1])
		End if 
	Until (Ok=0)
	
	CLOSE DOCUMENT:C267($h_ref)
End if 


If ($coll_wordlist.length>0)
	For ($l_loop; 1; 1000)
		
		CREATE RECORD:C68([Tabelle_1:1])
		$l_index:=Random:C100%($coll_wordlist.length)  // Wert zwichen 0 und Length of collection
		[Tabelle_1:1]Feld_2:2:=$coll_wordlist[$l_index]
		
		$l_index:=Random:C100%($coll_wordlist.length)  // Wert zwichen 0 und Length of collection
		[Tabelle_1:1]Feld_3:3:=$coll_wordlist[$l_index]
		
		$l_index:=Random:C100%($coll_wordlist.length)  // Wert zwichen 0 und Length of collection
		[Tabelle_1:1]Feld_4:4:=$coll_wordlist[$l_index]
		
		$l_index:=Random:C100%($coll_wordlist.length)  // Wert zwichen 0 und Length of collection
		[Tabelle_1:1]Feld_5:5:=$coll_wordlist[$l_index]
		
		SAVE RECORD:C53([Tabelle_1:1])
	End for 
End if 

UNLOAD RECORD:C212([Tabelle_1:1])