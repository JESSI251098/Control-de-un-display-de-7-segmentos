PROCESSOR 16F887
    #include <xc.inc>
    ;JESSI DARISSEL GODINEZ PALMA 17080205 INGNIERIA MECATRONICA
    ;CODIGO PRACTICA 3;    FECHA:04 DE OCT     HORA:DE 11:42 AM A 8:43PM
    ;MATERIA MICROCONTROLADORES 
    ;CORREO:imct17.jgodinezp@itesco.edu.mx
    
    ;CONFIGURACION DE FUSES
    CONFIG FOSC=INTRC_NOCLKOUT
    CONFIG WDTE=OFF
    CONFIG PWRTE=ON
    CONFIG MCLRE=OFF
    CONFIG CP=OFF
    CONFIG CPD=OFF
    CONFIG BOREN=OFF
    CONFIG IESO=OFF
    CONFIG FCMEN=OFF
    CONFIG LVP=OFF
    CONFIG DEBUG=ON
    CONFIG BOR4V=BOR40V
    CONFIG WRT=OFF
    
    PSECT udata
 mul:
    DS 1
    
PSECT resetVec,class=CODE,delta=2
    resetVect:
	PAGESEL main
	goto main
	
PSECT code
 jess1:
    movwf 0b0110000
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
 jess2:
    movwf 0b1101101
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
jess3:
    movwf 0b1111001
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
jess4:
    movwf 0b0110011
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
 jess5:
    movwf 0b1011011
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
 jess6:
    movwf 0b1011111
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
jess7:
    movwf 0b1110000
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
jess8:
    movwf 0b1111111
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
jess9:
    movwf 0b1111011
    BANKSEL PORTB
    movwf PORTB
    PAGESEL main
    return
    
dar:
    MOVLW   1		
    MOVWF   0x20
su:
    incfsz  0x20,f		
    GOTO    su
su2:
    INCfsz  0x20,f		
    GOTO    su2
     RETURN
    PSECT code
 main:
    BANKSEL PORTA
    BANKSEL TRISA
    clrf TRISA
    godi:
    PAGESEL jess1
    call jess1
    call dar
    call jess2
    call dar
    call jess3
    call dar
    call jess4
    call dar
    call jess5
    call dar
    call jess6
    call dar
    call jess7
    call dar
    call jess8
    call dar
    call jess9
    goto godi
    nop
    END


