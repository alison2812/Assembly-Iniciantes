//Define o ponto de entrada do programa
.global _start

//Seção de códigos
.section .text

_start:
   mov x0, #2 //primeiro argumento - código de saída
   mov x8, #93 //número da syscall 'exit'
   svc #0 //Faz a chamada do sistema para encerrar o programa
   
   //código 0 significa sucesso
