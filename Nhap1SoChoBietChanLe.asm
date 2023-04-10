include \masm32\include\masm32rt.inc 
    .data
     var1 dd 0
     var2 dd 2
     remain dd 0
     .code                       
start:                          
     mov var1, sval(input("Enter a number: "))
     mov eax, var1
     mov edx, 0
     div var2
     mov remain, edx
     cmp remain, 0
     je  Evennumber
     jne Oddnumber
        Evennumber:
            print chr$("EVEN")
            exit
        Oddnumber:
            print chr$("ODD")
            exit 
    end start