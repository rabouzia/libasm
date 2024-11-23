

; .global _start


.global _start

_start: 
	mov  x16, #1          ; Setup service call 1 (exit)
	mov  x0, #0          ; param 1 - 0 = normal exit
	svc  #0

; hello .ascii "Hello World"


/*
Operation				Generic ARM Linux							macOS ARM (Apple Silicon)
System call setup		mov r7, #<syscall_number>					mov x16, #<syscall_number>
Pass argument 1			mov r0, #<arg1>								mov x0, #<arg1>
Pass argument 2			mov r1, #<arg2>								mov x1, #<arg2>
Invoke syscall			svc 0	svc #0
Syscall exit (code)		mov r7, #1; mov r0, #<exit_code> svc 0		mov x16, #1; mov x0, #<exit_code> svc #0
Stack pointer			sp											sp
Program counter			pc											pc
Link register			lr											lr
Return from function	bx lr										ret

*/