.global _start
.section .text

_start:
   mov x0, #5 //x0 = 5
   mov x1, #4 //x1 = 4
   add x2, x0, x1 //x2 = x0 + x1
   
   //syscall exit
   mov x0, x2 //código de retorno - obtem valor de x2
   mov x8, #93 //código da syscall - exit
   svc 0 //chamada do kernel