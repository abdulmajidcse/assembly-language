.model small
.stack 100h
.data

input_message db "Please, enter any uppercase letter: $"
output_message db 10, 13, "The result of lowercase is $"

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, input_message
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    add bl, 32
    
    mov ah, 9
    lea dx, output_message
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    
    main endp
end main