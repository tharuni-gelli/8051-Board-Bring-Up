;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module spi
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _mode
	.globl _gain
	.globl _wave
	.globl _spi_clock_tick
	.globl _spi_write_word
	.globl _dac_update_output
	.globl _dac_start_output
	.globl _dac_stop_output
	.globl _dac_set
	.globl _dac_output_control_change
	.globl _dac_next_wave
	.globl _dac_increase_voltage
	.globl _dac_decrease_voltage
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
_wave::
	.ds 1
_gain::
	.ds 1
_mode::
	.ds 1
_spi_write_word_data_word_65536_25:
	.ds 2
_dac_update_output_counter_65536_32:
	.ds 2
_dac_update_output_sine_wave_65536_32:
	.ds 256
_dac_update_output_square_wave_65536_32:
	.ds 256
_dac_update_output_triangular_value_wave_65536_32:
	.ds 256
_dac_update_output_saw_wave_65536_32:
	.ds 256
_dac_update_output_array_ptr_65536_32:
	.ds 8
_dac_update_output_command_word_a_65536_32:
	.ds 2
_dac_update_output_command_word_b_65536_32:
	.ds 2
_dac_set_data_word_65536_42:
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
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_update_output'
;------------------------------------------------------------
;counter                   Allocated with name '_dac_update_output_counter_65536_32'
;sine_wave                 Allocated with name '_dac_update_output_sine_wave_65536_32'
;square_wave               Allocated with name '_dac_update_output_square_wave_65536_32'
;triangular_value_wave     Allocated with name '_dac_update_output_triangular_value_wave_65536_32'
;saw_wave                  Allocated with name '_dac_update_output_saw_wave_65536_32'
;array_ptr                 Allocated with name '_dac_update_output_array_ptr_65536_32'
;command_word_a            Allocated with name '_dac_update_output_command_word_a_65536_32'
;command_word_b            Allocated with name '_dac_update_output_command_word_b_65536_32'
;data_ptr                  Allocated with name '_dac_update_output_data_ptr_65536_32'
;------------------------------------------------------------
;	spi.c:59: __xdata static uint16_t counter = 0;
	mov	dptr,#_dac_update_output_counter_65536_32
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	spi.c:60: __xdata uint8_t static sine_wave[256]={128	,
	mov	dptr,#_dac_update_output_sine_wave_65536_32
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0001)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0002)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0003)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0004)
	mov	a,#0x8c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0005)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0006)
	mov	a,#0x93
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0007)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0008)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0009)
	mov	a,#0x9c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000a)
	mov	a,#0x9f
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000b)
	mov	a,#0xa2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000c)
	mov	a,#0xa5
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000d)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000e)
	mov	a,#0xab
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000f)
	mov	a,#0xae
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0010)
	mov	a,#0xb1
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0011)
	mov	a,#0xb4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0012)
	mov	a,#0xb6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0013)
	mov	a,#0xb9
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0014)
	mov	a,#0xbc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0015)
	mov	a,#0xbf
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0016)
	mov	a,#0xc2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0017)
	mov	a,#0xc4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0018)
	mov	a,#0xc7
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0019)
	mov	a,#0xc9
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001a)
	mov	a,#0xcc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001b)
	mov	a,#0xce
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001c)
	mov	a,#0xd1
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001d)
	mov	a,#0xd3
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001e)
	mov	a,#0xd6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001f)
	mov	a,#0xd8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0020)
	mov	a,#0xda
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0021)
	mov	a,#0xdc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0022)
	mov	a,#0xde
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0023)
	mov	a,#0xe0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0024)
	mov	a,#0xe2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0025)
	mov	a,#0xe4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0026)
	mov	a,#0xe6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0027)
	mov	a,#0xe8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0028)
	mov	a,#0xea
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0029)
	mov	a,#0xec
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002b)
	mov	a,#0xef
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002d)
	mov	a,#0xf2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0030)
	mov	a,#0xf6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0031)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0032)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0033)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0034)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0035)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0037)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0038)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0040)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0044)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0046)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0048)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004a)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004b)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004c)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004d)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004e)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004f)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0050)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0051)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0052)
	mov	a,#0xf2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0053)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0054)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0055)
	mov	a,#0xee
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0056)
	mov	a,#0xec
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0057)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0058)
	mov	a,#0xe9
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0059)
	mov	a,#0xe7
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005a)
	mov	a,#0xe5
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005b)
	mov	a,#0xe3
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005c)
	mov	a,#0xe1
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005d)
	mov	a,#0xdf
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005e)
	mov	a,#0xdd
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005f)
	mov	a,#0xdb
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0060)
	mov	a,#0xd9
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0061)
	mov	a,#0xd7
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0062)
	mov	a,#0xd4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0063)
	mov	a,#0xd2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0064)
	mov	a,#0xd0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0065)
	mov	a,#0xcd
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0066)
	mov	a,#0xcb
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0067)
	mov	a,#0xc8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0068)
	mov	a,#0xc5
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0069)
	mov	a,#0xc3
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006a)
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006b)
	mov	a,#0xbd
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006c)
	mov	a,#0xbb
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006d)
	mov	a,#0xb8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006e)
	mov	a,#0xb5
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006f)
	mov	a,#0xb2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0070)
	mov	a,#0xaf
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0071)
	mov	a,#0xac
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0072)
	mov	a,#0xa9
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0073)
	mov	a,#0xa7
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0074)
	mov	a,#0xa4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0075)
	mov	a,#0xa0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0076)
	mov	a,#0x9d
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0077)
	mov	a,#0x9a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0078)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0079)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007a)
	mov	a,#0x91
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007b)
	mov	a,#0x8e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007c)
	mov	a,#0x8b
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007d)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007e)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007f)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0080)
	mov	a,#0x7e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0081)
	mov	a,#0x7b
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0082)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0083)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0084)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0085)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0086)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0087)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0088)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0089)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008a)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008b)
	mov	a,#0x5c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008c)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008d)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008e)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008f)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0090)
	mov	a,#0x4e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0091)
	mov	a,#0x4b
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0092)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0093)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0094)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0095)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0096)
	mov	a,#0x3d
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0097)
	mov	a,#0x3b
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0098)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0099)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009a)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009b)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009c)
	mov	a,#0x2e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009d)
	mov	a,#0x2c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009e)
	mov	a,#0x29
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009f)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a0)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a1)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a2)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a3)
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a4)
	mov	a,#0x1d
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a5)
	mov	a,#0x1b
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a6)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a7)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a8)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a9)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00aa)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ab)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ac)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ad)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ae)
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00af)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b0)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b1)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b2)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b3)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b4)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b5)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b6)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b8)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ba)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00bc)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c0)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c3)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c4)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c6)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c8)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c9)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00cb)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00cc)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00cd)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ce)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00cf)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d0)
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d1)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d2)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d3)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d4)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d5)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d6)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d7)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d8)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d9)
	mov	a,#0x1a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00da)
	mov	a,#0x1c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00db)
	mov	a,#0x1e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00dc)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00dd)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00de)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00df)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e0)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e1)
	mov	a,#0x2a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e2)
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e3)
	mov	a,#0x2f
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e4)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e5)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e6)
	mov	a,#0x37
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e7)
	mov	a,#0x39
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e8)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e9)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ea)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00eb)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ec)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ed)
	mov	a,#0x4a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ee)
	mov	a,#0x4c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ef)
	mov	a,#0x4f
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f0)
	mov	a,#0x52
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f1)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f2)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f3)
	mov	a,#0x5b
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f4)
	mov	a,#0x5e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f5)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f6)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f7)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f8)
	mov	a,#0x6a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f9)
	mov	a,#0x6d
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fa)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fb)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fc)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fd)
	mov	a,#0x7a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fe)
	mov	a,#0x7d
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ff)
	mov	a,#0x80
	movx	@dptr,a
;	spi.c:318: __xdata uint8_t static square_wave[256]={0	,
	mov	dptr,#_dac_update_output_square_wave_65536_32
	clr	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0010)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0014)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0018)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0020)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0024)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0028)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0030)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0034)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0038)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0040)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0044)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0048)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0050)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0051)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0052)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0053)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0054)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0055)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0056)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0057)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0058)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0059)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0060)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0061)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0062)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0063)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0064)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0065)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0066)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0067)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0068)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0069)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0070)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0071)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0072)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0073)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0074)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0075)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0076)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0077)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0078)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0079)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0080)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0082)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0084)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0086)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0088)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0090)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0092)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0094)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0096)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0098)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009a)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009c)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009e)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a0)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a2)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a4)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a6)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a8)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00aa)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ac)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ae)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b0)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b2)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b4)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b6)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b8)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ba)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00bc)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c0)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c4)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c6)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c8)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00cc)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ce)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d0)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d2)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d4)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d6)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d8)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00da)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00dc)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00de)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e0)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e2)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e4)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e6)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e8)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ea)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ec)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ee)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f0)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f2)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f4)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f6)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f8)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fa)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fc)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fe)
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ff)
	movx	@dptr,a
;	spi.c:576: __xdata uint8_t static triangular_value_wave[256]={0	,
	mov	dptr,#_dac_update_output_triangular_value_wave_65536_32
	clr	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0001)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0002)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0003)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0004)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0005)
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0006)
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0007)
	mov	a,#0x0e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0008)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0009)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000a)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000b)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000c)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000d)
	mov	a,#0x1a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000e)
	mov	a,#0x1c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000f)
	mov	a,#0x1e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0010)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0011)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0012)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0013)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0014)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0015)
	mov	a,#0x2a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0016)
	mov	a,#0x2c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0017)
	mov	a,#0x2e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0018)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0019)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001a)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001b)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001c)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001d)
	mov	a,#0x3a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001e)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001f)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0020)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0021)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0022)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0023)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0024)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0025)
	mov	a,#0x4a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0026)
	mov	a,#0x4c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0027)
	mov	a,#0x4e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0028)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0029)
	mov	a,#0x52
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002a)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002b)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002c)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002d)
	mov	a,#0x5a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002e)
	mov	a,#0x5c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002f)
	mov	a,#0x5e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0030)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0031)
	mov	a,#0x62
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0032)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0033)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0034)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0035)
	mov	a,#0x6a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0036)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0037)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0038)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0039)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003a)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003b)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003c)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003d)
	mov	a,#0x7a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003e)
	mov	a,#0x7c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003f)
	mov	a,#0x7e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0040)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0041)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0042)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0043)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0044)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0045)
	mov	a,#0x8a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0046)
	mov	a,#0x8c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0047)
	mov	a,#0x8e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0048)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0049)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004a)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004b)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004c)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004d)
	mov	a,#0x9a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004e)
	mov	a,#0x9c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004f)
	mov	a,#0x9e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0050)
	mov	a,#0xa0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0051)
	mov	a,#0xa2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0052)
	mov	a,#0xa4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0053)
	mov	a,#0xa6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0054)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0055)
	mov	a,#0xaa
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0056)
	mov	a,#0xac
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0057)
	mov	a,#0xae
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0058)
	mov	a,#0xb0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0059)
	mov	a,#0xb2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005a)
	mov	a,#0xb4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005b)
	mov	a,#0xb6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005c)
	mov	a,#0xb8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005d)
	mov	a,#0xba
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005e)
	mov	a,#0xbc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005f)
	mov	a,#0xbe
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0060)
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0061)
	mov	a,#0xc2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0062)
	mov	a,#0xc4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0063)
	mov	a,#0xc6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0064)
	mov	a,#0xc8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0065)
	mov	a,#0xca
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0066)
	mov	a,#0xcc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0067)
	mov	a,#0xce
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0068)
	mov	a,#0xd0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0069)
	mov	a,#0xd2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006a)
	mov	a,#0xd4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006b)
	mov	a,#0xd6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006c)
	mov	a,#0xd8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006d)
	mov	a,#0xda
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006e)
	mov	a,#0xdc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006f)
	mov	a,#0xde
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0070)
	mov	a,#0xe0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0071)
	mov	a,#0xe2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0072)
	mov	a,#0xe4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0073)
	mov	a,#0xe6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0074)
	mov	a,#0xe8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0075)
	mov	a,#0xea
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0076)
	mov	a,#0xec
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0077)
	mov	a,#0xee
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0078)
	mov	a,#0xf0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0079)
	mov	a,#0xf2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007a)
	mov	a,#0xf4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007b)
	mov	a,#0xf6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007c)
	mov	a,#0xf8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007d)
	mov	a,#0xfa
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007e)
	mov	a,#0xfc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007f)
	mov	a,#0xfe
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0080)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0081)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0082)
	mov	a,#0xfc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0083)
	mov	a,#0xfa
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0084)
	mov	a,#0xf8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0085)
	mov	a,#0xf6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0086)
	mov	a,#0xf4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0087)
	mov	a,#0xf2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0088)
	mov	a,#0xf0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0089)
	mov	a,#0xee
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008a)
	mov	a,#0xec
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008b)
	mov	a,#0xea
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008c)
	mov	a,#0xe8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008d)
	mov	a,#0xe6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008e)
	mov	a,#0xe4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008f)
	mov	a,#0xe2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0090)
	mov	a,#0xe0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0091)
	mov	a,#0xde
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0092)
	mov	a,#0xdc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0093)
	mov	a,#0xda
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0094)
	mov	a,#0xd8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0095)
	mov	a,#0xd6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0096)
	mov	a,#0xd4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0097)
	mov	a,#0xd2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0098)
	mov	a,#0xd0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0099)
	mov	a,#0xce
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009a)
	mov	a,#0xcc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009b)
	mov	a,#0xca
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009c)
	mov	a,#0xc8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009d)
	mov	a,#0xc6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009e)
	mov	a,#0xc4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009f)
	mov	a,#0xc2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a0)
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a1)
	mov	a,#0xbe
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a2)
	mov	a,#0xbc
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a3)
	mov	a,#0xba
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a4)
	mov	a,#0xb8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a5)
	mov	a,#0xb6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a6)
	mov	a,#0xb4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a7)
	mov	a,#0xb2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a8)
	mov	a,#0xb0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a9)
	mov	a,#0xae
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00aa)
	mov	a,#0xac
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ab)
	mov	a,#0xaa
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ac)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ad)
	mov	a,#0xa6
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ae)
	mov	a,#0xa4
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00af)
	mov	a,#0xa2
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b0)
	mov	a,#0xa0
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b1)
	mov	a,#0x9e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b2)
	mov	a,#0x9c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b3)
	mov	a,#0x9a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b4)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b5)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b6)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b7)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b8)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b9)
	mov	a,#0x8e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ba)
	mov	a,#0x8c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00bb)
	mov	a,#0x8a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00bc)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00bd)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00be)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00bf)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c0)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c1)
	mov	a,#0x7e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c2)
	mov	a,#0x7c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c3)
	mov	a,#0x7a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c4)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c5)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c6)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c7)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c8)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c9)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ca)
	mov	a,#0x6c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00cb)
	mov	a,#0x6a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00cc)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00cd)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ce)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00cf)
	mov	a,#0x62
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d0)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d1)
	mov	a,#0x5e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d2)
	mov	a,#0x5c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d3)
	mov	a,#0x5a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d4)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d5)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d6)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d7)
	mov	a,#0x52
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d8)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d9)
	mov	a,#0x4e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00da)
	mov	a,#0x4c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00db)
	mov	a,#0x4a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00dc)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00dd)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00de)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00df)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e0)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e1)
	mov	a,#0x3e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e2)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e3)
	mov	a,#0x3a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e4)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e5)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e6)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e7)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e8)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e9)
	mov	a,#0x2e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ea)
	mov	a,#0x2c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00eb)
	mov	a,#0x2a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ec)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ed)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ee)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ef)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f0)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f1)
	mov	a,#0x1e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f2)
	mov	a,#0x1c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f3)
	mov	a,#0x1a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f4)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f5)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f6)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f7)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f8)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f9)
	mov	a,#0x0e
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fa)
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fb)
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fc)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fd)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fe)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ff)
	rr	a
	movx	@dptr,a
;	spi.c:834: __xdata uint8_t static saw_wave[256]={0	,
	mov	dptr,#_dac_update_output_saw_wave_65536_32
	clr	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0001)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0002)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0003)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0004)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0005)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0006)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0007)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0008)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0009)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0010)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0011)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0012)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0013)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0014)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0015)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0016)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0017)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0018)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0019)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0020)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0021)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0022)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0023)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0024)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0025)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0026)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0027)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0028)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0029)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0030)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0031)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0032)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0033)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0034)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0035)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0036)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0037)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0038)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0039)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0040)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0041)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0042)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0043)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0044)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0045)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0046)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0047)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0048)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0049)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0050)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0051)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0052)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0053)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0054)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0055)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0056)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0057)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0058)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0059)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0060)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0061)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0062)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0063)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0064)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0065)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0066)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0067)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0068)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0069)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0070)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0071)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0072)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0073)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0074)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0075)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0076)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0077)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0078)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0079)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0080)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0081)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0082)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0083)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0084)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0085)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0086)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0087)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0088)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0089)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0090)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0091)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0092)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0093)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0094)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0095)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0096)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0097)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0098)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0099)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009a)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a0)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a1)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a2)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a3)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a4)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a5)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a6)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a7)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a8)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a9)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00aa)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ab)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ac)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ad)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ae)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00af)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b0)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b1)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b2)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b3)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b4)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b5)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b6)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b7)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b8)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b9)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ba)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00bb)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00bc)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00bd)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00be)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00bf)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c0)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c1)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c2)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c3)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c4)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c5)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c6)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c7)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c8)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c9)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ca)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00cb)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00cc)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00cd)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ce)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00cf)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d0)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d1)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d2)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d3)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d4)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d5)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d6)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d7)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d8)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d9)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00da)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00db)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00dc)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00dd)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00de)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00df)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e0)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e1)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e2)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e3)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e4)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e5)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e6)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e7)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e8)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e9)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ea)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00eb)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ec)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ed)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ee)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ef)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f0)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f1)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f2)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f3)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f4)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f5)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f6)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f7)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f8)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f9)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fa)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fb)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fc)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fd)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fe)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ff)
	inc	a
	movx	@dptr,a
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
;Allocation info for local variables in function 'spi_clock_tick'
;------------------------------------------------------------
;	spi.c:16: void spi_clock_tick(void)
;	-----------------------------------------
;	 function spi_clock_tick
;	-----------------------------------------
_spi_clock_tick:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	spi.c:18: sck = 1;
;	assignBit
	setb	_P1_6
;	spi.c:19: sck = 0;
;	assignBit
	clr	_P1_6
;	spi.c:20: return;
;	spi.c:21: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_write_word'
;------------------------------------------------------------
;data_word                 Allocated with name '_spi_write_word_data_word_65536_25'
;i                         Allocated with name '_spi_write_word_i_65536_26'
;------------------------------------------------------------
;	spi.c:28: void spi_write_word(__xdata uint16_t data_word)
;	-----------------------------------------
;	 function spi_write_word
;	-----------------------------------------
_spi_write_word:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_spi_write_word_data_word_65536_25
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi.c:31: sck = 0;
;	assignBit
	clr	_P1_6
;	spi.c:32: ldac_bar = 1;
;	assignBit
	setb	_P1_2
;	spi.c:33: cs_bar = 0;
;	assignBit
	clr	_P1_0
;	spi.c:34: for(i=0;i<16;i++)
	mov	r7,#0x00
00105$:
;	spi.c:36: if(data_word & spi_MSB_mask)
	mov	dptr,#_spi_write_word_data_word_65536_25
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.7,00102$
;	spi.c:38: sdi = 1;
;	assignBit
	setb	_P1_7
	sjmp	00103$
00102$:
;	spi.c:42: sdi = 0;
;	assignBit
	clr	_P1_7
00103$:
;	spi.c:44: spi_clock_tick();
	push	ar7
	lcall	_spi_clock_tick
	pop	ar7
;	spi.c:45: data_word = data_word<<1;
	mov	dptr,#_spi_write_word_data_word_65536_25
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	dptr,#_spi_write_word_data_word_65536_25
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	spi.c:34: for(i=0;i<16;i++)
	inc	r7
	cjne	r7,#0x10,00123$
00123$:
	jc	00105$
;	spi.c:47: cs_bar = 1;
;	assignBit
	setb	_P1_0
;	spi.c:48: ldac_bar =0;
;	assignBit
	clr	_P1_2
;	spi.c:49: sck = 0;
;	assignBit
	clr	_P1_6
;	spi.c:50: return;
;	spi.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_update_output'
;------------------------------------------------------------
;counter                   Allocated with name '_dac_update_output_counter_65536_32'
;sine_wave                 Allocated with name '_dac_update_output_sine_wave_65536_32'
;square_wave               Allocated with name '_dac_update_output_square_wave_65536_32'
;triangular_value_wave     Allocated with name '_dac_update_output_triangular_value_wave_65536_32'
;saw_wave                  Allocated with name '_dac_update_output_saw_wave_65536_32'
;array_ptr                 Allocated with name '_dac_update_output_array_ptr_65536_32'
;command_word_a            Allocated with name '_dac_update_output_command_word_a_65536_32'
;command_word_b            Allocated with name '_dac_update_output_command_word_b_65536_32'
;data_ptr                  Allocated with name '_dac_update_output_data_ptr_65536_32'
;------------------------------------------------------------
;	spi.c:57: void dac_update_output(void)
;	-----------------------------------------
;	 function dac_update_output
;	-----------------------------------------
_dac_update_output:
;	spi.c:1092: __xdata uint8_t* array_ptr[4]={sine_wave,square_wave,triangular_value_wave,saw_wave};
	mov	dptr,#_dac_update_output_array_ptr_65536_32
	mov	a,#_dac_update_output_sine_wave_65536_32
	movx	@dptr,a
	mov	a,#(_dac_update_output_sine_wave_65536_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_array_ptr_65536_32 + 0x0002)
	mov	a,#_dac_update_output_square_wave_65536_32
	movx	@dptr,a
	mov	a,#(_dac_update_output_square_wave_65536_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_array_ptr_65536_32 + 0x0004)
	mov	a,#_dac_update_output_triangular_value_wave_65536_32
	movx	@dptr,a
	mov	a,#(_dac_update_output_triangular_value_wave_65536_32 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_dac_update_output_array_ptr_65536_32 + 0x0006)
	mov	a,#_dac_update_output_saw_wave_65536_32
	movx	@dptr,a
	mov	a,#(_dac_update_output_saw_wave_65536_32 >> 8)
	inc	dptr
	movx	@dptr,a
;	spi.c:1095: if(mode==0)
	mov	dptr,#_mode
	movx	a,@dptr
	jz	00123$
	ljmp	00105$
00123$:
;	spi.c:1097: data_ptr=array_ptr[wave];
	mov	dptr,#_wave
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_dac_update_output_array_ptr_65536_32
	mov	dpl,a
	mov	a,#(_dac_update_output_array_ptr_65536_32 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	spi.c:1098: command_word_a = *(data_ptr+counter)<<4;
	mov	dptr,#_dac_update_output_counter_65536_32
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
;	spi.c:1100: command_word_a &= A_mask;
	mov	ar4,r7
	mov	a,#0x7f
	anl	a,r6
	mov	r5,a
;	spi.c:1101: command_word_b |= B_mask;
	orl	ar6,#0x80
;	spi.c:1102: command_word_a |= active_mask;
	orl	ar5,#0x10
;	spi.c:1103: command_word_b |= active_mask;
	orl	ar6,#0x10
;	spi.c:1105: if(gain==2)
	mov	dptr,#_gain
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x02,00102$
;	spi.c:1107: command_word_a &= Gain_increase_mask;
	mov	ar2,r4
	mov	ar3,r5
	anl	ar3,#0xdf
	mov	dptr,#_dac_update_output_command_word_a_65536_32
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	spi.c:1108: command_word_b &= Gain_increase_mask;
	mov	ar2,r7
	mov	ar3,r6
	anl	ar3,#0xdf
	mov	dptr,#_dac_update_output_command_word_b_65536_32
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
;	spi.c:1112: command_word_a |= Gain_decrease_mask;
	orl	ar5,#0x20
	mov	dptr,#_dac_update_output_command_word_a_65536_32
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	spi.c:1113: command_word_b |= Gain_decrease_mask;
	orl	ar6,#0x20
	mov	dptr,#_dac_update_output_command_word_b_65536_32
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00103$:
;	spi.c:1115: spi_write_word(command_word_a);
	mov	dptr,#_dac_update_output_command_word_a_65536_32
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_spi_write_word
;	spi.c:1116: spi_write_word(command_word_b);
	mov	dptr,#_dac_update_output_command_word_b_65536_32
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_spi_write_word
00105$:
;	spi.c:1118: if(counter == 255)
	mov	dptr,#_dac_update_output_counter_65536_32
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	cjne	r4,#0xff,00107$
	cjne	r5,#0x00,00107$
;	spi.c:1120: counter = 0;
	mov	dptr,#_dac_update_output_counter_65536_32
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
00107$:
;	spi.c:1124: counter++;
	mov	dptr,#_dac_update_output_counter_65536_32
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	spi.c:1126: return;
;	spi.c:1127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_start_output'
;------------------------------------------------------------
;	spi.c:1133: void dac_start_output(void)
;	-----------------------------------------
;	 function dac_start_output
;	-----------------------------------------
_dac_start_output:
;	spi.c:1135: return;
;	spi.c:1136: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_stop_output'
;------------------------------------------------------------
;	spi.c:1142: void dac_stop_output(void)
;	-----------------------------------------
;	 function dac_stop_output
;	-----------------------------------------
_dac_stop_output:
;	spi.c:1145: return;
;	spi.c:1146: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_set'
;------------------------------------------------------------
;data_word                 Allocated with name '_dac_set_data_word_65536_42'
;command_word_a            Allocated with name '_dac_set_command_word_a_65536_43'
;command_word_b            Allocated with name '_dac_set_command_word_b_65536_43'
;------------------------------------------------------------
;	spi.c:1148: void dac_set(uint16_t data_word)
;	-----------------------------------------
;	 function dac_set
;	-----------------------------------------
_dac_set:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_dac_set_data_word_65536_42
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	spi.c:1151: command_word_a = data_word<<4;
	mov	dptr,#_dac_set_data_word_65536_42
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
;	spi.c:1153: command_word_a &= A_mask;
	mov	ar4,r6
	mov	a,#0x7f
	anl	a,r7
	mov	r5,a
;	spi.c:1154: command_word_b |= B_mask;
	orl	ar7,#0x80
;	spi.c:1155: command_word_a |= active_mask;
	orl	ar5,#0x10
;	spi.c:1156: command_word_b |= active_mask;
	orl	ar7,#0x10
;	spi.c:1157: command_word_a &= Gain_increase_mask;
	anl	ar5,#0xdf
;	spi.c:1158: command_word_b &= Gain_increase_mask;
	anl	ar7,#0xdf
;	spi.c:1159: spi_write_word(command_word_a);
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_spi_write_word
	pop	ar6
	pop	ar7
;	spi.c:1160: spi_write_word(command_word_b);
	mov	dpl,r6
	mov	dph,r7
;	spi.c:1161: return;
;	spi.c:1162: }
	ljmp	_spi_write_word
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_output_control_change'
;------------------------------------------------------------
;	spi.c:1168: void dac_output_control_change(void)
;	-----------------------------------------
;	 function dac_output_control_change
;	-----------------------------------------
_dac_output_control_change:
;	spi.c:1170: if(mode==0)
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00102$
;	spi.c:1172: mode = 1;
	mov	dptr,#_mode
	mov	a,#0x01
	movx	@dptr,a
;	spi.c:1173: TR0=0;
;	assignBit
	clr	_TR0
	ret
00102$:
;	spi.c:1177: mode = 0;
	mov	dptr,#_mode
	clr	a
	movx	@dptr,a
;	spi.c:1178: TR0 = 1;
;	assignBit
	setb	_TR0
;	spi.c:1180: return;
;	spi.c:1181: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_next_wave'
;------------------------------------------------------------
;	spi.c:1188: void dac_next_wave(void)
;	-----------------------------------------
;	 function dac_next_wave
;	-----------------------------------------
_dac_next_wave:
;	spi.c:1190: if(wave == 3)
	mov	dptr,#_wave
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00102$
;	spi.c:1192: wave = 0;
	mov	dptr,#_wave
	clr	a
	movx	@dptr,a
	ret
00102$:
;	spi.c:1196: wave++;
	mov	dptr,#_wave
	mov	a,r7
	inc	a
	movx	@dptr,a
;	spi.c:1198: return;
;	spi.c:1199: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_increase_voltage'
;------------------------------------------------------------
;	spi.c:1205: void dac_increase_voltage(void)
;	-----------------------------------------
;	 function dac_increase_voltage
;	-----------------------------------------
_dac_increase_voltage:
;	spi.c:1207: gain=2;
	mov	dptr,#_gain
	mov	a,#0x02
	movx	@dptr,a
;	spi.c:1208: return;
;	spi.c:1209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_decrease_voltage'
;------------------------------------------------------------
;	spi.c:1215: void dac_decrease_voltage(void)
;	-----------------------------------------
;	 function dac_decrease_voltage
;	-----------------------------------------
_dac_decrease_voltage:
;	spi.c:1217: gain=1;
	mov	dptr,#_gain
	mov	a,#0x01
	movx	@dptr,a
;	spi.c:1218: return;
;	spi.c:1219: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
