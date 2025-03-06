;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; strstr
;;

section .text
    global strstr

strstr:
    push rbp
    mov rbp, rsp

    cmp byte [rsi], 0
    je .empty_needle

.outer_loop:
    mov r8, rdi
    mov rcx, rsi

.inner_loop:
    cmp byte [rcx], 0
    je .found

    cmp byte [r8], 0
    je .not_found

    mov al, byte [r8]
    cmp al, byte [rcx]
    jne .next_pos


    inc r8
    inc rcx
    jmp .inner_loop

.next_pos:
    inc rdi
    cmp byte [rdi], 0
    je .not_found
    jmp .outer_loop

.empty_needle:
    mov rax, rdi
    jmp .end

.found:
    mov rax, rdi
    jmp .end

.not_found:
    xor rax, rax

.end:
    mov rsp, rbp
    pop rbp
    ret