
org 100h

jmp start
           main db 100, ?, 100 dup(00h)
          first db 100 dup(00h)
         second db 100 dup(00h)
         rFirst db 100 dup(00h)
        rSecond db 100 dup(00h)
         result db 100 dup(00h)
           temp db 00h
          digit db 00h 
      tempCount db 00h
       operator db 00h   
          count db 02h
     firstCount db 00h
    secondCount db 00h
    
start:
    mov dx, offset main
    mov ah, 0ah
    int 21h     
    
    mov bl, main[1]
    
    mov cx, 0
    mov cl, bl
    firstLoop: 
        mov bx, 0
        mov bl, count
        mov ah, main[bx] 
        
        cmp ah, '+'
        je endFirstLoop
        cmp ah, '-' 
        je endFirstLoop
        cmp ah, '*'
        je endFirstLoop
        cmp ah, '/'
        je endFirstLoop 
        
        mov bl, firstCount
        inc firstCount 
        inc count
        mov first[bx], ah
        
    loop firstLoop 
    
    endFirstLoop:
        mov bl, count
        mov ah, main[bx]
        mov operator, ah
        
    inc count
    mov dl, count
    mov bx, 0
    mov bl, main[1]
    add bl, 2
    sub bl, dl
    mov cl, bl
    
    secondLoop:
        mov bx, 0
        mov bl, count
        mov ah, main[bx]
        mov bl, firstCount 
        mov bl, secondCount
        inc secondCount 
        inc count
        mov second[bx], ah
        
    loop secondLoop
    
    mov bx, 0
    mov bl, firstCount
    mov si, bx
    
    mov bl, secondCount
    mov di, bx

    mov cx, si
    mov count, 0      
    
    rLoop1:
        dec si
        mov ah, first[si]
        mov bl, count
        inc count     
        sub ah, 30h
        mov rFirst[bx], ah
    loop rLoop1

    mov cx, di
    mov count, 0
    
    rLoop2:
        dec di
        mov ah, second[di]
        mov bl, count
        inc count     
        sub ah, 30h
        mov rSecond[bx], ah
    loop rLoop2 
    
    mov ah, 02h
    mov dl,'='
    int 21h
    
    mov bl, firstCount
    mov si, bx
    mov bl, secondCount
    mov di, bx
    
    cmp operator, '+'
    je adder
    cmp operator, '-' 
    je substract
    cmp operator, '*'
    je multiply
    cmp operator, '/'
    je divide 
    
    adder:
        cmp si, di
        jge firstHigh
        
        mov cx, di
        jmp mainAdd 
        
        firstHigh:
        mov cx, si 
        
        mainAdd:
            mov si, 0
            addLoop:
                mov al, rFirst[si]
                add al, rSecond[si]
                cmp al, 10 
                
                jge carry
                
                mov rFirst[si], al
                jmp endloop   
                
                carry:
                    sub al, 10
                    mov rFirst[si], al
                    add rFirst[si+1], 1 
                
                endloop:
                    add si, 1
            loop addLoop  
            
            cmp rFirst[si], 00h
            je nocarry 
            jmp withcarry
                
            nocarry:
                sub si, 1
                
            withcarry:
                mov cx, si
                add cx, 1
                mov ah, 2 
                    
            print:
                mov dl, rFirst[si]
                add dl, 30h
                int 21h
                sub si, 1
            loop print
    jmp end
    
    substract:
        cmp si, di
        jge firstHigh1
        
        secondHigh1:
            mov cx, 0
            mov cl, secondCount
            mov si, 0
    
            subLoop:
                mov al, rSecond[si]
                cmp al, rFirst[si]
                jge subSecondHigh
                
                add al, 10
                sub al, rFirst[si]
                mov rSecond[si], al
                sub rSecond[si+1], 1
                jmp endloop1 
                
                subSecondHigh:
                sub al, rFirst[si]
                mov rSecond[si], al
                
                endloop1:
                add si, 1
                
            loop subLoop
            
            mov ah, 2
            mov dl, 2dh
            int 21h
            
            mov cx, si
            print1:
                mov dl, rSecond[si-1]
                cmp dl, 00h
                jne print2 
                
                sub si, 1
            loop print1
                
            print2:
                mov cx, si
                
            print2loop:
                mov dl, rSecond[si-1]
                add dl, 30h
                int 21h
                sub si, 1
            loop print2loop
    jmp end
                
        firstHigh1:
            mov ch, 0
            mov cl, firstCount
            mov si, 0
            
            subLoop1:
                mov al, rFirst[si]
                cmp al, rSecond[si]
                jge subFirstHigh  
                
                add al, 10
                sub al, rSecond[si]
                sub rFirst[si+1], 1
                mov rFirst[si], al
                jmp endloop2  
                
                subFirstHigh:
                    sub al, rSecond[si]
                    mov rFirst[si], al 
                
                endloop2:
                    add si, 1
            loop subLoop1
                
            mov cx, si
            print3:
                mov dl, rFirst[si-1]
                mov dl, 00h
                jne print4
                
                sub si, 1
            loop print3
                    
            print4:
                mov cx, si
                print4loop:
                    mov dl, rFirst[si-1]
                    add dl, 30h
                    int 21h
                    dec si
                loop print4loop
    jmp end
    
    multiply: 
        mov result[0], 0
        mov ch, 0
        mov cl, secondCount
        mov si, 0

        mulLoop:
            mov al, firstCount
            mov temp, al
            mov tempCount, cl
            mov cl, rSecond[si]  
            mov ch, 0
            
            digitLoop:
                mov digit, cl
                cmp digit, 00h
                je nextDigit
                
                mov cl, temp 
                mov di, 0
                mov ch, 0
                    
                adderLoop:
                    mov al, result[di]
                    add al, rFirst[di]
                    cmp al, 10
                    jge carry1  
                    
                    mov result[di], al
                    jmp nocarry1  
                    
                    carry1:
                        sub al, 10
                        mov result[di], al
                        add result[di+1], 1
                        
                    nocarry1:
                        add di, 1
                        
                loop adderLoop
                
                cmp result[di], 00h
                je  noCarryResult
                
                add temp, 1 
                    
                noCarryResult:
                    mov cl, digit
                     
            loop digitLoop
             
            nextDigit:
                mov ch, 0
                mov cl, firstCount
                mov di, cx 
                           
                toRight:
                    mov al, rFirst[di-1]
                    mov rFirst[di], al
                    sub di, 1
                loop toRight
                
                mov rFirst[0], 00h 
                add firstCount, 1
                mov cl, tempCount
                                    
                add si, 1
                
        loop mulLoop 
          
        mov cl, temp
        mov ch, 0 
        mov di, cx
        sub di, 1 
        mov ah, 2
        
        print5:  
            mov dl, 30h
            add dl, result[di]  
            sub di, 1  
            int 21h
            
       loop print5
    jmp end
    
    divide:
        cmp si, di
        jge divFirstHigh  
        
        mov dl, 30h
        mov ah, 2
        int 21h
        jmp end
        
        divFirstHigh:
            mov ch, 0
            mov cl, firstCount
        
            mov si, cx
            divLoop:
                mov al, rFirst[si-1]
                cmp al, rSecond[si-1]
                jl noDivCarry
                
                cmp al, rSecond[si-1]
                jg DivCarry     
                
                dec si
            loop divLoop
            
            jmp divCarry
            
        divCarry:
            mov si, 0
            mov cl, firstCount
            mov ch, 0
            
        hasahjgsi2loop:
            mov al, rFirst[si]
            cmp al, rSecond[si]
            jge oronshiljihgui  
            
            add al, 10
            sub al, rSecond[si]
            mov rFirst[si], al
            sub rFirst[si+1], 1
            jmp endend  
            
            oronshiljihgui:
                sub al, rSecond[si]
                mov rFirst[si], al
            endend:
                add si, 1
        loop hasahjgsi2loop
        
        add result[0], 1
        
        lp4:
            mov si, 0
            mov ch, 0
            mov cl, firstCount
            remainderincrement:
                cmp result[si], 10
                je remainderincremented 
                
                jmp end100
                
                remainderincremented:
                    add result[si+1], 1
                    sub result[si], 10
                    
                    end100:
                        add si, 1
                loop remainderincrement
            jmp divFirstHigh
            
        noDivCarry:
            mov cl, firstCount
            mov ch, 0
            mov si, cx
            printf:
                cmp result[si-1], 00h
                jne printf1
                
                dec si
            loop printf
                
            printf1:
                mov cx, si
                mov ah, 2
                printfs:
                    mov dl, 30h
                    add dl, result[si-1]
                    int 21h
                    
                    sub si, 1
                loop printfs
                    
    jmp end
    
        
       
        
    end: 
ret




