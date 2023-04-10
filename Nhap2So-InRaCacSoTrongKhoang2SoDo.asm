include \masm32\include\masm32rt.inc
display PROTO :DWORD, :DWORD
.code
start:
    call main
    exit

    main proc
        LOCAL a:DWORD
        LOCAL b:DWORD
        
        mov a,sval(input("Number 1: "))
        mov b,sval(input("Number 2: "))

        mov eax, a
        cmp eax, b
        
        jg SWAP
        jl CONTD
        je BANGNHAU
        
        SWAP:
            mov eax,a
            mov ebx,b
            mov a,ebx
            mov b,eax
            
        CONTD:
            inc a
            mov eax,a
            cmp eax, b
            je STOP
            
            
            invoke display, a, b
  
            
            JMP CONTD
        STOP:
                   
            ret
            
        BANGNHAU:
        
            print chr$("Nothing to print")
            ret
    main endp
    
   display proc a:DWORD, b:DWORD
        print str$(a)
        print chr$(" ")
        ret
    display endp
end start