;1.3
$kvt = 2.5
$out = ""
$HexVerh = "0xfa" ; 0x0000010
$HexVniz = "0x03" ; 0x0000011
$HexVerh = "0xfa" ; 0x0000012

$HexVniz = "0x03" ; 0x0000013


$HexVerh1 = "0x00"    ; 0x0000002
$HexVniz1 = "0x80"    ; 0x0000003

$HexVerh11 = "0x00"    ; 0x00000ea
$HexVniz11 = "0x80"    ; 0x00000eb

$HexVerh2 = "0x00"     ; 0x0000001
$HexVerh22 = "0x00"    ; 0x00000e9
$i = 1
$count = 0
$counterforhexvniz = 0
$trigger1 = 0
$trigger2 = 0
$set = 0

$ba = 0
While 1
	For $pik = 0 To 7
		$count = $count + 1
		$counterforhexvniz = $counterforhexvniz + 1
		$tekpik = "0x" & $pik
		If $set = 1 And (Hex($HexVerh1, 2) = "04" And Hex($HexVniz1, 2) = "7E" And Hex($HexVniz, 2) = "01" And Hex($HexVerh, 2) = "FF") Or ($ba = 1) Then
			;		if $set=1 and $kvt>=668.0 then
			$ba = 1
			MsgBox(0, " chn=" & $counterforhexvniz & " set=" & $set & " " & $count, $kvt & @CRLF & "0x01|0xe9=" & Hex($HexVerh2, 2) & @CRLF & "0x02=" & Hex($HexVerh1, 2) & @CRLF & "0x03=" & Hex($HexVniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($HexVerh, 2) & "|0x13=" & Hex($HexVniz, 2) & @CRLF & "0xea=" & Hex($HexVerh11, 2) & @CRLF & "0xeb=" & Hex($HexVniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))
		EndIf
	Next
	$HexVerh = $HexVerh + $i
	If $HexVniz = 0x01 And Hex($HexVerh, 2) = "FF" Then
		MsgBox(0, $count, $kvt & @CRLF & "0x01|0xe9=" & Hex($HexVerh2, 2) & @CRLF & "0x02=" & Hex($HexVerh1, 2) & @CRLF & "0x03=" & Hex($HexVniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($HexVerh, 2) & "|0x13=" & Hex($HexVniz, 2) & @CRLF & "0xea=" & Hex($HexVerh11, 2) & @CRLF & "0xeb=" & Hex($HexVniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))            ;				EndIf
	EndIf

	;если прошло 16 импульсов то переключаем байт который идет вниз
	If $counterforhexvniz = 16 Then
		$counterforhexvniz = 0
		$HexVniz = $HexVniz - $i
		;if 0x13=0x00 then
		If $HexVniz = 0x00 Then
			$HexVniz = "0x80" ;0x13=0x80
			$HexVerh1 = $HexVerh1 + $i ;0x02=0x02+1
			$HexVerh11 = $HexVerh11 + $i ;0xea=0xea+1
			;668.1
			If Hex($HexVerh1, 2) = "05" And Hex($HexVniz1, 2) = "7E" And Hex($HexVerh, 2) = "00" And Hex($HexVniz, 2) = "80" And $set = 1 Then
				$trigger1 = 1
			EndIf

			If $trigger1 = 1 Then
				$trigger1 = 0
				$HexVniz1 = $HexVniz1 - $i ;0x03=0x03-1
				$HexVniz11 = $HexVniz11 - $i ;0xeb=0xeb-1
				;0x03
				If $HexVniz1 = 0x00 Then
					$set = 1
					$HexVniz1 = "0x80"
					$HexVniz11 = "0x80"

					If $trigger2 = 0 Then
						$trigger2 = 1
						$HexVerh2 = $HexVerh2 + $i
						$HexVerh22 = $HexVerh22 + $i
					Else
						$trigger2 = 0
					EndIf
				EndIf
			ElseIf $trigger1 = 0 Then
				$trigger1 = 1
			EndIf
		EndIf
	EndIf
	;если прошло 80 импульсов то киловатты увеличиваются на 0.1
	If $count = 80 Then
		$count = 0
		$kvt = $kvt + 0.1
		$kvt = Round($kvt, 1)
	EndIf
WEnd
