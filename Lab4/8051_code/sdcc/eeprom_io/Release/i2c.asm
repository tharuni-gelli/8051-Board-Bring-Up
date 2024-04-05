;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _getchar
	.globl _putchar
	.globl _delay_us
	.globl _powf
	.globl _printf_tiny
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _i2c_init
	.globl _i2c_start
	.globl _i2c_stop
	.globl _i2c_ACK
	.globl _i2c_NoAck
	.globl _i2c_Restart
	.globl _eereset
	.globl _i2c_Write_Byte
	.globl _i2c_Read_Byte
	.globl _i2c_EEPROM_Write
	.globl _i2c_EEPROM_Read
	.globl _hex_addresses
	.globl _hex_data
	.globl _hex_dump
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_i2c_EEPROM_Write_sloc0_1_0:
	.ds 4
_i2c_EEPROM_Write_sloc1_1_0:
	.ds 4
_i2c_EEPROM_Read_sloc0_1_0:
	.ds 4
_hex_addresses_sloc0_1_0:
	.ds 4
_hex_dump_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_i2c_Write_Byte_byte_65536_115:
	.ds 1
_i2c_Read_Byte_buff_65536_120:
	.ds 1
_i2c_EEPROM_Write_flag_65536_123:
	.ds 1
_i2c_EEPROM_Write_flag1_65536_123:
	.ds 1
_i2c_EEPROM_Write_address_65536_123:
	.ds 2
_i2c_EEPROM_Write_get_address_65536_123:
	.ds 3
_i2c_EEPROM_Write_get_address_int_65536_123:
	.ds 6
_i2c_EEPROM_Write_data_65536_123:
	.ds 2
_i2c_EEPROM_Write_get_data_65536_123:
	.ds 2
_i2c_EEPROM_Write_get_data_int_65536_123:
	.ds 4
_i2c_EEPROM_Read_flag_65536_162:
	.ds 1
_i2c_EEPROM_Read_address_65536_162:
	.ds 2
_i2c_EEPROM_Read_get_address_65536_162:
	.ds 3
_i2c_EEPROM_Read_get_address_int_65536_162:
	.ds 6
_hex_addresses_flag_65536_183:
	.ds 2
_hex_addresses_address_65536_183:
	.ds 2
_hex_addresses_get_address_65536_183:
	.ds 3
_hex_addresses_get_address_int_65536_183:
	.ds 6
_hex_data_rec_addr_65536_204:
	.ds 2
_hex_dump_count_65536_206:
	.ds 2
_hex_dump_flag_65536_206:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_init'
;------------------------------------------------------------
;	i2c.c:12: void i2c_init()
;	-----------------------------------------
;	 function i2c_init
;	-----------------------------------------
_i2c_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c.c:14: sda=1;
;	assignBit
	setb	_P1_4
;	i2c.c:15: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	i2c.c:21: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	i2c.c:23: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:24: sda=1;
;	assignBit
	setb	_P1_4
;	i2c.c:25: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
	lcall	_delay_us
;	i2c.c:26: sda=0;
;	assignBit
	clr	_P1_4
;	i2c.c:27: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
;	i2c.c:28: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	i2c.c:33: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	i2c.c:35: scl=0;
;	assignBit
	clr	_P1_3
;	i2c.c:36: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:37: sda=0;
;	assignBit
	clr	_P1_4
;	i2c.c:38: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:39: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:40: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:41: sda=1;
;	assignBit
	setb	_P1_4
;	i2c.c:42: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
;	i2c.c:43: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_ACK'
;------------------------------------------------------------
;	i2c.c:48: void i2c_ACK(void)
;	-----------------------------------------
;	 function i2c_ACK
;	-----------------------------------------
_i2c_ACK:
;	i2c.c:50: scl=0;
;	assignBit
	clr	_P1_3
;	i2c.c:51: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:52: sda=0;
;	assignBit
	clr	_P1_4
;	i2c.c:53: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:54: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:55: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
;	i2c.c:56: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_NoAck'
;------------------------------------------------------------
;	i2c.c:61: void i2c_NoAck(void)
;	-----------------------------------------
;	 function i2c_NoAck
;	-----------------------------------------
_i2c_NoAck:
;	i2c.c:63: scl=0;
;	assignBit
	clr	_P1_3
;	i2c.c:64: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:65: sda=1;
;	assignBit
	setb	_P1_4
;	i2c.c:66: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:67: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:68: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
;	i2c.c:69: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_Restart'
;------------------------------------------------------------
;	i2c.c:74: void i2c_Restart()
;	-----------------------------------------
;	 function i2c_Restart
;	-----------------------------------------
_i2c_Restart:
;	i2c.c:76: scl=0;
;	assignBit
	clr	_P1_3
;	i2c.c:77: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:78: sda=1;
;	assignBit
	setb	_P1_4
;	i2c.c:79: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:80: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:81: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
;	i2c.c:82: sda=0;
;	assignBit
	clr	_P1_4
;	i2c.c:83: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
;	i2c.c:84: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'eereset'
;------------------------------------------------------------
;i                         Allocated with name '_eereset_i_65536_112'
;------------------------------------------------------------
;	i2c.c:89: void eereset()
;	-----------------------------------------
;	 function eereset
;	-----------------------------------------
_eereset:
;	i2c.c:92: i2c_start();
	lcall	_i2c_start
;	i2c.c:93: for(i=0;i<9;i++)
	mov	r7,#0x00
00102$:
;	i2c.c:95: sda=1;
;	assignBit
	setb	_P1_4
;	i2c.c:96: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:97: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
	push	ar7
	lcall	_delay_us
;	i2c.c:98: scl=0;
;	assignBit
	clr	_P1_3
;	i2c.c:99: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
	lcall	_delay_us
	pop	ar7
;	i2c.c:93: for(i=0;i<9;i++)
	inc	r7
	cjne	r7,#0x09,00115$
00115$:
	jc	00102$
;	i2c.c:101: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:102: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
	lcall	_delay_us
;	i2c.c:103: i2c_start();
	lcall	_i2c_start
;	i2c.c:104: i2c_stop();
;	i2c.c:105: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_Write_Byte'
;------------------------------------------------------------
;byte                      Allocated with name '_i2c_Write_Byte_byte_65536_115'
;i                         Allocated with name '_i2c_Write_Byte_i_65536_116'
;------------------------------------------------------------
;	i2c.c:111: int i2c_Write_Byte(uint8_t byte)
;	-----------------------------------------
;	 function i2c_Write_Byte
;	-----------------------------------------
_i2c_Write_Byte:
	mov	a,dpl
	mov	dptr,#_i2c_Write_Byte_byte_65536_115
	movx	@dptr,a
;	i2c.c:114: for(i=0;i<8;i++)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
00105$:
;	i2c.c:116: scl=0;
;	assignBit
	clr	_P1_3
;	i2c.c:117: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	i2c.c:118: if((byte<<i)&0x80)  // Place data bit value on SDA pin
	mov	ar4,r7
	mov	r5,#0x00
	mov	b,r6
	inc	b
	sjmp	00123$
00122$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00123$:
	djnz	b,00122$
	mov	a,r4
	jnb	acc.7,00102$
;	i2c.c:119: sda=1;	// If bit is high, make SDA high
;	assignBit
	setb	_P1_4
	sjmp	00103$
00102$:
;	i2c.c:121: sda=0;	// If bit is low, make SDA low
;	assignBit
	clr	_P1_4
00103$:
;	i2c.c:122: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	push	ar7
	push	ar6
	lcall	_delay_us
;	i2c.c:123: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:124: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	i2c.c:114: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00125$
00125$:
	jc	00105$
;	i2c.c:126: scl=0;
;	assignBit
	clr	_P1_3
;	i2c.c:127: sda=1;
;	assignBit
	setb	_P1_4
;	i2c.c:128: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
	lcall	_delay_us
;	i2c.c:129: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:130: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
	lcall	_delay_us
;	i2c.c:131: return sda;
	mov	c,_P1_4
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	i2c.c:132: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_Read_Byte'
;------------------------------------------------------------
;i                         Allocated with name '_i2c_Read_Byte_i_65536_120'
;d                         Allocated with name '_i2c_Read_Byte_d_65536_120'
;buff                      Allocated with name '_i2c_Read_Byte_buff_65536_120'
;------------------------------------------------------------
;	i2c.c:138: uint8_t i2c_Read_Byte(void)
;	-----------------------------------------
;	 function i2c_Read_Byte
;	-----------------------------------------
_i2c_Read_Byte:
;	i2c.c:140: uint8_t i,d,buff=0;
	mov	dptr,#_i2c_Read_Byte_buff_65536_120
	clr	a
	movx	@dptr,a
;	i2c.c:141: for(i=0;i<8;i++)
	mov	r7,#0x00
00102$:
;	i2c.c:143: scl=0;
;	assignBit
	clr	_P1_3
;	i2c.c:144: sda=1;
;	assignBit
	setb	_P1_4
;	i2c.c:145: delay_us(Half_Bit_Delay);
	mov	dptr,#0x01f4
	push	ar7
	lcall	_delay_us
;	i2c.c:146: scl=1;
;	assignBit
	setb	_P1_3
;	i2c.c:147: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	lcall	_delay_us
	pop	ar7
;	i2c.c:148: d=sda;
	mov	c,_P1_4
;	i2c.c:149: buff |=(sda<<(7-i));
	mov	c,_P1_4
	clr	a
	rlc	a
	mov	r6,a
	mov	ar5,r7
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,r6
	sjmp	00117$
00115$:
	add	a,acc
00117$:
	djnz	b,00115$
	mov	r5,a
	mov	dptr,#_i2c_Read_Byte_buff_65536_120
	movx	a,@dptr
	orl	a,r5
	movx	@dptr,a
;	i2c.c:150: delay_us(Half_Bit_Delay/2);
	mov	dptr,#0x00fa
	push	ar7
	lcall	_delay_us
	pop	ar7
;	i2c.c:141: for(i=0;i<8;i++)
	inc	r7
	cjne	r7,#0x08,00118$
00118$:
	jc	00102$
;	i2c.c:152: return buff;
	mov	dptr,#_i2c_Read_Byte_buff_65536_120
	movx	a,@dptr
;	i2c.c:153: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_EEPROM_Write'
;------------------------------------------------------------
;sloc0                     Allocated with name '_i2c_EEPROM_Write_sloc0_1_0'
;sloc1                     Allocated with name '_i2c_EEPROM_Write_sloc1_1_0'
;flag                      Allocated with name '_i2c_EEPROM_Write_flag_65536_123'
;flag1                     Allocated with name '_i2c_EEPROM_Write_flag1_65536_123'
;address                   Allocated with name '_i2c_EEPROM_Write_address_65536_123'
;get_address               Allocated with name '_i2c_EEPROM_Write_get_address_65536_123'
;get_address_int           Allocated with name '_i2c_EEPROM_Write_get_address_int_65536_123'
;data                      Allocated with name '_i2c_EEPROM_Write_data_65536_123'
;get_data                  Allocated with name '_i2c_EEPROM_Write_get_data_65536_123'
;get_data_int              Allocated with name '_i2c_EEPROM_Write_get_data_int_65536_123'
;control_byte              Allocated with name '_i2c_EEPROM_Write_control_byte_65536_123'
;address_byte              Allocated with name '_i2c_EEPROM_Write_address_byte_65536_123'
;i                         Allocated with name '_i2c_EEPROM_Write_i_65536_123'
;------------------------------------------------------------
;	i2c.c:159: void i2c_EEPROM_Write()
;	-----------------------------------------
;	 function i2c_EEPROM_Write
;	-----------------------------------------
_i2c_EEPROM_Write:
;	i2c.c:161: uint8_t flag=1;
	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:162: uint8_t flag1=1;
	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
	movx	@dptr,a
;	i2c.c:163: uint16_t address=0;//to store the address from the user in a single integer form
	mov	dptr,#_i2c_EEPROM_Write_address_65536_123
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	i2c.c:166: uint16_t data=0;
	mov	dptr,#_i2c_EEPROM_Write_data_65536_123
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	i2c.c:174: while(flag)
00150$:
	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
	movx	a,@dptr
	jnz	00458$
	ljmp	00245$
00458$:
;	i2c.c:176: flag=0;
	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
	clr	a
	movx	@dptr,a
;	i2c.c:177: printf_tiny("\n\rEnter the address between 0x00-0x7ff\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	i2c.c:178: for(i=0;i<3;i++)
	mov	r7,#0x00
00202$:
;	i2c.c:180: get_address[i]=getchar();
	mov	a,r7
	add	a,#_i2c_EEPROM_Write_get_address_65536_123
	mov	r5,a
	clr	a
	addc	a,#(_i2c_EEPROM_Write_get_address_65536_123 >> 8)
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_getchar
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
;	i2c.c:181: putchar(get_address[i]);
	mov	r6,#0x00
	mov	dpl,r3
	mov	dph,r6
	lcall	_putchar
	pop	ar7
;	i2c.c:178: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00459$
00459$:
	jc	00202$
;	i2c.c:184: for(i=0;i<3;i++)
	mov	r7,#0x00
00204$:
;	i2c.c:186: switch(i)
	cjne	r7,#0x00,00461$
	sjmp	00102$
00461$:
	cjne	r7,#0x01,00462$
	sjmp	00107$
00462$:
	cjne	r7,#0x02,00463$
	ljmp	00127$
00463$:
	ljmp	00205$
;	i2c.c:188: case 0:
00102$:
;	i2c.c:189: if((get_address[i]>=48) && (get_address[i]<=55))
	mov	a,r7
	add	a,#_i2c_EEPROM_Write_get_address_65536_123
	mov	dpl,a
	clr	a
	addc	a,#(_i2c_EEPROM_Write_get_address_65536_123 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,00464$
00464$:
	jc	00104$
	mov	a,r6
	add	a,#0xff - 0x37
	jc	00104$
;	i2c.c:191: get_address_int[i]= get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00205$
00104$:
;	i2c.c:195: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:196: flag=1;
	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:198: break;
	ljmp	00205$
;	i2c.c:200: case 1:
00107$:
;	i2c.c:201: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
	mov	a,r7
	add	a,#_i2c_EEPROM_Write_get_address_65536_123
	mov	r5,a
	clr	a
	addc	a,#(_i2c_EEPROM_Write_get_address_65536_123 >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00467$
00467$:
	jc	00124$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00119$
00124$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00470$
00470$:
	jc	00126$
	mov	a,r4
	add	a,#0xff - 0x46
	jnc	00119$
00126$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00473$
00473$:
	jnc	00474$
	ljmp	00120$
00474$:
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00475$
	ljmp	00120$
00475$:
00119$:
;	i2c.c:203: if((get_address[i]>=48) && (get_address[i]<=57))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00476$
00476$:
	jc	00116$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00116$
;	i2c.c:205: get_address_int[i]=get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00205$
00116$:
;	i2c.c:207: else if((get_address[i]>=65) && (get_address[i]<=70))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00479$
00479$:
	jc	00112$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00112$
;	i2c.c:209: get_address_int[i]=get_address[i]-55;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xc9
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00205$
00112$:
;	i2c.c:211: else if((get_address[i]>=97) && (get_address[i]<=102))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x61,00482$
00482$:
	jnc	00483$
	ljmp	00205$
00483$:
	mov	a,r6
	add	a,#0xff - 0x66
	jnc	00484$
	ljmp	00205$
00484$:
;	i2c.c:213: get_address_int[i]=get_address[i]-87;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xa9
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00205$
00120$:
;	i2c.c:218: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:219: flag=1;
	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:221: break;
	ljmp	00205$
;	i2c.c:223: case 2:
00127$:
;	i2c.c:224: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
	mov	a,r7
	add	a,#_i2c_EEPROM_Write_get_address_65536_123
	mov	r5,a
	clr	a
	addc	a,#(_i2c_EEPROM_Write_get_address_65536_123 >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00485$
00485$:
	jc	00144$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00139$
00144$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00488$
00488$:
	jc	00146$
	mov	a,r4
	add	a,#0xff - 0x46
	jnc	00139$
00146$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00491$
00491$:
	jnc	00492$
	ljmp	00140$
00492$:
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00493$
	ljmp	00140$
00493$:
00139$:
;	i2c.c:226: if((get_address[i]>=48) && (get_address[i]<=57))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00494$
00494$:
	jc	00136$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00136$
;	i2c.c:228: get_address_int[i]=get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00205$
00136$:
;	i2c.c:230: else if((get_address[i]>=65) && (get_address[i]<=70))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00497$
00497$:
	jc	00132$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00132$
;	i2c.c:232: get_address_int[i]=get_address[i]-55;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xc9
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00205$
00132$:
;	i2c.c:234: else if((get_address[i]>=97) && (get_address[i]<=102))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x61,00500$
00500$:
	jc	00205$
	mov	a,r6
	add	a,#0xff - 0x66
	jc	00205$
;	i2c.c:236: get_address_int[i]=get_address[i]-87;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xa9
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00205$
00140$:
;	i2c.c:241: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:242: flag=1;
	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:247: }
00205$:
;	i2c.c:184: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00503$
00503$:
	jnc	00504$
	ljmp	00204$
00504$:
	ljmp	00150$
;	i2c.c:252: for(i=0;i<3;i++)
00245$:
	mov	r7,#0x00
00206$:
;	i2c.c:254: address = address+((get_address_int[i])*powf(16,2-i));
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x02
	clr	c
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	___sint2fs
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	dptr,#_powf_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x41
	lcall	_powf
	mov	_i2c_EEPROM_Write_sloc0_1_0,dpl
	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 1),dph
	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 2),b
	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	lcall	___uint2fs
	mov	r0,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	push	_i2c_EEPROM_Write_sloc0_1_0
	push	(_i2c_EEPROM_Write_sloc0_1_0 + 1)
	push	(_i2c_EEPROM_Write_sloc0_1_0 + 2)
	push	(_i2c_EEPROM_Write_sloc0_1_0 + 3)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsmul
	mov	_i2c_EEPROM_Write_sloc0_1_0,dpl
	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 1),dph
	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 2),b
	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_i2c_EEPROM_Write_address_65536_123
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r6,a
	push	_i2c_EEPROM_Write_sloc0_1_0
	push	(_i2c_EEPROM_Write_sloc0_1_0 + 1)
	push	(_i2c_EEPROM_Write_sloc0_1_0 + 2)
	push	(_i2c_EEPROM_Write_sloc0_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fs2uint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	mov	dptr,#_i2c_EEPROM_Write_address_65536_123
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	i2c.c:252: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00505$
00505$:
	jnc	00506$
	ljmp	00206$
00506$:
;	i2c.c:258: control_byte = ((0xA0)|(address >> 7)&(0xfe));
	mov	dptr,#_i2c_EEPROM_Write_address_65536_123
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	r5,a
	mov	a,#0xfe
	anl	a,r4
	orl	a,#0xa0
	mov	_i2c_EEPROM_Write_sloc0_1_0,a
;	i2c.c:261: address_byte = (uint8_t)address;
;	i2c.c:264: while(flag1)
00198$:
	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
	movx	a,@dptr
	jnz	00507$
	ljmp	00273$
00507$:
;	i2c.c:266: flag1=0;
	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
	clr	a
	movx	@dptr,a
;	i2c.c:267: printf_tiny("\n\rEnter the data you want to write(*Note:DATA SHOULD BE BETWEEN 0x00 and 0xFF)\n\r");
	push	ar6
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	i2c.c:269: for(i=0;i<2;i++)
	mov	r7,#0x00
00208$:
;	i2c.c:271: get_data[i]=getchar();
	mov	a,r7
	add	a,#_i2c_EEPROM_Write_get_data_65536_123
	mov	r3,a
	clr	a
	addc	a,#(_i2c_EEPROM_Write_get_data_65536_123 >> 8)
	mov	r4,a
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_getchar
	mov	r1,dpl
	pop	ar3
	pop	ar4
	mov	dpl,r3
	mov	dph,r4
	mov	a,r1
	movx	@dptr,a
;	i2c.c:272: putchar(get_data[i]);
	mov	r4,#0x00
	mov	dpl,r1
	mov	dph,r4
	lcall	_putchar
	pop	ar6
	pop	ar7
;	i2c.c:269: for(i=0;i<2;i++)
	inc	r7
	cjne	r7,#0x02,00508$
00508$:
	jc	00208$
;	i2c.c:275: for(i=0;i<2;i++)
	mov	r7,#0x00
00210$:
;	i2c.c:277: switch(i)
	cjne	r7,#0x00,00510$
	sjmp	00155$
00510$:
	cjne	r7,#0x01,00511$
	ljmp	00175$
00511$:
	ljmp	00211$
;	i2c.c:279: case 0:
00155$:
;	i2c.c:280: if(((get_data[i]>='0') && (get_data[i]<='9')) ||  ((get_data[i]>='A') && (get_data[i]<='F')) || ((get_data[i]>='a') && (get_data[i]<='f')))
	mov	a,r7
	add	a,#_i2c_EEPROM_Write_get_data_65536_123
	mov	r3,a
	clr	a
	addc	a,#(_i2c_EEPROM_Write_get_data_65536_123 >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x30,00512$
00512$:
	jc	00172$
	mov	a,r2
	add	a,#0xff - 0x39
	jnc	00167$
00172$:
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x41,00515$
00515$:
	jc	00174$
	mov	a,r2
	add	a,#0xff - 0x46
	jnc	00167$
00174$:
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x61,00518$
00518$:
	jnc	00519$
	ljmp	00168$
00519$:
	mov	a,r2
	add	a,#0xff - 0x66
	jnc	00520$
	ljmp	00168$
00520$:
00167$:
;	i2c.c:282: if((get_data[i]>=48) && (get_data[i]<=57))
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x30,00521$
00521$:
	jc	00164$
	mov	a,r2
	add	a,#0xff - 0x39
	jc	00164$
;	i2c.c:284: get_data_int[i]=get_data[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	ar1,r2
	mov	r2,#0x00
	mov	a,r1
	add	a,#0xd0
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00211$
00164$:
;	i2c.c:286: else if((get_data[i]>=65) && (get_data[i]<=70))
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x41,00524$
00524$:
	jc	00160$
	mov	a,r2
	add	a,#0xff - 0x46
	jc	00160$
;	i2c.c:288: get_data_int[i]=get_data[i]-55;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	ar1,r2
	mov	r2,#0x00
	mov	a,r1
	add	a,#0xc9
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00211$
00160$:
;	i2c.c:290: else if((get_data[i]>=97) && (get_data[i]<=102))
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00527$
00527$:
	jnc	00528$
	ljmp	00211$
00528$:
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00529$
	ljmp	00211$
00529$:
;	i2c.c:292: get_data_int[i]=get_data[i]-87;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xa9
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00211$
00168$:
;	i2c.c:297: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	i2c.c:298: flag1=1;
	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:300: break;
	ljmp	00211$
;	i2c.c:302: case 1:
00175$:
;	i2c.c:303: if(((get_data[i]>='0') && (get_data[i]<='9')) ||  ((get_data[i]>='A') && (get_data[i]<='F')) || ((get_data[i]>='a') && (get_data[i]<='f')))
	mov	a,r7
	add	a,#_i2c_EEPROM_Write_get_data_65536_123
	mov	r3,a
	clr	a
	addc	a,#(_i2c_EEPROM_Write_get_data_65536_123 >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x30,00530$
00530$:
	jc	00192$
	mov	a,r2
	add	a,#0xff - 0x39
	jnc	00187$
00192$:
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x41,00533$
00533$:
	jc	00194$
	mov	a,r2
	add	a,#0xff - 0x46
	jnc	00187$
00194$:
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x61,00536$
00536$:
	jnc	00537$
	ljmp	00188$
00537$:
	mov	a,r2
	add	a,#0xff - 0x66
	jnc	00538$
	ljmp	00188$
00538$:
00187$:
;	i2c.c:305: if((get_data[i]>=48) && (get_data[i]<=57))
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x30,00539$
00539$:
	jc	00184$
	mov	a,r2
	add	a,#0xff - 0x39
	jc	00184$
;	i2c.c:307: get_data_int[i]=get_data[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	ar1,r2
	mov	r2,#0x00
	mov	a,r1
	add	a,#0xd0
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00211$
00184$:
;	i2c.c:309: else if((get_data[i]>=65) && (get_data[i]<=70))
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x41,00542$
00542$:
	jc	00180$
	mov	a,r2
	add	a,#0xff - 0x46
	jc	00180$
;	i2c.c:311: get_data_int[i]=get_data[i]-55;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	ar1,r2
	mov	r2,#0x00
	mov	a,r1
	add	a,#0xc9
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	sjmp	00211$
00180$:
;	i2c.c:313: else if((get_data[i]>=97) && (get_data[i]<=102))
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00545$
00545$:
	jc	00211$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00211$
;	i2c.c:315: get_data_int[i]=get_data[i]-87;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xa9
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00211$
00188$:
;	i2c.c:320: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	i2c.c:321: flag1=1;
	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:326: }
00211$:
;	i2c.c:275: for(i=0;i<2;i++)
	inc	r7
	cjne	r7,#0x02,00548$
00548$:
	jnc	00549$
	ljmp	00210$
00549$:
	ljmp	00198$
;	i2c.c:331: for(i=0;i<2;i++)
00273$:
	mov	r7,#0x00
00212$:
;	i2c.c:333: data = data +((get_data_int[i])*powf(16,1-i));
	push	ar6
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar1,r7
	mov	r2,#0x00
	mov	a,#0x01
	clr	c
	subb	a,r1
	mov	r1,a
	clr	a
	subb	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar4
	push	ar3
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r6,a
	pop	ar3
	pop	ar4
	mov	dptr,#_powf_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x41
	push	ar6
	push	ar4
	push	ar3
	lcall	_powf
	mov	_i2c_EEPROM_Write_sloc1_1_0,dpl
	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 1),dph
	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 2),b
	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 3),a
	pop	ar3
	pop	ar4
	pop	ar6
	mov	dpl,r3
	mov	dph,r4
	lcall	___uint2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	push	ar6
	push	_i2c_EEPROM_Write_sloc1_1_0
	push	(_i2c_EEPROM_Write_sloc1_1_0 + 1)
	push	(_i2c_EEPROM_Write_sloc1_1_0 + 2)
	push	(_i2c_EEPROM_Write_sloc1_1_0 + 3)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsmul
	mov	_i2c_EEPROM_Write_sloc1_1_0,dpl
	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 1),dph
	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 2),b
	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	mov	dptr,#_i2c_EEPROM_Write_data_65536_123
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r6,a
	push	_i2c_EEPROM_Write_sloc1_1_0
	push	(_i2c_EEPROM_Write_sloc1_1_0 + 1)
	push	(_i2c_EEPROM_Write_sloc1_1_0 + 2)
	push	(_i2c_EEPROM_Write_sloc1_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar6
	lcall	___fs2uint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_i2c_EEPROM_Write_data_65536_123
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	i2c.c:331: for(i=0;i<2;i++)
	inc	r7
	cjne	r7,#0x02,00550$
00550$:
	pop	ar6
	jnc	00551$
	ljmp	00212$
00551$:
;	i2c.c:336: i2c_start();            // 1. Master issues START condition
	push	ar6
	lcall	_i2c_start
;	i2c.c:337: i2c_Write_Byte(control_byte);
	mov	dpl,_i2c_EEPROM_Write_sloc0_1_0
	lcall	_i2c_Write_Byte
	pop	ar6
;	i2c.c:338: i2c_Write_Byte(address_byte); // 4. Master sends memory address
	mov	dpl,r6
	lcall	_i2c_Write_Byte
;	i2c.c:339: i2c_Write_Byte(data);        // 6. Master sends data to be written to memory
	mov	dptr,#_i2c_EEPROM_Write_data_65536_123
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	lcall	_i2c_Write_Byte
;	i2c.c:340: i2c_stop();             // 8. Master issues STOP condition
;	i2c.c:341: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_EEPROM_Read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_i2c_EEPROM_Read_sloc0_1_0'
;flag                      Allocated with name '_i2c_EEPROM_Read_flag_65536_162'
;address                   Allocated with name '_i2c_EEPROM_Read_address_65536_162'
;byte_received             Allocated with name '_i2c_EEPROM_Read_byte_received_65536_162'
;get_address               Allocated with name '_i2c_EEPROM_Read_get_address_65536_162'
;get_address_int           Allocated with name '_i2c_EEPROM_Read_get_address_int_65536_162'
;i                         Allocated with name '_i2c_EEPROM_Read_i_65536_162'
;control_byte              Allocated with name '_i2c_EEPROM_Read_control_byte_65536_162'
;address_byte              Allocated with name '_i2c_EEPROM_Read_address_byte_65536_162'
;write_readbyte            Allocated with name '_i2c_EEPROM_Read_write_readbyte_65536_162'
;------------------------------------------------------------
;	i2c.c:348: void i2c_EEPROM_Read()
;	-----------------------------------------
;	 function i2c_EEPROM_Read
;	-----------------------------------------
_i2c_EEPROM_Read:
;	i2c.c:350: uint8_t flag=1;
	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:351: uint16_t address=0;
	mov	dptr,#_i2c_EEPROM_Read_address_65536_162
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	i2c.c:361: while(flag)
00150$:
	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
	movx	a,@dptr
	jnz	00289$
	ljmp	00191$
00289$:
;	i2c.c:363: flag=0;
	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
	clr	a
	movx	@dptr,a
;	i2c.c:364: printf_tiny("\n\rEnter the address between 0x00-0x7ff\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	i2c.c:365: for(i=0;i<3;i++)
	mov	r7,#0x00
00154$:
;	i2c.c:367: get_address[i]=getchar();
	mov	a,r7
	add	a,#_i2c_EEPROM_Read_get_address_65536_162
	mov	r5,a
	clr	a
	addc	a,#(_i2c_EEPROM_Read_get_address_65536_162 >> 8)
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_getchar
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
;	i2c.c:368: putchar(get_address[i]);
	mov	r6,#0x00
	mov	dpl,r3
	mov	dph,r6
	lcall	_putchar
	pop	ar7
;	i2c.c:365: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00290$
00290$:
	jc	00154$
;	i2c.c:371: for(i=0;i<3;i++)
	mov	r7,#0x00
00156$:
;	i2c.c:373: switch(i)
	cjne	r7,#0x00,00292$
	sjmp	00102$
00292$:
	cjne	r7,#0x01,00293$
	sjmp	00107$
00293$:
	cjne	r7,#0x02,00294$
	ljmp	00127$
00294$:
	ljmp	00157$
;	i2c.c:375: case 0:
00102$:
;	i2c.c:376: if((get_address[i]>=48) && (get_address[i]<=55))
	mov	a,r7
	add	a,#_i2c_EEPROM_Read_get_address_65536_162
	mov	dpl,a
	clr	a
	addc	a,#(_i2c_EEPROM_Read_get_address_65536_162 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,00295$
00295$:
	jc	00104$
	mov	a,r6
	add	a,#0xff - 0x37
	jc	00104$
;	i2c.c:378: get_address_int[i]= get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00104$:
;	i2c.c:382: printf_tiny("\n\rInvalid Input! Please enter again\n\r");
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:383: flag=1;
	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:385: break;
	ljmp	00157$
;	i2c.c:387: case 1:
00107$:
;	i2c.c:388: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
	mov	a,r7
	add	a,#_i2c_EEPROM_Read_get_address_65536_162
	mov	r5,a
	clr	a
	addc	a,#(_i2c_EEPROM_Read_get_address_65536_162 >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00298$
00298$:
	jc	00124$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00119$
00124$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00301$
00301$:
	jc	00126$
	mov	a,r4
	add	a,#0xff - 0x46
	jnc	00119$
00126$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00304$
00304$:
	jnc	00305$
	ljmp	00120$
00305$:
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00306$
	ljmp	00120$
00306$:
00119$:
;	i2c.c:390: if((get_address[i]>=48) && (get_address[i]<=57))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00307$
00307$:
	jc	00116$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00116$
;	i2c.c:392: get_address_int[i]=get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00116$:
;	i2c.c:394: else if((get_address[i]>=65) && (get_address[i]<=70))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00310$
00310$:
	jc	00112$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00112$
;	i2c.c:396: get_address_int[i]=get_address[i]-55;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xc9
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00112$:
;	i2c.c:398: else if((get_address[i]>=97) && (get_address[i]<=102))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x61,00313$
00313$:
	jnc	00314$
	ljmp	00157$
00314$:
	mov	a,r6
	add	a,#0xff - 0x66
	jnc	00315$
	ljmp	00157$
00315$:
;	i2c.c:400: get_address_int[i]=get_address[i]-87;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xa9
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00120$:
;	i2c.c:405: printf_tiny("\n\rInvalid Input! Please enter again\n\r");
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:406: flag=1;
	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:408: break;
	ljmp	00157$
;	i2c.c:410: case 2:
00127$:
;	i2c.c:411: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
	mov	a,r7
	add	a,#_i2c_EEPROM_Read_get_address_65536_162
	mov	r5,a
	clr	a
	addc	a,#(_i2c_EEPROM_Read_get_address_65536_162 >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00316$
00316$:
	jc	00144$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00139$
00144$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00319$
00319$:
	jc	00146$
	mov	a,r4
	add	a,#0xff - 0x46
	jnc	00139$
00146$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00322$
00322$:
	jnc	00323$
	ljmp	00140$
00323$:
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00324$
	ljmp	00140$
00324$:
00139$:
;	i2c.c:413: if((get_address[i]>=48) && (get_address[i]<=57))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00325$
00325$:
	jc	00136$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00136$
;	i2c.c:415: get_address_int[i]=get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00157$
00136$:
;	i2c.c:417: else if((get_address[i]>=65) && (get_address[i]<=70))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00328$
00328$:
	jc	00132$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00132$
;	i2c.c:419: get_address_int[i]=get_address[i]-55;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xc9
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00157$
00132$:
;	i2c.c:421: else if((get_address[i]>=97) && (get_address[i]<=102))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x61,00331$
00331$:
	jc	00157$
	mov	a,r6
	add	a,#0xff - 0x66
	jc	00157$
;	i2c.c:423: get_address_int[i]=get_address[i]-87;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xa9
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00157$
00140$:
;	i2c.c:428: printf_tiny("\n\rInvalid Input! Please enter again\n\r");
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:429: flag=1;
	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
	mov	a,#0x01
	movx	@dptr,a
;	i2c.c:434: }
00157$:
;	i2c.c:371: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00334$
00334$:
	jnc	00335$
	ljmp	00156$
00335$:
	ljmp	00150$
;	i2c.c:439: for(i=0;i<3;i++)
00191$:
	mov	r7,#0x00
00158$:
;	i2c.c:441: address = address+((get_address_int[i])*powf(16,2-i));
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
	mov	dpl,a
	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x02
	clr	c
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	___sint2fs
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	dptr,#_powf_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x41
	lcall	_powf
	mov	_i2c_EEPROM_Read_sloc0_1_0,dpl
	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 1),dph
	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 2),b
	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	lcall	___uint2fs
	mov	r0,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	push	_i2c_EEPROM_Read_sloc0_1_0
	push	(_i2c_EEPROM_Read_sloc0_1_0 + 1)
	push	(_i2c_EEPROM_Read_sloc0_1_0 + 2)
	push	(_i2c_EEPROM_Read_sloc0_1_0 + 3)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsmul
	mov	_i2c_EEPROM_Read_sloc0_1_0,dpl
	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 1),dph
	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 2),b
	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_i2c_EEPROM_Read_address_65536_162
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r6,a
	push	_i2c_EEPROM_Read_sloc0_1_0
	push	(_i2c_EEPROM_Read_sloc0_1_0 + 1)
	push	(_i2c_EEPROM_Read_sloc0_1_0 + 2)
	push	(_i2c_EEPROM_Read_sloc0_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fs2uint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	mov	dptr,#_i2c_EEPROM_Read_address_65536_162
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	i2c.c:439: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00336$
00336$:
	jnc	00337$
	ljmp	00158$
00337$:
;	i2c.c:444: control_byte = ((0xA0)|(address >> 7)&(0xfe));
	mov	dptr,#_i2c_EEPROM_Read_address_65536_162
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar4,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	a,#0xfe
	anl	a,r4
	orl	a,#0xa0
	mov	r5,a
;	i2c.c:445: write_readbyte = ((0xA0)|(address >> 7)|(0x01));
	orl	ar4,#0xa1
;	i2c.c:448: address_byte = (uint8_t)address;
;	i2c.c:451: i2c_start(); // 1. Master issues START condition
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_start
	pop	ar4
	pop	ar5
;	i2c.c:454: i2c_Write_Byte(control_byte); // 2. Master sends Device Address with Write option (0xA0)
	mov	dpl,r5
	push	ar4
	lcall	_i2c_Write_Byte
	pop	ar4
	pop	ar6
;	i2c.c:457: i2c_Write_Byte(address_byte); // 4. Master sends Buffer/Register Address
	mov	dpl,r6
	push	ar4
	lcall	_i2c_Write_Byte
;	i2c.c:459: i2c_Restart(); // 6. Master issues RESTART condition
	lcall	_i2c_Restart
	pop	ar4
;	i2c.c:462: i2c_Write_Byte(write_readbyte); // 7. Master issues Slave Address with Read Option (0xA1)
	mov	dpl,r4
	lcall	_i2c_Write_Byte
;	i2c.c:465: byte_received = i2c_Read_Byte(); // 9. Master reads data from Slave
	lcall	_i2c_Read_Byte
;	i2c.c:468: i2c_NoAck(); // 10. Master issues NACK
	lcall	_i2c_NoAck
;	i2c.c:471: i2c_stop(); // 11. Master issues STOP condition
;	i2c.c:473: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'hex_addresses'
;------------------------------------------------------------
;sloc0                     Allocated with name '_hex_addresses_sloc0_1_0'
;flag                      Allocated with name '_hex_addresses_flag_65536_183'
;i                         Allocated with name '_hex_addresses_i_65536_183'
;address                   Allocated with name '_hex_addresses_address_65536_183'
;get_address               Allocated with name '_hex_addresses_get_address_65536_183'
;get_address_int           Allocated with name '_hex_addresses_get_address_int_65536_183'
;------------------------------------------------------------
;	i2c.c:477: uint16_t hex_addresses()
;	-----------------------------------------
;	 function hex_addresses
;	-----------------------------------------
_hex_addresses:
;	i2c.c:479: int flag=1;
	mov	dptr,#_hex_addresses_flag_65536_183
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	i2c.c:481: uint16_t address=0;            //to store the inputed address from the user in a single integer form
	mov	dptr,#_hex_addresses_address_65536_183
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	i2c.c:486: while(flag)
00150$:
	mov	dptr,#_hex_addresses_flag_65536_183
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00289$
	ljmp	00191$
00289$:
;	i2c.c:488: flag=0;
	mov	dptr,#_hex_addresses_flag_65536_183
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	i2c.c:489: for(i=0;i<3;i++)
	mov	r7,#0x00
00154$:
;	i2c.c:491: get_address[i]=getchar();
	mov	a,r7
	add	a,#_hex_addresses_get_address_65536_183
	mov	r5,a
	clr	a
	addc	a,#(_hex_addresses_get_address_65536_183 >> 8)
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_getchar
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
;	i2c.c:492: putchar(get_address[i]);
	mov	r6,#0x00
	mov	dpl,r3
	mov	dph,r6
	lcall	_putchar
	pop	ar7
;	i2c.c:489: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00290$
00290$:
	jc	00154$
;	i2c.c:495: for(i=0;i<3;i++)
	mov	r7,#0x00
00156$:
;	i2c.c:497: switch(i)
	cjne	r7,#0x00,00292$
	sjmp	00102$
00292$:
	cjne	r7,#0x01,00293$
	sjmp	00107$
00293$:
	cjne	r7,#0x02,00294$
	ljmp	00127$
00294$:
	ljmp	00157$
;	i2c.c:499: case 0:
00102$:
;	i2c.c:500: if((get_address[i]>=48) && (get_address[i]<=55))
	mov	a,r7
	add	a,#_hex_addresses_get_address_65536_183
	mov	dpl,a
	clr	a
	addc	a,#(_hex_addresses_get_address_65536_183 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,00295$
00295$:
	jc	00104$
	mov	a,r6
	add	a,#0xff - 0x37
	jc	00104$
;	i2c.c:502: get_address_int[i]= get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_hex_addresses_get_address_int_65536_183
	mov	dpl,a
	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00104$:
;	i2c.c:506: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:507: flag=1;
	mov	dptr,#_hex_addresses_flag_65536_183
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	i2c.c:509: break;
	ljmp	00157$
;	i2c.c:511: case 1:
00107$:
;	i2c.c:512: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
	mov	a,r7
	add	a,#_hex_addresses_get_address_65536_183
	mov	r5,a
	clr	a
	addc	a,#(_hex_addresses_get_address_65536_183 >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00298$
00298$:
	jc	00124$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00119$
00124$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00301$
00301$:
	jc	00126$
	mov	a,r4
	add	a,#0xff - 0x46
	jnc	00119$
00126$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00304$
00304$:
	jnc	00305$
	ljmp	00120$
00305$:
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00306$
	ljmp	00120$
00306$:
00119$:
;	i2c.c:514: if((get_address[i]>=48) && (get_address[i]<=57))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00307$
00307$:
	jc	00116$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00116$
;	i2c.c:516: get_address_int[i]=get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_hex_addresses_get_address_int_65536_183
	mov	dpl,a
	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00116$:
;	i2c.c:518: else if((get_address[i]>=65) && (get_address[i]<=70))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00310$
00310$:
	jc	00112$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00112$
;	i2c.c:520: get_address_int[i]=get_address[i]-55;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_hex_addresses_get_address_int_65536_183
	mov	dpl,a
	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xc9
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00112$:
;	i2c.c:522: else if((get_address[i]>=97) && (get_address[i]<=102))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x61,00313$
00313$:
	jnc	00314$
	ljmp	00157$
00314$:
	mov	a,r6
	add	a,#0xff - 0x66
	jnc	00315$
	ljmp	00157$
00315$:
;	i2c.c:524: get_address_int[i]=get_address[i]-87;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_hex_addresses_get_address_int_65536_183
	mov	dpl,a
	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xa9
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00120$:
;	i2c.c:529: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:530: flag=1;
	mov	dptr,#_hex_addresses_flag_65536_183
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	i2c.c:532: break;
	ljmp	00157$
;	i2c.c:534: case 2:
00127$:
;	i2c.c:535: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
	mov	a,r7
	add	a,#_hex_addresses_get_address_65536_183
	mov	r5,a
	clr	a
	addc	a,#(_hex_addresses_get_address_65536_183 >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00316$
00316$:
	jc	00144$
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00139$
00144$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00319$
00319$:
	jc	00146$
	mov	a,r4
	add	a,#0xff - 0x46
	jnc	00139$
00146$:
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00322$
00322$:
	jnc	00323$
	ljmp	00140$
00323$:
	mov	a,r4
	add	a,#0xff - 0x66
	jnc	00324$
	ljmp	00140$
00324$:
00139$:
;	i2c.c:537: if((get_address[i]>=48) && (get_address[i]<=57))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00325$
00325$:
	jc	00136$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00136$
;	i2c.c:539: get_address_int[i]=get_address[i]-48;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_hex_addresses_get_address_int_65536_183
	mov	dpl,a
	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00157$
00136$:
;	i2c.c:541: else if((get_address[i]>=65) && (get_address[i]<=70))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00328$
00328$:
	jc	00132$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00132$
;	i2c.c:543: get_address_int[i]=get_address[i]-55;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_hex_addresses_get_address_int_65536_183
	mov	dpl,a
	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
	addc	a,b
	mov	dph,a
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xc9
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00157$
00132$:
;	i2c.c:545: else if((get_address[i]>=97) && (get_address[i]<=102))
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x61,00331$
00331$:
	jc	00157$
	mov	a,r6
	add	a,#0xff - 0x66
	jc	00157$
;	i2c.c:547: get_address_int[i]=get_address[i]-87;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_hex_addresses_get_address_int_65536_183
	mov	dpl,a
	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
	addc	a,b
	mov	dph,a
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xa9
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00157$
00140$:
;	i2c.c:552: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	i2c.c:553: flag=1;
	mov	dptr,#_hex_addresses_flag_65536_183
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	i2c.c:558: }
00157$:
;	i2c.c:495: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00334$
00334$:
	jnc	00335$
	ljmp	00156$
00335$:
	ljmp	00150$
;	i2c.c:565: for(i=0;i<3;i++)
00191$:
	mov	r7,#0x00
00158$:
;	i2c.c:567: address = address +((get_address_int[i])*powf(16,2-i));
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_hex_addresses_get_address_int_65536_183
	mov	dpl,a
	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x02
	clr	c
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	___sint2fs
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	dptr,#_powf_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x41
	lcall	_powf
	mov	_hex_addresses_sloc0_1_0,dpl
	mov	(_hex_addresses_sloc0_1_0 + 1),dph
	mov	(_hex_addresses_sloc0_1_0 + 2),b
	mov	(_hex_addresses_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	lcall	___uint2fs
	mov	r0,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	push	_hex_addresses_sloc0_1_0
	push	(_hex_addresses_sloc0_1_0 + 1)
	push	(_hex_addresses_sloc0_1_0 + 2)
	push	(_hex_addresses_sloc0_1_0 + 3)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsmul
	mov	_hex_addresses_sloc0_1_0,dpl
	mov	(_hex_addresses_sloc0_1_0 + 1),dph
	mov	(_hex_addresses_sloc0_1_0 + 2),b
	mov	(_hex_addresses_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_hex_addresses_address_65536_183
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r6,a
	push	_hex_addresses_sloc0_1_0
	push	(_hex_addresses_sloc0_1_0 + 1)
	push	(_hex_addresses_sloc0_1_0 + 2)
	push	(_hex_addresses_sloc0_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fs2uint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	mov	dptr,#_hex_addresses_address_65536_183
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	i2c.c:565: for(i=0;i<3;i++)
	inc	r7
	cjne	r7,#0x03,00336$
00336$:
	jnc	00337$
	ljmp	00158$
00337$:
;	i2c.c:569: return (address);
	mov	dptr,#_hex_addresses_address_65536_183
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	i2c.c:570: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hex_data'
;------------------------------------------------------------
;rec_addr                  Allocated with name '_hex_data_rec_addr_65536_204'
;byte_received             Allocated with name '_hex_data_byte_received_65536_205'
;control_byte              Allocated with name '_hex_data_control_byte_65536_205'
;address_byte              Allocated with name '_hex_data_address_byte_65536_205'
;write_readbyte            Allocated with name '_hex_data_write_readbyte_65536_205'
;------------------------------------------------------------
;	i2c.c:572: uint16_t hex_data(uint16_t rec_addr)
;	-----------------------------------------
;	 function hex_data
;	-----------------------------------------
_hex_data:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_hex_data_rec_addr_65536_204
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	i2c.c:580: control_byte = ((0xA0)|(rec_addr >> 7)&(0xfe));
	mov	dptr,#_hex_data_rec_addr_65536_204
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar4,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	a,#0xfe
	anl	a,r4
	orl	a,#0xa0
	mov	r5,a
;	i2c.c:581: write_readbyte = ((0xA0)|(rec_addr >> 7)|(0x01));
	orl	ar4,#0xa1
;	i2c.c:584: address_byte = (uint8_t)rec_addr;
;	i2c.c:586: i2c_start();
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_start
	pop	ar4
	pop	ar5
;	i2c.c:588: i2c_Write_Byte(control_byte);
	mov	dpl,r5
	push	ar4
	lcall	_i2c_Write_Byte
	pop	ar4
	pop	ar6
;	i2c.c:590: i2c_Write_Byte(address_byte);
	mov	dpl,r6
	push	ar4
	lcall	_i2c_Write_Byte
;	i2c.c:592: i2c_Restart();
	lcall	_i2c_Restart
	pop	ar4
;	i2c.c:594: i2c_Write_Byte(write_readbyte);
	mov	dpl,r4
	lcall	_i2c_Write_Byte
;	i2c.c:596: byte_received = i2c_Read_Byte();
	lcall	_i2c_Read_Byte
	mov	r7,dpl
	mov	r6,#0x00
;	i2c.c:598: i2c_NoAck();
	push	ar7
	push	ar6
	lcall	_i2c_NoAck
;	i2c.c:600: i2c_stop();
	lcall	_i2c_stop
	pop	ar6
	pop	ar7
;	i2c.c:602: return(byte_received);
	mov	dpl,r7
	mov	dph,r6
;	i2c.c:603: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hex_dump'
;------------------------------------------------------------
;sloc0                     Allocated with name '_hex_dump_sloc0_1_0'
;first_address             Allocated with name '_hex_dump_first_address_65536_206'
;second_address            Allocated with name '_hex_dump_second_address_65536_206'
;counter                   Allocated with name '_hex_dump_counter_65536_206'
;count                     Allocated with name '_hex_dump_count_65536_206'
;flag                      Allocated with name '_hex_dump_flag_65536_206'
;temp_data                 Allocated with name '_hex_dump_temp_data_65536_206'
;------------------------------------------------------------
;	i2c.c:609: void hex_dump()
;	-----------------------------------------
;	 function hex_dump
;	-----------------------------------------
_hex_dump:
;	i2c.c:614: int count=0;
	mov	dptr,#_hex_dump_count_65536_206
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	i2c.c:615: int flag=0;
	mov	dptr,#_hex_dump_flag_65536_206
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	i2c.c:618: printf_tiny("\n\rEnter the FIRST address between 0x00-0x7ff\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	i2c.c:619: first_address=hex_addresses();
	lcall	_hex_addresses
	mov	r6,dpl
	mov	r7,dph
;	i2c.c:620: printf_tiny("\n\rEnter the SECOND address between 0x00-0x7ff\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	i2c.c:621: second_address=hex_addresses();
	lcall	_hex_addresses
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	i2c.c:623: if(first_address <= second_address)
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jc	00102$
;	i2c.c:625: flag=1;
	mov	dptr,#_hex_dump_flag_65536_206
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	i2c.c:626: printf_tiny("\n\rValid input\n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	i2c.c:631: printf_tiny("\n\rInvalid Entries! Please enter address for hex dump again\n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00103$:
;	i2c.c:634: if(flag == 1)
	mov	dptr,#_hex_dump_flag_65536_206
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x01,00150$
	cjne	r3,#0x00,00150$
	sjmp	00151$
00150$:
	ret
00151$:
;	i2c.c:636: for(counter =(first_address);counter <= (second_address); (counter)++)
	mov	ar2,r6
	mov	ar3,r7
00116$:
	mov	ar0,r2
	mov	ar1,r3
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	jnc	00152$
	ret
00152$:
;	i2c.c:638: if(counter==first_address)
	mov	a,r0
	cjne	a,ar6,00110$
	mov	a,r1
	cjne	a,ar7,00110$
;	i2c.c:640: temp_data=hex_data(first_address);
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_hex_data
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	i2c.c:641: printf_tiny("\n\r%x\>>   %x",first_address,temp_data);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar5
	pop	ar4
	ljmp	00117$
00110$:
;	i2c.c:643: else if(count != 15)
	mov	dptr,#_hex_dump_count_65536_206
	movx	a,@dptr
	mov	_hex_dump_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_hex_dump_sloc0_1_0 + 1),a
	mov	a,#0x0f
	cjne	a,_hex_dump_sloc0_1_0,00155$
	clr	a
	cjne	a,(_hex_dump_sloc0_1_0 + 1),00155$
	sjmp	00107$
00155$:
;	i2c.c:645: temp_data=hex_data(counter);
	push	ar4
	push	ar5
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_hex_data
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
;	i2c.c:646: printf_tiny("   %x",temp_data);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:647: count++;
	mov	dptr,#_hex_dump_count_65536_206
	mov	a,#0x01
	add	a,_hex_dump_sloc0_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_hex_dump_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	pop	ar5
	pop	ar4
	sjmp	00117$
00107$:
;	i2c.c:649: else if(count == 15)
	mov	a,#0x0f
	cjne	a,_hex_dump_sloc0_1_0,00156$
	clr	a
	cjne	a,(_hex_dump_sloc0_1_0 + 1),00156$
	sjmp	00157$
00156$:
	sjmp	00117$
00157$:
;	i2c.c:651: temp_data=hex_data(counter);
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_hex_data
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
;	i2c.c:652: printf_tiny("\n\r%x>>   %x",counter,temp_data);
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:653: count=0;
	mov	dptr,#_hex_dump_count_65536_206
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00117$:
;	i2c.c:636: for(counter =(first_address);counter <= (second_address); (counter)++)
	inc	r2
	cjne	r2,#0x00,00158$
	inc	r3
00158$:
;	i2c.c:659: }
	ljmp	00116$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the address between 0x00-0x7ff"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Input by user! Please enter again"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the data you want to write(*Note:DATA SHOULD BE BETWEE"
	.ascii "N 0x00 and 0xFF)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Input! Please enter again"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the FIRST address between 0x00-0x7ff"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the SECOND address between 0x00-0x7ff"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "Valid input"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Entries! Please enter address for hex dump again"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "%x>>   %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "   %x"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
