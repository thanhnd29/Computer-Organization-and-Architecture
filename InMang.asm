; EX05_Numbers.asm
; Declare program model and all libraries using only one file

  include \masm32\include\masm32rt.inc 
.data
  array dd 1,2,3,4,5,6,7,8

.code                       
start:                          ; The CODE entry point to the program
    
    call main
    exit
    main proc
        LOCAL i:DWORD
        LOCAL intSize:DWORD
        mov i, 0
        mov intSize, 4
        continue:
            cmp i, 8
            je over
            mov eax, i
            mul intSize        
            add eax, OFFSET array
            print str$([eax])
            print chr$(13,10)
            inc i
            jmp continue

        over:
            ret    
    main endp
end start