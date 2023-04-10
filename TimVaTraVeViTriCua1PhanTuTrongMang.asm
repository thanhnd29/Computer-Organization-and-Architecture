;--------------------------------------------; 
;Search and return position of given element.;
;--------------------------------------------;


include \masm32\include\masm32rt.inc 
.data
  array dd 200 dup(?)
  n dd ?
  pos dd ?
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
        
        mov n,sval(input("Enter number elements in array: "))
        dec n
        nhapmangvao:
            mov eax,i
            cmp eax,n
 
            jg ketthucnhapmang

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
            jmp nhapmangvao
        ketthucnhapmang:
            print chr$("----------------------------------------------")           
            print chr$(13,10)
            mov i,0
            mov pos,sval(input("Enter value to find position in array: "))
            xuatmang:
            mov eax,i
            cmp eax,n
            jg ketthucxuatmang
            mov eax,i
            mul intSize  
            add eax, OFFSET array
            mov ebx,[eax]
            cmp ebx,pos
            je position
            jne notposition
            position:
            print str$(i)
            print chr$(13,10)
            inc i
            jmp xuatmang

            notposition:
            inc i
            jmp xuatmang

        ketthucxuatmang:
            ret
    main endp
end start