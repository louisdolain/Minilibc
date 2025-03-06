;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; strpbrk
;;

section .text
    global strpbrk

strpbrk:
    push rbp
    mov rbp, rsp
    push rbx
    test rdi, rdi
    jz .return_null
    test rsi, rsi
    jz .return_null
    cmp BYTE [rsi], 0
    je .return_null

.scan_main:
    movzx eax, BYTE [rdi]
    test al, al
    jz .return_null
    mov rbx, rsi

.loop:
    movzx ecx, BYTE [rbx]
    test cl, cl
    jz .advance_main
    cmp al, cl
    je .match_found
    inc rbx
    jmp .loop

.advance_main:
    inc rdi
    jmp .scan_main

.match_found:
    mov rax, rdi
    jmp .end

.return_null:
    xor rax, rax

.end:
    pop rbx
    mov rsp, rbp
    pop rbp
    ret
