.model small
.stack 100h
.code

main proc
    mov ah, 1          
    int 21h            
    sub al, '0'       
    mov bl, al        

    mov ah, 1         
    int 21h           
    sub al, '0'       
    mov bh, al        

    mov ah, 2
    mov dl, 10       
    int 21h
    mov dl, 13       
    int 21h    
    
    mov al, bl         
    add al, bh         

    add al, '0'       

    mov ah, 2        
    mov dl, al       
    int 21h
                    
    exit:
    mov ah, 4Ch     
    int 21h
    
    main endp
end main
