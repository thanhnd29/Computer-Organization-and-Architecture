include \masm32\include\masm32rt.inc
.data
prompt db "input a string here:", 0
string db 50 dup(?)
string_decimal db 16 DUP (0)

.code
start:
push offset prompt
call StdOut

push 50
push offset string
call StdIn


    lea edi, string_decimal : chuyển địa chỉ của offset vào thanh ghi 
    call to_string
    invoke StdOut, addr string_decimal gọi đối tượng , call gọi hàm

to_string PROC
    mov ebx, 10
    xor ecx, ecx

repeated_division:
    xor edx, edx
    div ebx
    push dx
    add cl,1
    or eax, eax
    jnz repeated_division  :bước nhảy

load_digits:
    pop ax     lấy 2 byte ở stack vào toán hạng đích 
    or al, 00110000b :48  al=0011 0110b =54 :Chuyển một byte nhị phân thành chữ số thập phân ASCII tương đương của nó.
    stosb    :  để đọc và lưu lại chuỗi
    loop load_digits  : lệnh vòng lặp
    mov byte ptr [edi], 0
    ret   kết thúc chương trình con

to_string ENDP
end start
