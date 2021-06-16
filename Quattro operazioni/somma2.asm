.MODEL SMALL   
.STACK 100H
.DATA
    NUM1 DB 3
    NUM2 DB 2
    
    NUM3 DB 5
    NUM4 DB 2        
        
    NUM5 DB 3
    NUM6 DB 2 
    
    NUM7 DB 6
    NUM8 DB 2
    
.CODE
.STARTUP 

    ;INIZIO SOMMA
    
    MOV AH,NUM1    ;Copio il valore di NUM1 in AH
    MOV AL,NUM2    ;Copio il valore di NUM2 in AL
    ADD AL,AH      ;Sommo ad AL il valore di AH                              
    ADD AL,48      ;Si somma ad AL il valore 48 che serve per visualizzare la somma in decimale
    MOV DL,AL
    MOV AH,02H     
    INT 21H        ;Output   
             
    ;FINE SOMMA 
    
    MOV AX,0       ;Azzero il registro AX per evitare l'Overflow
                                                                    
    ;INIZIO SOTTRAZIONE
    
    MOV AH,NUM4    ;Copio il valore di NUM1 in AH
    MOV AL,NUM3    ;Copio il valore di NUM2 in AL
    SUB AL,AH      ;Sottraggo ad AL il valore di AH                              
    ADD AL,48      ;Si somma ad AL il valore 48 che serve per visualizzare la sottrazione in decimale
    MOV DL,AL
    MOV AH,02H     
    INT 21H        ;Output   
             
    ;FINE SOTTRAZIONE
    
    MOV AX,0       ;Azzero il registro AX per evitare l'Overflow
      
    ;INIZIO MOLTIPLICAZIONE
    
    MOV AL,NUM5    ;Sposto NUM5 in AL perche' e' un numero a 8 bit 
    MUL NUM6       ;moltiplico AL a NUM6     
    ADD AL,48      ;Si somma ad AL il valore 48 che serve per visualizzare la moltiplicazione in decimale
    MOV DL,AL
    MOV AH,02H     
    INT 21H        ;Output   
             
    ;FINE MOLTIPLICAZIONE 
    
    MOV AX,0       ;Azzero il registro AX per evitare l'Overflow   
    
    ;INIZIO DIVISIONE
    
    MOV AL,NUM7    ;Sposto NUM7 in AL perche' e' un numero a 8 bit 
    DIV NUM8       ;Divido AL a NUM8     
    ADD AL,48      ;Si somma ad AL il valore 48 che serve per visualizzare la divisione in decimale
    MOV DL,AL
    MOV AH,02H     
    INT 21H        ;Output   
             
    ;FINE DIVISIONE
    
    MOV AX,0       ;Azzero il registro AX per evitare l'Overflow
      
    
    MOV AH,4CH
    INT 21H        ;Si restituisci il controllo al DOS e termina il programma 
    
    
    
END