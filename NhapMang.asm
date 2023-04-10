;------------------------------------; 
;Input values into an 8-element array;
;------------------------------------;


include \masm32\include\masm32rt.inc 
.data
  array dd 8 dup(?)
.code                       
start:
    call main
    exit
    main proc
        LOCAL i:DWORD
        LOCAL intSize:DWORD
        LOCAL a:DWORD
        LOCAL remain:DWORD
        mov i, 0
        mov intSize, 4

        continue:

            cmp i, 7
            jg over
            mov eax,i
            mul intSize    
            add eax, OFFSET array
            mov remain,eax
            print chr$("a[")
            print str$(i)
            print chr$("]: ")
            mov a, sval(input())
            mov eax,remain
            mov ebx,a
            mov [eax],ebx

            print chr$(13,10)
            inc i
            jmp continue
        over:
            ret    
    main endp
end start