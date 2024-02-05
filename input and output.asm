;enter a number
;this is your output

.mode small
.stack 100h
.data
.msg db "enter a number"
.msg1 db "this is your output"
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,msg
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0dh
    
    int 21h
    mov dl,0ah
    int 21h
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
    
main endp
end main
