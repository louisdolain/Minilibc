;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; strcasecmp
;;

section .text
    global strcasecmp

strcasecmp:
    push rbp
    mov rbp, rsp
    xor rax, rax

.loop:
    mov al, BYTE [rdi]
    mov dl, BYTE [rsi]

    cmp al, 'A'
    jl .no_conversion1
    cmp al, 'Z'
    jg .no_conversion1
    add al, 32

.no_conversion1:
    cmp dl, 'A'
    jl .no_conversion2
    cmp dl, 'Z'
    jg .no_conversion2
    add dl, 32

.no_conversion2:
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
