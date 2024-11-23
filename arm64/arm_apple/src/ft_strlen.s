

.global _start

_start: 
		mov	r7, #1			; Setup exit systemcall
		mov r0, #0			; 0 = no error
		svc	0 