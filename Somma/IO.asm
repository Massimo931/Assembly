.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DB ?
    NUM2 DB ?
    SOMMA DB ?
    INPUT1 DB 'Inserisci il primo numero: ','$'
    INPUT2 DB 'Inserisci il secondo numero: ','$'
    RISULTATO DB 'La somma dei due numeri inseriti: ','$'
    
    
    
.CODE
.STARTUP
     MOV AX,@DATA
     MOV DS,AX
     
     MOV AH,09H
     MOV DX,OFFSET INPUT1
     INT 21H
     
     MOV AH,01H
     MOV NUM1,AL
     INT 21H  
     
     MOV SOMMA,AL
     
     MOV AH,09H
     MOV DX,OFFSET INPUT2
     INT 21H
     
     MOV AH,01H
     MOV NUM2,AL
     INT 21H
             
     ADD SOMMA,AL
     SUB SOMMA,30H
     
     MOV AH,09H
     MOV DX,OFFSET RISULTATO
     INT 21H
                 
     MOV AH,02H
     MOV DL,SOMMA 
     INT 21H
     
     MOV AH,4CH
     INT 21H 




    
END       