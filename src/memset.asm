;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; memset
;;

section .text
    global memset

memset:
    push rbp
    mov rbp, rsp
    push rdi
    xor rcx, rcx

.loop:
    cmp rcx, rdx
    je .end
    mov byte [rdi], sil     ; sil -> pplus petite portion (8bit) de rsi
    inc rdi
    inc rcx
    jmp .loop

.end:
    pop rax
    mov rsp, rbp
    pop rbp
    ret

