;
; Parte_A.asm
;
.include "m328pdef.inc" 
.org 0x0000
    rjmp inicio;
.org INT_VECTORS_SIZE
INICIO:
ldi r16,0x01
out DDRB,r16
start:
    call   delay1s
        sbi		PORTB,1    
        call   delay1s
        cbi     PORTB,1   
    rjmp start

	delay1s:
  ldi r18, 69
  ldi r19, 150
  ldi r20,128 
 L1: 
  dec r20
  brne L1
   dec r19
  brne L1
   dec r18
  brne L1
  ret
