                        ; AVR Assembler for ATMEGA328P.
                        ; Turn on LEDs pin 11-18.
                        ; James Phillips, Feb 2019
.section .text
.global startAssemble   ; Make startAssemble externally available.

startAssemble:
  ldi r24, 0b00011111   ; Output HIGH to PB 0-4.
  sts 0x25, r24         ; Send pin list to PORTB mem. addr..
  sts 0x24, r24         ; Send pin list to DDRB mem. addr..

  ldi r24, 0b11100000   ; Output HIGH to PD 5-7.
  sts 0x2B, r24         ; Send pin list to PORTD mem. addr..
  sts 0x2A, r24         ; Send pin list to DDRD mem. addr..
  
endLoop:
  rjmp endLoop          ; Stop the program running into memory space.
