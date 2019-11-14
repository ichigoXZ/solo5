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
        push r11
        push r10
        call 0x8fdb
        mov ebx, eax
        pop r10
        pop r11
        
    RT:
        mov rcx, r11
        xor eax, eax
	    mov rsp, r10
        VMFUNC
        ret
