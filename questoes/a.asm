; (5 + 8) * 4

; Alocação de variáveis
x EQU 128
y EQU 129
soma EQU 130

; inicialização das variáveis:
LDI 5
STA x
LDI 8
STA y

; lógica principal
LDA x
ADD y
STA soma
ADD soma
ADD soma
ADD soma
STA soma
OUT 0 ; saída padrão
HLT
