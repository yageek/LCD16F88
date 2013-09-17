    list p=16f88
    #include<p16f88.inc>

    global delay_top
    udata
delayCount res 1 ;delay variable

    code

delay_top
    movlw D'20'
    movwf delayCount
delay_1
    movlw D'100'
delay_2
    nop
    addlw -1
    btfss STATUS, Z
    goto delay_2
    decfsz delayCount,F
    goto delay_1
    return

    


    end



