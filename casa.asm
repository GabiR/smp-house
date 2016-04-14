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
        mov cx, 130 ;coloana 130
        mov dx, 125 ; randul 75
lcoj:   mov ah, 0ch
        mov al, 07h ;alb
        int 10h
        inc cx ;incrementare coloana
        cmp cx, 216 ;comparare nr col actuala cu 216
        jne lcoj ;revenire la instructiuni pana cmp este adevarat

;linie orizontala sus                   
        mov cx, 130
        mov dx, 75
lcos:   mov ah, 0ch
        mov al, 07h ;alb
        int 10h
        inc cx
        cmp cx, 216
        jne lcos
        
;linie verticala stanga        
        mov cx, 130
        mov dx, 75
lcvs:   mov ah, 0ch
        mov al, 07h ;alb
        int 10h
        inc dx
        cmp dx, 125
        jne lcvs

;linie verticala dreapta                 
        mov cx, 216
        mov dx, 75
lcvd:   mov ah, 0ch
        mov al, 07h ;alb
        int 10h
        inc dx
        cmp dx, 126
        jne lcvd
 
 
;acoperis
;lat stanga               
        mov cx, 130
        mov dx, 75
acols:  mov ah, 0ch
        mov al, 04h ;culoare rosie
        int 10h
        inc cx
        dec dx ; decrementare
        cmp cx, 173
        cmp dx, 32
        jne acols

;lat dreapta    
        mov cx, 173
        mov dx, 32
acold:  mov ah, 0ch
        mov al, 04h ;culoare rosie
        int 10h
        inc cx
        inc dx
        cmp cx, 216
        cmp dx, 75
        jne acold
        
        
;usa
;linie verticala stanga
        mov cx, 164
        mov dx, 125
luvs:  mov ah, 0ch
        mov al, 06h ;culoare maronie
        int 10h
        dec dx
        cmp dx, 100
        jne luvs
        
;linie orizntala sus        
        mov cx, 164
        mov dx, 100
luos:   mov ah, 0ch
        mov al, 06h ;culoare maronie
        int 10h
        inc cx
        cmp cx, 183
        jne luos 

;linie verticala dreapta        
        mov cx, 182
        mov dx, 125
luvd:   mov ah, 0ch
        mov al, 06h ;culoare maronie
        int 10h
        dec dx
        cmp dx, 100
        jne luvd
      
                
;fereastra stanga
;linie orizontala sus        
        mov cx, 136
        mov dx, 85
fstlos: mov ah, 0ch
        mov al, 01h ;culoare albastra
        int 10h
        inc cx
        cmp cx, 156
        jne fstlos

;linie verticala stanga            
        mov cx, 136
        mov dx, 85
fstlvs: mov ah, 0ch
        mov al, 01h ;culoare albastra
        int 10h
        inc dx
        cmp dx, 105
        jne fstlvs

;linie verticala dreapta                        
        mov cx, 156
        mov dx, 85
fstlvd: mov ah, 0ch
        mov al, 01h ;culoare albastra
        int 10h
        inc dx
        cmp dx, 105
        jne fstlvd 
        
;linie orizontala jos         
        mov cx, 136
        mov dx, 105
fstloj: mov ah, 0ch
        mov al, 01h ;culoare albastra
        int 10h
        inc cx
        cmp cx, 157
        jne fstloj 
 
 
;fereastra dreapta
;linie orizontala sus        
        mov cx, 190
        mov dx, 85
fdrlos: mov ah, 0ch
        mov al, 01h ;culoare albastra
        int 10h
        inc cx
        cmp cx, 210
        jne fdrlos 
        
;linie verticala stanga                   
        mov cx, 190
        mov dx, 85
fdrlvs: mov ah, 0ch
        mov al, 01h ;culoare albastra
        int 10h
        inc dx
        cmp dx, 105
        jne fdrlvs 

;linie verticala dreapta              
        mov cx, 210
        mov dx, 85
fdrlvd: mov ah, 0ch
        mov al, 01h ;culoare albastra
        int 10h
        inc dx
        cmp dx, 105
        jne fdrlvd 

;linie orizontala jos        
        mov cx, 190
        mov dx, 105
fdrloj: mov ah, 0ch
        mov al, 01h ;culoare albastra
        int 10h
        inc cx
        cmp cx, 211
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