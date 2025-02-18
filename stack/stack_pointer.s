.global _start      // Define o ponto de entrada do programa (obrigatório para o linker)
.section .text      // Seção de código do programa

_start:
   mov x0, #100         // Move o valor 100 para o registrador x0 (x0 geralmente contém o código de saída)

   str x0, [sp, #-16]!  // Armazena o valor de x0 no endereço apontado por sp (stack pointer), 
                         // ajustando o sp para baixo (-16 bytes) antes do armazenamento. 
                         // O '!' indica que o novo valor do sp é atualizado.

   ldr x1, [sp], #16    // Carrega o valor da memória apontada por sp para o registrador x1,
                         // depois ajusta o sp para cima (+16 bytes) após a leitura.

   mov x0, x1           // Move o valor de x1 (100) de volta para x0 (para preparar o código de saída)
   mov x8, #93           // Move o número da syscall 'exit' (93) para o registrador x8 
   svc 0                 // Faz a chamada ao sistema (system call), encerrando o programa
