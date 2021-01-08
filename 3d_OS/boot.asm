				;	[org 0x7c00]
	mov bp, 0x8000
	mov sp, bp



	mov bx, my_str
	add bx, 0x7c00
loop_m:
	mov al, [bx]
	call print_f
	cmp al, 0
	jnz loop_m
	jmp $
my_str:
	db 'BOOT STR',0

print_f:
	mov ah, 0x0e
	int 0x10
	inc bx
	mov al,[bx]
	ret
	
	times 510-($-$$) db 0
	dw 0xaa55

