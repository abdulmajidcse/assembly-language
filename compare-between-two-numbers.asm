.model small
.stack 100h
.data

user_input db "Enter two number: $"
largest_message db 10, 13, "Largest number is $"

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, user_input
    int 21h
    
    mov ah, 1 
    int 21h
    mov bl, al 
    int 21h
    mov bh, al
    
    mov ah, 9
    lea dx, largest_message
    int 21h
         
    cmp bl, bh
    jg bl_is_large
    jmp bh_is_large
    
    bl_is_large:
    mov ah, 2
    mov dl, bl
    int 21h
    jmp exit
    
    bh_is_large:
    mov ah, 2
    mov dl, bh
    int 21h
    jmp exit
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    