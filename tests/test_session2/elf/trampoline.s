section .text
    global trampoline
    trampoline:
        xor eax, eax
	    VMFUNC
        cmp rsi, 0x1000
        jnz RT
	    mov r10, rsp
	    mov rax, r11
        sal rax, 18
        mov rsp, 0x1effffff
        sub rsp, rax
        
        call 0x8fdf
        mov ebx, eax
        
    RT:
        mov rcx, r11
        xor eax, eax
	    mov rsp, r10
        VMFUNC
        ret
