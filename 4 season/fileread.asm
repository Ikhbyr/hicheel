include emu8086.inc      
mov al, 13h
mov ah, 0
int 10h   

time db ?  
hour db ?
min db ? 
hour1 db ?
mov al,1
mov bh,0
mov bl,1111b                        
GOTOXY 1,2
PRINT "Readfromfile"
GOTOXY 15,2
PRINT "Convrt" 
GOTOXY 23,2
PRINT "NewFile" 
GOTOXY 32,2
PRINT "Write"    
    mov cx, 108  ; column
    mov dx, 10     ; row
    mov al, 15     ; white
    
tusgaar2: 
    mov ah, 0ch    ; put pixel
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



    mov cx, 246  ; column x
    mov dx, 10     ; row y
    mov al, 15     ; white
    
tusgaar4: mov ah, 0ch    ; put pixel
    int 10h
    
    inc  dx
    cmp dx, 30         
    jle tusgaar4 

    
                              
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

allshalgah:
    cmp cx,210
    jle readfile  
    cmp cx,330
    jle convrt  
    cmp cx,490
    jle newfile
    cmp cx,668
    jle writefile  
    jmp check_mouse_buttons  
readfile:
    ; file neeh
mov al, 0
mov dx, offset filename
mov ah, 3dh
int 21h
mov handle, ax 
mov bx, handle
mov cx, 1
mov ah,2
mov dl,0Ah ;0Ah enter
int 21h
mov dl,0Ah
int 21h  
mov dl,13 ;morin ehnees
int 21h            
k:   
lea dx, char             
mov ah, 3fh
int 21h 
cmp ax, 0
jz check_mouse_buttons 
mov al, char 
mov ah,0eh
int 10h 
jmp k      
mov bx,handle
mov ah,3eh     ; file haah funkts
int 21h
convrt: 
    mov dh,0
    mov dl,5
    mov bh,0
    mov ah,2
    int 10h
   arawt1 MACRO aa
    LOCAL acc1,acc2,skip,skip2 
    mov al, aa
    aam  
    mov bx, ax
    cmp bh, 9
    jle skip
    mov dl, 1010b
    mov dh, 10h
    acc1:
     cmp bh, dl
     je acc2
     inc dl
     inc dh
     loop acc1 
    acc2:
     mov ch, dh 
     mov cl, dh
     shr ch, 4
     shl cl, 4
     shr cl, 4 
     add ch, 30h
     mov ah, 2
     mov dl, ch
     int 21h 
     add cl, 30h
     mov dl, cl
     int 21h
     jmp skip2
   skip:
     add bh, 30h  
     mov ah, 2
     mov dl, bh  
     int 21h  
   skip2: 
     add bl, 30h
     mov dl, bl
     int 21h  
	endm 


    
    ;ehlel zaagch bairlal
    mov dh,3
    mov dl,15
    mov bh,0
    mov ah,2
    int 10h
   
    ;file neeh
    mov al,2
    mov dx,offset filename
    mov ah,3dh
    int 21h
    mov handle1,ax
    
    mov bx,handle1
    mov dx,offset buffer 
    mov di,0
    mov ah,3fh
    int 21h 
    ;convert
    
        MOV ah,2
        MOV dl,13
        int 21h
        mov buffer2[di],dl
                 

        SAVE db 1 
          
        mov si,0 
        mov cx, handle1
        START1:
       
        MOV ah,2
        MOV dl,13
        int 21h
        add di,1
        mov buffer2[di],dl      
        MOV ah,2 
        MOV dl,10 
        int 21h
        add di,1
        mov buffer2[di],dl    
        MOV ah,2
        MOV dl,9
        int 21h
        add di,1
        mov buffer2[di],dl      
               
        MOV DL,13   
        MOV ah,2
        int 21h
        add di,1
        mov buffer2[di],dl     
        MOV DL,10  
        MOV ah,2
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,22h   ; "
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,buffer[si]
        int 21h
        add di,1
        mov buffer2[di],dl 
        
        mov ah,2
        mov dl,22h
        int 21h
        add di,1
        mov buffer2[di],dl
     
        ;;;;;;;;;;;;;;;;;
        
        mov ah,2
         mov dl,9h
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,32h
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,74h
        int 21h
        add di,1
        mov buffer2[di],dl 
        
        
        
        mov ah,2
        mov dl,3Dh
        int 21h
        add di,1
        mov buffer2[di],dl     
  
               
        mov Al,buffer[si]   
        mov SAVE,cl
        mov cl,8 
       
         ;2t hewleh
        mov bl,al
        mov cx,8
        start:

        mov al,bl 
        shr al,7
        shl al,7
        shr al,7
        shl bl,1
        add al,30h
         
        mov ah,2
        mov dl,al
        int 21h
        mov buffer2[di],dl
        add di,1
         
        loop start
        mov ah, 2
        mov dl,62h
        int 21h

          ;2t duus
        mov ah,2
        mov dl,9h
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,31h
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,36h
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,74h
        int 21h
        add di,1
        mov buffer2[di],dl 
        
        mov ah,2
        mov dl,3dh
        int 21h
        add di,1
        mov buffer2[di],dl  
        
        
        add di,1
        mov buffer2[di],dl 
        
        mov ah,0
        mov dl,0       
               
        mov Al,buffer[si]
        ;arwanzurgaat hewleh
        
          mov cl,al
            mov bl,al
            
            shr cl,4
            add cl,30h
            
            cmp cl,3Bh
            JE shilj1
            jmp shilj2
            
            shilj1:
            add cl,7h
            
            shilj2:
            mov ah,2
            mov dl,cl
            int 21h
            add di,1
            mov buffer2[di],dl
            shl bl,4
            shr bl,4
            add bl,30h
            
            cmp bl,39h
            JG user11
            jmp user12
            
            user11:
            add bl,7h
            
            user12:
            mov ah,2
            mov dl,bl
            int 21h
            add di,1
            mov buffer2[di],dl 
            
         mov ah,2
         mov dl,68h 
         int 21h   
        ;arwanzurgaat duus 
        
        
        
        
        mov ah,2
        mov dl,9h
        int 21h
        add di,1
        mov buffer2[di],dl  
        mov ah,2
        mov dl,9h
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,31h
        int 21h
        add di,1
        mov buffer2[di],dl 
        
        mov ah,2
        mov dl,30h
        int 21h
        add di,1
        mov buffer2[di],dl
        
        
        mov ah,2
        mov dl,74h
        int 21h 
        add di,1
        mov buffer2[di],dl
        
        mov ah,2
        mov dl,3Dh
        int 21h
        add di,1
        mov buffer2[di],dl  
        
        
        
        mov ah,0
        mov dl,0       
         
        mov Al,buffer[si]
        ;arawt hewleh
         aam
  
        mov bl,al
        mov cl,ah
        
        cmp ah,9
        jg user1
        jmp user2
        
        user1:
        mov al,ah
        aam
        mov dl,ah
        mov cl,al
        
        user2:
        
        add dl,30h
        add cl,30h
        add bl,30h
        
        mov ah,2
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov dl,cl
        mov ah,2
        int 21h
        add di,1
        mov buffer2[di],dl
        
        mov ah,2 
        mov dl,bl
        int 21h
        add di,1
        mov buffer2[di],dl
        
        
        ;arawt duusah
                     
        mov cl,save         
        add si,1
        add di,1             
     loop start1     
   
    ;file haah
    mov bx,handle1
    mov ah,3eh
    int 21h
   arawt2 MACRO aa
    LOCAL acc1,acc2,skip,skip2 
    mov al, aa
    aam  
    mov bx, ax
    cmp bh, 9
    jle skip
    mov dl, 1010b
    mov dh, 10h
    acc1:
     cmp bh, dl
     je acc2
     inc dl
     inc dh
     loop acc1 
    acc2:
     mov ch, dh 
     mov cl, dh
     shr ch, 4
     shl cl, 4
     shr cl, 4 
     add ch, 30h
     mov ah, 2
     mov dl, ch
     int 21h 
     add cl, 30h
     mov dl, cl
     int 21h
     jmp skip2
   skip:
     add bh, 30h  
     mov ah, 2
     mov dl, bh  
     int 21h  
   skip2: 
     add bl, 30h
     mov dl, bl
     int 21h  
	endm 
	
     
     arawt3 MACRO aa
    LOCAL acc1,acc2,skip,skip2 
    mov al, aa
    aam  
    mov bx, ax
    cmp bh, 9
    jle skip
    mov dl, 1010b
    mov dh, 10h
    acc1:
     cmp bh, dl
     je acc2
     inc dl
     inc dh
     loop acc1 
    acc2:
     mov ch, dh 
     mov cl, dh
     shr ch, 4
     shl cl, 4
     shr cl, 4 
     add ch, 30h
     mov ah, 2
     mov dl, ch
     int 21h 
     add cl, 30h
     mov dl, cl
     int 21h
     jmp skip2
   skip:
     add bh, 30h  
     mov ah, 2
     mov dl, bh  
     int 21h  
   skip2: 
     add bl, 30h
     mov dl, bl
     int 21h  
     endm 
     arawt4 MACRO aa
    LOCAL acc1,acc2,skip,skip2 
    mov al, aa
    aam  
    mov bx, ax
    cmp bh, 9
    jle skip
    mov dl, 1010b
    mov dh, 10h
    acc1:
     cmp bh, dl
     je acc2
     inc dl
     inc dh
     loop acc1 
    acc2:
     mov ch, dh 
     mov cl, dh
     shr ch, 4
     shl cl, 4
     shr cl, 4 
     add ch, 30h
     mov ah, 2
     mov dl, ch
     int 21h 
     add cl, 30h
     mov dl, cl
     int 21h
     jmp skip2
   skip:
     add bh, 30h  
     mov ah, 2
     mov dl, bh  
     int 21h  
   skip2: 
     add bl, 30h
     mov dl, bl
     int 21h  
	endm
  
     jmp check_mouse_buttons 
     
     end1:
     
     jmp check_mouse_buttons          
newfile: 
    mov bx,0
    mov ah, 3ch
	mov cx, 0
	mov dx, offset filename1
	mov ah, 3ch
	int 21h
	mov handle, ax 	
	mov bx,handle
	mov ah,3eh
	int 21h	               
	jmp check_mouse_buttons 
writefile:
    mov al,2
    mov dx,offset filename1
    mov ah,3dh           ; file neeh
    int 21h
	mov bx, ax
	mov al, 0
	mov cx,data_size     ; bichin ugugdliig hagdalsan oin haritsangui hayg
	mov ah,40h           ; filed ugugdul bichih funkts
	int 21h
	
	mov bx,handle1
	mov ah,3eh     ; file haah funkts
	int 21h
    jmp check_mouse_buttons            
 

realtugsgul:             
ret 
filename db "A:\Readfile.txt", 0
handle dw ? 
char db ?
huulah dw ?
filename1 db "A:\newfile.txt",0 
handle1 dw ?
data_size=-offset handle 
buffer db 30 dup(' ')
buffer2 db 1000 dup(' ')