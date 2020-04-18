include hoyurt.mac
include arvanzurgaa.mac
include aravt.asm     
include emu8086.inc      

mov al, 13h
mov ah, 0
int 10h
	
GOTOXY 0,0
PRINT "Utgaa oruul: "
                           
buffer db 10,?, 10 dup(?)  
mov dx, offset buffer
mov ah, 0ah
int 21h    

time db ?  
hour db ?
min db ? 
hour1 db ?

;mov ch, 32
;mov ah, 1
;int 10h      
  
                 
                 
GOTOXY 1,2
PRINT "Arvan zurgaa"
GOTOXY 14,2
PRINT "Hoyurt" 
GOTOXY 22,2
PRINT "Aravt" 
GOTOXY 28,2
PRINT "Garah"    



 mov cx, 3  ; column
    mov dx, 10     ; row
    mov al, 15     ; white
    
tusgaar1: mov ah, 0ch    ; put pixel
    int 10h
    
    inc  dx
    cmp dx, 30         
    jle tusgaar1 


 mov cx, 108  ; column
    mov dx, 10     ; row
    mov al, 15     ; white
    
tusgaar2: mov ah, 0ch    ; put pixel
    int 10h
    
    inc  dx
    cmp dx, 30         
    jle tusgaar2
         
         
 mov cx, 170  ; column
    mov dx, 10     ; row
    mov al, 15     ; white
    
tusgaar3: mov ah, 0ch    ; put pixel
    int 10h
    
    inc  dx
    cmp dx, 30         
    jle tusgaar3 



 mov cx, 217  ; column x
    mov dx, 10     ; row y
    mov al, 15     ; white
    
tusgaar4: mov ah, 0ch    ; put pixel
    int 10h
    
    inc  dx
    cmp dx, 30         
    jle tusgaar4 

    
    
    
 mov cx, 270  ; column
    mov dx, 10     ; row
    mov al, 15     ; white
    
tusgaar5: mov ah, 0ch    ; put pixel
    int 10h
    
    inc  dx
    cmp dx, 30         
    jle tusgaar5
    
    


 mov cx, 3  ; column
    mov dx, 10     ; row
    mov al, 15     ; white
    
deed: mov ah, 0ch    ; put pixel
    int 10h
    
    inc  cx
    cmp cx, 270         
    jle deed    


  
 mov cx, 3  ; column
    mov dx, 30     ; row
    mov al, 15     ; white
    
dood: mov ah, 0ch    ; put pixel
    int 10h
    
    inc  cx
    cmp cx, 270         
     jle dood      
     
     
     

    


mov ax,1
int 33h               

mov di,1  

check_mouse_buttons:
mov ax,3
int 33h
cmp bx,1  ;left button
je  checkposition  
jmp check_mouse_buttons

checkposition:
cmp dx,25
jle allshalgah
;jle dahinshalgah16
;cmp dx,25
;jle dahinshalgah2 
;cmp dx,25
;jle dahinshalgah10  
;cmp dx,25
;jle dahinshalgahexit
;jmp check_mouse_buttons  

allshalgah:
    cmp cx,216
    jle ehlelarvanzurgaatime  
    cmp cx,316
    jle ehlelhoyurthour  
    cmp cx,416
    jle ehlelaravttime
    cmp cx,516
    jle realtugsgul  
    jmp check_mouse_buttons

                
ehlelarvanzurgaatime:
mov ah,2Ch    ;system time
int 21h  
mov time,dh   
mov hour,ch
mov min,cl   
 
mov ah,2
mov dl,0Ah ;0Ah enter
int 21h
mov dl,0Ah
int 21h  
mov dl,13 ;morin ehnees
int 21h         

aravt ch
mov dl,'h'
int 21h   
aravt cl
mov dl,'m'
int 21h   
aravt dh
mov dl,'s'
int 21h
jmp ehlelarvanzurgaa

ehlelhoyurthour:
mov ah,2Ch
int 21h  
mov time,dh  
mov hour,ch
mov min,cl    

mov ah,2
mov dl,0Ah
int 21h
mov dl,0Ah
int 21h  
mov dl,13
int 21h      
aravt ch
mov dl,'h'
int 21h   
aravt cl
mov dl,'m'
int 21h   
aravt dh
mov dl,'s'
int 21h
jmp ehlelhoyurt 

ehlelaravttime:
mov ah,2Ch
int 21h  
mov time,dh  
mov hour,ch
mov min,cl  

mov ah,2
mov dl,0Ah
int 21h
mov dl,0Ah
int 21h  
mov dl,13
int 21h    
aravt ch
mov dl,'h'
int 21h   
aravt cl
mov dl,'m'
int 21h   
aravt dh
mov dl,'s'
int 21h
jmp ehlelaravt               
                
ehlelarvanzurgaa:
inc di
mov bl,buffer[di]
cmp bl,0Dh ;0D =shine murun shijljih svvliin element
je time1:
mov ah,2
mov dl,0Ah
int 21h   
mov dl,13
int 21h 
arvanzurgaa buffer[di] 
cmp di,9
jle ehlelarvanzurgaa 

ehlelhoyurt:
inc di
mov bl,buffer[di]
cmp bl,0Dh
je time1:
mov ah,2
mov dl,0Ah
int 21h   
mov dl,13
int 21h 
hoyurt buffer[di] 
cmp di,9
jle ehlelhoyurt     

ehlelaravt:
inc di
mov bl,buffer[di]
cmp bl,0Dh
je time1:
mov ah,2
mov dl,0Ah
int 21h   
mov dl,13
int 21h 
aravt buffer[di] 
cmp di,9
jle ehlelaravt  

time1:
mov ah,2Ch
int 21h

;tugsgul time 
mov ah,2
mov dl,0Ah
int 21h 
mov dl,13
int 21h    
mov hour1,ch
aravt ch
mov dl,'h'
int 21h   
aravt cl
mov dl,'m'
int 21h   
aravt dh
mov dl,'s'
int 21h

;zoruu time   
mov ah,2
mov dl,0Ah
int 21h  
mov dl,13
int 21h 
mov ch,hour1
sub ch,hour
aravt ch
mov dl,'h'
int 21h    
sub cl,min   
aravt cl
mov dl,'m'
int 21h  
sub dh,time   
aravt dh
mov dl,'s'
int 21h

mov di,1
jmp check_mouse_buttons 

realtugsgul: