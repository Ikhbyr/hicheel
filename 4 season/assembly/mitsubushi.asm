name "logo"

org 100h   

mov al, 13h
mov ah, 0
int 10h 

mov di,199
mov si,149 
mov dx,40     
mov cx,149

start: 
mov cx,si        
mov al,0100b  
 
gurvaljin:
mov ah,0ch
int 10h 
inc cx
cmp cx,di
jle gurvaljin
jmp morshiljihdeeshee

morshiljihdeeshee:
dec dx
jmp bagasgah  

mor:
cmp dx,15
jge start
jmp dooshoo 

bagasgah:
dec di
inc si
jmp mor

dooshoo:
mov di,198
mov si,150 
mov dx,41     
mov cx,150

startd: 
mov cx,si        
mov al,0100b  
 
gurvaljind:
mov ah,0ch
int 10h 
inc cx
cmp cx,di
jle gurvaljind
jmp morshiljihdooshoo

morshiljihdooshoo:
inc dx
jmp bagasgahd  

mord:
cmp dx,65
jle startd
jmp deeshee1

bagasgahd:
dec di
inc si
jmp mord

deeshee1:
mov di,148
mov si,98
mov dx,91    
mov cx,98 
mov bl,1

startde1: 
mov cx,si        
mov al,0100b  
 
gurvaljinde1:
mov ah,0ch
int 10h 
inc cx
cmp cx,di
jle gurvaljinde1
jmp morshiljihdeeshee1

morshiljihdeeshee1:
dec dx
jmp bagasgahde1  

morde1:
cmp dx,66
jge startde1
cmp bl,1  
je dooshoo1
cmp bl,4
je tugsgul      

bagasgahde1:
dec di
inc si
jmp morde1

dooshoo1:
mov di,173
mov si,123 
mov dx,66     
mov cx,123 
inc bl

startd1: 
mov cx,si        
mov al,0100b  
 
gurvaljind1:
mov ah,0ch
int 10h 
inc cx
cmp cx,di
jle gurvaljind1
jmp morshiljihdooshoo1

morshiljihdooshoo1:
inc dx
jmp bagasgahd1  

mord1:
cmp dx,91
jle startd1 
cmp bl,2 
je dooshoo2
jmp deeshee2

bagasgahd1:
dec di
inc si
jmp mord1

dooshoo2:
mov di,225
mov si,175 
mov dx,66     
mov cx,175
inc bl
jmp startd1 

deeshee2:
mov di,250
mov si,200 
mov dx,91     
mov cx,200
inc bl
jmp startde1 

tugsgul:          
ret