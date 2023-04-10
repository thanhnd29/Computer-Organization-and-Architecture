include\masm32\include\masm32rt.inc
.data
.code
    start:
            call main
            exit
    ; ------------------------------------------------------
                main proc
                     LOCAL n:DWORD
                     LOCAL i:DWORD
                     LOCAL s:DWORD
    
                     mov n,sval(input("Enter n to calculate factorial of natural number: "))
                     mov i,1

                     mov eax,i
                     mov ecx,n
                lapnhan:
                     mul ecx
                loop lapnhan
                     print str$(eax)
                     ret
                 main endp
    end start