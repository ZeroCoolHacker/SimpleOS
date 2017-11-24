[ORG	0X7c00] 	;Adds to offsets__ The boot loader loads the boot sector from this address

;PRINT A CHARACTER TO SCREEN
MOV	ah, 0x0E	; DISPLAY CHARACTER
MOV	al, '!'		; CODE OF CHARACTER TO DISPLAY
INT	0X10		; call INT 10h, BIOS VIDEO SERVICE

JMP	$		; HANG HERE


;BIOS SIGNATURE/MAGIC NUMBER  and padding __ the remaining boot sector should be zero
TIMES	510-($-$$) DB 0
DW	0xAA55

