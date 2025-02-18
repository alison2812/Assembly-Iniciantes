.global _start
.section .text

_start:
   mov x0, #10
   mov x1, #7
   sub x2, x0, x1
   
   //result = 3
   mov x0, x2
   mov x8, #93
   svc 0