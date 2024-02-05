;hello
;I am Labanya Saha

.model small
.stack 100h
.data
msg db "hello $"  
msg1 db "I am Labanya Saha$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    
    int 21h
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
    
main endp 
end main

