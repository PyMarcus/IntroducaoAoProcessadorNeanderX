;---------------------------------------------------
; Programa: D
; Autor: Marcus V
; Data: 09/01/22
;---------------------------------------------------


; Alocação de variáveis:
mostrar EQU 128
passo EQU 129
limiteSuperior EQU 130



; Inicialização das variáveis:
LDI 0
STA mostrar
LDI 1
STA passo


; entrada de dados
IN 0
ADD passo
STA limiteSuperior


; Algoritmo lógico
Repetir:
LDA mostrar
Out 0         ; exibe a variável 
ADD passo     ; incrementa passo
STA mostrar   ; a exibir recebe o valor antigo + passo
SUB limiteSuperior
JN Repetir


; Fim do programa
OUT passo
HLT
