include \masm32\include\masm32rt.inc

.data
 n dd 0
.code
checksonguyento proc a: DWORD
local i: DWORD
mov i, 1
mov ebx, a
sub ebx, 1
mov eax, a
mov edx, 0
laplai:
    inc i
    mov eax, a
    mov edx, 0
    div i
    cmp edx, 0
    je NO
    jne kiemtra

kiemtra:
    cmp i, ebx
    jl laplai
    je YES

NO:
    print chr$("So ")
    print str$(a)
    print chr$(" khong la so nguyen to")   
    jmp thoat

YES:
    print chr$("So ")
    print str$(a)
    print chr$(" la so nguyen to")

thoat:
ret
checksonguyento endp
start:
mov n, sval(input("Nhap so nguyen n: "))
invoke checksonguyento, n

exit
end start