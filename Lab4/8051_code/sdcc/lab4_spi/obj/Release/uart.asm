;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _char_to_int
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
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
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
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
	.globl _print_number_hex_PARM_2
	.globl _putchar
	.globl _getchar
	.globl _int_to_char
	.globl _print_number_hex
	.globl _my_printf
	.globl _print_number
	.globl _fetch_number
	.globl _ms_delay
	.globl _us_delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_print_number_hex_sloc3_1_0:
	.ds 2
_print_number_hex_sloc4_1_0:
	.ds 4
_print_number_sloc0_1_0:
	.ds 2
_print_number_sloc1_1_0:
	.ds 4
_us_delay_sloc0_1_0:
	.ds 4
_us_delay_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_ms_delay_sloc0_1_0:
	.ds 4
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
_print_number_hex_sloc0_1_0:
	.ds 1
_print_number_hex_sloc1_1_0:
	.ds 1
_print_number_hex_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_putchar_ch_65536_12:
	.ds 2
_int_to_char_temp_65536_18:
	.ds 2
_char_to_int_temp_65536_21:
	.ds 1
_print_number_hex_PARM_2:
	.ds 1
_print_number_hex_number_65536_26:
	.ds 4
_print_number_hex_temp_ascii_store_65536_27:
	.ds 10
_print_number_hex_counter_65536_27:
	.ds 1
_my_printf_text_ptr_65536_40:
	.ds 2
_print_number_number_65536_43:
	.ds 4
_print_number_temp_ascii_store_65536_44:
	.ds 10
_print_number_counter_65536_44:
	.ds 1
_fetch_number_base_65536_49:
	.ds 1
_fetch_number_scanned_digit_65536_50:
	.ds 1
_fetch_number_digit_array_65536_50:
	.ds 20
_fetch_number_digit_counter_65536_50:
	.ds 1
_fetch_number_number_65536_50:
	.ds 2
_ms_delay_time_65536_56:
	.ds 4
_us_delay_time_65536_61:
	.ds 4
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
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;ch                        Allocated with name '_putchar_ch_65536_12'
;------------------------------------------------------------
;	uart.c:7: int putchar (int ch)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_ch_65536_12
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	uart.c:9: while (TI==0)
00101$:
	jnb	_TI,00101$
;	uart.c:14: SBUF = ch;
	mov	dptr,#_putchar_ch_65536_12
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	uart.c:15: TI = 0;
;	assignBit
	clr	_TI
;	uart.c:17: return ch;
	mov	dpl,r6
	mov	dph,r7
;	uart.c:18: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	uart.c:20: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	uart.c:22: while (RI==0)
00101$:
;	uart.c:27: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	uart.c:28: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	uart.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int_to_char'
;------------------------------------------------------------
;temp                      Allocated with name '_int_to_char_temp_65536_18'
;------------------------------------------------------------
;	uart.c:31: int8_t int_to_char(int temp)           /*Function that includes switch statement for hex definition*/
;	-----------------------------------------
;	 function int_to_char
;	-----------------------------------------
_int_to_char:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_int_to_char_temp_65536_18
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	uart.c:33: switch(temp)            /*switch case for defining hex characters above 9 i.e. 'A' to 'F'*/
	mov	dptr,#_int_to_char_temp_65536_18
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00128$
	ljmp	00117$
00128$:
	clr	c
	mov	a,#0x0f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00129$
	ljmp	00117$
00129$:
	mov	a,r6
	add	a,#(00130$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00131$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00130$:
	.db	00102$
	.db	00101$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
00131$:
	.db	00102$>>8
	.db	00101$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
;	uart.c:34: {		case 1:
00101$:
;	uart.c:35: return '1';
	mov	dpl,#0x31
;	uart.c:37: case 0:
	ret
00102$:
;	uart.c:38: return '0';
	mov	dpl,#0x30
;	uart.c:40: case 2:
	ret
00103$:
;	uart.c:41: return '2';
	mov	dpl,#0x32
;	uart.c:43: case 3:
	ret
00104$:
;	uart.c:44: return '3';
	mov	dpl,#0x33
;	uart.c:46: case 4:
	ret
00105$:
;	uart.c:47: return '4';
	mov	dpl,#0x34
;	uart.c:49: case 5:
	ret
00106$:
;	uart.c:50: return '5';
	mov	dpl,#0x35
;	uart.c:52: case 6:
	ret
00107$:
;	uart.c:53: return '6';
	mov	dpl,#0x36
;	uart.c:55: case 7:
	ret
00108$:
;	uart.c:56: return '7';
	mov	dpl,#0x37
;	uart.c:58: case 8:
	ret
00109$:
;	uart.c:59: return '8';
	mov	dpl,#0x38
;	uart.c:61: case 9:
	ret
00110$:
;	uart.c:62: return '9';
	mov	dpl,#0x39
;	uart.c:64: case 10:
	ret
00111$:
;	uart.c:65: return 'A';
	mov	dpl,#0x41
;	uart.c:67: case 11:
	ret
00112$:
;	uart.c:69: return 'B';
	mov	dpl,#0x42
;	uart.c:71: case 12:
	ret
00113$:
;	uart.c:72: return 'C';
	mov	dpl,#0x43
;	uart.c:74: case 13:
	ret
00114$:
;	uart.c:75: return 'D';
	mov	dpl,#0x44
;	uart.c:77: case 14:
	ret
00115$:
;	uart.c:78: return 'E';
	mov	dpl,#0x45
;	uart.c:80: case 15:
	ret
00116$:
;	uart.c:81: return 'F';
	mov	dpl,#0x46
;	uart.c:83: }
	ret
00117$:
;	uart.c:84: return '0';
	mov	dpl,#0x30
;	uart.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'char_to_int'
;------------------------------------------------------------
;temp                      Allocated with name '_char_to_int_temp_65536_21'
;------------------------------------------------------------
;	uart.c:87: uint8_t char_to_int(uint8_t temp)
;	-----------------------------------------
;	 function char_to_int
;	-----------------------------------------
_char_to_int:
	mov	a,dpl
	mov	dptr,#_char_to_int_temp_65536_21
	movx	@dptr,a
;	uart.c:89: if((temp>='0')&&(temp<='9'))
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00138$
00138$:
	jc	00109$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00109$
;	uart.c:91: temp-='0';
	mov	a,r7
	add	a,#0xd0
	mov	dptr,#_char_to_int_temp_65536_21
	movx	@dptr,a
	sjmp	00110$
00109$:
;	uart.c:93: else if((temp>='a')&&(temp<='f'))
	mov	dptr,#_char_to_int_temp_65536_21
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x61,00141$
00141$:
	jc	00105$
	mov	a,r7
	add	a,#0xff - 0x66
	jc	00105$
;	uart.c:95: temp-='a';
	mov	a,r7
	add	a,#0x9f
	mov	dptr,#_char_to_int_temp_65536_21
	movx	@dptr,a
;	uart.c:96: temp+=10;
	movx	a,@dptr
	mov	r7,a
	add	a,#0x0a
	movx	@dptr,a
	sjmp	00110$
00105$:
;	uart.c:98: else if((temp>='A')&&(temp<='f'))
	mov	dptr,#_char_to_int_temp_65536_21
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00144$
00144$:
	jc	00110$
	mov	a,r7
	add	a,#0xff - 0x66
	jc	00110$
;	uart.c:100: temp-='A';
	mov	a,r7
	add	a,#0xbf
	mov	dptr,#_char_to_int_temp_65536_21
	movx	@dptr,a
;	uart.c:101: temp+=10;
	movx	a,@dptr
	mov	r7,a
	add	a,#0x0a
	movx	@dptr,a
00110$:
;	uart.c:103: return temp;
	mov	dptr,#_char_to_int_temp_65536_21
	movx	a,@dptr
;	uart.c:104: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_number_hex'
;------------------------------------------------------------
;sloc3                     Allocated with name '_print_number_hex_sloc3_1_0'
;sloc4                     Allocated with name '_print_number_hex_sloc4_1_0'
;display_width             Allocated with name '_print_number_hex_PARM_2'
;number                    Allocated with name '_print_number_hex_number_65536_26'
;temp_ascii_store          Allocated with name '_print_number_hex_temp_ascii_store_65536_27'
;temp_value                Allocated with name '_print_number_hex_temp_value_65536_27'
;counter                   Allocated with name '_print_number_hex_counter_65536_27'
;value_check               Allocated with name '_print_number_hex_value_check_65536_27'
;------------------------------------------------------------
;	uart.c:106: void print_number_hex(__xdata uint32_t number,__xdata uint8_t display_width)
;	-----------------------------------------
;	 function print_number_hex
;	-----------------------------------------
_print_number_hex:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_print_number_hex_number_65536_26
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	uart.c:111: for(counter=display_width;counter>1;counter--)
	mov	dptr,#_print_number_hex_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_print_number_hex_number_65536_26
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x0f
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	_print_number_hex_sloc0_1_0,c
	clr	c
	mov	a,#0xff
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	_print_number_hex_sloc1_1_0,c
	clr	c
	mov	a,#0xff
	subb	a,r3
	mov	a,#0x0f
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	_print_number_hex_sloc2_1_0,c
00117$:
	clr	c
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00132$
;	uart.c:113: switch(counter)
	cjne	r7,#0x02,00176$
	sjmp	00107$
00176$:
	cjne	r7,#0x03,00177$
	sjmp	00104$
00177$:
	cjne	r7,#0x04,00118$
;	uart.c:118: if(number<=value_check)
	jb	_print_number_hex_sloc2_1_0,00118$
;	uart.c:120: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	lcall	_putchar
	pop	ar7
;	uart.c:122: break;
;	uart.c:125: case 3:
	sjmp	00118$
00104$:
;	uart.c:128: if(number<=value_check)
	jb	_print_number_hex_sloc1_1_0,00118$
;	uart.c:130: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	lcall	_putchar
	pop	ar7
;	uart.c:132: break;
;	uart.c:135: case 2:
	sjmp	00118$
00107$:
;	uart.c:138: if(number<=value_check)
	jb	_print_number_hex_sloc0_1_0,00118$
;	uart.c:140: putchar('0');
	mov	dptr,#0x0030
	push	ar7
	lcall	_putchar
	pop	ar7
;	uart.c:144: }
00118$:
;	uart.c:111: for(counter=display_width;counter>1;counter--)
	dec	r7
;	uart.c:146: do
	sjmp	00117$
00132$:
00112$:
;	uart.c:148: temp_ascii_store[counter]=int_to_char(number%16);
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#_print_number_hex_temp_ascii_store_65536_27
	mov	_print_number_hex_sloc3_1_0,a
	mov	a,r6
	addc	a,#(_print_number_hex_temp_ascii_store_65536_27 >> 8)
	mov	(_print_number_hex_sloc3_1_0 + 1),a
	mov	dptr,#_print_number_hex_number_65536_26
	movx	a,@dptr
	mov	_print_number_hex_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_print_number_hex_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_print_number_hex_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_print_number_hex_sloc4_1_0 + 3),a
	mov	a,#0x0f
	anl	a,_print_number_hex_sloc4_1_0
	mov	r0,a
	mov	r4,#0x00
	mov	dpl,r0
	mov	dph,r4
	push	ar7
	lcall	_int_to_char
	mov	r6,dpl
	pop	ar7
	mov	dpl,_print_number_hex_sloc3_1_0
	mov	dph,(_print_number_hex_sloc3_1_0 + 1)
	mov	a,r6
	movx	@dptr,a
;	uart.c:149: number/=16;
	mov	r3,_print_number_hex_sloc4_1_0
	mov	a,(_print_number_hex_sloc4_1_0 + 1)
	swap	a
	xch	a,r3
	swap	a
	anl	a,#0x0f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x0f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	mov	r4,a
	mov	a,(_print_number_hex_sloc4_1_0 + 2)
	swap	a
	anl	a,#0xf0
	orl	a,r4
	mov	r4,a
	mov	r5,(_print_number_hex_sloc4_1_0 + 2)
	mov	a,(_print_number_hex_sloc4_1_0 + 3)
	swap	a
	xch	a,r5
	swap	a
	anl	a,#0x0f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x0f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	r6,a
	mov	dptr,#_print_number_hex_number_65536_26
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	uart.c:150: counter++;
	inc	r7
;	uart.c:151: }while(number>0);
	mov	dptr,#_print_number_hex_number_65536_26
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00183$
	ljmp	00112$
00183$:
;	uart.c:152: for(counter-=1;counter>=0;counter--)
	mov	a,r7
	dec	a
	mov	dptr,#_print_number_hex_counter_65536_27
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
00120$:
	mov	a,r7
	jb	acc.7,00115$
;	uart.c:154: putchar(temp_ascii_store[counter]);
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#_print_number_hex_temp_ascii_store_65536_27
	mov	dpl,a
	mov	a,r6
	addc	a,#(_print_number_hex_temp_ascii_store_65536_27 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	_putchar
	pop	ar7
;	uart.c:152: for(counter-=1;counter>=0;counter--)
	dec	r7
	sjmp	00120$
00115$:
;	uart.c:156: return;
;	uart.c:157: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'my_printf'
;------------------------------------------------------------
;text_ptr                  Allocated with name '_my_printf_text_ptr_65536_40'
;------------------------------------------------------------
;	uart.c:160: void my_printf(__xdata uint8_t* text_ptr)
;	-----------------------------------------
;	 function my_printf
;	-----------------------------------------
_my_printf:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_my_printf_text_ptr_65536_40
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	uart.c:162: while(*text_ptr!='\0')
	mov	dptr,#_my_printf_text_ptr_65536_40
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	jz	00108$
;	uart.c:164: putchar(*text_ptr);
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	uart.c:165: text_ptr++;
	inc	r6
	cjne	r6,#0x00,00116$
	inc	r7
00116$:
	mov	dptr,#_my_printf_text_ptr_65536_40
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00108$:
	mov	dptr,#_my_printf_text_ptr_65536_40
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	uart.c:167: return;
;	uart.c:168: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_number'
;------------------------------------------------------------
;sloc0                     Allocated with name '_print_number_sloc0_1_0'
;sloc1                     Allocated with name '_print_number_sloc1_1_0'
;number                    Allocated with name '_print_number_number_65536_43'
;temp_ascii_store          Allocated with name '_print_number_temp_ascii_store_65536_44'
;counter                   Allocated with name '_print_number_counter_65536_44'
;------------------------------------------------------------
;	uart.c:170: void print_number(__xdata int32_t number)
;	-----------------------------------------
;	 function print_number
;	-----------------------------------------
_print_number:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_print_number_number_65536_43
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	uart.c:174: if(number<0)
	mov	dptr,#_print_number_number_65536_43
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00113$
;	uart.c:176: putchar('-');
	mov	dptr,#0x002d
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	uart.c:177: number *= -1;
	mov	dptr,#_print_number_number_65536_43
	clr	c
	clr	a
	subb	a,r4
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	uart.c:179: do
00113$:
	mov	r7,#0x00
00103$:
;	uart.c:181: temp_ascii_store[counter]='0'+number%10;
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#_print_number_temp_ascii_store_65536_44
	mov	_print_number_sloc0_1_0,a
	mov	a,r6
	addc	a,#(_print_number_temp_ascii_store_65536_44 >> 8)
	mov	(_print_number_sloc0_1_0 + 1),a
	mov	dptr,#_print_number_number_65536_43
	movx	a,@dptr
	mov	_print_number_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_print_number_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_print_number_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_print_number_sloc1_1_0 + 3),a
	mov	dptr,#__modslong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_print_number_sloc1_1_0
	mov	dph,(_print_number_sloc1_1_0 + 1)
	mov	b,(_print_number_sloc1_1_0 + 2)
	mov	a,(_print_number_sloc1_1_0 + 3)
	push	ar7
	lcall	__modslong
	mov	r0,dpl
	mov	a,#0x30
	add	a,r0
	mov	dpl,_print_number_sloc0_1_0
	mov	dph,(_print_number_sloc0_1_0 + 1)
	movx	@dptr,a
;	uart.c:182: number/=10;
	mov	dptr,#__divslong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_print_number_sloc1_1_0
	mov	dph,(_print_number_sloc1_1_0 + 1)
	mov	b,(_print_number_sloc1_1_0 + 2)
	mov	a,(_print_number_sloc1_1_0 + 3)
	lcall	__divslong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	dptr,#_print_number_number_65536_43
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	uart.c:183: counter++;
	inc	r7
;	uart.c:184: }while(number>0);
	mov	dptr,#_print_number_number_65536_43
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	clr	a
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00135$
	ljmp	00103$
00135$:
;	uart.c:185: for(counter-=1;counter>=0;counter--)
	mov	a,r7
	dec	a
	mov	dptr,#_print_number_counter_65536_44
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
00108$:
	mov	a,r7
	jb	acc.7,00106$
;	uart.c:187: putchar(temp_ascii_store[counter]);
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#_print_number_temp_ascii_store_65536_44
	mov	dpl,a
	mov	a,r6
	addc	a,#(_print_number_temp_ascii_store_65536_44 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	_putchar
	pop	ar7
;	uart.c:185: for(counter-=1;counter>=0;counter--)
	dec	r7
	sjmp	00108$
00106$:
;	uart.c:189: return;
;	uart.c:190: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fetch_number'
;------------------------------------------------------------
;base                      Allocated with name '_fetch_number_base_65536_49'
;scanned_digit             Allocated with name '_fetch_number_scanned_digit_65536_50'
;digit_array               Allocated with name '_fetch_number_digit_array_65536_50'
;digit_counter             Allocated with name '_fetch_number_digit_counter_65536_50'
;i                         Allocated with name '_fetch_number_i_65536_50'
;number                    Allocated with name '_fetch_number_number_65536_50'
;------------------------------------------------------------
;	uart.c:193: uint16_t fetch_number(uint8_t base)
;	-----------------------------------------
;	 function fetch_number
;	-----------------------------------------
_fetch_number:
	mov	a,dpl
	mov	dptr,#_fetch_number_base_65536_49
	movx	@dptr,a
;	uart.c:195: __xdata uint8_t scanned_digit=0,digit_array[20],digit_counter=0,i=0;
	mov	dptr,#_fetch_number_scanned_digit_65536_50
	clr	a
	movx	@dptr,a
	mov	dptr,#_fetch_number_digit_counter_65536_50
	movx	@dptr,a
;	uart.c:196: __xdata uint16_t number=0;
	mov	dptr,#_fetch_number_number_65536_50
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	uart.c:197: while(scanned_digit!=13)
00111$:
	mov	dptr,#_fetch_number_scanned_digit_65536_50
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00153$
	ljmp	00127$
00153$:
;	uart.c:199: scanned_digit=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_fetch_number_scanned_digit_65536_50
	mov	a,r6
	movx	@dptr,a
;	uart.c:200: if(((scanned_digit >= '0') && (scanned_digit <= '9'))||
	cjne	r6,#0x30,00154$
00154$:
	jc	00108$
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	00103$
00108$:
;	uart.c:201: ((scanned_digit >= 'a') && (scanned_digit <= 'f'))||
	cjne	r6,#0x61,00157$
00157$:
	jc	00110$
	mov	a,r6
	add	a,#0xff - 0x66
	jnc	00103$
00110$:
;	uart.c:202: ((scanned_digit >= 'A') && (scanned_digit <= 'F')))
	cjne	r6,#0x41,00160$
00160$:
	jc	00104$
	mov	a,r6
	add	a,#0xff - 0x46
	jc	00104$
00103$:
;	uart.c:204: putchar(scanned_digit);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
	pop	ar6
;	uart.c:205: digit_array[digit_counter]=char_to_int(scanned_digit);
	mov	dptr,#_fetch_number_digit_counter_65536_50
	movx	a,@dptr
	mov	r7,a
	add	a,#_fetch_number_digit_array_65536_50
	mov	r4,a
	clr	a
	addc	a,#(_fetch_number_digit_array_65536_50 >> 8)
	mov	r5,a
	mov	dpl,r6
	push	ar7
	push	ar5
	push	ar4
	lcall	_char_to_int
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
;	uart.c:206: digit_counter++;
	mov	dptr,#_fetch_number_digit_counter_65536_50
	mov	a,r7
	inc	a
	movx	@dptr,a
	sjmp	00111$
00104$:
;	uart.c:208: else if(scanned_digit==8) //check for backspace
	cjne	r6,#0x08,00163$
	sjmp	00164$
00163$:
	ljmp	00111$
00164$:
;	uart.c:210: putchar(8); //print backspace
	mov	dptr,#0x0008
	lcall	_putchar
;	uart.c:211: putchar(32); //print space
	mov	dptr,#0x0020
	lcall	_putchar
;	uart.c:212: putchar(8); //print backspace
	mov	dptr,#0x0008
	lcall	_putchar
;	uart.c:213: digit_counter--;
	mov	dptr,#_fetch_number_digit_counter_65536_50
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	ljmp	00111$
;	uart.c:216: for(i=0;i<digit_counter;i++)
00127$:
	mov	dptr,#_fetch_number_base_65536_49
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_fetch_number_digit_counter_65536_50
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
00116$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00114$
;	uart.c:218: number*= base;
	mov	dptr,#_fetch_number_number_65536_50
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_fetch_number_number_65536_50
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	uart.c:219: number+= digit_array[i];
	mov	a,r5
	add	a,#_fetch_number_digit_array_65536_50
	mov	dpl,a
	clr	a
	addc	a,#(_fetch_number_digit_array_65536_50 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_fetch_number_number_65536_50
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r4
	add	a,r1
	mov	r1,a
	mov	a,r3
	addc	a,r2
	mov	r2,a
	mov	dptr,#_fetch_number_number_65536_50
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	uart.c:216: for(i=0;i<digit_counter;i++)
	inc	r5
	sjmp	00116$
00114$:
;	uart.c:221: return number;
	mov	dptr,#_fetch_number_number_65536_50
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	uart.c:222: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ms_delay'
;------------------------------------------------------------
;time                      Allocated with name '_ms_delay_time_65536_56'
;i                         Allocated with name '_ms_delay_i_65536_57'
;j                         Allocated with name '_ms_delay_j_65536_57'
;sloc0                     Allocated with name '_ms_delay_sloc0_1_0'
;------------------------------------------------------------
;	uart.c:224: void ms_delay(uint32_t time)
;	-----------------------------------------
;	 function ms_delay
;	-----------------------------------------
_ms_delay:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_ms_delay_time_65536_56
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	uart.c:227: for(j=0;j<time;j++)
	mov	dptr,#_ms_delay_time_65536_56
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00102$
;	uart.c:229: for(i=0;i<1120;i++); //1 ms
	mov	_ms_delay_sloc0_1_0,#0x60
	mov	(_ms_delay_sloc0_1_0 + 1),#0x04
	clr	a
	mov	(_ms_delay_sloc0_1_0 + 2),a
	mov	(_ms_delay_sloc0_1_0 + 3),a
00105$:
	dec	_ms_delay_sloc0_1_0
	mov	a,#0xff
	cjne	a,_ms_delay_sloc0_1_0,00130$
	dec	(_ms_delay_sloc0_1_0 + 1)
	cjne	a,(_ms_delay_sloc0_1_0 + 1),00130$
	dec	(_ms_delay_sloc0_1_0 + 2)
	cjne	a,(_ms_delay_sloc0_1_0 + 2),00130$
	dec	(_ms_delay_sloc0_1_0 + 3)
00130$:
	mov	a,_ms_delay_sloc0_1_0
	orl	a,(_ms_delay_sloc0_1_0 + 1)
	orl	a,(_ms_delay_sloc0_1_0 + 2)
	orl	a,(_ms_delay_sloc0_1_0 + 3)
	jnz	00105$
;	uart.c:227: for(j=0;j<time;j++)
	inc	r0
	cjne	r0,#0x00,00132$
	inc	r1
	cjne	r1,#0x00,00132$
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
00132$:
	sjmp	00107$
00102$:
;	uart.c:231: return;
;	uart.c:232: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'us_delay'
;------------------------------------------------------------
;sloc0                     Allocated with name '_us_delay_sloc0_1_0'
;sloc1                     Allocated with name '_us_delay_sloc1_1_0'
;time                      Allocated with name '_us_delay_time_65536_61'
;i                         Allocated with name '_us_delay_i_65536_62'
;------------------------------------------------------------
;	uart.c:234: void us_delay(uint32_t time)
;	-----------------------------------------
;	 function us_delay
;	-----------------------------------------
_us_delay:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_us_delay_time_65536_61
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	uart.c:237: for(i=0;i<(1.12*time);i++); //1 tick 1 us
	mov	dptr,#_us_delay_time_65536_61
	movx	a,@dptr
	mov	_us_delay_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_us_delay_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_us_delay_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_us_delay_sloc0_1_0 + 3),a
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	mov	dpl,_us_delay_sloc0_1_0
	mov	dph,(_us_delay_sloc0_1_0 + 1)
	mov	b,(_us_delay_sloc0_1_0 + 2)
	mov	a,(_us_delay_sloc0_1_0 + 3)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	___ulong2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x5c29
	mov	b,#0x8f
	mov	a,#0x3f
	lcall	___fsmul
	mov	_us_delay_sloc1_1_0,dpl
	mov	(_us_delay_sloc1_1_0 + 1),dph
	mov	(_us_delay_sloc1_1_0 + 2),b
	mov	(_us_delay_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	___ulong2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	_us_delay_sloc1_1_0
	push	(_us_delay_sloc1_1_0 + 1)
	push	(_us_delay_sloc1_1_0 + 2)
	push	(_us_delay_sloc1_1_0 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r7
	jz	00101$
	inc	r0
	cjne	r0,#0x00,00117$
	inc	r1
	cjne	r1,#0x00,00117$
	inc	r2
	cjne	r2,#0x00,00117$
	inc	r3
00117$:
	ljmp	00103$
00101$:
;	uart.c:238: return;
;	uart.c:239: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
