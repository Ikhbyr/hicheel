aravt MACRO utga1 
LOCAL l1, algas3, algas2, k1, endel

mov al,utga1
aam
cmp ah,9
jg l1
add ah,30h
jmp algas3
l1: cmp ah,13
   jg k1
   add al,30h
   mov bl,al
   mov al,ah
   aam 
   mov bh,ah
   mov dh,al
   add bh,30h
   add dh,30h
   mov ah,2
   mov dl," "
   int 21h

   mov dl,bh
   int 21h
 
   mov dl,dh
   int 21h
   
   jmp algas2
k1: add al,30h
   mov bl,al
   mov al,ah
   aam 
   mov bh,ah
   mov dh,al
   add bh,30h
   add dh,30h
   mov ah,2
   mov dl," "
   int 21h

   mov dl,bh
   int 21h
 
   mov dl,dh
   int 21h
   
   jmp algas2
algas3:

add al,30h

mov ch,ah
mov bl,al

mov ah,2
mov dl," "
int 21h

mov dl,ch
int 21h
 
mov dl,bl
int 21h

;mov dl,'d'
;int 21h 

jmp endel

algas2: mov ah,2
        mov dl,bl
        int 21h
        
        ;mov dl,'d'
        ;int 21h
        
        
endel:           
ENDM 