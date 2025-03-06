;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; strchr
;;

section .text
    global strrchr

strrchr:
    push rbp
    mov rbp, rsp
    xor rax, rax
    xor r8, r8

.loop:
    mov al, byte [rdi]
    cmp al, sil
    jne .continue
    mov r8, rdi

.continue:
    test al, al
    jz .end
    inc rdi
    jmp .loop

.end:
    mov rax, r8
    mov rsp, rbp
    pop rbp
    ret