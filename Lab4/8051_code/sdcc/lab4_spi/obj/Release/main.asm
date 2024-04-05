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
	.globl _waves_init
	.globl _wave_interrupt_handler
	.globl __sdcc_external_startup
	.globl _dac_decrease_voltage
	.globl _dac_increase_voltage
	.globl _dac_output_control_change
	.globl _dac_next_wave
	.globl _dac_update_output
	.globl _dac_set
	.globl _fetch_number
	.globl _my_printf
	.globl _getchar
	.globl _putchar
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
_main_Welcome_txt_65536_29:
	.ds 33
_main_Welcome_lcd_txt_65536_29:
	.ds 31
_main_Instructions_txt_65536_29:
	.ds 135
_main_DAC_on_txt_65536_29:
	.ds 10
_main_DAC_off_txt_65536_29:
	.ds 11
_main_Enter_data_txt_65536_29:
	.ds 14
_main_DAC_a_txt_65536_29:
	.ds 24
_main_DAC_b_txt_65536_29:
	.ds 24
_main_DAC_gain_inc_txt_65536_29:
	.ds 17
_main_DAC_gain_dec_txt_65536_29:
	.ds 17
_main_DAC_mode_txt_65536_29:
	.ds 15
_main_DAC_next_wave_txt_65536_29:
	.ds 13
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
	reti
	.ds	7
	ljmp	_wave_interrupt_handler
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
;	main.c:8: _sdcc_external_startup()
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
;	main.c:10: AUXR |= 0x0C;
	orl	_AUXR,#0x0c
;	main.c:11: return 0;
	mov	dptr,#0x0000
;	main.c:12: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wave_interrupt_handler'
;------------------------------------------------------------
;	main.c:14: void wave_interrupt_handler(void) __interrupt 1
;	-----------------------------------------
;	 function wave_interrupt_handler
;	-----------------------------------------
_wave_interrupt_handler:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:16: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:17: TL0 = 0x00;
	mov	_TL0,#0x00
;	main.c:18: TH0 = 0xFC;
	mov	_TH0,#0xfc
;	main.c:19: dac_update_output();
	lcall	_dac_update_output
;	main.c:20: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'waves_init'
;------------------------------------------------------------
;	main.c:22: void waves_init(void)
;	-----------------------------------------
;	 function waves_init
;	-----------------------------------------
_waves_init:
;	main.c:24: IEN0 |= 0x82;
	orl	_IEN0,#0x82
;	main.c:25: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	main.c:26: TMOD &= 0xF1;
	anl	_TMOD,#0xf1
;	main.c:27: TL0 = 0x00;
	mov	_TL0,#0x00
;	main.c:28: TH0 = 0xFC;
	mov	_TH0,#0xfc
;	main.c:29: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:30: return;
;	main.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;key_pressed               Allocated with name '_main_key_pressed_65536_29'
;data_byte                 Allocated with name '_main_data_byte_65536_29'
;address                   Allocated with name '_main_address_65536_29'
;Welcome_txt               Allocated with name '_main_Welcome_txt_65536_29'
;Welcome_lcd_txt           Allocated with name '_main_Welcome_lcd_txt_65536_29'
;Instructions_txt          Allocated with name '_main_Instructions_txt_65536_29'
;DAC_on_txt                Allocated with name '_main_DAC_on_txt_65536_29'
;DAC_off_txt               Allocated with name '_main_DAC_off_txt_65536_29'
;Enter_data_txt            Allocated with name '_main_Enter_data_txt_65536_29'
;DAC_a_txt                 Allocated with name '_main_DAC_a_txt_65536_29'
;DAC_b_txt                 Allocated with name '_main_DAC_b_txt_65536_29'
;DAC_gain_inc_txt          Allocated with name '_main_DAC_gain_inc_txt_65536_29'
;DAC_gain_dec_txt          Allocated with name '_main_DAC_gain_dec_txt_65536_29'
;DAC_mode_txt              Allocated with name '_main_DAC_mode_txt_65536_29'
;DAC_next_wave_txt         Allocated with name '_main_DAC_next_wave_txt_65536_29'
;------------------------------------------------------------
;	main.c:33: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:39: __xdata uint8_t Welcome_txt[] = "\n\rTharuni ESD Lab 4 Supplemental";
	mov	dptr,#_main_Welcome_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0002)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0003)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0004)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0005)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0006)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0007)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0008)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0009)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000a)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000b)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000c)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000d)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000e)
	mov	a,#0x4c
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000f)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0010)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0011)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0012)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0013)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0014)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0015)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0016)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0018)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0019)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001a)
	mov	a,#0x6d
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001b)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001c)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001d)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001e)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001f)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0020)
	clr	a
	movx	@dptr,a
;	main.c:40: __xdata uint8_t Welcome_lcd_txt[] = "Tharuni ESD Lab 4 Supplemental";
	mov	dptr,#_main_Welcome_lcd_txt_65536_29
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0001)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0002)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0003)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0004)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0005)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0006)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0007)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0008)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0009)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000a)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000b)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000c)
	mov	a,#0x4c
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000d)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000f)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0010)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0011)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0012)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0013)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0016)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0018)
	mov	a,#0x6d
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0019)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001a)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001b)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001c)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001d)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001e)
	clr	a
	movx	@dptr,a
;	main.c:41: __xdata uint8_t Instructions_txt[] = "\n\r'D'->DAC Data Input, 'Z'-> mode change, 'N'-> Next wave, '+'-> Increase DAC voltage, '-'-> Decrease DAC voltage,\n\r'?'-> Display Menu";
	mov	dptr,#_main_Instructions_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0002)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0003)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0004)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0005)
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0006)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0007)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0008)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0009)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000a)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000b)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000c)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000d)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000e)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000f)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0010)
	mov	a,#0x49
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0011)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0012)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0013)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0014)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0015)
	mov	a,#0x2c
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0016)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0017)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0018)
	mov	a,#0x5a
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0019)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001a)
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001b)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001c)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001d)
	mov	a,#0x6d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001e)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001f)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0020)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0021)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0022)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0023)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0024)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0025)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0026)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0027)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0028)
	mov	a,#0x2c
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0029)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002a)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002b)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002c)
	rr	a
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002d)
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002e)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002f)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0030)
	mov	a,#0x4e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0031)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0032)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0033)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0034)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0035)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0036)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0037)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0038)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0039)
	mov	a,#0x2c
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003a)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003b)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003c)
	mov	a,#0x2b
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003d)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003e)
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003f)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0040)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0041)
	mov	a,#0x49
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0042)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0043)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0044)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0045)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0046)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0047)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0048)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0049)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004a)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004b)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004c)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004d)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004e)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004f)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0050)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0051)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0052)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0053)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0054)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0055)
	mov	a,#0x2c
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0056)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0057)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0058)
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0059)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005a)
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005b)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005c)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005d)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005e)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005f)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0060)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0061)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0062)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0063)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0064)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0065)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0066)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0067)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0068)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0069)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006a)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006b)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006c)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006d)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006e)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006f)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0070)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0071)
	mov	a,#0x2c
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0072)
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0073)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0074)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0075)
	mov	a,#0x3f
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0076)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0077)
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0078)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0079)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007a)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007b)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007c)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007d)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007e)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007f)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0080)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0081)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0082)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0083)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0084)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0085)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0086)
	clr	a
	movx	@dptr,a
;	main.c:42: __xdata uint8_t DAC_on_txt[]="DAC is On";
	mov	dptr,#_main_DAC_on_txt_65536_29
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0001)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0002)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0003)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0004)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0005)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0007)
	mov	a,#0x4f
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0008)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0009)
	clr	a
	movx	@dptr,a
;	main.c:43: __xdata uint8_t DAC_off_txt[]="DAC is Off";
	mov	dptr,#_main_DAC_off_txt_65536_29
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0001)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0002)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0003)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0004)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0005)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0007)
	mov	a,#0x4f
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0008)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x000a)
	clr	a
	movx	@dptr,a
;	main.c:44: __xdata uint8_t Enter_data_txt[] = "\n\rEnter Data ";
	mov	dptr,#_main_Enter_data_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0002)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0003)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0004)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0005)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0006)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0007)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0008)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0009)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x000a)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x000b)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x000c)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x000d)
	clr	a
	movx	@dptr,a
;	main.c:45: __xdata uint8_t DAC_a_txt[]="\n\rDAC output channel A ";
	mov	dptr,#_main_DAC_a_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0002)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0003)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0004)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0005)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0006)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0007)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0008)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0009)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000a)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000b)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000c)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000d)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000e)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000f)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0010)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0013)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0014)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0015)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0016)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0017)
	clr	a
	movx	@dptr,a
;	main.c:46: __xdata uint8_t DAC_b_txt[]="\n\rDAC output channel B ";
	mov	dptr,#_main_DAC_b_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0002)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0003)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0004)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0005)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0006)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0007)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0008)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0009)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000a)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000b)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000c)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000d)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000e)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000f)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0010)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0013)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0014)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0015)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0016)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0017)
	clr	a
	movx	@dptr,a
;	main.c:47: __xdata uint8_t DAC_gain_inc_txt[]="\n\rgain increased";
	mov	dptr,#_main_DAC_gain_inc_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0002)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0003)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0004)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0005)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0007)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0008)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0009)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000a)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000b)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000c)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000d)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000f)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0010)
	clr	a
	movx	@dptr,a
;	main.c:48: __xdata uint8_t DAC_gain_dec_txt[]="\n\rgain decreased";
	mov	dptr,#_main_DAC_gain_dec_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0002)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0003)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0004)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0005)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0007)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0008)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0009)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000a)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000b)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000c)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000d)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000f)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0010)
	clr	a
	movx	@dptr,a
;	main.c:49: __xdata uint8_t DAC_mode_txt[]="\n\rmode changed";
	mov	dptr,#_main_DAC_mode_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0002)
	mov	a,#0x6d
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0003)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0004)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0005)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0007)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0008)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0009)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000a)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000b)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000c)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000d)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000e)
	clr	a
	movx	@dptr,a
;	main.c:50: __xdata uint8_t DAC_next_wave_txt[]="\n\rnext wave ";
	mov	dptr,#_main_DAC_next_wave_txt_65536_29
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0001)
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0002)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0003)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0004)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0005)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0007)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0008)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0009)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x000a)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x000b)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x000c)
	clr	a
	movx	@dptr,a
;	main.c:51: my_printf(Welcome_txt);
	mov	dptr,#_main_Welcome_txt_65536_29
	lcall	_my_printf
;	main.c:52: my_printf(Instructions_txt);
	mov	dptr,#_main_Instructions_txt_65536_29
	lcall	_my_printf
;	main.c:53: waves_init();
	lcall	_waves_init
;	main.c:55: while(1)
00114$:
;	main.c:57: key_pressed=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	main.c:58: if(mode==0)
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00102$
;	main.c:60: TR0 = 0;
;	assignBit
	clr	_TR0
00102$:
;	main.c:62: switch(key_pressed)
	cjne	r6,#0x2b,00155$
	sjmp	00107$
00155$:
	cjne	r6,#0x2d,00156$
	sjmp	00108$
00156$:
	cjne	r6,#0x3f,00157$
	sjmp	00103$
00157$:
	cjne	r6,#0x44,00158$
	sjmp	00106$
00158$:
	cjne	r6,#0x4e,00159$
	sjmp	00105$
00159$:
;	main.c:64: case '?':
	cjne	r6,#0x5a,00109$
	sjmp	00104$
00103$:
;	main.c:66: my_printf(Instructions_txt);
	mov	dptr,#_main_Instructions_txt_65536_29
	lcall	_my_printf
;	main.c:67: break;
;	main.c:70: case 'Z':
	sjmp	00110$
00104$:
;	main.c:72: dac_output_control_change();
	lcall	_dac_output_control_change
;	main.c:73: my_printf(DAC_mode_txt);
	mov	dptr,#_main_DAC_mode_txt_65536_29
	lcall	_my_printf
;	main.c:74: break;
;	main.c:77: case 'N':
	sjmp	00110$
00105$:
;	main.c:79: my_printf(DAC_next_wave_txt);
	mov	dptr,#_main_DAC_next_wave_txt_65536_29
	lcall	_my_printf
;	main.c:80: dac_next_wave();
	lcall	_dac_next_wave
;	main.c:81: break;
;	main.c:84: case 'D':
	sjmp	00110$
00106$:
;	main.c:86: my_printf(Enter_data_txt);
	mov	dptr,#_main_Enter_data_txt_65536_29
	lcall	_my_printf
;	main.c:87: data_byte = fetch_number(16);
	mov	dpl,#0x10
	lcall	_fetch_number
;	main.c:88: dac_set(data_byte);
	mov	r7,#0x00
	mov	dph,r7
	lcall	_dac_set
;	main.c:89: break;
;	main.c:92: case '+':
	sjmp	00110$
00107$:
;	main.c:94: dac_increase_voltage();
	lcall	_dac_increase_voltage
;	main.c:95: my_printf(DAC_gain_inc_txt);
	mov	dptr,#_main_DAC_gain_inc_txt_65536_29
	lcall	_my_printf
;	main.c:96: break;
;	main.c:99: case '-':
	sjmp	00110$
00108$:
;	main.c:101: dac_decrease_voltage();
	lcall	_dac_decrease_voltage
;	main.c:102: my_printf(DAC_gain_dec_txt);
	mov	dptr,#_main_DAC_gain_dec_txt_65536_29
	lcall	_my_printf
;	main.c:103: break;
;	main.c:106: default:
	sjmp	00110$
00109$:
;	main.c:108: putchar(key_pressed);
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:111: }
00110$:
;	main.c:112: if(mode==0)
	mov	dptr,#_mode
	movx	a,@dptr
	jz	00161$
	ljmp	00114$
00161$:
;	main.c:114: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:116: key_pressed=0;
;	main.c:118: }
	ljmp	00114$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
