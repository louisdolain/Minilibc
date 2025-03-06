;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; strcmp
;;

section .text
    global strcmp

strcmp:
    push rbp
    mov rbp, rsp
    xor rax, rax

.loop:
    mov al, BYTE [rdi]
    mov dl, BYTE [rsi]

    cmp al, dl
    jne .end

    test al, al
    jz .end

    inc rdi
    inc rsi
    jmp .loop

.end:
    movzx eax, al
    movzx edx, dl
    sub eax, edx

    mov rsp, rbp
    pop rbp
    ret