
; entrada * 5

; Alocação das variáveis
soma EQU 128

; inicialização das variáveis
LDI 0
STA soma

; entrada dos dados:
IN 0
STA soma
ADD soma
ADD soma
ADD soma
ADD soma
STA soma
OUT 0
HLT
