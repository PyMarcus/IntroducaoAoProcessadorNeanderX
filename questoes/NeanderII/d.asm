;---------------------------------------------------
; Programa: D
; Autor: Marcus V
; Data: 09/01/22
;---------------------------------------------------


; Alocação de variáveis:
aExibir EQU 128
passo EQU 129
limiteSuperior EQU 130



; Inicialização das variáveis:
LDI 0
STA aExibir
LDI 1
STA passo


; entrada de dados
IN 0
ADD passo
STA limiteSuperior


; Algoritmo lógico
Repetir:
LDA aExibir
Out 0        ; exibe a variável aExibir
ADD passo    ; incrementa passo
STA aExibir  ; a exibir recebe o valor antigo + passo
SUB limiteSuperior
JN Repetir


; Fim do programa
LDI 0
OUT 0
HLT
