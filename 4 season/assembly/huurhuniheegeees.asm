org 100h
too1 db 100,?, 100 dup(00h)
too2 db 100,?, 100 dup(00h)
mov dx, offset msg
mov ah, 09h
int 21h
mov ah, 2
mov dl,0DH
int 21h
mov ah, 2
mov dl,0AH
int 21h
mov dx, offset too1
mov ah, 0ah
int 21h
mov ah, 1
int 21h
mov temdeg, al
mov dx, offset too2
mov ah, 0ah
int 21h
mov ah, 2
mov dl, 3dh
int 21h
xor bx, bx
mov bl, too1[1]
mov len1, bl
mov si, bx
mov bl, too2[1]
mov len2, bl
mov di, 0
mov cx, si

dawtalt1:
    mov al, too1[si+1]
    sub al, 30h
    mov toohad1[di], al
    inc di
    dec si
    loop dawtalt1
    mov ch, 0
    mov cl, len2
    mov si, cx
    mov di, 0
dawtalt2:
    mov al, too2[si+1]
    sub al, 30h
    mov toohad2[di], al
    inc di
    dec si
    loop dawtalt2
    mov bl, len1
    mov si, bx
    mov bl, len2
    mov di, bx
    mov hadgalah[0], 00h    
    cmp temdeg, 2bh
    je nemeh
    cmp temdeg, 2dh
    je hasah
    cmp temdeg, 2fh
    je huvaah
    cmp temdeg, 2ah
    je urjih
    jmp end
hasahdawtalt1:
    mov al, toohad1[si]
    cmp al, toohad2[si]
    jge hasahlp2
    add al, 10
    sub al, toohad2[si]
    sub toohad1[si+1], 1
    mov toohad1[si], al
    jmp enddawtalt2
hasahlp2:
    sub al, toohad2[si]
    mov toohad1[si], al
enddawtalt2:
    add si, 1
    loop hasahdawtalt1   
    mov cx, si
print3:
    mov dl, toohad1[si-1]
    mov dl, 00h
    jne print4
    sub si, 1
    loop print3    
print4:
    mov cx, si
print4loop:
    mov dl, toohad1[si-1]
    add dl, 30h
    int 21h
    dec si
    loop print4loop
    jmp end
urjih:  
    MOV urjihheseg[0], 0
    MOV CH, 0
    MOV CL, LEN2
    MOV SI, 0

urjih2:
    MOV AL, LEN1
    MOV sanah, AL
    MOV LEN22, CL
    MOV CL, toohad2[SI]  
    XOR CH, CH
dawtalttoo:
    MOV too, CL
    CMP too, 00H
    JE oronshiljthh
    MOV CL, sanah 
    XOR DI, DI
    XOR CH, CH
                    
dawtaltnemeh:
    MOV AL, urjihheseg[DI]
    ADD AL, toohad1[DI]
    CMP AL, 10
    JGE oronnemegdehuyd
    MOV urjihheseg[DI], AL
    JMP oron2
oronnemegdehuyd:
    SUB AL, 10
    MOV urjihheseg[DI], AL
    ADD urjihheseg[DI+1], 1
oron2:
    ADD DI, 1
    LOOP dawtaltnemeh
    CMP urjihheseg[DI], 00H
    JE  oronheweeree
    ADD sanah, 1
oronheweeree:
    MOV CL, too 
    LOOP dawtalttoo 
oronshiljthh:
    XOR CH, CH
    MOV CL, LEN1
    MOV DI, CX   
shiljih1:
    MOV AL, toohad1[DI-1]
    MOV toohad1[DI], AL
    SUB DI, 1
    LOOP shiljih1
    MOV toohad1[0], 00H 
    ADD LEN1, 1
    MOV CL, LEN22   
    ADD SI, 1
    LOOP urjih2
    MOV CL, sanah
    XOR CH, CH 
    MOV DI, CX
    SUB DI, 1 
    MOV AH, 2
hewleh:  
    MOV DL, 30H
    ADD DL, urjihheseg[DI]  
    SUB DI, 1  
    INT 21H
    LOOP hewleh
    JMP END

huvaah:
    cmp si, di
    jge toolohutga2
    mov dl, 30h
    mov ah, 2
    int 21h
    jmp end
toolohutga2:
    mov ch, 0
    mov cl, len1
    
    mov si, cx
huvaahlp:
    mov al, toohad1[si-1]
    cmp al, toohad2[si-1]
    jl jgdi
    cmp al, toohad2[si-1]
    jg toolohutga2loop
    dec si
    loop huvaahlp
    jmp toolohutga2loop
toolohutga2loop:
    mov si, 0
    mov cl, len1
    mov ch, 0
hasahtoolohutga2loop:
    mov al, toohad1[si]
    cmp al, toohad2[si]
    jge oronshiljihgui
    add al, 10
    sub al, toohad2[si]
    mov toohad1[si], al
    sub toohad1[si+1], 1
    jmp endend
oronshiljihgui:
    sub al, toohad2[si]
    mov toohad1[si], al
endend:
    add si, 1
    loop hasahtoolohutga2loop
    add hadgalah[0], 1
nemeh:
    cmp si, di
    jge toolohutga
    mov cx, di
    jmp lp1
toolohutga:
    mov cx, si
lp1:
    mov si, 0
nemehheseg:
    mov al, toohad1[si]
    add al, toohad2[si]
    cmp al, 10
    jge oronshalgah
    mov toohad1[si], al
    jmp dawtaltduusgah
oronshalgah:
    sub al, 10
    mov toohad1[si], al
    add toohad1[si+1], 1
dawtaltduusgah:
    add si, 1
    loop nemehheseg
    cmp toohad1[si], 00h
    je oronhaliltgui
    jmp oronhalilttai
oronhalilttai:
    mov cx, si
    add cx, 1
    mov ah, 2
oronhaliltgui:
    sub si, 1
print:
    mov dl, toohad1[si]
    add dl, 30h
    int 21h
    sub si, 1
    loop print
    jmp end
hasah:
    cmp si, di
    jge toolohutga1
jgdiloop:
    mov ch, 0
    mov cl, len2
    mov si, 0
    
hasahloop:
    mov al, toohad2[si]
    cmp al, toohad1[si]
    jge hasahlp1
    add al, 10
    sub al, toohad1[si]
    mov toohad2[si], al
    sub toohad2[si+1], 1
    jmp enddawtalt1
hasahlp1:
    sub al, toohad1[si]
    mov toohad2[si], al
enddawtalt1:
    add si, 1
    loop hasahloop
    
    mov ah, 2
    mov dl, 2dh
    int 21h
    mov cx, si
print1:
    mov dl, toohad2[si-1]
    cmp dl, 00h
    jne print2
    sub si, 1
    loop print1
    
print2:
    mov cx, si
print2loop:
    mov dl, toohad2[si-1]
    add dl, 30h
    int 21h
    sub si, 1
    loop print2loop
    jmp end
toolohutga1:
    mov ch, 0
    mov cl, len1
    mov si, 0

lp4:
    mov si, 0
    mov ch, 0
    mov cl, len1
nootsnemelt:
    cmp hadgalah[si], 10
    je noots
    jmp end100
noots:
    add hadgalah[si+1], 1
    sub hadgalah[si], 10
end100:
    add si, 1
    loop nootsnemelt
    jmp toolohutga2
jgdi:
    mov cl, len1
    mov ch, 0
    mov si, cx
printf:
    cmp hadgalah[si-1], 00h
    jne printf1
    dec si
    loop printf                
printf1:
    mov cx, si
    mov ah, 2
printfs:
    mov dl, 30h
    add dl, hadgalah[si-1]
    int 21h
    sub si, 1
    loop printfs    
    jmp end                             
end:
ret 
sanah db 0
too db 0
len1 db 0
len2 db 0
LEN22 db 0
temdeg db 0
hadgalah db 100,?, 100 dup(00h)
urjihheseg db 100,?, 100 dup(00h)
toohad1 db 100,?, 100 dup(00h)
toohad2 db 100,?, 100 dup(00h)
msg db "Ehleed ehnii toogoo oruulaad enter darna daraa ni uildliin temdegee bicheed ardaas ni shuud hordoh toogoo oruulna uu $"