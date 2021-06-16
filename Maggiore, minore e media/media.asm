.MODEL SMALL
.STACK 100H
.DATA  

    ARRAY DB 6,8,8,9,4,1,5,7,5,7
    MAX DB 0
    MIN DB 0
    SOMMA DB 0
    NUM1 DB 10
    MEDIA DB 0           
           
    GRANDE DB "Il numero piu' grande e': ","$"
    PICCOLO  DB "Il numero piu' piccolo e': ","$" 
    MEDIAMEX  DB "La media dei valori e': ","$"
    TERMINA DB "Programma terminato",10,13,"$"  
    ACAPO DB "",10,13,"$"                       

.CODE
.STARTUP

    
    MOV SI,0
    
    MOV CL,SOMMA
    MOV BL,ARRAY[SI]
    MOV MEDIA,0                                    
    MOV MAX,BL
    MOV MIN,BL
    
    WHILELOOP:                                  
                                                
        CMP SI,10                              
        JE FINELOOP
        
        ADD CL,ARRAY[SI]                            
        
        MOV BH,ARRAY[SI]
        
        CMP BH,MAX                                      
        JG MAGGIORE
        CMP BH,MIN
        JL MINORE
            
            
        INCREMENTO:
                                       
        INC SI
            
        JMP WHILELOOP
        
        
        
    MAGGIORE:
        MOV MAX,BH
    
    
        JMP INCREMENTO
        
        
    MINORE:
        MOV MIN,BH
        
        
        JMP INCREMENTO  
            
    FINELOOP:
    
        MOV SOMMA,CL
        MOV AL,SOMMA
        DIV NUM1
        MOV MEDIA,AL
        
    STAMPA:
        
        MOV AH,09H
        LEA DX,GRANDE                          
        INT 21H
        
        MOV AH,02H
        MOV DL,MAX                           
        ADD DL,30H                           
        INT 21H                                      
    
        MOV AH,09H
        LEA DX,ACAPO                            
        INT 21H
        
        MOV AH,09H
        LEA DX,PICCOLO                         
        INT 21H 
        
        MOV AH,02H
        MOV DL,MIN                           
        ADD DL,30H                         
        INT 21H
        
        MOV AH,09H
        LEA DX,ACAPO                            
        INT 21H 
        
        
        ; 

        MOV AH,09H
        LEA DX,MEDIAMEX                         
        INT 21H
        
        MOV AH,02H
        MOV DL,MEDIA
        ADD DL,30H
        INT 21H
        
                                             
        ; 
        
        
        
        MOV AH,09H
        LEA DX,ACAPO                            
        INT 21H
        
        MOV AH,09H
        LEA DX,TERMINA                     
        INT 21H                            
        
   MOV AH,4CH
   INT 21H                                      

END 