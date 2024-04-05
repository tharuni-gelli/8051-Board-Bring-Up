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
	.globl _printf_tiny
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
	.globl _TXD0
	.globl _RXD0
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
	.globl _SBUF0
	.globl _DP0L
	.globl _DP0H
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
	.globl _watchdog_trigger
	.globl _num
	.globl _putchar
	.globl _getchar
	.globl _get_input
	.globl _pwm_init
	.globl _pwm_stop
	.globl _watchdog_timer
	.globl _init_mode
	.globl _watchdog_control
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
_DP0H	=	0x0083
_DP0L	=	0x0082
_SBUF0	=	0x0099
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
_RXD0	=	0x00b0
_TXD0	=	0x00b1
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
_putchar_ch_65536_47:
	.ds 2
_get_input_num_65536_54:
	.ds 2
_get_input_count_65536_54:
	.ds 1
_get_input_input_arr_65536_54:
	.ds 16
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_num::
	.ds 2
_watchdog_trigger::
	.ds 1
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
;	main.c:9: _sdcc_external_startup()
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
;	main.c:11: AUXR |= 0x0C;
	orl	_AUXR,#0x0c
;	main.c:12: return 0;
	mov	dptr,#0x0000
;	main.c:13: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;ch                        Allocated with name '_putchar_ch_65536_47'
;------------------------------------------------------------
;	main.c:44: int putchar (int ch)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_ch_65536_47
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:46: while (TI==0)
00101$:
	jnb	_TI,00101$
;	main.c:51: SBUF = ch;
	mov	dptr,#_putchar_ch_65536_47
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	main.c:52: TI = 0;
;	assignBit
	clr	_TI
;	main.c:54: return ch;
	mov	dpl,r6
	mov	dph,r7
;	main.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:57: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:59: while (RI==0)
00101$:
;	main.c:64: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:65: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_input'
;------------------------------------------------------------
;num                       Allocated with name '_get_input_num_65536_54'
;count                     Allocated with name '_get_input_count_65536_54'
;input_arr                 Allocated with name '_get_input_input_arr_65536_54'
;i                         Allocated with name '_get_input_i_131072_59'
;------------------------------------------------------------
;	main.c:68: uint16_t get_input(void)
;	-----------------------------------------
;	 function get_input
;	-----------------------------------------
_get_input:
;	main.c:70: __xdata uint16_t num =0;
	mov	dptr,#_get_input_num_65536_54
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:71: __xdata uint8_t count = 0;
	mov	dptr,#_get_input_count_65536_54
	movx	@dptr,a
;	main.c:75: while(input_arr[count] = getchar())
00108$:
	mov	dptr,#_get_input_count_65536_54
	movx	a,@dptr
	mov	r7,a
	add	a,#_get_input_input_arr_65536_54
	mov	r5,a
	clr	a
	addc	a,#(_get_input_input_arr_65536_54 >> 8)
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
;	main.c:77: if(input_arr[count] == 13)
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0d,00151$
	sjmp	00124$
00151$:
;	main.c:82: if(input_arr[count]==8)
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x08,00104$
;	main.c:84: putchar(8);
	mov	dptr,#0x0008
	push	ar7
	lcall	_putchar
;	main.c:85: putchar(32);
	mov	dptr,#0x0020
	lcall	_putchar
;	main.c:86: putchar(8);
	mov	dptr,#0x0008
	lcall	_putchar
	pop	ar7
;	main.c:88: count--;
	mov	a,r7
	dec	a
	mov	dptr,#_get_input_count_65536_54
	movx	@dptr,a
00104$:
;	main.c:91: if((input_arr[count] >= '0') && (input_arr[count] <= '9'))
	mov	dptr,#_get_input_count_65536_54
	movx	a,@dptr
	mov	r7,a
	add	a,#_get_input_input_arr_65536_54
	mov	r5,a
	clr	a
	addc	a,#(_get_input_input_arr_65536_54 >> 8)
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
;	main.c:93: putchar(input_arr[count]);
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
;	main.c:94: input_arr[count]=input_arr[count]-'0';
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	add	a,#0xd0
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	main.c:95: count++;
	mov	dptr,#_get_input_count_65536_54
	mov	a,r7
	inc	a
	movx	@dptr,a
	ljmp	00108$
;	main.c:99: for(int i=0;i<count;i++)
00124$:
	mov	dptr,#_get_input_count_65536_54
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
;	main.c:101: num = num * 10;
	mov	dptr,#_get_input_num_65536_54
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
	mov	dptr,#_get_input_num_65536_54
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:102: num = num + input_arr[i];
	mov	a,r5
	add	a,#_get_input_input_arr_65536_54
	mov	dpl,a
	mov	a,r6
	addc	a,#(_get_input_input_arr_65536_54 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_get_input_num_65536_54
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
	mov	dptr,#_get_input_num_65536_54
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	main.c:99: for(int i=0;i<count;i++)
	inc	r5
	cjne	r5,#0x00,00113$
	inc	r6
	sjmp	00113$
00111$:
;	main.c:105: return num;
	mov	dptr,#_get_input_num_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	main.c:106: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_init'
;------------------------------------------------------------
;	main.c:108: void pwm_init()
;	-----------------------------------------
;	 function pwm_init
;	-----------------------------------------
_pwm_init:
;	main.c:110: CMOD = CLK_PERIPH_2;        //Configure PCA to use peripheral clock/2
	mov	_CMOD,#0x02
;	main.c:111: CL = PCA_START;          //To initialize PCA timer to 0
	mov	_CL,#0x00
;	main.c:112: CH = PCA_START;
	mov	_CH,#0x00
;	main.c:113: CCAP1L = LOW_CMP;       // To generate duty cycle of 33%
	mov	_CCAP1L,#0xab
;	main.c:114: CCAP1H = HIGH_CMP;
	mov	_CCAP1H,#0xab
;	main.c:115: CCON = COUNT_RUN_BIT;        // To start the counter by setting run bit
	mov	_CCON,#0x40
;	main.c:116: CCAPM1 = PWM_START_BIT;      // To set to 8bit PWM mode
	mov	_CCAPM1,#0x42
;	main.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_stop'
;------------------------------------------------------------
;	main.c:119: void pwm_stop()
;	-----------------------------------------
;	 function pwm_stop
;	-----------------------------------------
_pwm_stop:
;	main.c:121: CMOD = CLK_PERIPH_2;         //Configure PCA to use peripheral clock/2
	mov	_CMOD,#0x02
;	main.c:122: CL = PCA_START;           //To initialize PCA timer to 0
	mov	_CL,#0x00
;	main.c:123: CH = PCA_START;
	mov	_CH,#0x00
;	main.c:124: CCAP1L = MAX_CMP;
	mov	_CCAP1L,#0xff
;	main.c:125: CCAP1H = MAX_CMP;
	mov	_CCAP1H,#0xff
;	main.c:126: CCON = COUNT_RUN_BIT;        // To start the counter by setting run bit
	mov	_CCON,#0x40
;	main.c:127: CCAPM1 = PWM_STOP_BIT;      // To stop to 8bit PWM mode
	mov	_CCAPM1,#0x00
;	main.c:128: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog_timer'
;------------------------------------------------------------
;	main.c:130: void watchdog_timer(void)
;	-----------------------------------------
;	 function watchdog_timer
;	-----------------------------------------
_watchdog_timer:
;	main.c:132: if(watchdog_trigger==0)
	mov	dptr,#_watchdog_trigger
	movx	a,@dptr
;	main.c:134: CCAP4L = 0x00;
	jnz	00102$
	mov	_CCAP4L,a
;	main.c:135: CCAP4H = 0xFF;
	mov	_CCAP4H,#0xff
;	main.c:136: CMOD |= 0x40;         // To enable watch dog timer
	orl	_CMOD,#0x40
;	main.c:137: CCON = 0x40;          // To start counter by setting run bit
	mov	_CCON,#0x40
;	main.c:138: CCAPM4 |= 0x4C;       // To start watch dog timer
	orl	_CCAPM4,#0x4c
	ret
00102$:
;	main.c:142: CMOD = 0x00;           // To disable watch dog timer
	mov	_CMOD,#0x00
;	main.c:144: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:146: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:148: init_mode();
	lcall	_init_mode
;	main.c:150: display:
00101$:
;	main.c:151: printf_tiny("\n\r**************************************MENU**************************************\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:152: printf_tiny("\n\r 1. Run PWM Mode\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:153: printf_tiny("\n\r 2. Stop PWM Mode\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:154: printf_tiny("\n\r 3. Set FCLK PERIPH at the minimum frequency supported by the CKRL register \n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:155: printf_tiny("\n\r 4. Set FCLK PERIPH at the maximum frequency supported by the CKRL register \n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:156: printf_tiny("\n\r 5. Enter Idle mode \n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:157: printf_tiny("\n\r 6. Enter Power Down mode \n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:158: printf_tiny("\n\r 7. Watchdog timer mode \n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:159: printf_tiny("\n\r 8. High speed mode \n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:160: printf_tiny("\r********************************************************************************\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:161: while(1)
00129$:
;	main.c:163: printf_tiny("\n\r Enter a number from menu or press 0 to see menu again \n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:164: num=get_input();
	lcall	_get_input
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_num
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:165: putchar(num);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:166: if(num==1)
	mov	dptr,#_num
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00126$
	cjne	r7,#0x00,00126$
;	main.c:168: printf_tiny("\n\r PWM ouput ON \n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:169: pwm_init();
	lcall	_pwm_init
	sjmp	00129$
00126$:
;	main.c:171: else if(num==2)
	cjne	r6,#0x02,00123$
	cjne	r7,#0x00,00123$
;	main.c:173: printf_tiny("\n\r PWM output OFF \n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:174: pwm_stop();
	lcall	_pwm_stop
	sjmp	00129$
00123$:
;	main.c:176: else if(num==3)
	cjne	r6,#0x03,00120$
	cjne	r7,#0x00,00120$
;	main.c:178: printf_tiny("\n\r Peripheral clock at Maximum Frequency \n\r");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:179: CKRL &= ~(RELOAD_MAX);         //Reload register to 0 to generate minimum frequency
	mov	a,_CKRL
	mov	_CKRL,#0x00
	ljmp	00129$
00120$:
;	main.c:181: else if(num==4)
	cjne	r6,#0x04,00117$
	cjne	r7,#0x00,00117$
;	main.c:183: printf_tiny("\n\r Peripheral clock at Minimum Frequency \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:184: CKRL |= RELOAD_MAX;         //Reload register to FF to generate minimum frequency
	mov	a,_CKRL
	mov	_CKRL,#0xff
	ljmp	00129$
00117$:
;	main.c:186: else if(num==5)
	cjne	r6,#0x05,00114$
	cjne	r7,#0x00,00114$
;	main.c:188: printf_tiny("\n\r IDLE mode\n\r");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:189: IEN0 |= 0x01;           //External interrupt 0 enabled
	orl	_IEN0,#0x01
;	main.c:190: IPL0 |= 0x01;
	orl	_IPL0,#0x01
;	main.c:191: CMOD &= 0x7F;
	anl	_CMOD,#0x7f
;	main.c:192: PCON |= 0x01;           // Set PCON bit to enter IDLE mode
	orl	_PCON,#0x01
	ljmp	00129$
00114$:
;	main.c:194: else if(num==6)
	cjne	r6,#0x06,00111$
	cjne	r7,#0x00,00111$
;	main.c:196: printf_tiny("\n\rPower down mode\n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:197: PCON |=0x02;            // PCON set to power down mode
	orl	_PCON,#0x02
	ljmp	00129$
00111$:
;	main.c:199: else if(num==7)
	cjne	r6,#0x07,00108$
	cjne	r7,#0x00,00108$
;	main.c:201: printf_tiny("\n\r Watch-dog mode\n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:202: watchdog_control();
	lcall	_watchdog_control
;	main.c:203: watchdog_timer();
	lcall	_watchdog_timer
	ljmp	00129$
00108$:
;	main.c:205: else if(num==8)
	cjne	r6,#0x08,00105$
	cjne	r7,#0x00,00105$
;	main.c:207: printf_tiny("\n\r High-Speed mode on\n\r");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:208: CMOD = 0x02;                //FCLKPERIPH/2
	mov	_CMOD,#0x02
;	main.c:209: CCAP0L = 0x6a;
	mov	_CCAP0L,#0x6a
;	main.c:210: CCAP0H = 0x6a;
	mov	_CCAP0H,#0x6a
;	main.c:211: CCON = 0x40;                // SET CR- Counter run bit
	mov	_CCON,#0x40
;	main.c:212: CCAPM0 |= 0x4C;             // Run high speed mode
	orl	_CCAPM0,#0x4c
	ljmp	00129$
00105$:
;	main.c:214: else if(num==0)
	mov	a,r6
	orl	a,r7
	jnz	00193$
	ljmp	00101$
00193$:
;	main.c:216: goto display;
;	main.c:220: }
	ljmp	00129$
;------------------------------------------------------------
;Allocation info for local variables in function 'init_mode'
;------------------------------------------------------------
;	main.c:222: void init_mode()
;	-----------------------------------------
;	 function init_mode
;	-----------------------------------------
_init_mode:
;	main.c:224: CKCON0 |= CLK_CONFIG;      //Clock to run in X2 mode
	mov	a,_CKCON0
	mov	_CKCON0,#0xff
;	main.c:225: IEN0 |= TIM1_INT;       //Interrupt enabled for timer 1
	orl	_IEN0,#0x80
;	main.c:226: TMOD |= TIM_MODE;       //Timer 1 to 16 bit auto reload mode
	orl	_TMOD,#0x20
;	main.c:227: SCON |= UART_ENB;       //Enable UART communication
	orl	_SCON,#0x50
;	main.c:228: TCON |= TIM1_START;       //Timer 1 to start
	orl	_TCON,#0x40
;	main.c:229: TH1 = TIM1_LOAD;         //To generate baud rate of 9600
	mov	_TH1,#0xfd
;	main.c:230: TI = 1;             //To indicate transmission is done
;	assignBit
	setb	_TI
;	main.c:231: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog_control'
;------------------------------------------------------------
;	main.c:233: void watchdog_control(void)
;	-----------------------------------------
;	 function watchdog_control
;	-----------------------------------------
_watchdog_control:
;	main.c:235: if(watchdog_trigger==1)
	mov	dptr,#_watchdog_trigger
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	main.c:237: printf_tiny("watchdog timer is on");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:238: watchdog_trigger=0;
	mov	dptr,#_watchdog_trigger
	clr	a
	movx	@dptr,a
	ret
00102$:
;	main.c:242: printf_tiny("watchdog timer is off");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:243: watchdog_trigger=1;
	mov	dptr,#_watchdog_trigger
	mov	a,#0x01
	movx	@dptr,a
;	main.c:245: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "**************************************MENU******************"
	.ascii "********************"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii " 1. Run PWM Mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii " 2. Stop PWM Mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii " 3. Set FCLK PERIPH at the minimum frequency supported by th"
	.ascii "e CKRL register "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii " 4. Set FCLK PERIPH at the maximum frequency supported by th"
	.ascii "e CKRL register "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii " 5. Enter Idle mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii " 6. Enter Power Down mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii " 7. Watchdog timer mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii " 8. High speed mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.ascii "************************************************************"
	.ascii "********************"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii " Enter a number from menu or press 0 to see menu again "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii " PWM ouput ON "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii " PWM output OFF "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii " Peripheral clock at Maximum Frequency "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii " Peripheral clock at Minimum Frequency "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii " IDLE mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "Power down mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii " Watch-dog mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii " High-Speed mode on"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "watchdog timer is on"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "watchdog timer is off"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__num:
	.byte #0x00, #0x00	;  0
__xinit__watchdog_trigger:
	.db #0x01	; 1
	.area CABS    (ABS,CODE)
