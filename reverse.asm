.MODEL SMALL
.STACK 200H
.DATA
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
MAIN ENDP
END MAIN


;OUTPUT-
;1
;2
;3
;4

;4 3 2 1
