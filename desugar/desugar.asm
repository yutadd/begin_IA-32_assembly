section .data
section .text
	global _start

calc:
    sub ESP,4
    mov [ESP],EBP
    mov EBP, ESP
    mov EAX,[EBP+8]
    add EAX,[EBP+12]
    mov EBP, [ESP]
    add ESP,4
    mov EBX, [ESP]
    add ESP,12
    jmp EBX

_start:
    sub ESP,4
    mov dword [ESP],42h
    sub ESP,4
    mov dword [ESP],2fh
    sub ESP,4
    mov dword [ESP],_return_address
    jmp calc

_return_address:
    mov EAX,1
    mov EBX,0
    int 0x80