include\masm32\include\masm32rt.inc
.data
.code
    start:
        call main
        exit
 ;----------------------------------------------------------------------
        main proc
        LOCAL i:DWORD
        LOCAL n:DWORD
        LOCAL sumodd:DWORD
        LOCAL count:DWORD
        mov n,sval(input("enter n term of odd number: "))
        mov sumodd,0
        mov i,1
        mov count,1

    
        calculation:
        mov eax,i
        mov ebx,count 
        cmp ebx,n
        jg over

        add sumodd,eax
        print str$(eax)
        print chr$(" ")
        inc i
        inc i
        inc count
        jmp calculation

        over:
          
        ret
        main endp
    end start