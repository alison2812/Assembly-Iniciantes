.global _start
.section .text

_start:
    mov x0, #7      // x0 = 7
    mov x1, #7     // x1 = 6
    mul x2, x0, x1  // x2 = x0 * x1 (x2 = 7 * 6)

    mov x0, x2      // Código de retorno = 49
    mov x8, #93     // syscall exit
    svc 0
    