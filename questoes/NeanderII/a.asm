;---------------------------------------------------
; Programa:A
; Autor:Marcus V
; Data:09/01/2022
;---------------------------------------------------
; Alocacao de variaveis
limite_inferior EQU 129
limite_superior EQU 130
entrada EQU 131

; inicializacao de variaveis
LDI 5
STA limite_inferior
LDI 12
STA limite_superior

; entrada de dados
IN 0
STA entrada

; logica do programa
LDA entrada
SUB limite_inferior
JZ IgualA5
JN Menor
JMP Verificacao

; se for menor que o limite inferior
Menor:
LDI 2
JMP Fim

IgualA5:
JMP Menor

Verificacao:
LDA limite_superior
SUB entrada
JN Menor          ; se for maior que 12, pula pro rótulo menor
JMP Intervalo


; se estiver no intervalo, exibe 1
Intervalo:
LDI 1
JMP Fim


Fim:
OUT 0
HLT
