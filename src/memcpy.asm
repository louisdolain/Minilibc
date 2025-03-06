;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; memcpy
;;

section .text
    global memcpy

memcpy:
    push rbp
    mov rbp, rsp
    push rdi
    xor rcx, rcx

.loop:
    ; rcx -> compteur, rdx -> taille, rdi -> destination, rsi -> source
    cmp rcx, rdx
    je .end
    mov al, byte [rsi]  ; al -> plus petite portion (8bit) de rax (variable temporaire);
    mov byte [rdi], al
    inc rdi
    inc rsi
    inc rcx
    jmp .loop

.end:
    pop rax
    mov rsp, rbp
    pop rbp
    ret

