ZuunTiish MACRO  hurtel, haana
    mov ah, 0ch
    int 10h
    dec cx
    cmp cx, hurtel 
    jne haana
endm
BaruunTiish macro hurtel, haana
    mov ah, 0ch  
    int 10h
    inc cx
    cmp cx, hurtel
    jne haana
    endm
Deesh macro hurtel, haana
    mov ah, 0ch
    int 10h
    dec dx
    cmp dx, hurtel 
    jge haana                          
endm
Doosh macro hurtel, haana
    mov ah, 0ch  
    int 10h
    inc dx
    cmp dx, hurtel
    jne haana
endm
ZuunDeesh macro hurtel, haana
    mov ah, 0ch  
    int 10h
    dec cx
    dec cx
    inc dx
    cmp dx, hurtel
    jne haana
endm
BaruunDoosh macro hurtel, haana
    mov ah, 0ch  
    int 10h
    inc cx
    inc cx
    dec dx
    cmp dx, hurtel
    jne haana 
endm

org 100h
    mov ah, 0
    mov al, 13h 
    int 10h
    mov cx, 200
    mov dx, 175
    
H2: 
    mov al, 1111b
    Deesh 160, H2     
    mov cx, 200
    mov dx, 175    
H1: 
    ZuunTiish 150, H1
    mov cx, 150
    mov dx, 175   
H3:
    Deesh 160, H3
    mov cx, 150
H24: BaruunDoosh 153, H24    
H25: 
    ZuunTiish 147, H25
D1: Doosh 168, D1
D2: 
    BaruunTiish 148, D2    
    mov cx, 145
D3: ZuunDeesh 175, D3
D4:
    Deesh 160, D4    
    mov dx, 175
D5: 
    ZuunTiish 115, D5
D6: 
    Deesh 160, D6        
    mov cx, 145
    mov dx, 153
H26:ZuunDeesh 160, H26
H27:
    ZuunTiish 117, H27
H28:BaruunDoosh 145, H28
H29:
    BaruunTiish 177, H29                        
    mov cx, 200
    mov dx, 160   
H4: 
ZuunTiish 150, H4    
    mov cx, 200
    mov dx, 160
H5: BaruunDoosh 155, H5    
    mov cx, 200
    mov dx, 175
H6: BaruunDoosh 170, H6     
    mov dx, 169   
H7:
Deesh 156, H7    
H8: 
ZuunTiish 185, H8
    
H9: BaruunDoosh 151, H9
    mov dx, 153
H10:Deesh 151, H10       
H11: BaruunTiish 218, H11 
H12:Doosh 166, H12
H13:ZuunTiish 212, H13    
    mov cx, 218
H14:BaruunDoosh 151, H14
H15:Deesh 136, H15
H16:ZuunDeesh 151, H16
    mov cx, 246
    mov dx, 136
H17: ZuunTiish 235, H17
H18: ZuunDeesh 144, H18
H19: ZuunTiish 199, H19
H20: BaruunDoosh 136, H20
D8: Doosh 144, D8
    mov dx, 136
H21:ZuunTiish 164, H21    
H22:ZuunDeesh 140, H22
D7: Doosh 144, D7
    mov dx, 140
H23:BaruunTiish 185, H23
H30:ZuunDeesh 145, H30    
ret