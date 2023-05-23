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
; Creaci�n de Clientes
clt1     BYTE    "Pablo",0
clt2     BYTE    "Diego",0
clt3     BYTE    "Juana",0
clt4     BYTE    "Elisa",0
clt5     BYTE    "Luisa",0
clt6     BYTE    "Celia",0
clt7     BYTE    "Rocio",0
clt8     BYTE    "Lidia",0
clt9     BYTE    "Maria",0
clt10    BYTE    "Dylan",0
clt11    BYTE    "Danna",0
clt12    BYTE    "Elian",0

; Creaci�n de Meses
mes1     BYTE    "Enero"        ,0
mes2     BYTE    "Febrero"      ,0
mes3     BYTE    "Marzo"        ,0
mes4     BYTE    "Abril"        ,0
mes5     BYTE    "Mayo"         ,0
mes6     BYTE    "Junio"        ,0
mes7     BYTE    "Julio"        ,0
mes8     BYTE    "Agosto"       ,0
mes9     BYTE    "Septiembre"   ,0
mes10    BYTE    "Octubre"      ,0
mes11    BYTE    "Noviembre"    ,0
mes12    BYTE    "Diciembre"    ,0

; Creaci�n de NITs
nit     DWORD   3126897, 9875796, 4597628, 3612548, 3612379, 9865731, 3645872, 6978546, 3210547, 2698756, 9867582, 3604879

; Creaci�n de Montos
mon     DWORD   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

; Creaci�n de IVA
iva     DWORD   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.code

public main
main proc


main endp
end