;;
;; EPITECH PROJECT, 2025
;; minilibc
;; File description:
;; strchr
;;

section .text
    global strchr

strchr:
    push rbp
    mov rbp, rsp
    xor rax, rax

.loop:
    mov al, byte [rdi]
    cmp al, sil
    je .found

    test al, al     ; test si al est null
    jz .notfound

    inc rdi
    jmp .loop

.found:
    mov rax, rdi
    jmp .end

.notfound:
    xor rax, rax

.end:
    mov rsp, rbp
    pop rbp
    ret
