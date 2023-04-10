include \masm32\include\masm32rt.inc
getarea PROTO :DWORD,:DWORD
.code
start:
    call main
    exit
    main proc
        LOCAL v1:DWORD
        LOCAL v2:DWORD
        LOCAL result:DWORD
        mov v1,sval(input("v1= "))
        mov v2,sval(input("v2= "))
    mov eax,v1
    cmp eax,0
    je TH1
    jne TH2
    TH1:
        print chr$("Invalid")
        ret
    TH2:
        mov eax,v2
        cmp eax,0
        je TH3
        jne TH4
        ret
    TH3:
        print chr$("Invalid")
        ret
    TH4:
        mov result,0
        invoke getarea,v1,v2
        mov result,eax
        print chr$("Area of a rectangle:")
        print str$(result)
        ret
;
    main endp
;   Function getarea
    getarea proc x:DWORD,y:DWORD
        mov eax,x
        imul eax,y
    ret
    getarea endp

end start