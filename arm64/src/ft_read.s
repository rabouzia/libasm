        .global _start
        .text

# Define the system call numbers for macOS ARM64
SYS_write       = 0x02000004
SYS_exit        = 0x02000001  
STDOUT_FILENO   = 1         

_start:
        movz   x16, 
        movk   x16,
        mov    x2, hello_len            
        adr    x1, hello_txt            
        mov    x0, STDOUT_FILENO        
        svc    0                        

    
        movz   x16, 
        movk   x16, 
        mov    x0, #0                   
        svc    0                        

        .data

hello_txt: .ascii "Hello, World!\n"     
hello_len = . - hello_txt               
