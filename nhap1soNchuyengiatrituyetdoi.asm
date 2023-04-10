include \masm32\include\masm32rt.inc 
   .data
      var1 dd 0

   .code   ; Tell MASM where the code starts

    start: ; The CODE entry point to the program
        mov var1, sval(input("Enter a number to transfer absolute: "))
        cmp var1, 0
        jge GreaterOrEqualZero
        jl  LessThanZero

    LessThanZero:
            neg var1
            print str$(var1)
            exit
    GreaterOrEqualZero:     
            print str$(var1)
            exit
    
end start ; Tell MASM where the program ends
