;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl __sdcc_external_startup
	.globl _free
	.globl _malloc
	.globl _printf_tiny
	.globl _printf
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
	.globl _dataout
	.globl _putchar
	.globl _getchar
	.globl _get_input
	.globl _get_num1
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
_main_sloc0_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 2
_main_sloc2_1_0:
	.ds 2
_main_sloc3_1_0:
	.ds 1
_main_sloc4_1_0:
	.ds 2
_main_sloc5_1_0:
	.ds 2
_main_sloc6_1_0:
	.ds 2
_main_sloc7_1_0:
	.ds 2
_main_sloc8_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_dataout_v_65536_47:
	.ds 1
_putchar_ch_65536_49:
	.ds 2
_get_input_num_65536_56:
	.ds 2
_get_input_count_65536_56:
	.ds 1
_get_input_input_arr_65536_56:
	.ds 16
_get_num1_num_65536_63:
	.ds 2
_get_num1_var_65536_63:
	.ds 2
_main_symbol_stored_65536_69:
	.ds 2
_main_counter_65536_69:
	.ds 2
_main_buffer1_65536_69:
	.ds 2
_main_buffern_65536_69:
	.ds 90
_main_buffer_size_65536_69:
	.ds 94
_main_num2_65536_69:
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	main.c:21: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:23: AUXR |= 0X0C;
	orl	_AUXR,#0x0c
;	main.c:24: return 0;
	mov	dptr,#0x0000
;	main.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dataout'
;------------------------------------------------------------
;v                         Allocated with name '_dataout_v_65536_47'
;ptr                       Allocated with name '_dataout_ptr_65536_48'
;------------------------------------------------------------
;	main.c:36: void dataout(uint8_t v)
;	-----------------------------------------
;	 function dataout
;	-----------------------------------------
_dataout:
	mov	a,dpl
	mov	dptr,#_dataout_v_65536_47
	movx	@dptr,a
;	main.c:39: *ptr=v;
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#0x7005
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;ch                        Allocated with name '_putchar_ch_65536_49'
;------------------------------------------------------------
;	main.c:42: int putchar (int ch)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_ch_65536_49
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:44: while (TI==0)
00101$:
	jnb	_TI,00101$
;	main.c:49: SBUF = ch;
	mov	dptr,#_putchar_ch_65536_49
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	main.c:50: TI = 0;
;	assignBit
	clr	_TI
;	main.c:52: return ch;
	mov	dpl,r6
	mov	dph,r7
;	main.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:55: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:57: while (RI==0)
00101$:
;	main.c:62: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:63: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_input'
;------------------------------------------------------------
;num                       Allocated with name '_get_input_num_65536_56'
;count                     Allocated with name '_get_input_count_65536_56'
;input_arr                 Allocated with name '_get_input_input_arr_65536_56'
;i                         Allocated with name '_get_input_i_131072_61'
;------------------------------------------------------------
;	main.c:66: uint16_t get_input(void)
;	-----------------------------------------
;	 function get_input
;	-----------------------------------------
_get_input:
;	main.c:68: __xdata uint16_t num =0;
	mov	dptr,#_get_input_num_65536_56
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:69: __xdata uint8_t count = 0;
	mov	dptr,#_get_input_count_65536_56
	movx	@dptr,a
;	main.c:73: while(input_arr[count] = getchar())
00108$:
	mov	dptr,#_get_input_count_65536_56
	movx	a,@dptr
	mov	r7,a
	add	a,#_get_input_input_arr_65536_56
	mov	r5,a
	clr	a
	addc	a,#(_get_input_input_arr_65536_56 >> 8)
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_getchar
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
	mov	a,r3
	jnz	00150$
	ljmp	00124$
00150$:
;	main.c:75: if(input_arr[count] == 13)
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0d,00151$
	sjmp	00124$
00151$:
;	main.c:80: if(input_arr[count]==8)
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x08,00104$
;	main.c:82: putchar(8);
	mov	dptr,#0x0008
	push	ar7
	lcall	_putchar
;	main.c:83: putchar(32);
	mov	dptr,#0x0020
	lcall	_putchar
;	main.c:84: putchar(8);
	mov	dptr,#0x0008
	lcall	_putchar
	pop	ar7
;	main.c:86: count--;
	mov	a,r7
	dec	a
	mov	dptr,#_get_input_count_65536_56
	movx	@dptr,a
00104$:
;	main.c:89: if((input_arr[count] >= '0') && (input_arr[count] <= '9'))
	mov	dptr,#_get_input_count_65536_56
	movx	a,@dptr
	mov	r7,a
	add	a,#_get_input_input_arr_65536_56
	mov	r5,a
	clr	a
	addc	a,#(_get_input_input_arr_65536_56 >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x30,00154$
00154$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00108$
;	main.c:91: putchar(input_arr[count]);
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:92: input_arr[count]=input_arr[count]-'0';
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	add	a,#0xd0
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	main.c:93: count++;
	mov	dptr,#_get_input_count_65536_56
	mov	a,r7
	inc	a
	movx	@dptr,a
	ljmp	00108$
;	main.c:97: for(int i=0;i<count;i++)
00124$:
	mov	dptr,#_get_input_count_65536_56
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r6,#0x00
00113$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	main.c:99: num = num * 10;
	mov	dptr,#_get_input_num_65536_56
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_get_input_num_65536_56
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:100: num = num + input_arr[i];
	mov	a,r5
	add	a,#_get_input_input_arr_65536_56
	mov	dpl,a
	mov	a,r6
	addc	a,#(_get_input_input_arr_65536_56 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_get_input_num_65536_56
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
	mov	dptr,#_get_input_num_65536_56
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	main.c:97: for(int i=0;i<count;i++)
	inc	r5
	cjne	r5,#0x00,00113$
	inc	r6
	sjmp	00113$
00111$:
;	main.c:103: return num;
	mov	dptr,#_get_input_num_65536_56
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	main.c:104: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_num1'
;------------------------------------------------------------
;num                       Allocated with name '_get_num1_num_65536_63'
;var                       Allocated with name '_get_num1_var_65536_63'
;------------------------------------------------------------
;	main.c:106: int get_num1()
;	-----------------------------------------
;	 function get_num1
;	-----------------------------------------
_get_num1:
;	main.c:108: int num=0;
	mov	dptr,#_get_num1_num_65536_63
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:109: int var=0;
	mov	dptr,#_get_num1_var_65536_63
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:110: while(var==0)
00108$:
	mov	dptr,#_get_num1_var_65536_63
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00129$
	ljmp	00110$
00129$:
;	main.c:112: num = get_input();
	lcall	_get_input
	mov	r6,dpl
	mov	r7,dph
;	main.c:113: printf_tiny("\n \r The input number is:%d \n \r",num);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:115: if ((num < 32 || num > 4800))
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00104$
	mov	a,#0xc0
	subb	a,r6
	mov	a,#(0x12 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
00104$:
;	main.c:117: printf_tiny("Invalid number! Please try again.\n \r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:118: var = 0;
	mov	dptr,#_get_num1_var_65536_63
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:119: num=0;
	mov	dptr,#_get_num1_num_65536_63
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00108$
00105$:
;	main.c:121: else if(num % 16 == 0)
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:123: var = 1;
	mov	dptr,#_get_num1_var_65536_63
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:124: num=num;
	mov	dptr,#_get_num1_num_65536_63
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00108$
00102$:
;	main.c:128: printf_tiny("Invalid number! Please try again.\n \r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:129: num=0;
	mov	dptr,#_get_num1_num_65536_63
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:130: var=0;
	mov	dptr,#_get_num1_var_65536_63
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00108$
00110$:
;	main.c:133: return num;
	mov	dptr,#_get_num1_num_65536_63
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	main.c:134: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;sloc3                     Allocated with name '_main_sloc3_1_0'
;sloc4                     Allocated with name '_main_sloc4_1_0'
;sloc5                     Allocated with name '_main_sloc5_1_0'
;sloc6                     Allocated with name '_main_sloc6_1_0'
;sloc7                     Allocated with name '_main_sloc7_1_0'
;sloc8                     Allocated with name '_main_sloc8_1_0'
;input_symbol              Allocated with name '_main_input_symbol_65536_69'
;total_symbol              Allocated with name '_main_total_symbol_65536_69'
;symbol_stored             Allocated with name '_main_symbol_stored_65536_69'
;counter                   Allocated with name '_main_counter_65536_69'
;buffer0                   Allocated with name '_main_buffer0_65536_69'
;buffer1                   Allocated with name '_main_buffer1_65536_69'
;buffern                   Allocated with name '_main_buffern_65536_69'
;buffer_size               Allocated with name '_main_buffer_size_65536_69'
;buffer0_temper            Allocated with name '_main_buffer0_temper_65536_69'
;buffer1_temper            Allocated with name '_main_buffer1_temper_65536_69'
;num1                      Allocated with name '_main_num1_65536_69'
;num2                      Allocated with name '_main_num2_65536_69'
;deleted                   Allocated with name '_main_deleted_65536_69'
;i                         Allocated with name '_main_i_65536_69'
;j                         Allocated with name '_main_j_65536_69'
;n                         Allocated with name '_main_n_65536_69'
;buff0_char_count          Allocated with name '_main_buff0_char_count_65536_69'
;total_buffer              Allocated with name '_main_total_buffer_65536_69'
;var                       Allocated with name '_main_var_65537_70'
;index                     Allocated with name '_main_index_262145_100'
;a                         Allocated with name '_main_a_393217_102'
;------------------------------------------------------------
;	main.c:137: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:141: unsigned int symbol_stored=0;
	mov	dptr,#_main_symbol_stored_65536_69
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:142: unsigned int counter=0;
	mov	dptr,#_main_counter_65536_69
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:162: printf_tiny("\n\r********* HELLO :) ********\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:163: printf("\n\rEnter a number between 32 & 4800 for buffer size\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:167: do
00106$:
;	main.c:169: num1= get_num1();
	lcall	_get_num1
;	main.c:170: if ((buffer0 = malloc(num1)) == 0)
	mov	_main_sloc8_1_0,dpl
	mov  (_main_sloc8_1_0 + 1),dph
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	orl	a,r5
	jnz	00102$
;	main.c:173: printf_tiny("buffer 0 creation is failed\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
00102$:
;	main.c:177: if ((buffer1 = malloc(num1)) == 0)
	mov	dpl,_main_sloc8_1_0
	mov	dph,(_main_sloc8_1_0 + 1)
	push	ar5
	push	ar4
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	dptr,#_main_buffer1_65536_69
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	orl	a,r3
	jnz	00107$
;	main.c:179: printf_tiny("buffer 1 creation is failed\n\r");
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:181: free (buffer0);
	mov	ar0,r4
	mov	ar1,r5
	mov	r7,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:399: counter=0;
;	main.c:182: continue;
00107$:
;	main.c:185: } while ((buffer0 == 0) || (buffer1 == 0));
	mov	a,r4
	orl	a,r5
	jnz	00353$
	ljmp	00106$
00353$:
	mov	a,r2
	orl	a,r3
	jnz	00354$
	ljmp	00106$
00354$:
;	main.c:187: buffer0_temper = (uint16_t)buffer0;
	mov	ar0,r4
	mov	ar1,r5
	mov	_main_sloc7_1_0,r0
	mov	(_main_sloc7_1_0 + 1),r1
;	main.c:188: buffer1_temper = (uint16_t)buffer1;
;	main.c:189: printf_tiny("Start Address of buffer0 = 0x%x\n\r",buffer0_temper);
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	_main_sloc7_1_0
	push	(_main_sloc7_1_0 + 1)
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
;	main.c:190: printf_tiny("Start Address of buffer1 = 0x%x\n\r",buffer1_temper);
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:191: printf_tiny("Buffer_0 and Buffer_1 successfully created\n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:192: printf_tiny("\n\r OPTIONS TO CHOOSE \n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:193: printf_tiny("You can enter characters to be stored in buffer 0\n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:194: printf_tiny("Enter + to create a new buffer of size between 20 and 400 bytes\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:195: printf_tiny("Enter - to delete a buffer.\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:196: printf_tiny("Enter ? to generate a heap report.\n\r");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:197: printf_tiny("Enter = to display current contents of buffer 0.\n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:198: printf_tiny("Enter @ to free all buffers and start program again.\n\r");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:199: printf_tiny("\n\r****************************THANK YOU****************************\n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:202: while (1)
	clr	a
	mov	_main_sloc0_1_0,a
	mov	(_main_sloc0_1_0 + 1),a
	mov	_main_sloc1_1_0,#0x02
;	1-genFromRTrack replaced	mov	(_main_sloc1_1_0 + 1),#0x00
	mov	(_main_sloc1_1_0 + 1),a
	mov	_main_sloc2_1_0,a
	mov	(_main_sloc2_1_0 + 1),a
00172$:
;	main.c:204: input_symbol = getchar();
	push	ar2
	push	ar3
	push	ar5
	push	ar4
	lcall	_getchar
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	_main_sloc3_1_0,r2
;	main.c:205: total_symbol++;
	inc	_main_sloc0_1_0
	clr	a
	cjne	a,_main_sloc0_1_0,00355$
	inc	(_main_sloc0_1_0 + 1)
00355$:
;	main.c:206: putchar(input_symbol);
	mov	_main_sloc4_1_0,_main_sloc3_1_0
	mov	(_main_sloc4_1_0 + 1),#0x00
	mov	dpl,_main_sloc4_1_0
	mov	dph,(_main_sloc4_1_0 + 1)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
;	main.c:207: printf_tiny("\n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:209: if(((input_symbol)>='A') && (((input_symbol)<='Z') && (counter<num1)))
	clr	c
	mov	a,_main_sloc3_1_0
	subb	a,#0x41
	pop	ar3
	pop	ar2
	jc	00167$
	mov	a,_main_sloc3_1_0
	add	a,#0xff - 0x5a
	jc	00167$
	push	ar2
	push	ar3
	mov	dptr,#_main_counter_65536_69
	movx	a,@dptr
	mov	_main_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc5_1_0 + 1),a
	mov	r2,_main_sloc8_1_0
	mov	r3,(_main_sloc8_1_0 + 1)
	clr	c
	mov	a,_main_sloc5_1_0
	subb	a,r2
	mov	a,(_main_sloc5_1_0 + 1)
	subb	a,r3
	pop	ar3
	pop	ar2
	jnc	00167$
;	main.c:211: DEBUGPORT(0);
	mov	dpl,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dataout
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:212: symbol_stored++;
	mov	dptr,#_main_symbol_stored_65536_69
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:213: *((buffer0)+counter)=input_symbol;
	mov	a,_main_sloc5_1_0
	add	a,r4
	mov	dpl,a
	mov	a,(_main_sloc5_1_0 + 1)
	addc	a,r5
	mov	dph,a
	mov	a,_main_sloc3_1_0
	movx	@dptr,a
;	main.c:214: counter++;
	mov	dptr,#_main_counter_65536_69
	mov	a,#0x01
	add	a,_main_sloc5_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_main_sloc5_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	ljmp	00172$
00167$:
;	main.c:218: else if ((counter == num1) && (input_symbol != '+') && (input_symbol != '-') && (input_symbol != '?') && (input_symbol != '=') && (input_symbol != '@'))
	push	ar2
	push	ar3
	mov	dptr,#_main_counter_65536_69
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_main_sloc5_1_0,_main_sloc8_1_0
	mov	(_main_sloc5_1_0 + 1),(_main_sloc8_1_0 + 1)
	mov	a,r2
	cjne	a,_main_sloc5_1_0,00359$
	mov	a,r3
	cjne	a,(_main_sloc5_1_0 + 1),00359$
	sjmp	00360$
00359$:
	pop	ar3
	pop	ar2
	sjmp	00159$
00360$:
	pop	ar3
	pop	ar2
	mov	a,#0x2b
	cjne	a,_main_sloc3_1_0,00361$
	sjmp	00159$
00361$:
	mov	a,#0x2d
	cjne	a,_main_sloc3_1_0,00362$
	sjmp	00159$
00362$:
	mov	a,#0x3f
	cjne	a,_main_sloc3_1_0,00363$
	sjmp	00159$
00363$:
	mov	a,#0x3d
	cjne	a,_main_sloc3_1_0,00364$
	sjmp	00159$
00364$:
	mov	a,#0x40
	cjne	a,_main_sloc3_1_0,00365$
	sjmp	00159$
00365$:
;	main.c:220: putchar(input_symbol);
	mov	dpl,_main_sloc4_1_0
	mov	dph,(_main_sloc4_1_0 + 1)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
;	main.c:221: printf_tiny("\n\rbuffer 0 is full.\n\r");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00172$
00159$:
;	main.c:223: else if(input_symbol == '+')
	mov	a,#0x2b
	cjne	a,_main_sloc3_1_0,00366$
	sjmp	00367$
00366$:
	ljmp	00156$
00367$:
;	main.c:225: DEBUGPORT(1);
	push	ar2
	push	ar3
	mov	dpl,#0x01
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dataout
;	main.c:226: printf_tiny("\n\r Creates a new buffer \n\r");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:227: printf_tiny("\n\rEnter the new buffer size between 20 and 400\n\r");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
;	main.c:229: num2=get_input();
	lcall	_get_input
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	_main_sloc4_1_0,r2
	mov	(_main_sloc4_1_0 + 1),r3
	mov	dptr,#_main_num2_65536_69
	mov	a,_main_sloc4_1_0
	movx	@dptr,a
	mov	a,(_main_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:232: if (num2 < 20 || num2 > 400)
	clr	c
	mov	a,_main_sloc4_1_0
	subb	a,#0x14
	mov	a,(_main_sloc4_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	pop	ar3
	pop	ar2
	jc	00109$
	mov	a,#0x90
	subb	a,_main_sloc4_1_0
	mov	a,#(0x01 ^ 0x80)
	mov	b,(_main_sloc4_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
00109$:
;	main.c:235: num2 = 0;
	mov	dptr,#_main_num2_65536_69
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00110$:
;	main.c:239: buffern[i] = malloc(num2);
	push	ar2
	push	ar3
	mov	a,_main_sloc2_1_0
	add	a,_main_sloc2_1_0
	mov	r2,a
	mov	a,(_main_sloc2_1_0 + 1)
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_main_buffern_65536_69
	mov	_main_sloc6_1_0,a
	mov	a,r3
	addc	a,#(_main_buffern_65536_69 >> 8)
	mov	(_main_sloc6_1_0 + 1),a
	mov	dptr,#_main_num2_65536_69
	movx	a,@dptr
	mov	_main_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc4_1_0 + 1),a
	mov	dpl,_main_sloc4_1_0
	mov	dph,(_main_sloc4_1_0 + 1)
	push	ar5
	push	ar4
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	dpl,_main_sloc6_1_0
	mov	dph,(_main_sloc6_1_0 + 1)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:242: if (buffern[i] == NULL)
	mov	a,r2
	orl	a,r3
	pop	ar3
	pop	ar2
	jnz	00113$
;	main.c:245: printf_tiny("\n\rMemory Allocation for Buffer_%d Failed\n\rPress '+' to Try again\n\r", i+2);
	push	ar2
	push	ar3
	mov	a,#0x02
	add	a,_main_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a,(_main_sloc2_1_0 + 1)
	mov	r3,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar3
	pop	ar2
	ljmp	00172$
00113$:
;	main.c:250: printf_tiny("\n\r Successful allocated memory for Buffer_%d\n\r",(i+2));
	push	ar2
	push	ar3
	mov	a,#0x02
	add	a,_main_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a,(_main_sloc2_1_0 + 1)
	mov	r3,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
;	main.c:251: printf_tiny("\n\rBuffer_%d has allocated a size of %d\n\r",(i+2),num2);
	push	ar3
	push	ar2
	push	_main_sloc4_1_0
	push	(_main_sloc4_1_0 + 1)
	push	ar2
	push	ar3
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:252: printf_tiny("\n\rStart Address of buffer_%d = 0x%x\n\r",(i+2),(uint16_t)(buffern[i+2]));
	mov	r1,_main_sloc2_1_0
	inc	r1
	inc	r1
	clr	F0
	mov	b,#0x02
	mov	a,r1
	jnb	acc.7,00371$
	cpl	F0
	cpl	a
	inc	a
00371$:
	mul	ab
	jnb	F0,00372$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00372$:
	add	a,#_main_buffern_65536_69
	mov	dpl,a
	mov	a,#(_main_buffern_65536_69 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:255: buffer_size[j]=num2;
	mov	a,_main_sloc1_1_0
	add	a,_main_sloc1_1_0
	mov	r2,a
	mov	a,(_main_sloc1_1_0 + 1)
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_main_buffer_size_65536_69
	mov	dpl,a
	mov	a,r3
	addc	a,#(_main_buffer_size_65536_69 >> 8)
	mov	dph,a
	mov	a,_main_sloc4_1_0
	movx	@dptr,a
	mov	a,(_main_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:256: j++;
	inc	_main_sloc1_1_0
	clr	a
	cjne	a,_main_sloc1_1_0,00373$
	inc	(_main_sloc1_1_0 + 1)
00373$:
;	main.c:257: i++;
	inc	_main_sloc2_1_0
	clr	a
	cjne	a,_main_sloc2_1_0,00374$
	inc	(_main_sloc2_1_0 + 1)
00374$:
	pop	ar3
	pop	ar2
	ljmp	00172$
00156$:
;	main.c:260: else if(input_symbol == '-')
	mov	a,#0x2d
	cjne	a,_main_sloc3_1_0,00375$
	sjmp	00376$
00375$:
	ljmp	00153$
00376$:
;	main.c:262: DEBUGPORT(2);
	mov	dpl,#0x02
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dataout
;	main.c:263: printf_tiny("\n\rEnter a valid buffer number\n\r");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:266: deleted=get_input();
	lcall	_get_input
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:268: if(deleted == 0)
	mov	a,r0
	orl	a,r1
	jnz	00123$
;	main.c:270: printf_tiny("\n\rBuffer 0 cannot be deleted!\n\r");
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00172$
00123$:
;	main.c:272: else if(deleted == 1)
	cjne	r0,#0x01,00120$
	cjne	r1,#0x00,00120$
;	main.c:274: free(buffer1);
	push	ar2
	push	ar3
	mov	dptr,#_main_buffer1_65536_69
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free
;	main.c:275: printf_tiny("\n\rDeleting buffer 1\n\r");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:276: buffer1 = 0;
	mov	dptr,#_main_buffer1_65536_69
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:277: printf_tiny("Buffer 1 is free");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar3
	pop	ar2
	ljmp	00172$
00120$:
;	main.c:279: else if(deleted > 1 && deleted < (i+2))
	clr	c
	mov	a,#0x01
	subb	a,r0
	clr	a
	subb	a,r1
	jc	00380$
	ljmp	00116$
00380$:
	mov	a,#0x02
	add	a,_main_sloc2_1_0
	mov	r6,a
	clr	a
	addc	a,(_main_sloc2_1_0 + 1)
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,r6
	mov	a,r1
	subb	a,r7
	jc	00381$
	ljmp	00116$
00381$:
;	main.c:281: printf_tiny("\n\rDeleting buffer %d \n\r",deleted);
	push	ar2
	push	ar3
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:282: free(buffern[deleted-2]);
	mov	ar7,r0
	dec	r7
	dec	r7
	clr	F0
	mov	b,#0x02
	mov	a,r7
	jnb	acc.7,00382$
	cpl	F0
	cpl	a
	inc	a
00382$:
	mul	ab
	jnb	F0,00383$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00383$:
	add	a,#_main_buffern_65536_69
	mov	_main_sloc6_1_0,a
	mov	a,#(_main_buffern_65536_69 >> 8)
	addc	a,b
	mov	(_main_sloc6_1_0 + 1),a
	mov	dpl,_main_sloc6_1_0
	mov	dph,(_main_sloc6_1_0 + 1)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_free
	pop	ar0
	pop	ar1
;	main.c:283: printf_tiny("\n\rBuffer %d is Free\n\r",deleted);
	push	ar0
	push	ar1
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:284: buffern[deleted-2]=0;
	mov	dpl,_main_sloc6_1_0
	mov	dph,(_main_sloc6_1_0 + 1)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	pop	ar3
	pop	ar2
	ljmp	00172$
00116$:
;	main.c:288: printf_tiny("\n\rEnter a valid buffer number\n\rPress '-' to delete any valid buffer\n\r");
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00172$
00153$:
;	main.c:293: else if(input_symbol == '=')
	mov	a,#0x3d
	cjne	a,_main_sloc3_1_0,00384$
	sjmp	00385$
00384$:
	ljmp	00150$
00385$:
;	main.c:295: DEBUGPORT(4);
	mov	dpl,#0x04
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dataout
;	main.c:296: printf_tiny("\n\rThe Stored Characters in Buffer 0 are\n\r");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:298: for((buff0_char_count)=0; (buff0_char_count)<symbol_stored; (buff0_char_count)++)
	mov	dptr,#_main_symbol_stored_65536_69
	movx	a,@dptr
	mov	_main_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc6_1_0 + 1),a
	mov	r0,#0x00
	mov	r1,#0x00
00175$:
	clr	c
	mov	a,r0
	subb	a,_main_sloc6_1_0
	mov	a,r1
	subb	a,(_main_sloc6_1_0 + 1)
	jc	00386$
	ljmp	00172$
00386$:
;	main.c:301: if(buff0_char_count==0)
	mov	a,r0
	orl	a,r1
	jnz	00131$
;	main.c:303: printf_tiny("0x%x >> %x",(uint16_t)(buffer0+buff0_char_count),*((buffer0)+(buff0_char_count)));
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r4
	mov	r2,a
	mov	a,r1
	addc	a,r5
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar7
	push	ar6
	push	ar2
	push	ar3
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar3
	pop	ar2
	ljmp	00176$
00131$:
;	main.c:305: else if((buff0_char_count%16)!=0)
	mov	a,#0x0f
	anl	a,r0
	mov	r6,a
	mov	r7,#0x00
	orl	a,r7
	jz	00128$
;	main.c:307: printf_tiny(" %x",*((buffer0)+(buff0_char_count)));
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r4
	mov	dpl,a
	mov	a,r1
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar3
	push	ar2
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar3
	pop	ar2
	sjmp	00176$
00128$:
;	main.c:309: else if(buff0_char_count%16==0)
	mov	a,r6
	orl	a,r7
	jnz	00176$
;	main.c:311: printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer0+buff0_char_count),*((buffer0)+(buff0_char_count)));
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r4
	mov	r6,a
	mov	a,r1
	addc	a,r5
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:399: counter=0;
	pop	ar3
	pop	ar2
;	main.c:311: printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer0+buff0_char_count),*((buffer0)+(buff0_char_count)));
00176$:
;	main.c:298: for((buff0_char_count)=0; (buff0_char_count)<symbol_stored; (buff0_char_count)++)
	inc	r0
	cjne	r0,#0x00,00390$
	inc	r1
00390$:
	ljmp	00175$
00150$:
;	main.c:316: else if(input_symbol == '@')
	mov	a,#0x40
	cjne	a,_main_sloc3_1_0,00391$
	sjmp	00392$
00391$:
	ljmp	00147$
00392$:
;	main.c:318: DEBUGPORT(5);
	mov	dpl,#0x05
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dataout
;	main.c:319: printf_tiny("\n\rDeleting Buffer 0 \n\r");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:320: free(buffer0);
	mov	ar6,r4
	mov	ar7,r5
	mov	ar1,r7
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r1
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free
;	main.c:321: printf_tiny("\n\rBuffer 0 is free\n\r");
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:323: printf_tiny("\n\rDeleting Buffer 1 \n\r");
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:324: free(buffer1);
	mov	dptr,#_main_buffer1_65536_69
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r1
	mov	b,r7
	lcall	_free
;	main.c:325: printf_tiny("\n\rBuffer 1 is free\n\r");
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:327: for(total_buffer=2; (total_buffer)<(i); (total_buffer)++)
	mov	_main_sloc6_1_0,_main_sloc2_1_0
	mov	(_main_sloc6_1_0 + 1),(_main_sloc2_1_0 + 1)
	mov	r0,#0x02
	mov	r1,#0x00
00178$:
	clr	c
	mov	a,r0
	subb	a,_main_sloc6_1_0
	mov	a,r1
	subb	a,(_main_sloc6_1_0 + 1)
	jc	00393$
	ljmp	00134$
00393$:
;	main.c:329: printf_tiny("\n\rDeleting buffer_%d \n\r",total_buffer);
	push	ar2
	push	ar3
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	main.c:330: free(buffern[total_buffer]);
	mov	a,r0
	add	a,r0
	mov	r2,a
	mov	a,r1
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_main_buffern_65536_69
	mov	dpl,a
	mov	a,r3
	addc	a,#(_main_buffern_65536_69 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r7,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_free
	pop	ar0
	pop	ar1
;	main.c:331: printf_tiny("\n\rBuffer %d is free \n\r",total_buffer);
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:327: for(total_buffer=2; (total_buffer)<(i); (total_buffer)++)
	inc	r0
	cjne	r0,#0x00,00394$
	inc	r1
00394$:
	pop	ar3
	pop	ar2
	ljmp	00178$
00134$:
;	main.c:333: main();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_main
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00172$
00147$:
;	main.c:336: else if(input_symbol == '?')
	mov	a,#0x3f
	cjne	a,_main_sloc3_1_0,00395$
	sjmp	00396$
00395$:
	ljmp	00172$
00396$:
;	main.c:338: DEBUGPORT(3);
	mov	dpl,#0x03
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dataout
;	main.c:339: printf_tiny("******************** REPORT OF HEAP *********************");
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:341: printf_tiny("\n\rBuffer 0\n\r");
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:342: printf_tiny("\n\rIts Start Address  = 0x%x\n\r",buffer0_temper);
	push	_main_sloc7_1_0
	push	(_main_sloc7_1_0 + 1)
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:343: printf_tiny("\n\rIts Ending Address = 0x%x\n\r",(buffer0_temper)+(num1));
	mov	r0,_main_sloc7_1_0
	mov	r1,(_main_sloc7_1_0 + 1)
	mov	a,_main_sloc5_1_0
	add	a,r0
	mov	r0,a
	mov	a,(_main_sloc5_1_0 + 1)
	addc	a,r1
	mov	r1,a
	push	ar0
	push	ar1
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:344: printf_tiny("\n\rIts Size = %d\n\r",num1);
	push	_main_sloc8_1_0
	push	(_main_sloc8_1_0 + 1)
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:345: printf_tiny("\n\rCurrent Storage characters in buffer 0 = %d\n\r",symbol_stored);
	mov	dptr,#_main_symbol_stored_65536_69
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
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
;	main.c:346: printf_tiny("\n\rCurrent Free Spaces in buffer = %d\n\r",(num1-symbol_stored));
	mov	a,_main_sloc5_1_0
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,(_main_sloc5_1_0 + 1)
	subb	a,r7
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:347: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:349: if(buffer1 != 0)
	mov	dptr,#_main_buffer1_65536_69
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00397$
	ljmp	00224$
00397$:
;	main.c:351: printf_tiny("\n\rBuffer 1\n\r");
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
;	main.c:352: printf_tiny("\n\rIts Start Address = 0x%x\n\r",buffer1_temper);
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_51
	push	acc
	mov	a,#(___str_51 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
;	main.c:353: printf_tiny("\n\rIts Ending Address = 0x%x\n\r",buffer1_temper+num1);
	mov	ar6,r2
	mov	ar7,r3
	mov	a,_main_sloc5_1_0
	add	a,r6
	mov	r6,a
	mov	a,(_main_sloc5_1_0 + 1)
	addc	a,r7
	mov	r7,a
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:354: printf_tiny("\n\rIts Size = %d\n\r",num1);
	push	_main_sloc8_1_0
	push	(_main_sloc8_1_0 + 1)
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:355: printf_tiny("\n\rStorage characters in buffer =0, because storage characters are @ buffer 0\n\r");
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:356: printf_tiny("\n\rCurrent Free Spaces in buffer = %d\n\r",(num1));
	push	_main_sloc8_1_0
	push	(_main_sloc8_1_0 + 1)
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:357: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:360: for(n=2; n<=(i+2); n++)
00224$:
	mov	a,#0x02
	add	a,_main_sloc2_1_0
	mov	_main_sloc5_1_0,a
	clr	a
	addc	a,(_main_sloc2_1_0 + 1)
	mov	(_main_sloc5_1_0 + 1),a
	mov	r0,#0x02
	mov	r1,#0x00
00181$:
	push	ar2
	push	ar3
	mov	ar2,r0
	mov	ar3,r1
	clr	c
	mov	a,_main_sloc5_1_0
	subb	a,r2
	mov	a,(_main_sloc5_1_0 + 1)
	subb	a,r3
	pop	ar3
	pop	ar2
	jnc	00398$
	ljmp	00139$
00398$:
;	main.c:362: if(buffern[n-2] != NULL)
	push	ar2
	push	ar3
	mov	a,r0
	mov	_main_sloc6_1_0,a
	add	a,#0xfe
	mov	r3,a
	clr	F0
	mov	b,#0x02
	mov	a,r3
	jnb	acc.7,00399$
	cpl	F0
	cpl	a
	inc	a
00399$:
	mul	ab
	jnb	F0,00400$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00400$:
	add	a,#_main_buffern_65536_69
	mov	dpl,a
	mov	a,#(_main_buffern_65536_69 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	orl	a,r2
	pop	ar3
	pop	ar2
	jnz	00401$
	ljmp	00182$
00401$:
;	main.c:364: printf_tiny("\n\rBuffer %d\n\r",n);
	push	ar2
	push	ar3
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:365: printf_tiny("\n\rStart Address = 0x%x\n\r",(uint16_t)buffern[n-2]);
	mov	a,_main_sloc6_1_0
	add	a,#0xfe
	mov	r3,a
	clr	F0
	mov	b,#0x02
	mov	a,r3
	jnb	acc.7,00402$
	cpl	F0
	cpl	a
	inc	a
00402$:
	mul	ab
	jnb	F0,00403$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00403$:
	add	a,#_main_buffern_65536_69
	mov	r2,a
	mov	a,#(_main_buffern_65536_69 >> 8)
	addc	a,b
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar6
	push	ar7
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:366: printf_tiny("\n\rEnding Address = 0x%x\n\r",(uint16_t)(buffern[n-2])+(uint16_t)(buffer_size[n]));
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_main_sloc6_1_0,r2
	mov	(_main_sloc6_1_0 + 1),r3
	mov	a,r0
	add	a,r0
	mov	r6,a
	mov	a,r1
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_main_buffer_size_65536_69
	mov	r6,a
	mov	a,r7
	addc	a,#(_main_buffer_size_65536_69 >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,_main_sloc6_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_main_sloc6_1_0 + 1)
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar2
	push	ar3
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:367: printf_tiny("\n\rBuffer Size = %d\n\r",buffer_size[n]);
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar2
	push	ar3
	mov	a,#___str_56
	push	acc
	mov	a,#(___str_56 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:368: printf_tiny("\n\rStorage characters in buffer = 0\n\r");
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:369: printf_tiny("\n\rFree Spaces in buffer = %d\n\r",(buffer_size[n]));
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar6
	push	ar7
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:370: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:399: counter=0;
	pop	ar3
	pop	ar2
;	main.c:370: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
00182$:
;	main.c:360: for(n=2; n<=(i+2); n++)
	inc	r0
	cjne	r0,#0x00,00404$
	inc	r1
00404$:
	ljmp	00181$
00139$:
;	main.c:376: printf_tiny("\n\rNumber of storage characters = %d\n\r",symbol_stored);
	mov	dptr,#_main_symbol_stored_65536_69
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:377: printf_tiny("\n\rTotal number of characters received = %d\n\r",total_symbol);
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:378: printf_tiny("\n\rTotal number of buffers that were allocated since the start of the program = %d\n\r",(j));
	push	_main_sloc1_1_0
	push	(_main_sloc1_1_0 + 1)
	mov	a,#___str_61
	push	acc
	mov	a,#(___str_61 >> 8)
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
;	main.c:379: printf_tiny("\n\rTotal storage characters stored since last '?' = %d\n\r",symbol_stored);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:380: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:382: for(int index=0; index<symbol_stored;index++)
	mov	_main_sloc6_1_0,r6
	mov	(_main_sloc6_1_0 + 1),r7
	mov	r0,#0x00
	mov	r1,#0x00
00184$:
	push	ar2
	push	ar3
	mov	ar2,r0
	mov	ar3,r1
	clr	c
	mov	a,r2
	subb	a,_main_sloc6_1_0
	mov	a,r3
	subb	a,(_main_sloc6_1_0 + 1)
	pop	ar3
	pop	ar2
	jc	00405$
	ljmp	00143$
00405$:
;	main.c:385: if(index%32!=0)
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	orl	a,b
	jz	00141$
;	main.c:387: char a=*((buffer0)+index);
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r4
	mov	r2,a
	mov	a,r1
	addc	a,r5
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r7,a
;	main.c:388: putchar(a);
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_putchar
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:389: *((buffer0)+index) = '\0';
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movx	@dptr,a
	pop	ar3
	pop	ar2
	sjmp	00185$
00141$:
;	main.c:393: printf_tiny("\n\r");
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
00185$:
;	main.c:382: for(int index=0; index<symbol_stored;index++)
	inc	r0
	cjne	r0,#0x00,00407$
	inc	r1
00407$:
	ljmp	00184$
00143$:
;	main.c:398: symbol_stored=0;
	mov	dptr,#_main_symbol_stored_65536_69
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:399: counter=0;
	mov	dptr,#_main_counter_65536_69
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:403: }
	ljmp	00172$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.ascii " "
	.db 0x0d
	.ascii " The input number is:%d "
	.db 0x0a
	.ascii " "
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Invalid number! Please try again."
	.db 0x0a
	.ascii " "
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "********* HELLO :) ********"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a number between 32 & 4800 for buffer size"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "buffer 0 creation is failed"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "buffer 1 creation is failed"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Start Address of buffer0 = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Start Address of buffer1 = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Buffer_0 and Buffer_1 successfully created"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii " OPTIONS TO CHOOSE "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "You can enter characters to be stored in buffer 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Enter + to create a new buffer of size between 20 and 400 by"
	.ascii "tes"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Enter - to delete a buffer."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Enter ? to generate a heap report."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Enter = to display current contents of buffer 0."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Enter @ to free all buffers and start program again."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "****************************THANK YOU***********************"
	.ascii "*****"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii "buffer 0 is full."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.ascii " Creates a new buffer "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the new buffer size between 20 and 400"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0d
	.ascii "Memory Allocation for Buffer_%d Failed"
	.db 0x0a
	.db 0x0d
	.ascii "Press '+' to Try again"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.ascii " Successful allocated memory for Buffer_%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer_%d has allocated a size of %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.ascii "Start Address of buffer_%d = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a valid buffer number"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 0 cannot be deleted!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.ascii "Deleting buffer 1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "Buffer 1 is free"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii "Deleting buffer %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer %d is Free"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a valid buffer number"
	.db 0x0a
	.db 0x0d
	.ascii "Press '-' to delete any valid buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0d
	.ascii "The Stored Characters in Buffer 0 are"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "0x%x >> %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii " %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0d
	.ascii "0x%x>> %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0a
	.db 0x0d
	.ascii "Deleting Buffer 0 "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 0 is free"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0a
	.db 0x0d
	.ascii "Deleting Buffer 1 "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 1 is free"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0a
	.db 0x0d
	.ascii "Deleting buffer_%d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer %d is free "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "******************** REPORT OF HEAP *********************"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.db 0x0a
	.db 0x0d
	.ascii "Its Start Address  = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.db 0x0a
	.db 0x0d
	.ascii "Its Ending Address = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.db 0x0a
	.db 0x0d
	.ascii "Its Size = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.db 0x0a
	.db 0x0d
	.ascii "Current Storage characters in buffer 0 = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.db 0x0a
	.db 0x0d
	.ascii "Current Free Spaces in buffer = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.db 0x0a
	.db 0x0d
	.ascii "------------------------------------------------------------"
	.ascii "-----------"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.db 0x0a
	.db 0x0d
	.ascii "Its Start Address = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.db 0x0a
	.db 0x0d
	.ascii "Storage characters in buffer =0, because storage characters "
	.ascii "are @ buffer 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.db 0x0a
	.db 0x0d
	.ascii "Start Address = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.db 0x0a
	.db 0x0d
	.ascii "Ending Address = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer Size = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.db 0x0a
	.db 0x0d
	.ascii "Storage characters in buffer = 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.db 0x0a
	.db 0x0d
	.ascii "Free Spaces in buffer = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.db 0x0a
	.db 0x0d
	.ascii "Number of storage characters = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.db 0x0a
	.db 0x0d
	.ascii "Total number of characters received = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.db 0x0a
	.db 0x0d
	.ascii "Total number of buffers that were allocated since the start "
	.ascii "of the program = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.db 0x0a
	.db 0x0d
	.ascii "Total storage characters stored since last '?' = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
