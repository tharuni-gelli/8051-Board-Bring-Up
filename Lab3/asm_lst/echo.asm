ORG 0x4000 ; Start the program at address 0

; Define constants
UART_DATA equ 0x99   ; UART Data Register
UART_CTRL equ 0x98   ; UART Control Register

; Initialize the serial port for 9600 baud
MOV TMOD, #0x20      ; Timer 1, Mode 2 (8-bit auto-reload)
MOV TH1, #0xFD       ; Set the baud rate for 9600 baud (for 11.0592 MHz crystal)
SETB TR1             ; Start Timer 1
SETB TI              ; Set TI (Transmit Interrupt) to enable transmission


MAIN:
  ; Continuously transmit 'U'
  MOV A, #'U'        ; Load 'U' into the accumulator
  MOV SBUF, A        ; Send 'U' to UART Data Register
  HERE:
    JNB TI, HERE     ; Wait for TI to be set (transmission complete)
    CLR TI            ; Clear TI for the next transmission
	MOV A,SBUF
	CLR RI
    SJMP MAIN        ; Repeat the loop indefinitely
end