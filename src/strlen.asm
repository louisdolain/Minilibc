;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; strlen
;;

section .text
    global strlen

strlen:
    test rdi, rdi
    je .end
    xor rcx, rcx

.loop:
    cmp byte [rdi], 0
    je .end
    inc rdi

    inc rcx
    jmp .loop

.end:
    mov rax, rcx
    ret
