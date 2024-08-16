section .data
section .text
	global _start

calc:
    push EBP
    mov EBP, ESP
    mov EAX,[EBP+8]
    add EAX,[EBP+12]
    pop EBP
    ret 8

_start:
    push 42h
    push 2fh
    call calc
    mov EAX,1
    mov EBX,0
    int 0x80