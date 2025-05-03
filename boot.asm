; boot.asm (NASM)
BITS 16
ORG 0x7c00
mov si, message
call print
jmp $

print:
    mov ah, 0x0e
.next:
    lodsb
    or al, al
    jz .done
    int 0x10
    jmp .next
.done:
    ret

message db "Hello from bootloader!", 0
times 510-($-$$) db 0
dw 0xAA55
