;  [(Entrada + 2) * 3] - 7 

; alocar variáveis
w EQU 128 ; 2
x EQU 129 ; 3
y EQU 130 ; 7
z EQU 131 ; entrada
resultado EQU 132
; inicializar variáveis
LDI 2
STA w
LDI 3
STA x
LDI 7
STA y

; entrada
IN 0
STA z
; logica
LDA z
ADD w
STA resultado
ADD resultado
ADD resultado
SUB y
STA resultado
OUT 0
HLT
