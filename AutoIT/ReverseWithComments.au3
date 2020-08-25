;1.3
$bank = 2.5
$out = ""
;set=0 эти переменные с 10 и 11 адресами
$hexverh = "0xfa" ; 0x0000010
$hexvniz = "0x03" ; 0x0000011
;при set=1 эти переменные становятся 12 и 13 адресами
$hexverh = "0xfa" ; 0x0000012

$hexvniz = "0x03" ; 0x0000013


$hexverh1 = "0x00"    ; 0x0000002
$hexvniz1 = "0x80"    ; 0x0000003

$hexverh11 = "0x00"    ; 0x00000ea
$hexvniz11 = "0x80"    ; 0x00000eb

$hexverh2 = "0x00"     ; 0x0000001
$hexverh22 = "0x00"    ; 0x00000e9

;$hexvniz2 = "0x80"    ; 0x0000003

$i = 1
$count = 0
$counterforhexvniz = 0
$trigger1 = 0
$trigger2 = 0
$set = 0

;
$ba = 0
While 1
	For $pik = 0 To 7
		$count = $count + 1
		$counterforhexvniz = $counterforhexvniz + 1
		$tekpik = "0x" & $pik
		;if $bank>=1259.1 and $pik=0 and $counterforhexvniz=1 and $hexvniz=0x01 then
		;			if (Hex($hexverh1,2)="01" and Hex($hexvniz1,2)="7E") or $ba=1 then
		;if $bank>=123.1 or $ba=1 then
		;				$ba=1
		;2624
		;20.4
		;2631.6

		;
		;		If $set = 1 And (Hex($hexverh1, 2) = "04" And Hex($hexvniz1, 2) = "7E" And Hex($hexvniz, 2) = "01" And Hex($hexverh, 2) = "FF") Or ($ba = 1) Then
		;			;		if $set=1 and $bank>=668.0 then
		;			$ba = 1
		;			MsgBox(0, " chn=" & $counterforhexvniz & " set=" & $set & " " & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))
		;		EndIf
		;                              0x13=01                    0x12=FF
		;		If $set = 1 and Hex($hexvniz, 2) = "01" And Hex($hexverh, 2) = "FF" Then
		;			;		if $set=1 and $bank>=668.0 then
		;			$ba = 1
		;			MsgBox(0, " chn=" & $counterforhexvniz & " set=" & $set & " " & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))
		;		EndIf


		;				If (Hex($hexverh1, 2) = "FF" And Hex($hexvniz1, 2) = "01" And Hex($hexvniz, 2) = "01" And Hex($hexverh, 2) = "FF") Then
		;			$ba = 1
		;			If $bank >= 666.6 Then
		;						If $set = 0 Then MsgBox(0, "set=" & $set & " " & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=" & Hex($hexverh, 2) & "|0x11=" & Hex($hexvniz, 2) & @CRLF & "0x12=00|0x13=80" & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))
		;						If $set = 1 Then MsgBox(0, "set=" & $set & " " & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))
		;			EndIf
		;				EndIf


	Next
	$hexverh = $hexverh + $i
	If $hexvniz = 0x01 And Hex($hexverh, 2) = "FF" Then
;		MsgBox(0, $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))            ;				EndIf
	EndIf
	;if $hexverh=0x00 then $hexverh="0xff"
	;IF $ba=1 then 			MsgBox(0, "1 trigger set=" & $set & " chn="&$counterforhexvniz&" count=" & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))

	;если прошло 16 импульсов то переключаем байт который идет вниз
	If $counterforhexvniz = 16 Then
		$counterforhexvniz = 0
		$hexvniz = $hexvniz - $i
		If $ba = 1 Then
			;			MsgBox(0, "trigger " & $trigger1 & " set=" & $set & " chn=" & $counterforhexvniz & " count=" & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))
			;			MsgBox(0,"",Hex($hexverh, 2))
		EndIf


		;if 0x13=0x00 then
		If $hexvniz = 0x00 Then
			$hexvniz = "0x80" ;0x13=0x80
			$hexverh1 = $hexverh1 + $i ;0x02=0x02+1
			$hexverh11 = $hexverh11 + $i ;0xea=0xea+1

			;668.1
			;if   0x02=0x05           0x03=0x7e            0x12=00        and             0x13=00
			If Hex($hexverh1, 2) = "05" And Hex($hexvniz1, 2) = "7E" And Hex($hexverh, 2) = "00" And Hex($hexvniz, 2) = "80" And $set = 1 Then
				;			MsgBox(0, "bbbbbbbbtrigger set=" & $set & " chn=" & $counterforhexvniz & " count=" & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))
				$trigger1 = 1
			EndIf


			If $trigger1 = 1 Then
				$trigger1 = 0
				$hexvniz1 = $hexvniz1 - $i ;0x03=0x03-1
				$hexvniz11 = $hexvniz11 - $i ;0xeb=0xeb-1
				;				IF $ba=1 then 			MsgBox(0, "aaaaaaaaaaaaaa2 trigger set=" & $set & " " & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))
				;0x03
				If $hexvniz1 = 0x00 Then
					;					MsgBox(0,"","opa")
					$set = 1
					$hexvniz1 = "0x80"
					$hexvniz11 = "0x80"

					If $trigger2 = 0 Then
						$trigger2 = 1
						$hexverh2 = $hexverh2 + $i
						$hexverh22 = $hexverh22 + $i
					Else
						$trigger2 = 0
					EndIf
				EndIf
			ElseIf $trigger1 = 0 Then
				;IF $ba=1 then 			MsgBox(0, "trigger set=" & $set & " " & $count, $bank & @CRLF & "0x01|0xe9=" & Hex($hexverh2, 2) & @CRLF & "0x02=" & Hex($hexverh1, 2) & @CRLF & "0x03=" & Hex($hexvniz1, 2) & @CRLF & "0x10=FF|0x11=01" & @CRLF & "0x12=" & Hex($hexverh, 2) & "|0x13=" & Hex($hexvniz, 2) & @CRLF & "0xea=" & Hex($hexverh11, 2) & @CRLF & "0xeb=" & Hex($hexvniz11, 2) & @CRLF & "count=" & Hex($tekpik, 2))

				$trigger1 = 1
			EndIf




		EndIf
	EndIf


	;если прошло 80 импульсов то киловатты увеличиваются на 0.1
	If $count = 80 Then
		$count = 0
		$bank = $bank + 0.1
		$bank = Round($bank, 1)
	EndIf

	;$hexv = $hexvniz-$i
	;	ExitLoop
WEnd
;96 35
Exit

$bank = "1.3"
For $i = 1 To 20
	$str1 = "0x3f"
	$str2 = "0x82"
	$s = $str1 - (5 * $i)
	$s2 = $str2 + (10 * $i)
	$out = $out & $bank + ($i / 10) & " " & Hex($s2, 2) & " " & Hex($s, 2) & @CRLF
	;MsgBox(0,"",Hex($s,2)&" "&Hex($s2,2))
Next
MsgBox(0, "", $out)


Exit










;1.3
$bank = 2.4
$out = ""
For $i = 1 To 20
	$str1 = "0x08"
	$str2 = "0xf0"
	$s = $str1 - (5 * $i)
	$s2 = $str2 + (10 * $i)
	$out = $out & $bank + ($i / 10) & " " & Hex($s, 2) & " " & Hex($s2, 2) & @CRLF
	;MsgBox(0,"",Hex($s,2)&" "&Hex($s2,2))
Next
MsgBox(0, "", $out)


$str1 = "0xff"
$str2 = "0x80"
