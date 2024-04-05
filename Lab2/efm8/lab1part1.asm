ORG 0000h; start the program

CLR C ; clear the carry flag


MOV A, #0x40
MOV 20h, A
MOV 21h, A
MOV B, #0x80
MOV A,B ; if divisor is zero enter end loop 1 and add value to error address
JZ ENDLOOP1

MOV 22h, B

RLC A
JC ENDLOOP2 ; if the caluculation exceeds the 8bit enter the end loop 2 and add value to error address

RLC A
JC ENDLOOP2 ; if the caluculation exceeds the 8bit enter the end loop 2 and add value to error address



MOV B, A

MOV 23H, A ; move the updated value of y into its mentioned address

MOV A,20h ; loading the accumulator with the initial X value so that we can perform division


; to perform division
DIVISIONLOOP:
MOV R1,A ; update the value of R1 after each subtraction
SUBB A,B
JC DIVISIONDONE ; means the A is negative and carry bit get sets
INC R0
SJMP DIVISIONLOOP


DIVISIONDONE:
MOV 24h, R0 ; load quotient into that address
MOV 25h, R1 ; load reminder into that address
MOV 30h,#0x00

ENDLOOP:
SJMP ENDLOOP


ENDLOOP1:
MOV 30h,#0x02
SJMP ENDLOOP1

ENDLOOP2:
MOV 30h,#0x01
SJMP ENDLOOP2


END
