                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl __sdcc_external_startup
                                     13 	.globl _get_input
                                     14 	.globl _putchar
                                     15 	.globl _hex_dump
                                     16 	.globl _i2c_EEPROM_Read
                                     17 	.globl _i2c_EEPROM_Write
                                     18 	.globl _eereset
                                     19 	.globl _i2c_init
                                     20 	.globl _printf_tiny
                                     21 	.globl _P5_7
                                     22 	.globl _P5_6
                                     23 	.globl _P5_5
                                     24 	.globl _P5_4
                                     25 	.globl _P5_3
                                     26 	.globl _P5_2
                                     27 	.globl _P5_1
                                     28 	.globl _P5_0
                                     29 	.globl _P4_7
                                     30 	.globl _P4_6
                                     31 	.globl _P4_5
                                     32 	.globl _P4_4
                                     33 	.globl _P4_3
                                     34 	.globl _P4_2
                                     35 	.globl _P4_1
                                     36 	.globl _P4_0
                                     37 	.globl _PX0L
                                     38 	.globl _PT0L
                                     39 	.globl _PX1L
                                     40 	.globl _PT1L
                                     41 	.globl _PSL
                                     42 	.globl _PT2L
                                     43 	.globl _PPCL
                                     44 	.globl _EC
                                     45 	.globl _CCF0
                                     46 	.globl _CCF1
                                     47 	.globl _CCF2
                                     48 	.globl _CCF3
                                     49 	.globl _CCF4
                                     50 	.globl _CR
                                     51 	.globl _CF
                                     52 	.globl _TF2
                                     53 	.globl _EXF2
                                     54 	.globl _RCLK
                                     55 	.globl _TCLK
                                     56 	.globl _EXEN2
                                     57 	.globl _TR2
                                     58 	.globl _C_T2
                                     59 	.globl _CP_RL2
                                     60 	.globl _T2CON_7
                                     61 	.globl _T2CON_6
                                     62 	.globl _T2CON_5
                                     63 	.globl _T2CON_4
                                     64 	.globl _T2CON_3
                                     65 	.globl _T2CON_2
                                     66 	.globl _T2CON_1
                                     67 	.globl _T2CON_0
                                     68 	.globl _PT2
                                     69 	.globl _ET2
                                     70 	.globl _CY
                                     71 	.globl _AC
                                     72 	.globl _F0
                                     73 	.globl _RS1
                                     74 	.globl _RS0
                                     75 	.globl _OV
                                     76 	.globl _F1
                                     77 	.globl _P
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _RD
                                     84 	.globl _WR
                                     85 	.globl _T1
                                     86 	.globl _T0
                                     87 	.globl _INT1
                                     88 	.globl _INT0
                                     89 	.globl _TXD
                                     90 	.globl _RXD
                                     91 	.globl _P3_7
                                     92 	.globl _P3_6
                                     93 	.globl _P3_5
                                     94 	.globl _P3_4
                                     95 	.globl _P3_3
                                     96 	.globl _P3_2
                                     97 	.globl _P3_1
                                     98 	.globl _P3_0
                                     99 	.globl _EA
                                    100 	.globl _ES
                                    101 	.globl _ET1
                                    102 	.globl _EX1
                                    103 	.globl _ET0
                                    104 	.globl _EX0
                                    105 	.globl _P2_7
                                    106 	.globl _P2_6
                                    107 	.globl _P2_5
                                    108 	.globl _P2_4
                                    109 	.globl _P2_3
                                    110 	.globl _P2_2
                                    111 	.globl _P2_1
                                    112 	.globl _P2_0
                                    113 	.globl _SM0
                                    114 	.globl _SM1
                                    115 	.globl _SM2
                                    116 	.globl _REN
                                    117 	.globl _TB8
                                    118 	.globl _RB8
                                    119 	.globl _TI
                                    120 	.globl _RI
                                    121 	.globl _P1_7
                                    122 	.globl _P1_6
                                    123 	.globl _P1_5
                                    124 	.globl _P1_4
                                    125 	.globl _P1_3
                                    126 	.globl _P1_2
                                    127 	.globl _P1_1
                                    128 	.globl _P1_0
                                    129 	.globl _TF1
                                    130 	.globl _TR1
                                    131 	.globl _TF0
                                    132 	.globl _TR0
                                    133 	.globl _IE1
                                    134 	.globl _IT1
                                    135 	.globl _IE0
                                    136 	.globl _IT0
                                    137 	.globl _P0_7
                                    138 	.globl _P0_6
                                    139 	.globl _P0_5
                                    140 	.globl _P0_4
                                    141 	.globl _P0_3
                                    142 	.globl _P0_2
                                    143 	.globl _P0_1
                                    144 	.globl _P0_0
                                    145 	.globl _EECON
                                    146 	.globl _KBF
                                    147 	.globl _KBE
                                    148 	.globl _KBLS
                                    149 	.globl _BRL
                                    150 	.globl _BDRCON
                                    151 	.globl _T2MOD
                                    152 	.globl _SPDAT
                                    153 	.globl _SPSTA
                                    154 	.globl _SPCON
                                    155 	.globl _SADEN
                                    156 	.globl _SADDR
                                    157 	.globl _WDTPRG
                                    158 	.globl _WDTRST
                                    159 	.globl _P5
                                    160 	.globl _P4
                                    161 	.globl _IPH1
                                    162 	.globl _IPL1
                                    163 	.globl _IPH0
                                    164 	.globl _IPL0
                                    165 	.globl _IEN1
                                    166 	.globl _IEN0
                                    167 	.globl _CMOD
                                    168 	.globl _CL
                                    169 	.globl _CH
                                    170 	.globl _CCON
                                    171 	.globl _CCAPM4
                                    172 	.globl _CCAPM3
                                    173 	.globl _CCAPM2
                                    174 	.globl _CCAPM1
                                    175 	.globl _CCAPM0
                                    176 	.globl _CCAP4L
                                    177 	.globl _CCAP3L
                                    178 	.globl _CCAP2L
                                    179 	.globl _CCAP1L
                                    180 	.globl _CCAP0L
                                    181 	.globl _CCAP4H
                                    182 	.globl _CCAP3H
                                    183 	.globl _CCAP2H
                                    184 	.globl _CCAP1H
                                    185 	.globl _CCAP0H
                                    186 	.globl _CKCON1
                                    187 	.globl _CKCON0
                                    188 	.globl _CKRL
                                    189 	.globl _AUXR1
                                    190 	.globl _AUXR
                                    191 	.globl _TH2
                                    192 	.globl _TL2
                                    193 	.globl _RCAP2H
                                    194 	.globl _RCAP2L
                                    195 	.globl _T2CON
                                    196 	.globl _B
                                    197 	.globl _ACC
                                    198 	.globl _PSW
                                    199 	.globl _IP
                                    200 	.globl _P3
                                    201 	.globl _IE
                                    202 	.globl _P2
                                    203 	.globl _SBUF
                                    204 	.globl _SCON
                                    205 	.globl _P1
                                    206 	.globl _TH1
                                    207 	.globl _TH0
                                    208 	.globl _TL1
                                    209 	.globl _TL0
                                    210 	.globl _TMOD
                                    211 	.globl _TCON
                                    212 	.globl _PCON
                                    213 	.globl _DPH
                                    214 	.globl _DPL
                                    215 	.globl _SP
                                    216 	.globl _P0
                                    217 ;--------------------------------------------------------
                                    218 ; special function registers
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           000080   222 _P0	=	0x0080
                           000081   223 _SP	=	0x0081
                           000082   224 _DPL	=	0x0082
                           000083   225 _DPH	=	0x0083
                           000087   226 _PCON	=	0x0087
                           000088   227 _TCON	=	0x0088
                           000089   228 _TMOD	=	0x0089
                           00008A   229 _TL0	=	0x008a
                           00008B   230 _TL1	=	0x008b
                           00008C   231 _TH0	=	0x008c
                           00008D   232 _TH1	=	0x008d
                           000090   233 _P1	=	0x0090
                           000098   234 _SCON	=	0x0098
                           000099   235 _SBUF	=	0x0099
                           0000A0   236 _P2	=	0x00a0
                           0000A8   237 _IE	=	0x00a8
                           0000B0   238 _P3	=	0x00b0
                           0000B8   239 _IP	=	0x00b8
                           0000D0   240 _PSW	=	0x00d0
                           0000E0   241 _ACC	=	0x00e0
                           0000F0   242 _B	=	0x00f0
                           0000C8   243 _T2CON	=	0x00c8
                           0000CA   244 _RCAP2L	=	0x00ca
                           0000CB   245 _RCAP2H	=	0x00cb
                           0000CC   246 _TL2	=	0x00cc
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 _AUXR	=	0x008e
                           0000A2   249 _AUXR1	=	0x00a2
                           000097   250 _CKRL	=	0x0097
                           00008F   251 _CKCON0	=	0x008f
                           0000AF   252 _CKCON1	=	0x00af
                           0000FA   253 _CCAP0H	=	0x00fa
                           0000FB   254 _CCAP1H	=	0x00fb
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 _CCAP3H	=	0x00fd
                           0000FE   257 _CCAP4H	=	0x00fe
                           0000EA   258 _CCAP0L	=	0x00ea
                           0000EB   259 _CCAP1L	=	0x00eb
                           0000EC   260 _CCAP2L	=	0x00ec
                           0000ED   261 _CCAP3L	=	0x00ed
                           0000EE   262 _CCAP4L	=	0x00ee
                           0000DA   263 _CCAPM0	=	0x00da
                           0000DB   264 _CCAPM1	=	0x00db
                           0000DC   265 _CCAPM2	=	0x00dc
                           0000DD   266 _CCAPM3	=	0x00dd
                           0000DE   267 _CCAPM4	=	0x00de
                           0000D8   268 _CCON	=	0x00d8
                           0000F9   269 _CH	=	0x00f9
                           0000E9   270 _CL	=	0x00e9
                           0000D9   271 _CMOD	=	0x00d9
                           0000A8   272 _IEN0	=	0x00a8
                           0000B1   273 _IEN1	=	0x00b1
                           0000B8   274 _IPL0	=	0x00b8
                           0000B7   275 _IPH0	=	0x00b7
                           0000B2   276 _IPL1	=	0x00b2
                           0000B3   277 _IPH1	=	0x00b3
                           0000C0   278 _P4	=	0x00c0
                           0000E8   279 _P5	=	0x00e8
                           0000A6   280 _WDTRST	=	0x00a6
                           0000A7   281 _WDTPRG	=	0x00a7
                           0000A9   282 _SADDR	=	0x00a9
                           0000B9   283 _SADEN	=	0x00b9
                           0000C3   284 _SPCON	=	0x00c3
                           0000C4   285 _SPSTA	=	0x00c4
                           0000C5   286 _SPDAT	=	0x00c5
                           0000C9   287 _T2MOD	=	0x00c9
                           00009B   288 _BDRCON	=	0x009b
                           00009A   289 _BRL	=	0x009a
                           00009C   290 _KBLS	=	0x009c
                           00009D   291 _KBE	=	0x009d
                           00009E   292 _KBF	=	0x009e
                           0000D2   293 _EECON	=	0x00d2
                                    294 ;--------------------------------------------------------
                                    295 ; special function bits
                                    296 ;--------------------------------------------------------
                                    297 	.area RSEG    (ABS,DATA)
      000000                        298 	.org 0x0000
                           000080   299 _P0_0	=	0x0080
                           000081   300 _P0_1	=	0x0081
                           000082   301 _P0_2	=	0x0082
                           000083   302 _P0_3	=	0x0083
                           000084   303 _P0_4	=	0x0084
                           000085   304 _P0_5	=	0x0085
                           000086   305 _P0_6	=	0x0086
                           000087   306 _P0_7	=	0x0087
                           000088   307 _IT0	=	0x0088
                           000089   308 _IE0	=	0x0089
                           00008A   309 _IT1	=	0x008a
                           00008B   310 _IE1	=	0x008b
                           00008C   311 _TR0	=	0x008c
                           00008D   312 _TF0	=	0x008d
                           00008E   313 _TR1	=	0x008e
                           00008F   314 _TF1	=	0x008f
                           000090   315 _P1_0	=	0x0090
                           000091   316 _P1_1	=	0x0091
                           000092   317 _P1_2	=	0x0092
                           000093   318 _P1_3	=	0x0093
                           000094   319 _P1_4	=	0x0094
                           000095   320 _P1_5	=	0x0095
                           000096   321 _P1_6	=	0x0096
                           000097   322 _P1_7	=	0x0097
                           000098   323 _RI	=	0x0098
                           000099   324 _TI	=	0x0099
                           00009A   325 _RB8	=	0x009a
                           00009B   326 _TB8	=	0x009b
                           00009C   327 _REN	=	0x009c
                           00009D   328 _SM2	=	0x009d
                           00009E   329 _SM1	=	0x009e
                           00009F   330 _SM0	=	0x009f
                           0000A0   331 _P2_0	=	0x00a0
                           0000A1   332 _P2_1	=	0x00a1
                           0000A2   333 _P2_2	=	0x00a2
                           0000A3   334 _P2_3	=	0x00a3
                           0000A4   335 _P2_4	=	0x00a4
                           0000A5   336 _P2_5	=	0x00a5
                           0000A6   337 _P2_6	=	0x00a6
                           0000A7   338 _P2_7	=	0x00a7
                           0000A8   339 _EX0	=	0x00a8
                           0000A9   340 _ET0	=	0x00a9
                           0000AA   341 _EX1	=	0x00aa
                           0000AB   342 _ET1	=	0x00ab
                           0000AC   343 _ES	=	0x00ac
                           0000AF   344 _EA	=	0x00af
                           0000B0   345 _P3_0	=	0x00b0
                           0000B1   346 _P3_1	=	0x00b1
                           0000B2   347 _P3_2	=	0x00b2
                           0000B3   348 _P3_3	=	0x00b3
                           0000B4   349 _P3_4	=	0x00b4
                           0000B5   350 _P3_5	=	0x00b5
                           0000B6   351 _P3_6	=	0x00b6
                           0000B7   352 _P3_7	=	0x00b7
                           0000B0   353 _RXD	=	0x00b0
                           0000B1   354 _TXD	=	0x00b1
                           0000B2   355 _INT0	=	0x00b2
                           0000B3   356 _INT1	=	0x00b3
                           0000B4   357 _T0	=	0x00b4
                           0000B5   358 _T1	=	0x00b5
                           0000B6   359 _WR	=	0x00b6
                           0000B7   360 _RD	=	0x00b7
                           0000B8   361 _PX0	=	0x00b8
                           0000B9   362 _PT0	=	0x00b9
                           0000BA   363 _PX1	=	0x00ba
                           0000BB   364 _PT1	=	0x00bb
                           0000BC   365 _PS	=	0x00bc
                           0000D0   366 _P	=	0x00d0
                           0000D1   367 _F1	=	0x00d1
                           0000D2   368 _OV	=	0x00d2
                           0000D3   369 _RS0	=	0x00d3
                           0000D4   370 _RS1	=	0x00d4
                           0000D5   371 _F0	=	0x00d5
                           0000D6   372 _AC	=	0x00d6
                           0000D7   373 _CY	=	0x00d7
                           0000AD   374 _ET2	=	0x00ad
                           0000BD   375 _PT2	=	0x00bd
                           0000C8   376 _T2CON_0	=	0x00c8
                           0000C9   377 _T2CON_1	=	0x00c9
                           0000CA   378 _T2CON_2	=	0x00ca
                           0000CB   379 _T2CON_3	=	0x00cb
                           0000CC   380 _T2CON_4	=	0x00cc
                           0000CD   381 _T2CON_5	=	0x00cd
                           0000CE   382 _T2CON_6	=	0x00ce
                           0000CF   383 _T2CON_7	=	0x00cf
                           0000C8   384 _CP_RL2	=	0x00c8
                           0000C9   385 _C_T2	=	0x00c9
                           0000CA   386 _TR2	=	0x00ca
                           0000CB   387 _EXEN2	=	0x00cb
                           0000CC   388 _TCLK	=	0x00cc
                           0000CD   389 _RCLK	=	0x00cd
                           0000CE   390 _EXF2	=	0x00ce
                           0000CF   391 _TF2	=	0x00cf
                           0000DF   392 _CF	=	0x00df
                           0000DE   393 _CR	=	0x00de
                           0000DC   394 _CCF4	=	0x00dc
                           0000DB   395 _CCF3	=	0x00db
                           0000DA   396 _CCF2	=	0x00da
                           0000D9   397 _CCF1	=	0x00d9
                           0000D8   398 _CCF0	=	0x00d8
                           0000AE   399 _EC	=	0x00ae
                           0000BE   400 _PPCL	=	0x00be
                           0000BD   401 _PT2L	=	0x00bd
                           0000BC   402 _PSL	=	0x00bc
                           0000BB   403 _PT1L	=	0x00bb
                           0000BA   404 _PX1L	=	0x00ba
                           0000B9   405 _PT0L	=	0x00b9
                           0000B8   406 _PX0L	=	0x00b8
                           0000C0   407 _P4_0	=	0x00c0
                           0000C1   408 _P4_1	=	0x00c1
                           0000C2   409 _P4_2	=	0x00c2
                           0000C3   410 _P4_3	=	0x00c3
                           0000C4   411 _P4_4	=	0x00c4
                           0000C5   412 _P4_5	=	0x00c5
                           0000C6   413 _P4_6	=	0x00c6
                           0000C7   414 _P4_7	=	0x00c7
                           0000E8   415 _P5_0	=	0x00e8
                           0000E9   416 _P5_1	=	0x00e9
                           0000EA   417 _P5_2	=	0x00ea
                           0000EB   418 _P5_3	=	0x00eb
                           0000EC   419 _P5_4	=	0x00ec
                           0000ED   420 _P5_5	=	0x00ed
                           0000EE   421 _P5_6	=	0x00ee
                           0000EF   422 _P5_7	=	0x00ef
                                    423 ;--------------------------------------------------------
                                    424 ; overlayable register banks
                                    425 ;--------------------------------------------------------
                                    426 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        427 	.ds 8
                                    428 ;--------------------------------------------------------
                                    429 ; internal ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area DSEG    (DATA)
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable items in internal ram
                                    434 ;--------------------------------------------------------
                                    435 ;--------------------------------------------------------
                                    436 ; Stack segment in internal ram
                                    437 ;--------------------------------------------------------
                                    438 	.area	SSEG
      000026                        439 __start__stack:
      000026                        440 	.ds	1
                                    441 
                                    442 ;--------------------------------------------------------
                                    443 ; indirectly addressable internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area ISEG    (DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; absolute internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area IABS    (ABS,DATA)
                                    450 	.area IABS    (ABS,DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; bit data
                                    453 ;--------------------------------------------------------
                                    454 	.area BSEG    (BIT)
                                    455 ;--------------------------------------------------------
                                    456 ; paged external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area PSEG    (PAG,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XSEG    (XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; absolute external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XABS    (ABS,XDATA)
                                    467 ;--------------------------------------------------------
                                    468 ; external initialized ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area XISEG   (XDATA)
                                    471 	.area HOME    (CODE)
                                    472 	.area GSINIT0 (CODE)
                                    473 	.area GSINIT1 (CODE)
                                    474 	.area GSINIT2 (CODE)
                                    475 	.area GSINIT3 (CODE)
                                    476 	.area GSINIT4 (CODE)
                                    477 	.area GSINIT5 (CODE)
                                    478 	.area GSINIT  (CODE)
                                    479 	.area GSFINAL (CODE)
                                    480 	.area CSEG    (CODE)
                                    481 ;--------------------------------------------------------
                                    482 ; interrupt vector
                                    483 ;--------------------------------------------------------
                                    484 	.area HOME    (CODE)
      002000                        485 __interrupt_vect:
      002000 02 20 06         [24]  486 	ljmp	__sdcc_gsinit_startup
                                    487 ;--------------------------------------------------------
                                    488 ; global & static initialisations
                                    489 ;--------------------------------------------------------
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT  (CODE)
                                    492 	.area GSFINAL (CODE)
                                    493 	.area GSINIT  (CODE)
                                    494 	.globl __sdcc_gsinit_startup
                                    495 	.globl __sdcc_program_startup
                                    496 	.globl __start__stack
                                    497 	.globl __mcs51_genXINIT
                                    498 	.globl __mcs51_genXRAMCLEAR
                                    499 	.globl __mcs51_genRAMCLEAR
                                    500 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  501 	ljmp	__sdcc_program_startup
                                    502 ;--------------------------------------------------------
                                    503 ; Home
                                    504 ;--------------------------------------------------------
                                    505 	.area HOME    (CODE)
                                    506 	.area HOME    (CODE)
      002003                        507 __sdcc_program_startup:
      002003 02 33 0C         [24]  508 	ljmp	_main
                                    509 ;	return from main will return to caller
                                    510 ;--------------------------------------------------------
                                    511 ; code
                                    512 ;--------------------------------------------------------
                                    513 	.area CSEG    (CODE)
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    516 ;------------------------------------------------------------
                                    517 ;	main.c:12: _sdcc_external_startup()
                                    518 ;	-----------------------------------------
                                    519 ;	 function _sdcc_external_startup
                                    520 ;	-----------------------------------------
      003305                        521 __sdcc_external_startup:
                           000007   522 	ar7 = 0x07
                           000006   523 	ar6 = 0x06
                           000005   524 	ar5 = 0x05
                           000004   525 	ar4 = 0x04
                           000003   526 	ar3 = 0x03
                           000002   527 	ar2 = 0x02
                           000001   528 	ar1 = 0x01
                           000000   529 	ar0 = 0x00
                                    530 ;	main.c:14: AUXR |= 0X0C;  // Set some control register (specific to the microcontroller)
      003305 43 8E 0C         [24]  531 	orl	_AUXR,#0x0c
                                    532 ;	main.c:15: return 0;
      003308 90 00 00         [24]  533 	mov	dptr,#0x0000
                                    534 ;	main.c:16: }
      00330B 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'main'
                                    538 ;------------------------------------------------------------
                                    539 ;num                       Allocated with name '_main_num_131073_106'
                                    540 ;------------------------------------------------------------
                                    541 ;	main.c:19: void main(void)
                                    542 ;	-----------------------------------------
                                    543 ;	 function main
                                    544 ;	-----------------------------------------
      00330C                        545 _main:
                                    546 ;	main.c:22: display:
      00330C                        547 00101$:
                                    548 ;	main.c:23: printf_tiny("\n\r**************************************HELLO :)*******************************\r");
      00330C 74 95            [12]  549 	mov	a,#___str_0
      00330E C0 E0            [24]  550 	push	acc
      003310 74 40            [12]  551 	mov	a,#(___str_0 >> 8)
      003312 C0 E0            [24]  552 	push	acc
      003314 12 37 0C         [24]  553 	lcall	_printf_tiny
      003317 15 81            [12]  554 	dec	sp
      003319 15 81            [12]  555 	dec	sp
                                    556 ;	main.c:24: printf_tiny("\n\r1. Write Byte onto EEPROM\n\r");
      00331B 74 E6            [12]  557 	mov	a,#___str_1
      00331D C0 E0            [24]  558 	push	acc
      00331F 74 40            [12]  559 	mov	a,#(___str_1 >> 8)
      003321 C0 E0            [24]  560 	push	acc
      003323 12 37 0C         [24]  561 	lcall	_printf_tiny
      003326 15 81            [12]  562 	dec	sp
      003328 15 81            [12]  563 	dec	sp
                                    564 ;	main.c:25: printf_tiny("\n\r2. Read Byte onto EEPROM\n\r");
      00332A 74 04            [12]  565 	mov	a,#___str_2
      00332C C0 E0            [24]  566 	push	acc
      00332E 74 41            [12]  567 	mov	a,#(___str_2 >> 8)
      003330 C0 E0            [24]  568 	push	acc
      003332 12 37 0C         [24]  569 	lcall	_printf_tiny
      003335 15 81            [12]  570 	dec	sp
      003337 15 81            [12]  571 	dec	sp
                                    572 ;	main.c:26: printf_tiny("\n\r3. Hex Dump\n\r");
      003339 74 21            [12]  573 	mov	a,#___str_3
      00333B C0 E0            [24]  574 	push	acc
      00333D 74 41            [12]  575 	mov	a,#(___str_3 >> 8)
      00333F C0 E0            [24]  576 	push	acc
      003341 12 37 0C         [24]  577 	lcall	_printf_tiny
      003344 15 81            [12]  578 	dec	sp
      003346 15 81            [12]  579 	dec	sp
                                    580 ;	main.c:27: printf_tiny("\n\r4. Reset EEPROM\n\r");
      003348 74 31            [12]  581 	mov	a,#___str_4
      00334A C0 E0            [24]  582 	push	acc
      00334C 74 41            [12]  583 	mov	a,#(___str_4 >> 8)
      00334E C0 E0            [24]  584 	push	acc
      003350 12 37 0C         [24]  585 	lcall	_printf_tiny
      003353 15 81            [12]  586 	dec	sp
      003355 15 81            [12]  587 	dec	sp
                                    588 ;	main.c:28: printf_tiny("\n\r5. Goto menu\n\r");
      003357 74 45            [12]  589 	mov	a,#___str_5
      003359 C0 E0            [24]  590 	push	acc
      00335B 74 41            [12]  591 	mov	a,#(___str_5 >> 8)
      00335D C0 E0            [24]  592 	push	acc
      00335F 12 37 0C         [24]  593 	lcall	_printf_tiny
      003362 15 81            [12]  594 	dec	sp
      003364 15 81            [12]  595 	dec	sp
                                    596 ;	main.c:29: printf_tiny("\r********************************************************************************\r");
      003366 74 56            [12]  597 	mov	a,#___str_6
      003368 C0 E0            [24]  598 	push	acc
      00336A 74 41            [12]  599 	mov	a,#(___str_6 >> 8)
      00336C C0 E0            [24]  600 	push	acc
      00336E 12 37 0C         [24]  601 	lcall	_printf_tiny
      003371 15 81            [12]  602 	dec	sp
      003373 15 81            [12]  603 	dec	sp
                                    604 ;	main.c:30: while(1)
      003375                        605 00117$:
                                    606 ;	main.c:32: i2c_init();
      003375 12 20 9C         [24]  607 	lcall	_i2c_init
                                    608 ;	main.c:33: printf_tiny("\n\rEnter a number from menu or press 5 to see menu again\n\r");
      003378 74 A9            [12]  609 	mov	a,#___str_7
      00337A C0 E0            [24]  610 	push	acc
      00337C 74 41            [12]  611 	mov	a,#(___str_7 >> 8)
      00337E C0 E0            [24]  612 	push	acc
      003380 12 37 0C         [24]  613 	lcall	_printf_tiny
      003383 15 81            [12]  614 	dec	sp
      003385 15 81            [12]  615 	dec	sp
                                    616 ;	main.c:34: uint8_t num=get_input();
      003387 12 34 4D         [24]  617 	lcall	_get_input
      00338A AE 82            [24]  618 	mov	r6,dpl
                                    619 ;	main.c:35: putchar(num);
      00338C 8E 05            [24]  620 	mov	ar5,r6
      00338E 7F 00            [12]  621 	mov	r7,#0x00
      003390 8D 82            [24]  622 	mov	dpl,r5
      003392 8F 83            [24]  623 	mov	dph,r7
      003394 C0 06            [24]  624 	push	ar6
      003396 12 34 20         [24]  625 	lcall	_putchar
      003399 D0 06            [24]  626 	pop	ar6
                                    627 ;	main.c:36: if(num==1)
      00339B BE 01 23         [24]  628 	cjne	r6,#0x01,00114$
                                    629 ;	main.c:38: printf_tiny("\n\rIn Write Byte Condition\n\r");
      00339E 74 E3            [12]  630 	mov	a,#___str_8
      0033A0 C0 E0            [24]  631 	push	acc
      0033A2 74 41            [12]  632 	mov	a,#(___str_8 >> 8)
      0033A4 C0 E0            [24]  633 	push	acc
      0033A6 12 37 0C         [24]  634 	lcall	_printf_tiny
      0033A9 15 81            [12]  635 	dec	sp
      0033AB 15 81            [12]  636 	dec	sp
                                    637 ;	main.c:39: i2c_EEPROM_Write();
      0033AD 12 22 18         [24]  638 	lcall	_i2c_EEPROM_Write
                                    639 ;	main.c:40: printf_tiny("\n\rWriting Byte....\n\r");
      0033B0 74 FF            [12]  640 	mov	a,#___str_9
      0033B2 C0 E0            [24]  641 	push	acc
      0033B4 74 41            [12]  642 	mov	a,#(___str_9 >> 8)
      0033B6 C0 E0            [24]  643 	push	acc
      0033B8 12 37 0C         [24]  644 	lcall	_printf_tiny
      0033BB 15 81            [12]  645 	dec	sp
      0033BD 15 81            [12]  646 	dec	sp
      0033BF 80 B4            [24]  647 	sjmp	00117$
      0033C1                        648 00114$:
                                    649 ;	main.c:42: else if(num==2)
      0033C1 BE 02 23         [24]  650 	cjne	r6,#0x02,00111$
                                    651 ;	main.c:44: printf_tiny("\n\rIn Read Byte Condition\n\r");
      0033C4 74 14            [12]  652 	mov	a,#___str_10
      0033C6 C0 E0            [24]  653 	push	acc
      0033C8 74 42            [12]  654 	mov	a,#(___str_10 >> 8)
      0033CA C0 E0            [24]  655 	push	acc
      0033CC 12 37 0C         [24]  656 	lcall	_printf_tiny
      0033CF 15 81            [12]  657 	dec	sp
      0033D1 15 81            [12]  658 	dec	sp
                                    659 ;	main.c:45: i2c_EEPROM_Read();
      0033D3 12 29 46         [24]  660 	lcall	_i2c_EEPROM_Read
                                    661 ;	main.c:46: printf_tiny("\n\rReading Byte....\n\r");
      0033D6 74 2F            [12]  662 	mov	a,#___str_11
      0033D8 C0 E0            [24]  663 	push	acc
      0033DA 74 42            [12]  664 	mov	a,#(___str_11 >> 8)
      0033DC C0 E0            [24]  665 	push	acc
      0033DE 12 37 0C         [24]  666 	lcall	_printf_tiny
      0033E1 15 81            [12]  667 	dec	sp
      0033E3 15 81            [12]  668 	dec	sp
      0033E5 80 8E            [24]  669 	sjmp	00117$
      0033E7                        670 00111$:
                                    671 ;	main.c:48: else if(num==3)
      0033E7 BE 03 15         [24]  672 	cjne	r6,#0x03,00108$
                                    673 ;	main.c:50: printf_tiny("\n\rHex Dump\n\r");
      0033EA 74 44            [12]  674 	mov	a,#___str_12
      0033EC C0 E0            [24]  675 	push	acc
      0033EE 74 42            [12]  676 	mov	a,#(___str_12 >> 8)
      0033F0 C0 E0            [24]  677 	push	acc
      0033F2 12 37 0C         [24]  678 	lcall	_printf_tiny
      0033F5 15 81            [12]  679 	dec	sp
      0033F7 15 81            [12]  680 	dec	sp
                                    681 ;	main.c:51: hex_dump();
      0033F9 12 31 28         [24]  682 	lcall	_hex_dump
      0033FC 02 33 75         [24]  683 	ljmp	00117$
      0033FF                        684 00108$:
                                    685 ;	main.c:53: else if(num==4)
      0033FF BE 04 15         [24]  686 	cjne	r6,#0x04,00105$
                                    687 ;	main.c:55: printf_tiny("\n\rReset EEPROM\n\r");
      003402 74 51            [12]  688 	mov	a,#___str_13
      003404 C0 E0            [24]  689 	push	acc
      003406 74 42            [12]  690 	mov	a,#(___str_13 >> 8)
      003408 C0 E0            [24]  691 	push	acc
      00340A 12 37 0C         [24]  692 	lcall	_printf_tiny
      00340D 15 81            [12]  693 	dec	sp
      00340F 15 81            [12]  694 	dec	sp
                                    695 ;	main.c:56: eereset();
      003411 12 21 23         [24]  696 	lcall	_eereset
      003414 02 33 75         [24]  697 	ljmp	00117$
      003417                        698 00105$:
                                    699 ;	main.c:58: else if(num==5)
      003417 BE 05 03         [24]  700 	cjne	r6,#0x05,00157$
      00341A 02 33 0C         [24]  701 	ljmp	00101$
      00341D                        702 00157$:
                                    703 ;	main.c:60: goto display;
                                    704 ;	main.c:64: }
      00341D 02 33 75         [24]  705 	ljmp	00117$
                                    706 	.area CSEG    (CODE)
                                    707 	.area CONST   (CODE)
                                    708 	.area CONST   (CODE)
      004095                        709 ___str_0:
      004095 0A                     710 	.db 0x0a
      004096 0D                     711 	.db 0x0d
      004097 2A 2A 2A 2A 2A 2A 2A   712 	.ascii "**************************************HELLO :)**************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 48 45 4C 4C
             4F 20 3A 29 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0040D3 2A 2A 2A 2A 2A 2A 2A   713 	.ascii "*****************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A
      0040E4 0D                     714 	.db 0x0d
      0040E5 00                     715 	.db 0x00
                                    716 	.area CSEG    (CODE)
                                    717 	.area CONST   (CODE)
      0040E6                        718 ___str_1:
      0040E6 0A                     719 	.db 0x0a
      0040E7 0D                     720 	.db 0x0d
      0040E8 31 2E 20 57 72 69 74   721 	.ascii "1. Write Byte onto EEPROM"
             65 20 42 79 74 65 20
             6F 6E 74 6F 20 45 45
             50 52 4F 4D
      004101 0A                     722 	.db 0x0a
      004102 0D                     723 	.db 0x0d
      004103 00                     724 	.db 0x00
                                    725 	.area CSEG    (CODE)
                                    726 	.area CONST   (CODE)
      004104                        727 ___str_2:
      004104 0A                     728 	.db 0x0a
      004105 0D                     729 	.db 0x0d
      004106 32 2E 20 52 65 61 64   730 	.ascii "2. Read Byte onto EEPROM"
             20 42 79 74 65 20 6F
             6E 74 6F 20 45 45 50
             52 4F 4D
      00411E 0A                     731 	.db 0x0a
      00411F 0D                     732 	.db 0x0d
      004120 00                     733 	.db 0x00
                                    734 	.area CSEG    (CODE)
                                    735 	.area CONST   (CODE)
      004121                        736 ___str_3:
      004121 0A                     737 	.db 0x0a
      004122 0D                     738 	.db 0x0d
      004123 33 2E 20 48 65 78 20   739 	.ascii "3. Hex Dump"
             44 75 6D 70
      00412E 0A                     740 	.db 0x0a
      00412F 0D                     741 	.db 0x0d
      004130 00                     742 	.db 0x00
                                    743 	.area CSEG    (CODE)
                                    744 	.area CONST   (CODE)
      004131                        745 ___str_4:
      004131 0A                     746 	.db 0x0a
      004132 0D                     747 	.db 0x0d
      004133 34 2E 20 52 65 73 65   748 	.ascii "4. Reset EEPROM"
             74 20 45 45 50 52 4F
             4D
      004142 0A                     749 	.db 0x0a
      004143 0D                     750 	.db 0x0d
      004144 00                     751 	.db 0x00
                                    752 	.area CSEG    (CODE)
                                    753 	.area CONST   (CODE)
      004145                        754 ___str_5:
      004145 0A                     755 	.db 0x0a
      004146 0D                     756 	.db 0x0d
      004147 35 2E 20 47 6F 74 6F   757 	.ascii "5. Goto menu"
             20 6D 65 6E 75
      004153 0A                     758 	.db 0x0a
      004154 0D                     759 	.db 0x0d
      004155 00                     760 	.db 0x00
                                    761 	.area CSEG    (CODE)
                                    762 	.area CONST   (CODE)
      004156                        763 ___str_6:
      004156 0D                     764 	.db 0x0d
      004157 2A 2A 2A 2A 2A 2A 2A   765 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      004193 2A 2A 2A 2A 2A 2A 2A   766 	.ascii "********************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A
      0041A7 0D                     767 	.db 0x0d
      0041A8 00                     768 	.db 0x00
                                    769 	.area CSEG    (CODE)
                                    770 	.area CONST   (CODE)
      0041A9                        771 ___str_7:
      0041A9 0A                     772 	.db 0x0a
      0041AA 0D                     773 	.db 0x0d
      0041AB 45 6E 74 65 72 20 61   774 	.ascii "Enter a number from menu or press 5 to see menu again"
             20 6E 75 6D 62 65 72
             20 66 72 6F 6D 20 6D
             65 6E 75 20 6F 72 20
             70 72 65 73 73 20 35
             20 74 6F 20 73 65 65
             20 6D 65 6E 75 20 61
             67 61 69 6E
      0041E0 0A                     775 	.db 0x0a
      0041E1 0D                     776 	.db 0x0d
      0041E2 00                     777 	.db 0x00
                                    778 	.area CSEG    (CODE)
                                    779 	.area CONST   (CODE)
      0041E3                        780 ___str_8:
      0041E3 0A                     781 	.db 0x0a
      0041E4 0D                     782 	.db 0x0d
      0041E5 49 6E 20 57 72 69 74   783 	.ascii "In Write Byte Condition"
             65 20 42 79 74 65 20
             43 6F 6E 64 69 74 69
             6F 6E
      0041FC 0A                     784 	.db 0x0a
      0041FD 0D                     785 	.db 0x0d
      0041FE 00                     786 	.db 0x00
                                    787 	.area CSEG    (CODE)
                                    788 	.area CONST   (CODE)
      0041FF                        789 ___str_9:
      0041FF 0A                     790 	.db 0x0a
      004200 0D                     791 	.db 0x0d
      004201 57 72 69 74 69 6E 67   792 	.ascii "Writing Byte...."
             20 42 79 74 65 2E 2E
             2E 2E
      004211 0A                     793 	.db 0x0a
      004212 0D                     794 	.db 0x0d
      004213 00                     795 	.db 0x00
                                    796 	.area CSEG    (CODE)
                                    797 	.area CONST   (CODE)
      004214                        798 ___str_10:
      004214 0A                     799 	.db 0x0a
      004215 0D                     800 	.db 0x0d
      004216 49 6E 20 52 65 61 64   801 	.ascii "In Read Byte Condition"
             20 42 79 74 65 20 43
             6F 6E 64 69 74 69 6F
             6E
      00422C 0A                     802 	.db 0x0a
      00422D 0D                     803 	.db 0x0d
      00422E 00                     804 	.db 0x00
                                    805 	.area CSEG    (CODE)
                                    806 	.area CONST   (CODE)
      00422F                        807 ___str_11:
      00422F 0A                     808 	.db 0x0a
      004230 0D                     809 	.db 0x0d
      004231 52 65 61 64 69 6E 67   810 	.ascii "Reading Byte...."
             20 42 79 74 65 2E 2E
             2E 2E
      004241 0A                     811 	.db 0x0a
      004242 0D                     812 	.db 0x0d
      004243 00                     813 	.db 0x00
                                    814 	.area CSEG    (CODE)
                                    815 	.area CONST   (CODE)
      004244                        816 ___str_12:
      004244 0A                     817 	.db 0x0a
      004245 0D                     818 	.db 0x0d
      004246 48 65 78 20 44 75 6D   819 	.ascii "Hex Dump"
             70
      00424E 0A                     820 	.db 0x0a
      00424F 0D                     821 	.db 0x0d
      004250 00                     822 	.db 0x00
                                    823 	.area CSEG    (CODE)
                                    824 	.area CONST   (CODE)
      004251                        825 ___str_13:
      004251 0A                     826 	.db 0x0a
      004252 0D                     827 	.db 0x0d
      004253 52 65 73 65 74 20 45   828 	.ascii "Reset EEPROM"
             45 50 52 4F 4D
      00425F 0A                     829 	.db 0x0a
      004260 0D                     830 	.db 0x0d
      004261 00                     831 	.db 0x00
                                    832 	.area CSEG    (CODE)
                                    833 	.area XINIT   (CODE)
                                    834 	.area CABS    (ABS,CODE)
