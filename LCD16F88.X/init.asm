list p=16f88
#include<p16f88.inc>

global global_init

    code
;*************
; Init global
;*************
global_init
    call init_portA
    return


;************
; Init PORTA
;************
init_portA
    banksel PORTA
    clrf PORTA

    banksel ANSEL
    movlw 0x000
    movwf ANSEL

    banksel TRISA
    clrf TRISA


    banksel PORTA
    movlw 0x01
    movwf PORTA
    return
end