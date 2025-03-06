;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; strncmp
;;

section .text
    global strncmp

strncmp:
    push rbp
    mov rbp, rsp
    xor rax, rax
    xor rcx, rcx

.loop:
    cmp rcx, rdx
    je .end

    mov al, BYTE [rdi]
    mov r8b, BYTE [rsi]

    cmp al, r8b
    jne .end

    test al, al
    jz .end

    inc rcx
    inc rdi
    inc rsi
    jmp .loop

.end:
    movzx eax, al
    movzx r8d, r8b
    sub eax, r8d

    mov rsp, rbp
    pop rbp
    ret