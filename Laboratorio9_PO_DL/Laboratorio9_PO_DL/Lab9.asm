;-------------------------------------------------------------------------
; Universidad del Valle de Guatemala
; Jos� Pablo Orellana - 21970 || Diego Alberto Leiva - 21752
;
; Laboratorio 09 || Evaluador de R�gimen SAT
; Descripci�n: Llevar registro de 12 facturas, calcular pago de ISR
; y dependiendo el monto anual facturado, registrar peque�o contribuyente
; o mediano contribuyente.
;-------------------------------------------------------------------------

.386
.model flat, stdcall, c
.stack 4096

includelib libcmt.lib
includelib libvcruntime.lib
includelib libucrt.lib
includelib legacy_stdio_definitions.lib

.model flat, C

printf proto c : vararg
scanf  proto c : vararg

.data


.code

public main
main proc


main endp
end