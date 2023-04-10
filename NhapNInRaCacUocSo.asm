include \masm32\include\masm32rt.inc
.data
.code
start:

call main
exit

main proc
    LOCAL n:DWORD
    LOCAL i:DWORD

mov n,sval(input("Enter the value(N) to print the divisors: "));
mov i,1

calculation:
    mov eax,i
    cmp eax,n
    jg over


    mov eax,n
    mov edx,0
    div i
    cmp edx,0
    je equal0
    jne notequal0

    equal0:
        print str$(i)
        print chr$(" ")

        inc i
        jmp calculation
    notequal0:
        inc i
        jmp calculation
    over:
        print chr$("over")
        ret
main endp
end start