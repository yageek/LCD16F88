    list p=16f88
    #include<p16f88.inc>
;******************
; Configuration
;******************

    __config _CONFIG1, _INTRC_IO & _WDT_OFF & _WDTE_ON & _PWRTE_OFF &_CPD_OFF & _DEBUG_OFF & _LVP_OFF
    __config _CONFIG2, _FCMEN_OFF & _IESO_OFF
;****************
; External labels
;****************

     extern global_init
     extern delay_top

;*************
; Main program
;**************
res_vect  CODE    H'000'
    goto main

MAIN_PROG CODE

main 
    call global_init
    banksel PORTA
    goto loop

loop
   

    clrf PORTA
    call delay_top

    movlw H'01'
    movwf PORTA

    call delay_top

    goto loop
    END
