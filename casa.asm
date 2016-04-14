.stack 100h

.data
nume db 'Rotaru Gabriel 332AB $' 

.code

;sunet incepere desen - beep 
mov ah, 02
mov dl, 07h
int 21h         
             
mov ah, 0
mov al, 13h ; mod grafic 320x220
int 10h 

;casa 

;dreptunghi baza
;linie orizontala jos 
        mov cx, 100 ;coloana 100
        mov dx, 100 ; randul 105  
        mov al, 07h ;alb
lcoj:   mov ah, 0ch
        int 10h
        inc cx ;incrementare coloana
        cmp cx, 186 ;comparare nr col actuala cu 216
        jne lcoj ;revenire la instructiuni pana cmp este adevarat

;linie orizontala sus                   
        mov cx, 100
        mov dx, 150
        mov al, 07h ;alb
lcos:   mov ah, 0ch
        int 10h
        inc cx
        cmp cx, 186
        jne lcos
        
;linie verticala stanga        
        mov cx, 100
        mov dx, 100
        mov al, 07h ;alb
lcvs:   mov ah, 0ch  
        int 10h
        inc dx
        cmp dx, 150
        jne lcvs

;linie verticala dreapta                 
        mov cx, 186
        mov dx, 100
        mov al, 07h ;alb
lcvd:   mov ah, 0ch
        int 10h
        inc dx
        cmp dx, 151
        jne lcvd
 
 
;acoperis
;lat stanga               
        mov cx, 100
        mov dx, 100
        mov al, 04h ;culoare rosie
acols:  mov ah, 0ch
        int 10h
        inc cx
        dec dx ; decrementare
        cmp cx, 143
        cmp dx, 57
        jne acols

;lat dreapta    
        mov cx, 143
        mov dx, 57
        mov al, 04h ;culoare rosie
acold:  mov ah, 0ch
        int 10h
        inc cx
        inc dx
        cmp cx, 186
        cmp dx, 100
        jne acold
        
        
;usa
;linie verticala stanga
        mov cx, 134
        mov dx, 150
        mov al, 06h ;culoare maronie
luvs:  mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 125
        jne luvs
        
;linie orizntala sus        
        mov cx, 134
        mov dx, 125
        mov al, 06h ;culoare maronie
luos:   mov ah, 0ch
        int 10h
        inc cx
        cmp cx, 153
        jne luos 

;linie verticala dreapta        
        mov cx, 152
        mov dx, 150
        mov al, 06h ;culoare maronie
luvd:   mov ah, 0ch
        int 10h
        dec dx
        cmp dx, 125
        jne luvd
      
                
;fereastra stanga
;linie orizontala sus        
        mov cx, 106
        mov dx, 110
        mov al, 01h ;culoare albastra
fstlos: mov ah, 0ch
        int 10h
        inc cx
        cmp cx, 126
        jne fstlos

;linie verticala stanga            
        mov cx, 106
        mov dx, 110
        mov al, 01h ;culoare albastra
fstlvs: mov ah, 0ch
        int 10h
        inc dx
        cmp dx, 130
        jne fstlvs

;linie verticala dreapta                        
        mov cx, 126
        mov dx, 110
        mov al, 01h ;culoare albastra
fstlvd: mov ah, 0ch
        int 10h
        inc dx
        cmp dx, 130
        jne fstlvd 
        
;linie orizontala jos         
        mov cx, 106
        mov dx, 130
        mov al, 01h ;culoare albastra
fstloj: mov ah, 0ch
        int 10h
        inc cx
        cmp cx, 127
        jne fstloj 
 
 
;fereastra dreapta
;linie orizontala sus        
        mov cx, 160
        mov dx, 110
        mov al, 01h ;culoare albastra
fdrlos: mov ah, 0ch
        int 10h
        inc cx
        cmp cx, 180
        jne fdrlos 
        
;linie verticala stanga                   
        mov cx, 160
        mov dx, 110
        mov al, 01h ;culoare albastra
fdrlvs: mov ah, 0ch
        int 10h
        inc dx
        cmp dx, 130
        jne fdrlvs 

;linie verticala dreapta              
        mov cx, 180
        mov dx, 110
        mov al, 01h ;culoare albastra
fdrlvd: mov ah, 0ch
        int 10h
        inc dx
        cmp dx, 130
        jne fdrlvd 

;linie orizontala jos        
        mov cx, 160
        mov dx, 130
        mov al, 01h ;culoare albastra
fdrloj: mov ah, 0ch
        int 10h
        inc cx
        cmp cx, 181
        jne fdrloj
        
;sunet finalizare desen - beep 
mov ah, 02
mov dl, 07h
int 21h       

;printare nume
mov ax, @data ;initializare data
mov ds, ax

mov dx, offset nume
mov ah, 09h
int 21h