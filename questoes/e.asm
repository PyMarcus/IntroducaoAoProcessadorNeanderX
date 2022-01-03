;  if entrada >= 8: 1 else: 2

;---------------------------------------------------
; Programa:A
; Autor:Marcus V
; Data:
;---------------------------------------------------


;  if entrada >= 8: 1 else: 2


; saídas possíveis
x EQU 128
y EQU 129
entrada EQU 130
comparar EQU 131

; declaracao da variavel
LDI 8
STA comparar

; entrada
IN 0
STA entrada

; logica de desvio
LDA entrada
SUB comparar
JN Menor


; entrada maior que 8
Maior:
LDI 1
JMP Fim

; entdada menor que 8
Menor:
LDI 2
JMP Fim

; Resultado:
Fim:
OUT 0
HLT
