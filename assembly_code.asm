; This code adds two numbers and stores the result in a variable.

section .text
global _start

_start:
mov eax, 10 ; Load the first number into register EAX.
mov ebx, 20 ; Load the second number into register EBX.
add eax, ebx ; Add the two numbers and store the result in EAX.
mov [var], eax ; Store the result in the variable var.

mov eax, 1 ; Exit code.
mov ebx, 0 ; Return code.
int 0x80 ; Call the kernel.

section .data
var dw 0 ; The variable that will store the result.
