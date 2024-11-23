;         .global _start
;         .text

; # Define the system call numbers for macOS ARM64
; SYS_write       = 0x02000004
; SYS_exit        = 0x02000001  
; STDOUT_FILENO   = 1         

; _start:
;         movz   x16, 
;         movk   x16,
;         mov    x2, hello_len            
;         adr    x1, hello_txt            
;         mov    x0, STDOUT_FILENO        
;         svc    0                        

    
;         movz   x16, 
;         movk   x16, 
;         mov    x0, #0                   
;         svc    0                        

;         .data

; hello_txt: .ascii "Hello, World!\n"     
; hello_len = . - hello_txt               

//
// Assembler program to print "Hello World!"
// to stdout.
//
// X0-X2 - parameters to linux function services
// X16 - linux function number
//*
; .global _start             // Provide program starting address to linker
; .align 2

// Setup the parameters to print hello world
// and then call Linux to do it.

; _start: mov X0, #1     // 1 = StdOut
;         adr X1, helloworld // string to print
;         mov X2, #13     // length of our string
;         mov X16, #4     // MacOS write system call
;         svc 0     // Call linux to output the string

; // Setup the parameters to exit the program
; // and then call Linux to do it.

;         mov     X0, #0      // Use 0 return code
;         mov     X16, #1     // Service command code 1 terminates this program
;         svc     0           // Call MacOS to terminate the program

; helloworld:      .ascii  "Hello World!\n"

; */


.global _start             // Provide program starting address to linker
.align 2

// Setup the parameters to print hello world
// and then call Linux to do it.

_start: mov X0, #1     // 1 = StdOut
        adr X1, helloworld // string to print
        mov X2, #13     // length of our string
        mov X16, #0x02000001     // macOS write system call
        svc 0     // Call macOS to output the string

// Setup the parameters to exit the program
// and then call macOS to do it.

        mov     X0, #0      // Use 0 return code
        mov     X16, #0x02000001     // macOS exit system call
        svc     0           // Call macOS to terminate the program

helloworld:      .ascii  "Hello World!\n"
