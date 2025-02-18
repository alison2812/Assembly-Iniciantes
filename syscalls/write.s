.global _start

.section .data
   msg:
     .asciz "Hello World"

.section .text

_start:
   //syscall write
   mov x8, #64      // Número da syscall 'write'
   mov x0, #1       // File descriptor 1 (stdout - saída padrão)
   ldr x1, =msg     // Carrega o endereço da string
   mov x2, 11   // Comprimento da string
   svc 0            // Chamada ao kernel
   
   //⚠️ Sem o =, o ldr x1, msg tentaria carregar o valor armazenado em msg (não o endereço), o que quebraria o código.
   
   //fechando programa
   mov x8, #93
   mov x0, #0
   svc 0