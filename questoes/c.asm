; (entrada - 3) * 6

; Alocação das variáveis
x EQU 128
entrada EQU 129
resultado EQU 130

; inicialização das variáveis
LDI 3
STA x

; entrada dos dados:
IN 0 ;entrada qualquer
STA entrada

; lógica:
LDA entrada
SUB x
JN Menor
JMP Soma

; Menor, caso a entrada seja menor que 3
Menor:
LDA x
SUB entrada
JMP Soma


Soma:
STA resultado
ADD resultado
ADD resultado 
ADD resultado
ADD resultado
ADD resultado
STA resultado

OUT 0
HLT
