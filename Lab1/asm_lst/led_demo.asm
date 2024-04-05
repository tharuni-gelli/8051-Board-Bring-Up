ORG 0000H //  start of program
      LJMP MAIN_CODE // long jump to main program

ORG 000BH	// start of interrupt service routine
	  LJMP ISR_TIMER //long jump to ISR code
	
MAIN_CODE: //start of main code
          MOV TMOD,#00000001B // initializing TMOD to timer 0 and 16bit
	      MOV A,#0x00 // accumalator as 0
          MOV P1,A // making port 1 as output port
LOOP:     ;CLR TF0 // Clear interupt overflow
          CLR TR0 // clear timer run bit
          MOV R3,#0X05 // load register 3 with R5
COUNTER:  MOV TH0,#0x00 // Load higher bit of timer 0 with 00 (for max count of FFH)
	      MOV TL0,#0x00 // Load lower bit of timer 0 with 00 (for max count of FFH)
	      SETB TR0		  // start the counter
BACK1:    JNB TF0, BACK1 // Loop here untill the count is completed
          CLR TR0 // clear the bit timer run
          CLR TF0  // Clear interupt overflow
		  DJNZ R3, COUNTER // decrement the register value and move to counter r3
	      MOV IE,#0x82 // enable the interupt enable register for timer 0
	   	  MOV TH0,#0xE8 // load timer 0 for remaining counts
	      MOV TL0,#0xB9 // load timer 0 for remaining counts
	      SETB TR0 // set timer run 0 bit
BACK2:    JNB TF0, BACK2 // loop here untill its completed (count value 5963)
;SJMP LOOP // (start of delay count)


ISR_TIMER: SETB P1.0 // set pin (toggle unused pin)
           CPL P1.1 // toggle led
		   CLR P1.0 // clear pin (toggle unused pin)
		   ;SETB TF0 // set bit of overflow timer 0
		   SJMP LOOP 
		   
		   ;RETI // return to next instruction of interupt end
 
END // end of program