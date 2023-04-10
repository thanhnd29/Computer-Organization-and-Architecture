include \masm32\include\masm32rt.inc 
    .data
        var1 dd 0
        var2 dd 0
        var3 dd 0

    .code                       

    start:                          
            mov var1, sval(input("Number1: "))
            mov var2, sval(input("Number2: "))
            mov var3, sval(input("Number3: "))
            mov eax, var1
            mov ebx, var2
            mov ecx, var3
        cmp eax, ebx        
        jg AbiggerthanB
        jl BbiggerthanA
    AbiggerthanB:
        cmp eax, ecx
        jg AbiggerthanC
        jl CbiggerthanA
            AbiggerthanC:  
                print str$(var1)
                exit
            CbiggerthanA:
                print str$(var3)
                exit       
     BbiggerthanA:     
        cmp ebx, ecx
        jg BbiggerthanC
        jl CbiggerthanB
            BbiggerthanC:  
               print str$(var2)
               exit
            CbiggerthanB:
               print str$(var3)
               exit
        end start