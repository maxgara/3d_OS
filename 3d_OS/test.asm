	
chkdiv:
	;; check if EAX is divisible by ECX
	;; 	MOV EAX, 0x01		

	XOR EDX,EDX
	;; 	MOV ECX, 0x03
	DIV ECX
	test EDX, EDX
	jz yblock
	
m_loop:	
	jmp $
yblock:
	;; print 'x'
	mov ah, 0x0e
	mov al,'x'
	int 0x10
	jmp m_loop




times 510-($-$$) db 0	
dw 0xaa55

