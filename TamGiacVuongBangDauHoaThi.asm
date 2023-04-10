include\masm32\include\masm32rt.inc
.data
.code
    start:
    call main
    exit
;----------------------------------------------------------------------------------;
;Write a program to display the pattern like right angle triangle using an asterisk;
;----------------------------------------------------------------------------------;

    main proc
    LOCAL n:DWORD
    LOCAL i:DWORD
    LOCAL j:DWORD
    mov i,1
 
    mov n,sval(input("enter n to display pattern like right angle triangle using an asterisk: "))

    foriton:
    mov eax,i
    cmp eax,n
    jg over
    
    mov j,1
    forjtoi:
    mov eax,j
    cmp eax,i
    jg over1
    
    print chr$("*")
    inc j
    jmp forjtoi
        
    over1:
    print chr$(13,10)
    inc i
    jmp foriton
    
    

    over:
    print chr$(" ")
    ret

    main endp
    end start