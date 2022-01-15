---------------------------------------------------
;---------------------------------------------------
; Programa: C
; Autor: Marcus V
; Data: 09/01/22
;---------------------------------------------------
; Objetivo ir de 0 a 12 de 3 em 3 e exibir -> loop 

; Alocação de variáveis:
aExibir EQU 128  
passo EQU 129
limiteSuperior EQU 130


; Inicialização das variáveis:
LDI 0
STA aExibir
LDI 3
STA passo
LDI 12
STA limiteSuperior


; Algoritmo lógico
Repetir:
LDA aExibir
Out 0        ; exibe a variável aExibir
ADD passo    ; incrementa passo
STA aExibir  ; a exibir recebe o valor antigo + passo
SUB limiteSuperior
JNZ Repetir


; Fim do programa
LDA aExibir
OUT 0
HLT
