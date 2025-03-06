;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; memmove
;;

section .text
    global memmove

memmove:
    push rbp
    mov rbp, rsp
    push rdi
    xor rcx, rcx

    ; si dest > src -> reverse
    cmp rdi, rsi
    jg .reverse

.memcpy_loop:
    ; rcx -> compteur, rdx -> taille, rdi -> destination, rsi -> source
    cmp rcx, rdx
    je .end
    mov al, byte [rsi]  ; al -> plus petite portion (8bit) de rax (variable temporaire);
    mov byte [rdi], al
    inc rdi
    inc rsi
    inc rcx
    jmp .memcpy_loop

.reverse:
    add rdi, rdx
    add rsi, rdx
    dec rdi
    dec rsi

.rev_loop:
    cmp rcx, rdx
    je .end
    mov al, byte [rsi]
    mov byte [rdi], al
    dec rdi
    dec rsi
    inc rcx
    jmp .rev_loop

.end:
    pop rax
    mov rsp, rbp
    pop rbp
    ret