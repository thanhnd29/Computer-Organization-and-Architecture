 include \masm32\include\masm32rt.inc 
.data
  array dd 200 dup(?)
  var2 dd 7	
  remain dd 0 
.code                       
start:
    call main
    exit
    main proc
        LOCAL i:DWORD
        LOCAL intSize:DWORD
        LOCAL a:DWORD
        
        LOCAL sum:DWORD
        LOCAL n:DWORD
        mov i, 0
        mov sum,0
        mov intSize, 4
        

        mov n,sval(input("Enter number elements in array: "))
        continue:
            mov eax,i
            cmp eax,n 
            je over
            mov eax,i
            mul intSize    
            add eax, OFFSET array
            mov remain,eax
            print chr$("a[")
            print str$(i)
            print chr$("]: ")
            mov a, sval(input())
            mov eax,remain

            mov eax,a
            mov edx,0
            div var2
            mov remain, edx
            cmp remain, 0
            je  Divisible
            jne Notdivisible
    Divisible:
            mov eax, a
            add sum,eax  
            print chr$(13,10)
            inc i
            jmp continue
    Notdivisible:
            inc i
            jmp continue

        over:
            print str$(sum)
            ret    
    main endp
end start  
