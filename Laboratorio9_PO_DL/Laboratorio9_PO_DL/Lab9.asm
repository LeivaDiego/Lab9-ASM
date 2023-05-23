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

; Montos Anuales
montot  DWORD   0
x       DWORD   0

monfrm        BYTE    " Ingrese el Monto de la Factura %d: ",0
monscnfrm     BYTE    "%d",0

msg1      BYTE     "  Por ende, usted es Peque�o Contribuyente                                             ", 0Ah,0
msg2      BYTE     "  Por ende, usted debe actualizar estado a Mediano Contribuyente                       ", 0Ah,0
msg3      BYTE     "| A continuacion debera ingresar los montos correspondientes al presente anio |         ", 0Ah,0

msg4      BYTE     "  El monto generado anualmente por la empresa es de: %d                                                 ",0Ah,0
sepa      BYTE     "|-----------------------------------------------------------------------------|        ",0Ah,0
enc1      BYTE     "|                           FACTURAS SAT ANIO 2023                            |        ",0Ah,0
sep1      BYTE     "                                                                                       ",0Ah,0
enca      BYTE     "|  Nombre del Cliente  |  Mes Factura |    NIT   |    Monto   |      IVA      |        ",0Ah,0

msg_format BYTE    "| %-20s | %-12s | %-8d | %-10d | %-13d |", 0Ah, 0

.code

public main
main proc


main endp
end