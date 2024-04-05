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
                                     13 	.globl _printf_tiny
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _TXD0
                                     90 	.globl _RXD0
                                     91 	.globl _BREG_F7
                                     92 	.globl _BREG_F6
                                     93 	.globl _BREG_F5
                                     94 	.globl _BREG_F4
                                     95 	.globl _BREG_F3
                                     96 	.globl _BREG_F2
                                     97 	.globl _BREG_F1
                                     98 	.globl _BREG_F0
                                     99 	.globl _P5_7
                                    100 	.globl _P5_6
                                    101 	.globl _P5_5
                                    102 	.globl _P5_4
                                    103 	.globl _P5_3
                                    104 	.globl _P5_2
                                    105 	.globl _P5_1
                                    106 	.globl _P5_0
                                    107 	.globl _P4_7
                                    108 	.globl _P4_6
                                    109 	.globl _P4_5
                                    110 	.globl _P4_4
                                    111 	.globl _P4_3
                                    112 	.globl _P4_2
                                    113 	.globl _P4_1
                                    114 	.globl _P4_0
                                    115 	.globl _PX0L
                                    116 	.globl _PT0L
                                    117 	.globl _PX1L
                                    118 	.globl _PT1L
                                    119 	.globl _PSL
                                    120 	.globl _PT2L
                                    121 	.globl _PPCL
                                    122 	.globl _EC
                                    123 	.globl _CCF0
                                    124 	.globl _CCF1
                                    125 	.globl _CCF2
                                    126 	.globl _CCF3
                                    127 	.globl _CCF4
                                    128 	.globl _CR
                                    129 	.globl _CF
                                    130 	.globl _TF2
                                    131 	.globl _EXF2
                                    132 	.globl _RCLK
                                    133 	.globl _TCLK
                                    134 	.globl _EXEN2
                                    135 	.globl _TR2
                                    136 	.globl _C_T2
                                    137 	.globl _CP_RL2
                                    138 	.globl _T2CON_7
                                    139 	.globl _T2CON_6
                                    140 	.globl _T2CON_5
                                    141 	.globl _T2CON_4
                                    142 	.globl _T2CON_3
                                    143 	.globl _T2CON_2
                                    144 	.globl _T2CON_1
                                    145 	.globl _T2CON_0
                                    146 	.globl _PT2
                                    147 	.globl _ET2
                                    148 	.globl _B
                                    149 	.globl _ACC
                                    150 	.globl _PSW
                                    151 	.globl _IP
                                    152 	.globl _P3
                                    153 	.globl _IE
                                    154 	.globl _P2
                                    155 	.globl _SBUF
                                    156 	.globl _SCON
                                    157 	.globl _P1
                                    158 	.globl _TH1
                                    159 	.globl _TH0
                                    160 	.globl _TL1
                                    161 	.globl _TL0
                                    162 	.globl _TMOD
                                    163 	.globl _TCON
                                    164 	.globl _PCON
                                    165 	.globl _DPH
                                    166 	.globl _DPL
                                    167 	.globl _SP
                                    168 	.globl _P0
                                    169 	.globl _SBUF0
                                    170 	.globl _DP0L
                                    171 	.globl _DP0H
                                    172 	.globl _EECON
                                    173 	.globl _KBF
                                    174 	.globl _KBE
                                    175 	.globl _KBLS
                                    176 	.globl _BRL
                                    177 	.globl _BDRCON
                                    178 	.globl _T2MOD
                                    179 	.globl _SPDAT
                                    180 	.globl _SPSTA
                                    181 	.globl _SPCON
                                    182 	.globl _SADEN
                                    183 	.globl _SADDR
                                    184 	.globl _WDTPRG
                                    185 	.globl _WDTRST
                                    186 	.globl _P5
                                    187 	.globl _P4
                                    188 	.globl _IPH1
                                    189 	.globl _IPL1
                                    190 	.globl _IPH0
                                    191 	.globl _IPL0
                                    192 	.globl _IEN1
                                    193 	.globl _IEN0
                                    194 	.globl _CMOD
                                    195 	.globl _CL
                                    196 	.globl _CH
                                    197 	.globl _CCON
                                    198 	.globl _CCAPM4
                                    199 	.globl _CCAPM3
                                    200 	.globl _CCAPM2
                                    201 	.globl _CCAPM1
                                    202 	.globl _CCAPM0
                                    203 	.globl _CCAP4L
                                    204 	.globl _CCAP3L
                                    205 	.globl _CCAP2L
                                    206 	.globl _CCAP1L
                                    207 	.globl _CCAP0L
                                    208 	.globl _CCAP4H
                                    209 	.globl _CCAP3H
                                    210 	.globl _CCAP2H
                                    211 	.globl _CCAP1H
                                    212 	.globl _CCAP0H
                                    213 	.globl _CKCON1
                                    214 	.globl _CKCON0
                                    215 	.globl _CKRL
                                    216 	.globl _AUXR1
                                    217 	.globl _AUXR
                                    218 	.globl _TH2
                                    219 	.globl _TL2
                                    220 	.globl _RCAP2H
                                    221 	.globl _RCAP2L
                                    222 	.globl _T2CON
                                    223 	.globl _watchdog_trigger
                                    224 	.globl _num
                                    225 	.globl _putchar
                                    226 	.globl _getchar
                                    227 	.globl _get_input
                                    228 	.globl _pwm_init
                                    229 	.globl _pwm_stop
                                    230 	.globl _watchdog_timer
                                    231 	.globl _init_mode
                                    232 	.globl _watchdog_control
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           0000C8   238 _T2CON	=	0x00c8
                           0000CA   239 _RCAP2L	=	0x00ca
                           0000CB   240 _RCAP2H	=	0x00cb
                           0000CC   241 _TL2	=	0x00cc
                           0000CD   242 _TH2	=	0x00cd
                           00008E   243 _AUXR	=	0x008e
                           0000A2   244 _AUXR1	=	0x00a2
                           000097   245 _CKRL	=	0x0097
                           00008F   246 _CKCON0	=	0x008f
                           0000AF   247 _CKCON1	=	0x00af
                           0000FA   248 _CCAP0H	=	0x00fa
                           0000FB   249 _CCAP1H	=	0x00fb
                           0000FC   250 _CCAP2H	=	0x00fc
                           0000FD   251 _CCAP3H	=	0x00fd
                           0000FE   252 _CCAP4H	=	0x00fe
                           0000EA   253 _CCAP0L	=	0x00ea
                           0000EB   254 _CCAP1L	=	0x00eb
                           0000EC   255 _CCAP2L	=	0x00ec
                           0000ED   256 _CCAP3L	=	0x00ed
                           0000EE   257 _CCAP4L	=	0x00ee
                           0000DA   258 _CCAPM0	=	0x00da
                           0000DB   259 _CCAPM1	=	0x00db
                           0000DC   260 _CCAPM2	=	0x00dc
                           0000DD   261 _CCAPM3	=	0x00dd
                           0000DE   262 _CCAPM4	=	0x00de
                           0000D8   263 _CCON	=	0x00d8
                           0000F9   264 _CH	=	0x00f9
                           0000E9   265 _CL	=	0x00e9
                           0000D9   266 _CMOD	=	0x00d9
                           0000A8   267 _IEN0	=	0x00a8
                           0000B1   268 _IEN1	=	0x00b1
                           0000B8   269 _IPL0	=	0x00b8
                           0000B7   270 _IPH0	=	0x00b7
                           0000B2   271 _IPL1	=	0x00b2
                           0000B3   272 _IPH1	=	0x00b3
                           0000C0   273 _P4	=	0x00c0
                           0000E8   274 _P5	=	0x00e8
                           0000A6   275 _WDTRST	=	0x00a6
                           0000A7   276 _WDTPRG	=	0x00a7
                           0000A9   277 _SADDR	=	0x00a9
                           0000B9   278 _SADEN	=	0x00b9
                           0000C3   279 _SPCON	=	0x00c3
                           0000C4   280 _SPSTA	=	0x00c4
                           0000C5   281 _SPDAT	=	0x00c5
                           0000C9   282 _T2MOD	=	0x00c9
                           00009B   283 _BDRCON	=	0x009b
                           00009A   284 _BRL	=	0x009a
                           00009C   285 _KBLS	=	0x009c
                           00009D   286 _KBE	=	0x009d
                           00009E   287 _KBF	=	0x009e
                           0000D2   288 _EECON	=	0x00d2
                           000083   289 _DP0H	=	0x0083
                           000082   290 _DP0L	=	0x0082
                           000099   291 _SBUF0	=	0x0099
                           000080   292 _P0	=	0x0080
                           000081   293 _SP	=	0x0081
                           000082   294 _DPL	=	0x0082
                           000083   295 _DPH	=	0x0083
                           000087   296 _PCON	=	0x0087
                           000088   297 _TCON	=	0x0088
                           000089   298 _TMOD	=	0x0089
                           00008A   299 _TL0	=	0x008a
                           00008B   300 _TL1	=	0x008b
                           00008C   301 _TH0	=	0x008c
                           00008D   302 _TH1	=	0x008d
                           000090   303 _P1	=	0x0090
                           000098   304 _SCON	=	0x0098
                           000099   305 _SBUF	=	0x0099
                           0000A0   306 _P2	=	0x00a0
                           0000A8   307 _IE	=	0x00a8
                           0000B0   308 _P3	=	0x00b0
                           0000B8   309 _IP	=	0x00b8
                           0000D0   310 _PSW	=	0x00d0
                           0000E0   311 _ACC	=	0x00e0
                           0000F0   312 _B	=	0x00f0
                                    313 ;--------------------------------------------------------
                                    314 ; special function bits
                                    315 ;--------------------------------------------------------
                                    316 	.area RSEG    (ABS,DATA)
      000000                        317 	.org 0x0000
                           0000AD   318 _ET2	=	0x00ad
                           0000BD   319 _PT2	=	0x00bd
                           0000C8   320 _T2CON_0	=	0x00c8
                           0000C9   321 _T2CON_1	=	0x00c9
                           0000CA   322 _T2CON_2	=	0x00ca
                           0000CB   323 _T2CON_3	=	0x00cb
                           0000CC   324 _T2CON_4	=	0x00cc
                           0000CD   325 _T2CON_5	=	0x00cd
                           0000CE   326 _T2CON_6	=	0x00ce
                           0000CF   327 _T2CON_7	=	0x00cf
                           0000C8   328 _CP_RL2	=	0x00c8
                           0000C9   329 _C_T2	=	0x00c9
                           0000CA   330 _TR2	=	0x00ca
                           0000CB   331 _EXEN2	=	0x00cb
                           0000CC   332 _TCLK	=	0x00cc
                           0000CD   333 _RCLK	=	0x00cd
                           0000CE   334 _EXF2	=	0x00ce
                           0000CF   335 _TF2	=	0x00cf
                           0000DF   336 _CF	=	0x00df
                           0000DE   337 _CR	=	0x00de
                           0000DC   338 _CCF4	=	0x00dc
                           0000DB   339 _CCF3	=	0x00db
                           0000DA   340 _CCF2	=	0x00da
                           0000D9   341 _CCF1	=	0x00d9
                           0000D8   342 _CCF0	=	0x00d8
                           0000AE   343 _EC	=	0x00ae
                           0000BE   344 _PPCL	=	0x00be
                           0000BD   345 _PT2L	=	0x00bd
                           0000BC   346 _PSL	=	0x00bc
                           0000BB   347 _PT1L	=	0x00bb
                           0000BA   348 _PX1L	=	0x00ba
                           0000B9   349 _PT0L	=	0x00b9
                           0000B8   350 _PX0L	=	0x00b8
                           0000C0   351 _P4_0	=	0x00c0
                           0000C1   352 _P4_1	=	0x00c1
                           0000C2   353 _P4_2	=	0x00c2
                           0000C3   354 _P4_3	=	0x00c3
                           0000C4   355 _P4_4	=	0x00c4
                           0000C5   356 _P4_5	=	0x00c5
                           0000C6   357 _P4_6	=	0x00c6
                           0000C7   358 _P4_7	=	0x00c7
                           0000E8   359 _P5_0	=	0x00e8
                           0000E9   360 _P5_1	=	0x00e9
                           0000EA   361 _P5_2	=	0x00ea
                           0000EB   362 _P5_3	=	0x00eb
                           0000EC   363 _P5_4	=	0x00ec
                           0000ED   364 _P5_5	=	0x00ed
                           0000EE   365 _P5_6	=	0x00ee
                           0000EF   366 _P5_7	=	0x00ef
                           0000F0   367 _BREG_F0	=	0x00f0
                           0000F1   368 _BREG_F1	=	0x00f1
                           0000F2   369 _BREG_F2	=	0x00f2
                           0000F3   370 _BREG_F3	=	0x00f3
                           0000F4   371 _BREG_F4	=	0x00f4
                           0000F5   372 _BREG_F5	=	0x00f5
                           0000F6   373 _BREG_F6	=	0x00f6
                           0000F7   374 _BREG_F7	=	0x00f7
                           0000B0   375 _RXD0	=	0x00b0
                           0000B1   376 _TXD0	=	0x00b1
                           000080   377 _P0_0	=	0x0080
                           000081   378 _P0_1	=	0x0081
                           000082   379 _P0_2	=	0x0082
                           000083   380 _P0_3	=	0x0083
                           000084   381 _P0_4	=	0x0084
                           000085   382 _P0_5	=	0x0085
                           000086   383 _P0_6	=	0x0086
                           000087   384 _P0_7	=	0x0087
                           000088   385 _IT0	=	0x0088
                           000089   386 _IE0	=	0x0089
                           00008A   387 _IT1	=	0x008a
                           00008B   388 _IE1	=	0x008b
                           00008C   389 _TR0	=	0x008c
                           00008D   390 _TF0	=	0x008d
                           00008E   391 _TR1	=	0x008e
                           00008F   392 _TF1	=	0x008f
                           000090   393 _P1_0	=	0x0090
                           000091   394 _P1_1	=	0x0091
                           000092   395 _P1_2	=	0x0092
                           000093   396 _P1_3	=	0x0093
                           000094   397 _P1_4	=	0x0094
                           000095   398 _P1_5	=	0x0095
                           000096   399 _P1_6	=	0x0096
                           000097   400 _P1_7	=	0x0097
                           000098   401 _RI	=	0x0098
                           000099   402 _TI	=	0x0099
                           00009A   403 _RB8	=	0x009a
                           00009B   404 _TB8	=	0x009b
                           00009C   405 _REN	=	0x009c
                           00009D   406 _SM2	=	0x009d
                           00009E   407 _SM1	=	0x009e
                           00009F   408 _SM0	=	0x009f
                           0000A0   409 _P2_0	=	0x00a0
                           0000A1   410 _P2_1	=	0x00a1
                           0000A2   411 _P2_2	=	0x00a2
                           0000A3   412 _P2_3	=	0x00a3
                           0000A4   413 _P2_4	=	0x00a4
                           0000A5   414 _P2_5	=	0x00a5
                           0000A6   415 _P2_6	=	0x00a6
                           0000A7   416 _P2_7	=	0x00a7
                           0000A8   417 _EX0	=	0x00a8
                           0000A9   418 _ET0	=	0x00a9
                           0000AA   419 _EX1	=	0x00aa
                           0000AB   420 _ET1	=	0x00ab
                           0000AC   421 _ES	=	0x00ac
                           0000AF   422 _EA	=	0x00af
                           0000B0   423 _P3_0	=	0x00b0
                           0000B1   424 _P3_1	=	0x00b1
                           0000B2   425 _P3_2	=	0x00b2
                           0000B3   426 _P3_3	=	0x00b3
                           0000B4   427 _P3_4	=	0x00b4
                           0000B5   428 _P3_5	=	0x00b5
                           0000B6   429 _P3_6	=	0x00b6
                           0000B7   430 _P3_7	=	0x00b7
                           0000B0   431 _RXD	=	0x00b0
                           0000B1   432 _TXD	=	0x00b1
                           0000B2   433 _INT0	=	0x00b2
                           0000B3   434 _INT1	=	0x00b3
                           0000B4   435 _T0	=	0x00b4
                           0000B5   436 _T1	=	0x00b5
                           0000B6   437 _WR	=	0x00b6
                           0000B7   438 _RD	=	0x00b7
                           0000B8   439 _PX0	=	0x00b8
                           0000B9   440 _PT0	=	0x00b9
                           0000BA   441 _PX1	=	0x00ba
                           0000BB   442 _PT1	=	0x00bb
                           0000BC   443 _PS	=	0x00bc
                           0000D0   444 _P	=	0x00d0
                           0000D1   445 _F1	=	0x00d1
                           0000D2   446 _OV	=	0x00d2
                           0000D3   447 _RS0	=	0x00d3
                           0000D4   448 _RS1	=	0x00d4
                           0000D5   449 _F0	=	0x00d5
                           0000D6   450 _AC	=	0x00d6
                           0000D7   451 _CY	=	0x00d7
                                    452 ;--------------------------------------------------------
                                    453 ; overlayable register banks
                                    454 ;--------------------------------------------------------
                                    455 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        456 	.ds 8
                                    457 ;--------------------------------------------------------
                                    458 ; internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area DSEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; overlayable items in internal ram
                                    463 ;--------------------------------------------------------
                                    464 ;--------------------------------------------------------
                                    465 ; Stack segment in internal ram
                                    466 ;--------------------------------------------------------
                                    467 	.area	SSEG
      000009                        468 __start__stack:
      000009                        469 	.ds	1
                                    470 
                                    471 ;--------------------------------------------------------
                                    472 ; indirectly addressable internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area ISEG    (DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; absolute internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area IABS    (ABS,DATA)
                                    479 	.area IABS    (ABS,DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; bit data
                                    482 ;--------------------------------------------------------
                                    483 	.area BSEG    (BIT)
                                    484 ;--------------------------------------------------------
                                    485 ; paged external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area PSEG    (PAG,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XSEG    (XDATA)
      000001                        492 _putchar_ch_65536_47:
      000001                        493 	.ds 2
      000003                        494 _get_input_num_65536_54:
      000003                        495 	.ds 2
      000005                        496 _get_input_count_65536_54:
      000005                        497 	.ds 1
      000006                        498 _get_input_input_arr_65536_54:
      000006                        499 	.ds 16
                                    500 ;--------------------------------------------------------
                                    501 ; absolute external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XABS    (ABS,XDATA)
                                    504 ;--------------------------------------------------------
                                    505 ; external initialized ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XISEG   (XDATA)
      000018                        508 _num::
      000018                        509 	.ds 2
      00001A                        510 _watchdog_trigger::
      00001A                        511 	.ds 1
                                    512 	.area HOME    (CODE)
                                    513 	.area GSINIT0 (CODE)
                                    514 	.area GSINIT1 (CODE)
                                    515 	.area GSINIT2 (CODE)
                                    516 	.area GSINIT3 (CODE)
                                    517 	.area GSINIT4 (CODE)
                                    518 	.area GSINIT5 (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 	.area GSFINAL (CODE)
                                    521 	.area CSEG    (CODE)
                                    522 ;--------------------------------------------------------
                                    523 ; interrupt vector
                                    524 ;--------------------------------------------------------
                                    525 	.area HOME    (CODE)
      003000                        526 __interrupt_vect:
      003000 02 30 06         [24]  527 	ljmp	__sdcc_gsinit_startup
                                    528 ;--------------------------------------------------------
                                    529 ; global & static initialisations
                                    530 ;--------------------------------------------------------
                                    531 	.area HOME    (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 	.area GSFINAL (CODE)
                                    534 	.area GSINIT  (CODE)
                                    535 	.globl __sdcc_gsinit_startup
                                    536 	.globl __sdcc_program_startup
                                    537 	.globl __start__stack
                                    538 	.globl __mcs51_genXINIT
                                    539 	.globl __mcs51_genXRAMCLEAR
                                    540 	.globl __mcs51_genRAMCLEAR
                                    541 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  542 	ljmp	__sdcc_program_startup
                                    543 ;--------------------------------------------------------
                                    544 ; Home
                                    545 ;--------------------------------------------------------
                                    546 	.area HOME    (CODE)
                                    547 	.area HOME    (CODE)
      003003                        548 __sdcc_program_startup:
      003003 02 32 09         [24]  549 	ljmp	_main
                                    550 ;	return from main will return to caller
                                    551 ;--------------------------------------------------------
                                    552 ; code
                                    553 ;--------------------------------------------------------
                                    554 	.area CSEG    (CODE)
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    557 ;------------------------------------------------------------
                                    558 ;	main.c:9: _sdcc_external_startup()
                                    559 ;	-----------------------------------------
                                    560 ;	 function _sdcc_external_startup
                                    561 ;	-----------------------------------------
      003062                        562 __sdcc_external_startup:
                           000007   563 	ar7 = 0x07
                           000006   564 	ar6 = 0x06
                           000005   565 	ar5 = 0x05
                           000004   566 	ar4 = 0x04
                           000003   567 	ar3 = 0x03
                           000002   568 	ar2 = 0x02
                           000001   569 	ar1 = 0x01
                           000000   570 	ar0 = 0x00
                                    571 ;	main.c:11: AUXR |= 0x0C;
      003062 43 8E 0C         [24]  572 	orl	_AUXR,#0x0c
                                    573 ;	main.c:12: return 0;
      003065 90 00 00         [24]  574 	mov	dptr,#0x0000
                                    575 ;	main.c:13: }
      003068 22               [24]  576 	ret
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'putchar'
                                    579 ;------------------------------------------------------------
                                    580 ;ch                        Allocated with name '_putchar_ch_65536_47'
                                    581 ;------------------------------------------------------------
                                    582 ;	main.c:44: int putchar (int ch)
                                    583 ;	-----------------------------------------
                                    584 ;	 function putchar
                                    585 ;	-----------------------------------------
      003069                        586 _putchar:
      003069 AF 83            [24]  587 	mov	r7,dph
      00306B E5 82            [12]  588 	mov	a,dpl
      00306D 90 00 01         [24]  589 	mov	dptr,#_putchar_ch_65536_47
      003070 F0               [24]  590 	movx	@dptr,a
      003071 EF               [12]  591 	mov	a,r7
      003072 A3               [24]  592 	inc	dptr
      003073 F0               [24]  593 	movx	@dptr,a
                                    594 ;	main.c:46: while (TI==0)
      003074                        595 00101$:
      003074 30 99 FD         [24]  596 	jnb	_TI,00101$
                                    597 ;	main.c:51: SBUF = ch;
      003077 90 00 01         [24]  598 	mov	dptr,#_putchar_ch_65536_47
      00307A E0               [24]  599 	movx	a,@dptr
      00307B FE               [12]  600 	mov	r6,a
      00307C A3               [24]  601 	inc	dptr
      00307D E0               [24]  602 	movx	a,@dptr
      00307E FF               [12]  603 	mov	r7,a
      00307F 8E 99            [24]  604 	mov	_SBUF,r6
                                    605 ;	main.c:52: TI = 0;
                                    606 ;	assignBit
      003081 C2 99            [12]  607 	clr	_TI
                                    608 ;	main.c:54: return ch;
      003083 8E 82            [24]  609 	mov	dpl,r6
      003085 8F 83            [24]  610 	mov	dph,r7
                                    611 ;	main.c:55: }
      003087 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'getchar'
                                    615 ;------------------------------------------------------------
                                    616 ;	main.c:57: int getchar (void)
                                    617 ;	-----------------------------------------
                                    618 ;	 function getchar
                                    619 ;	-----------------------------------------
      003088                        620 _getchar:
                                    621 ;	main.c:59: while (RI==0)
      003088                        622 00101$:
                                    623 ;	main.c:64: RI = 0;
                                    624 ;	assignBit
      003088 10 98 02         [24]  625 	jbc	_RI,00114$
      00308B 80 FB            [24]  626 	sjmp	00101$
      00308D                        627 00114$:
                                    628 ;	main.c:65: return SBUF;
      00308D AE 99            [24]  629 	mov	r6,_SBUF
      00308F 7F 00            [12]  630 	mov	r7,#0x00
      003091 8E 82            [24]  631 	mov	dpl,r6
      003093 8F 83            [24]  632 	mov	dph,r7
                                    633 ;	main.c:66: }
      003095 22               [24]  634 	ret
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'get_input'
                                    637 ;------------------------------------------------------------
                                    638 ;num                       Allocated with name '_get_input_num_65536_54'
                                    639 ;count                     Allocated with name '_get_input_count_65536_54'
                                    640 ;input_arr                 Allocated with name '_get_input_input_arr_65536_54'
                                    641 ;i                         Allocated with name '_get_input_i_131072_59'
                                    642 ;------------------------------------------------------------
                                    643 ;	main.c:68: uint16_t get_input(void)
                                    644 ;	-----------------------------------------
                                    645 ;	 function get_input
                                    646 ;	-----------------------------------------
      003096                        647 _get_input:
                                    648 ;	main.c:70: __xdata uint16_t num =0;
      003096 90 00 03         [24]  649 	mov	dptr,#_get_input_num_65536_54
      003099 E4               [12]  650 	clr	a
      00309A F0               [24]  651 	movx	@dptr,a
      00309B A3               [24]  652 	inc	dptr
      00309C F0               [24]  653 	movx	@dptr,a
                                    654 ;	main.c:71: __xdata uint8_t count = 0;
      00309D 90 00 05         [24]  655 	mov	dptr,#_get_input_count_65536_54
      0030A0 F0               [24]  656 	movx	@dptr,a
                                    657 ;	main.c:75: while(input_arr[count] = getchar())
      0030A1                        658 00108$:
      0030A1 90 00 05         [24]  659 	mov	dptr,#_get_input_count_65536_54
      0030A4 E0               [24]  660 	movx	a,@dptr
      0030A5 FF               [12]  661 	mov	r7,a
      0030A6 24 06            [12]  662 	add	a,#_get_input_input_arr_65536_54
      0030A8 FD               [12]  663 	mov	r5,a
      0030A9 E4               [12]  664 	clr	a
      0030AA 34 00            [12]  665 	addc	a,#(_get_input_input_arr_65536_54 >> 8)
      0030AC FE               [12]  666 	mov	r6,a
      0030AD C0 07            [24]  667 	push	ar7
      0030AF C0 06            [24]  668 	push	ar6
      0030B1 C0 05            [24]  669 	push	ar5
      0030B3 12 30 88         [24]  670 	lcall	_getchar
      0030B6 AB 82            [24]  671 	mov	r3,dpl
      0030B8 AC 83            [24]  672 	mov	r4,dph
      0030BA D0 05            [24]  673 	pop	ar5
      0030BC D0 06            [24]  674 	pop	ar6
      0030BE D0 07            [24]  675 	pop	ar7
      0030C0 8D 82            [24]  676 	mov	dpl,r5
      0030C2 8E 83            [24]  677 	mov	dph,r6
      0030C4 EB               [12]  678 	mov	a,r3
      0030C5 F0               [24]  679 	movx	@dptr,a
      0030C6 EB               [12]  680 	mov	a,r3
      0030C7 70 03            [24]  681 	jnz	00150$
      0030C9 02 31 43         [24]  682 	ljmp	00124$
      0030CC                        683 00150$:
                                    684 ;	main.c:77: if(input_arr[count] == 13)
      0030CC 8D 82            [24]  685 	mov	dpl,r5
      0030CE 8E 83            [24]  686 	mov	dph,r6
      0030D0 E0               [24]  687 	movx	a,@dptr
      0030D1 FC               [12]  688 	mov	r4,a
      0030D2 BC 0D 02         [24]  689 	cjne	r4,#0x0d,00151$
      0030D5 80 6C            [24]  690 	sjmp	00124$
      0030D7                        691 00151$:
                                    692 ;	main.c:82: if(input_arr[count]==8)
      0030D7 8D 82            [24]  693 	mov	dpl,r5
      0030D9 8E 83            [24]  694 	mov	dph,r6
      0030DB E0               [24]  695 	movx	a,@dptr
      0030DC FD               [12]  696 	mov	r5,a
      0030DD BD 08 1C         [24]  697 	cjne	r5,#0x08,00104$
                                    698 ;	main.c:84: putchar(8);
      0030E0 90 00 08         [24]  699 	mov	dptr,#0x0008
      0030E3 C0 07            [24]  700 	push	ar7
      0030E5 12 30 69         [24]  701 	lcall	_putchar
                                    702 ;	main.c:85: putchar(32);
      0030E8 90 00 20         [24]  703 	mov	dptr,#0x0020
      0030EB 12 30 69         [24]  704 	lcall	_putchar
                                    705 ;	main.c:86: putchar(8);
      0030EE 90 00 08         [24]  706 	mov	dptr,#0x0008
      0030F1 12 30 69         [24]  707 	lcall	_putchar
      0030F4 D0 07            [24]  708 	pop	ar7
                                    709 ;	main.c:88: count--;
      0030F6 EF               [12]  710 	mov	a,r7
      0030F7 14               [12]  711 	dec	a
      0030F8 90 00 05         [24]  712 	mov	dptr,#_get_input_count_65536_54
      0030FB F0               [24]  713 	movx	@dptr,a
      0030FC                        714 00104$:
                                    715 ;	main.c:91: if((input_arr[count] >= '0') && (input_arr[count] <= '9'))
      0030FC 90 00 05         [24]  716 	mov	dptr,#_get_input_count_65536_54
      0030FF E0               [24]  717 	movx	a,@dptr
      003100 FF               [12]  718 	mov	r7,a
      003101 24 06            [12]  719 	add	a,#_get_input_input_arr_65536_54
      003103 FD               [12]  720 	mov	r5,a
      003104 E4               [12]  721 	clr	a
      003105 34 00            [12]  722 	addc	a,#(_get_input_input_arr_65536_54 >> 8)
      003107 FE               [12]  723 	mov	r6,a
      003108 8D 82            [24]  724 	mov	dpl,r5
      00310A 8E 83            [24]  725 	mov	dph,r6
      00310C E0               [24]  726 	movx	a,@dptr
      00310D FC               [12]  727 	mov	r4,a
      00310E BC 30 00         [24]  728 	cjne	r4,#0x30,00154$
      003111                        729 00154$:
      003111 40 8E            [24]  730 	jc	00108$
      003113 EC               [12]  731 	mov	a,r4
      003114 24 C6            [12]  732 	add	a,#0xff - 0x39
      003116 40 89            [24]  733 	jc	00108$
                                    734 ;	main.c:93: putchar(input_arr[count]);
      003118 7B 00            [12]  735 	mov	r3,#0x00
      00311A 8C 82            [24]  736 	mov	dpl,r4
      00311C 8B 83            [24]  737 	mov	dph,r3
      00311E C0 07            [24]  738 	push	ar7
      003120 C0 06            [24]  739 	push	ar6
      003122 C0 05            [24]  740 	push	ar5
      003124 12 30 69         [24]  741 	lcall	_putchar
      003127 D0 05            [24]  742 	pop	ar5
      003129 D0 06            [24]  743 	pop	ar6
      00312B D0 07            [24]  744 	pop	ar7
                                    745 ;	main.c:94: input_arr[count]=input_arr[count]-'0';
      00312D 8D 82            [24]  746 	mov	dpl,r5
      00312F 8E 83            [24]  747 	mov	dph,r6
      003131 E0               [24]  748 	movx	a,@dptr
      003132 24 D0            [12]  749 	add	a,#0xd0
      003134 FC               [12]  750 	mov	r4,a
      003135 8D 82            [24]  751 	mov	dpl,r5
      003137 8E 83            [24]  752 	mov	dph,r6
      003139 F0               [24]  753 	movx	@dptr,a
                                    754 ;	main.c:95: count++;
      00313A 90 00 05         [24]  755 	mov	dptr,#_get_input_count_65536_54
      00313D EF               [12]  756 	mov	a,r7
      00313E 04               [12]  757 	inc	a
      00313F F0               [24]  758 	movx	@dptr,a
      003140 02 30 A1         [24]  759 	ljmp	00108$
                                    760 ;	main.c:99: for(int i=0;i<count;i++)
      003143                        761 00124$:
      003143 90 00 05         [24]  762 	mov	dptr,#_get_input_count_65536_54
      003146 E0               [24]  763 	movx	a,@dptr
      003147 FF               [12]  764 	mov	r7,a
      003148 7D 00            [12]  765 	mov	r5,#0x00
      00314A 7E 00            [12]  766 	mov	r6,#0x00
      00314C                        767 00113$:
      00314C 8F 03            [24]  768 	mov	ar3,r7
      00314E 7C 00            [12]  769 	mov	r4,#0x00
      003150 C3               [12]  770 	clr	c
      003151 ED               [12]  771 	mov	a,r5
      003152 9B               [12]  772 	subb	a,r3
      003153 EE               [12]  773 	mov	a,r6
      003154 64 80            [12]  774 	xrl	a,#0x80
      003156 8C F0            [24]  775 	mov	b,r4
      003158 63 F0 80         [24]  776 	xrl	b,#0x80
      00315B 95 F0            [12]  777 	subb	a,b
      00315D 50 59            [24]  778 	jnc	00111$
                                    779 ;	main.c:101: num = num * 10;
      00315F 90 00 03         [24]  780 	mov	dptr,#_get_input_num_65536_54
      003162 E0               [24]  781 	movx	a,@dptr
      003163 FB               [12]  782 	mov	r3,a
      003164 A3               [24]  783 	inc	dptr
      003165 E0               [24]  784 	movx	a,@dptr
      003166 FC               [12]  785 	mov	r4,a
      003167 90 00 16         [24]  786 	mov	dptr,#__mulint_PARM_2
      00316A EB               [12]  787 	mov	a,r3
      00316B F0               [24]  788 	movx	@dptr,a
      00316C EC               [12]  789 	mov	a,r4
      00316D A3               [24]  790 	inc	dptr
      00316E F0               [24]  791 	movx	@dptr,a
      00316F 90 00 0A         [24]  792 	mov	dptr,#0x000a
      003172 C0 07            [24]  793 	push	ar7
      003174 C0 06            [24]  794 	push	ar6
      003176 C0 05            [24]  795 	push	ar5
      003178 12 35 1E         [24]  796 	lcall	__mulint
      00317B AB 82            [24]  797 	mov	r3,dpl
      00317D AC 83            [24]  798 	mov	r4,dph
      00317F D0 05            [24]  799 	pop	ar5
      003181 D0 06            [24]  800 	pop	ar6
      003183 D0 07            [24]  801 	pop	ar7
      003185 90 00 03         [24]  802 	mov	dptr,#_get_input_num_65536_54
      003188 EB               [12]  803 	mov	a,r3
      003189 F0               [24]  804 	movx	@dptr,a
      00318A EC               [12]  805 	mov	a,r4
      00318B A3               [24]  806 	inc	dptr
      00318C F0               [24]  807 	movx	@dptr,a
                                    808 ;	main.c:102: num = num + input_arr[i];
      00318D ED               [12]  809 	mov	a,r5
      00318E 24 06            [12]  810 	add	a,#_get_input_input_arr_65536_54
      003190 F5 82            [12]  811 	mov	dpl,a
      003192 EE               [12]  812 	mov	a,r6
      003193 34 00            [12]  813 	addc	a,#(_get_input_input_arr_65536_54 >> 8)
      003195 F5 83            [12]  814 	mov	dph,a
      003197 E0               [24]  815 	movx	a,@dptr
      003198 FC               [12]  816 	mov	r4,a
      003199 7B 00            [12]  817 	mov	r3,#0x00
      00319B 90 00 03         [24]  818 	mov	dptr,#_get_input_num_65536_54
      00319E E0               [24]  819 	movx	a,@dptr
      00319F F9               [12]  820 	mov	r1,a
      0031A0 A3               [24]  821 	inc	dptr
      0031A1 E0               [24]  822 	movx	a,@dptr
      0031A2 FA               [12]  823 	mov	r2,a
      0031A3 EC               [12]  824 	mov	a,r4
      0031A4 29               [12]  825 	add	a,r1
      0031A5 F9               [12]  826 	mov	r1,a
      0031A6 EB               [12]  827 	mov	a,r3
      0031A7 3A               [12]  828 	addc	a,r2
      0031A8 FA               [12]  829 	mov	r2,a
      0031A9 90 00 03         [24]  830 	mov	dptr,#_get_input_num_65536_54
      0031AC E9               [12]  831 	mov	a,r1
      0031AD F0               [24]  832 	movx	@dptr,a
      0031AE EA               [12]  833 	mov	a,r2
      0031AF A3               [24]  834 	inc	dptr
      0031B0 F0               [24]  835 	movx	@dptr,a
                                    836 ;	main.c:99: for(int i=0;i<count;i++)
      0031B1 0D               [12]  837 	inc	r5
      0031B2 BD 00 97         [24]  838 	cjne	r5,#0x00,00113$
      0031B5 0E               [12]  839 	inc	r6
      0031B6 80 94            [24]  840 	sjmp	00113$
      0031B8                        841 00111$:
                                    842 ;	main.c:105: return num;
      0031B8 90 00 03         [24]  843 	mov	dptr,#_get_input_num_65536_54
      0031BB E0               [24]  844 	movx	a,@dptr
      0031BC FE               [12]  845 	mov	r6,a
      0031BD A3               [24]  846 	inc	dptr
      0031BE E0               [24]  847 	movx	a,@dptr
                                    848 ;	main.c:106: }
      0031BF 8E 82            [24]  849 	mov	dpl,r6
      0031C1 F5 83            [12]  850 	mov	dph,a
      0031C3 22               [24]  851 	ret
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'pwm_init'
                                    854 ;------------------------------------------------------------
                                    855 ;	main.c:108: void pwm_init()
                                    856 ;	-----------------------------------------
                                    857 ;	 function pwm_init
                                    858 ;	-----------------------------------------
      0031C4                        859 _pwm_init:
                                    860 ;	main.c:110: CMOD = CLK_PERIPH_2;        //Configure PCA to use peripheral clock/2
      0031C4 75 D9 02         [24]  861 	mov	_CMOD,#0x02
                                    862 ;	main.c:111: CL = PCA_START;          //To initialize PCA timer to 0
      0031C7 75 E9 00         [24]  863 	mov	_CL,#0x00
                                    864 ;	main.c:112: CH = PCA_START;
      0031CA 75 F9 00         [24]  865 	mov	_CH,#0x00
                                    866 ;	main.c:113: CCAP1L = LOW_CMP;       // To generate duty cycle of 33%
      0031CD 75 EB AB         [24]  867 	mov	_CCAP1L,#0xab
                                    868 ;	main.c:114: CCAP1H = HIGH_CMP;
      0031D0 75 FB AB         [24]  869 	mov	_CCAP1H,#0xab
                                    870 ;	main.c:115: CCON = COUNT_RUN_BIT;        // To start the counter by setting run bit
      0031D3 75 D8 40         [24]  871 	mov	_CCON,#0x40
                                    872 ;	main.c:116: CCAPM1 = PWM_START_BIT;      // To set to 8bit PWM mode
      0031D6 75 DB 42         [24]  873 	mov	_CCAPM1,#0x42
                                    874 ;	main.c:117: }
      0031D9 22               [24]  875 	ret
                                    876 ;------------------------------------------------------------
                                    877 ;Allocation info for local variables in function 'pwm_stop'
                                    878 ;------------------------------------------------------------
                                    879 ;	main.c:119: void pwm_stop()
                                    880 ;	-----------------------------------------
                                    881 ;	 function pwm_stop
                                    882 ;	-----------------------------------------
      0031DA                        883 _pwm_stop:
                                    884 ;	main.c:121: CMOD = CLK_PERIPH_2;         //Configure PCA to use peripheral clock/2
      0031DA 75 D9 02         [24]  885 	mov	_CMOD,#0x02
                                    886 ;	main.c:122: CL = PCA_START;           //To initialize PCA timer to 0
      0031DD 75 E9 00         [24]  887 	mov	_CL,#0x00
                                    888 ;	main.c:123: CH = PCA_START;
      0031E0 75 F9 00         [24]  889 	mov	_CH,#0x00
                                    890 ;	main.c:124: CCAP1L = MAX_CMP;
      0031E3 75 EB FF         [24]  891 	mov	_CCAP1L,#0xff
                                    892 ;	main.c:125: CCAP1H = MAX_CMP;
      0031E6 75 FB FF         [24]  893 	mov	_CCAP1H,#0xff
                                    894 ;	main.c:126: CCON = COUNT_RUN_BIT;        // To start the counter by setting run bit
      0031E9 75 D8 40         [24]  895 	mov	_CCON,#0x40
                                    896 ;	main.c:127: CCAPM1 = PWM_STOP_BIT;      // To stop to 8bit PWM mode
      0031EC 75 DB 00         [24]  897 	mov	_CCAPM1,#0x00
                                    898 ;	main.c:128: }
      0031EF 22               [24]  899 	ret
                                    900 ;------------------------------------------------------------
                                    901 ;Allocation info for local variables in function 'watchdog_timer'
                                    902 ;------------------------------------------------------------
                                    903 ;	main.c:130: void watchdog_timer(void)
                                    904 ;	-----------------------------------------
                                    905 ;	 function watchdog_timer
                                    906 ;	-----------------------------------------
      0031F0                        907 _watchdog_timer:
                                    908 ;	main.c:132: if(watchdog_trigger==0)
      0031F0 90 00 1A         [24]  909 	mov	dptr,#_watchdog_trigger
      0031F3 E0               [24]  910 	movx	a,@dptr
                                    911 ;	main.c:134: CCAP4L = 0x00;
      0031F4 70 0F            [24]  912 	jnz	00102$
      0031F6 F5 EE            [12]  913 	mov	_CCAP4L,a
                                    914 ;	main.c:135: CCAP4H = 0xFF;
      0031F8 75 FE FF         [24]  915 	mov	_CCAP4H,#0xff
                                    916 ;	main.c:136: CMOD |= 0x40;         // To enable watch dog timer
      0031FB 43 D9 40         [24]  917 	orl	_CMOD,#0x40
                                    918 ;	main.c:137: CCON = 0x40;          // To start counter by setting run bit
      0031FE 75 D8 40         [24]  919 	mov	_CCON,#0x40
                                    920 ;	main.c:138: CCAPM4 |= 0x4C;       // To start watch dog timer
      003201 43 DE 4C         [24]  921 	orl	_CCAPM4,#0x4c
      003204 22               [24]  922 	ret
      003205                        923 00102$:
                                    924 ;	main.c:142: CMOD = 0x00;           // To disable watch dog timer
      003205 75 D9 00         [24]  925 	mov	_CMOD,#0x00
                                    926 ;	main.c:144: }
      003208 22               [24]  927 	ret
                                    928 ;------------------------------------------------------------
                                    929 ;Allocation info for local variables in function 'main'
                                    930 ;------------------------------------------------------------
                                    931 ;	main.c:146: void main(void)
                                    932 ;	-----------------------------------------
                                    933 ;	 function main
                                    934 ;	-----------------------------------------
      003209                        935 _main:
                                    936 ;	main.c:148: init_mode();
      003209 12 33 CB         [24]  937 	lcall	_init_mode
                                    938 ;	main.c:150: display:
      00320C                        939 00101$:
                                    940 ;	main.c:151: printf_tiny("\n\r**************************************MENU**************************************\r");
      00320C 74 5A            [12]  941 	mov	a,#___str_0
      00320E C0 E0            [24]  942 	push	acc
      003210 74 35            [12]  943 	mov	a,#(___str_0 >> 8)
      003212 C0 E0            [24]  944 	push	acc
      003214 12 34 15         [24]  945 	lcall	_printf_tiny
      003217 15 81            [12]  946 	dec	sp
      003219 15 81            [12]  947 	dec	sp
                                    948 ;	main.c:152: printf_tiny("\n\r 1. Run PWM Mode\n\r");
      00321B 74 AE            [12]  949 	mov	a,#___str_1
      00321D C0 E0            [24]  950 	push	acc
      00321F 74 35            [12]  951 	mov	a,#(___str_1 >> 8)
      003221 C0 E0            [24]  952 	push	acc
      003223 12 34 15         [24]  953 	lcall	_printf_tiny
      003226 15 81            [12]  954 	dec	sp
      003228 15 81            [12]  955 	dec	sp
                                    956 ;	main.c:153: printf_tiny("\n\r 2. Stop PWM Mode\n\r");
      00322A 74 C3            [12]  957 	mov	a,#___str_2
      00322C C0 E0            [24]  958 	push	acc
      00322E 74 35            [12]  959 	mov	a,#(___str_2 >> 8)
      003230 C0 E0            [24]  960 	push	acc
      003232 12 34 15         [24]  961 	lcall	_printf_tiny
      003235 15 81            [12]  962 	dec	sp
      003237 15 81            [12]  963 	dec	sp
                                    964 ;	main.c:154: printf_tiny("\n\r 3. Set FCLK PERIPH at the minimum frequency supported by the CKRL register \n\r");
      003239 74 D9            [12]  965 	mov	a,#___str_3
      00323B C0 E0            [24]  966 	push	acc
      00323D 74 35            [12]  967 	mov	a,#(___str_3 >> 8)
      00323F C0 E0            [24]  968 	push	acc
      003241 12 34 15         [24]  969 	lcall	_printf_tiny
      003244 15 81            [12]  970 	dec	sp
      003246 15 81            [12]  971 	dec	sp
                                    972 ;	main.c:155: printf_tiny("\n\r 4. Set FCLK PERIPH at the maximum frequency supported by the CKRL register \n\r");
      003248 74 2A            [12]  973 	mov	a,#___str_4
      00324A C0 E0            [24]  974 	push	acc
      00324C 74 36            [12]  975 	mov	a,#(___str_4 >> 8)
      00324E C0 E0            [24]  976 	push	acc
      003250 12 34 15         [24]  977 	lcall	_printf_tiny
      003253 15 81            [12]  978 	dec	sp
      003255 15 81            [12]  979 	dec	sp
                                    980 ;	main.c:156: printf_tiny("\n\r 5. Enter Idle mode \n\r");
      003257 74 7B            [12]  981 	mov	a,#___str_5
      003259 C0 E0            [24]  982 	push	acc
      00325B 74 36            [12]  983 	mov	a,#(___str_5 >> 8)
      00325D C0 E0            [24]  984 	push	acc
      00325F 12 34 15         [24]  985 	lcall	_printf_tiny
      003262 15 81            [12]  986 	dec	sp
      003264 15 81            [12]  987 	dec	sp
                                    988 ;	main.c:157: printf_tiny("\n\r 6. Enter Power Down mode \n\r");
      003266 74 94            [12]  989 	mov	a,#___str_6
      003268 C0 E0            [24]  990 	push	acc
      00326A 74 36            [12]  991 	mov	a,#(___str_6 >> 8)
      00326C C0 E0            [24]  992 	push	acc
      00326E 12 34 15         [24]  993 	lcall	_printf_tiny
      003271 15 81            [12]  994 	dec	sp
      003273 15 81            [12]  995 	dec	sp
                                    996 ;	main.c:158: printf_tiny("\n\r 7. Watchdog timer mode \n\r");
      003275 74 B3            [12]  997 	mov	a,#___str_7
      003277 C0 E0            [24]  998 	push	acc
      003279 74 36            [12]  999 	mov	a,#(___str_7 >> 8)
      00327B C0 E0            [24] 1000 	push	acc
      00327D 12 34 15         [24] 1001 	lcall	_printf_tiny
      003280 15 81            [12] 1002 	dec	sp
      003282 15 81            [12] 1003 	dec	sp
                                   1004 ;	main.c:159: printf_tiny("\n\r 8. High speed mode \n\r");
      003284 74 D0            [12] 1005 	mov	a,#___str_8
      003286 C0 E0            [24] 1006 	push	acc
      003288 74 36            [12] 1007 	mov	a,#(___str_8 >> 8)
      00328A C0 E0            [24] 1008 	push	acc
      00328C 12 34 15         [24] 1009 	lcall	_printf_tiny
      00328F 15 81            [12] 1010 	dec	sp
      003291 15 81            [12] 1011 	dec	sp
                                   1012 ;	main.c:160: printf_tiny("\r********************************************************************************\r");
      003293 74 E9            [12] 1013 	mov	a,#___str_9
      003295 C0 E0            [24] 1014 	push	acc
      003297 74 36            [12] 1015 	mov	a,#(___str_9 >> 8)
      003299 C0 E0            [24] 1016 	push	acc
      00329B 12 34 15         [24] 1017 	lcall	_printf_tiny
      00329E 15 81            [12] 1018 	dec	sp
      0032A0 15 81            [12] 1019 	dec	sp
                                   1020 ;	main.c:161: while(1)
      0032A2                       1021 00129$:
                                   1022 ;	main.c:163: printf_tiny("\n\r Enter a number from menu or press 0 to see menu again \n\r");
      0032A2 74 3C            [12] 1023 	mov	a,#___str_10
      0032A4 C0 E0            [24] 1024 	push	acc
      0032A6 74 37            [12] 1025 	mov	a,#(___str_10 >> 8)
      0032A8 C0 E0            [24] 1026 	push	acc
      0032AA 12 34 15         [24] 1027 	lcall	_printf_tiny
      0032AD 15 81            [12] 1028 	dec	sp
      0032AF 15 81            [12] 1029 	dec	sp
                                   1030 ;	main.c:164: num=get_input();
      0032B1 12 30 96         [24] 1031 	lcall	_get_input
      0032B4 AE 82            [24] 1032 	mov	r6,dpl
      0032B6 AF 83            [24] 1033 	mov	r7,dph
      0032B8 90 00 18         [24] 1034 	mov	dptr,#_num
      0032BB EE               [12] 1035 	mov	a,r6
      0032BC F0               [24] 1036 	movx	@dptr,a
      0032BD EF               [12] 1037 	mov	a,r7
      0032BE A3               [24] 1038 	inc	dptr
      0032BF F0               [24] 1039 	movx	@dptr,a
                                   1040 ;	main.c:165: putchar(num);
      0032C0 8E 82            [24] 1041 	mov	dpl,r6
      0032C2 8F 83            [24] 1042 	mov	dph,r7
      0032C4 12 30 69         [24] 1043 	lcall	_putchar
                                   1044 ;	main.c:166: if(num==1)
      0032C7 90 00 18         [24] 1045 	mov	dptr,#_num
      0032CA E0               [24] 1046 	movx	a,@dptr
      0032CB FE               [12] 1047 	mov	r6,a
      0032CC A3               [24] 1048 	inc	dptr
      0032CD E0               [24] 1049 	movx	a,@dptr
      0032CE FF               [12] 1050 	mov	r7,a
      0032CF BE 01 17         [24] 1051 	cjne	r6,#0x01,00126$
      0032D2 BF 00 14         [24] 1052 	cjne	r7,#0x00,00126$
                                   1053 ;	main.c:168: printf_tiny("\n\r PWM ouput ON \n\r");
      0032D5 74 78            [12] 1054 	mov	a,#___str_11
      0032D7 C0 E0            [24] 1055 	push	acc
      0032D9 74 37            [12] 1056 	mov	a,#(___str_11 >> 8)
      0032DB C0 E0            [24] 1057 	push	acc
      0032DD 12 34 15         [24] 1058 	lcall	_printf_tiny
      0032E0 15 81            [12] 1059 	dec	sp
      0032E2 15 81            [12] 1060 	dec	sp
                                   1061 ;	main.c:169: pwm_init();
      0032E4 12 31 C4         [24] 1062 	lcall	_pwm_init
      0032E7 80 B9            [24] 1063 	sjmp	00129$
      0032E9                       1064 00126$:
                                   1065 ;	main.c:171: else if(num==2)
      0032E9 BE 02 17         [24] 1066 	cjne	r6,#0x02,00123$
      0032EC BF 00 14         [24] 1067 	cjne	r7,#0x00,00123$
                                   1068 ;	main.c:173: printf_tiny("\n\r PWM output OFF \n\r");
      0032EF 74 8B            [12] 1069 	mov	a,#___str_12
      0032F1 C0 E0            [24] 1070 	push	acc
      0032F3 74 37            [12] 1071 	mov	a,#(___str_12 >> 8)
      0032F5 C0 E0            [24] 1072 	push	acc
      0032F7 12 34 15         [24] 1073 	lcall	_printf_tiny
      0032FA 15 81            [12] 1074 	dec	sp
      0032FC 15 81            [12] 1075 	dec	sp
                                   1076 ;	main.c:174: pwm_stop();
      0032FE 12 31 DA         [24] 1077 	lcall	_pwm_stop
      003301 80 9F            [24] 1078 	sjmp	00129$
      003303                       1079 00123$:
                                   1080 ;	main.c:176: else if(num==3)
      003303 BE 03 1A         [24] 1081 	cjne	r6,#0x03,00120$
      003306 BF 00 17         [24] 1082 	cjne	r7,#0x00,00120$
                                   1083 ;	main.c:178: printf_tiny("\n\r Peripheral clock at Maximum Frequency \n\r");
      003309 74 A0            [12] 1084 	mov	a,#___str_13
      00330B C0 E0            [24] 1085 	push	acc
      00330D 74 37            [12] 1086 	mov	a,#(___str_13 >> 8)
      00330F C0 E0            [24] 1087 	push	acc
      003311 12 34 15         [24] 1088 	lcall	_printf_tiny
      003314 15 81            [12] 1089 	dec	sp
      003316 15 81            [12] 1090 	dec	sp
                                   1091 ;	main.c:179: CKRL &= ~(RELOAD_MAX);         //Reload register to 0 to generate minimum frequency
      003318 E5 97            [12] 1092 	mov	a,_CKRL
      00331A 75 97 00         [24] 1093 	mov	_CKRL,#0x00
      00331D 02 32 A2         [24] 1094 	ljmp	00129$
      003320                       1095 00120$:
                                   1096 ;	main.c:181: else if(num==4)
      003320 BE 04 1A         [24] 1097 	cjne	r6,#0x04,00117$
      003323 BF 00 17         [24] 1098 	cjne	r7,#0x00,00117$
                                   1099 ;	main.c:183: printf_tiny("\n\r Peripheral clock at Minimum Frequency \n\r");
      003326 74 CC            [12] 1100 	mov	a,#___str_14
      003328 C0 E0            [24] 1101 	push	acc
      00332A 74 37            [12] 1102 	mov	a,#(___str_14 >> 8)
      00332C C0 E0            [24] 1103 	push	acc
      00332E 12 34 15         [24] 1104 	lcall	_printf_tiny
      003331 15 81            [12] 1105 	dec	sp
      003333 15 81            [12] 1106 	dec	sp
                                   1107 ;	main.c:184: CKRL |= RELOAD_MAX;         //Reload register to FF to generate minimum frequency
      003335 E5 97            [12] 1108 	mov	a,_CKRL
      003337 75 97 FF         [24] 1109 	mov	_CKRL,#0xff
      00333A 02 32 A2         [24] 1110 	ljmp	00129$
      00333D                       1111 00117$:
                                   1112 ;	main.c:186: else if(num==5)
      00333D BE 05 21         [24] 1113 	cjne	r6,#0x05,00114$
      003340 BF 00 1E         [24] 1114 	cjne	r7,#0x00,00114$
                                   1115 ;	main.c:188: printf_tiny("\n\r IDLE mode\n\r");
      003343 74 F8            [12] 1116 	mov	a,#___str_15
      003345 C0 E0            [24] 1117 	push	acc
      003347 74 37            [12] 1118 	mov	a,#(___str_15 >> 8)
      003349 C0 E0            [24] 1119 	push	acc
      00334B 12 34 15         [24] 1120 	lcall	_printf_tiny
      00334E 15 81            [12] 1121 	dec	sp
      003350 15 81            [12] 1122 	dec	sp
                                   1123 ;	main.c:189: IEN0 |= 0x01;           //External interrupt 0 enabled
      003352 43 A8 01         [24] 1124 	orl	_IEN0,#0x01
                                   1125 ;	main.c:190: IPL0 |= 0x01;
      003355 43 B8 01         [24] 1126 	orl	_IPL0,#0x01
                                   1127 ;	main.c:191: CMOD &= 0x7F;
      003358 53 D9 7F         [24] 1128 	anl	_CMOD,#0x7f
                                   1129 ;	main.c:192: PCON |= 0x01;           // Set PCON bit to enter IDLE mode
      00335B 43 87 01         [24] 1130 	orl	_PCON,#0x01
      00335E 02 32 A2         [24] 1131 	ljmp	00129$
      003361                       1132 00114$:
                                   1133 ;	main.c:194: else if(num==6)
      003361 BE 06 18         [24] 1134 	cjne	r6,#0x06,00111$
      003364 BF 00 15         [24] 1135 	cjne	r7,#0x00,00111$
                                   1136 ;	main.c:196: printf_tiny("\n\rPower down mode\n\r");
      003367 74 07            [12] 1137 	mov	a,#___str_16
      003369 C0 E0            [24] 1138 	push	acc
      00336B 74 38            [12] 1139 	mov	a,#(___str_16 >> 8)
      00336D C0 E0            [24] 1140 	push	acc
      00336F 12 34 15         [24] 1141 	lcall	_printf_tiny
      003372 15 81            [12] 1142 	dec	sp
      003374 15 81            [12] 1143 	dec	sp
                                   1144 ;	main.c:197: PCON |=0x02;            // PCON set to power down mode
      003376 43 87 02         [24] 1145 	orl	_PCON,#0x02
      003379 02 32 A2         [24] 1146 	ljmp	00129$
      00337C                       1147 00111$:
                                   1148 ;	main.c:199: else if(num==7)
      00337C BE 07 1B         [24] 1149 	cjne	r6,#0x07,00108$
      00337F BF 00 18         [24] 1150 	cjne	r7,#0x00,00108$
                                   1151 ;	main.c:201: printf_tiny("\n\r Watch-dog mode\n\r");
      003382 74 1B            [12] 1152 	mov	a,#___str_17
      003384 C0 E0            [24] 1153 	push	acc
      003386 74 38            [12] 1154 	mov	a,#(___str_17 >> 8)
      003388 C0 E0            [24] 1155 	push	acc
      00338A 12 34 15         [24] 1156 	lcall	_printf_tiny
      00338D 15 81            [12] 1157 	dec	sp
      00338F 15 81            [12] 1158 	dec	sp
                                   1159 ;	main.c:202: watchdog_control();
      003391 12 33 E2         [24] 1160 	lcall	_watchdog_control
                                   1161 ;	main.c:203: watchdog_timer();
      003394 12 31 F0         [24] 1162 	lcall	_watchdog_timer
      003397 02 32 A2         [24] 1163 	ljmp	00129$
      00339A                       1164 00108$:
                                   1165 ;	main.c:205: else if(num==8)
      00339A BE 08 24         [24] 1166 	cjne	r6,#0x08,00105$
      00339D BF 00 21         [24] 1167 	cjne	r7,#0x00,00105$
                                   1168 ;	main.c:207: printf_tiny("\n\r High-Speed mode on\n\r");
      0033A0 74 2F            [12] 1169 	mov	a,#___str_18
      0033A2 C0 E0            [24] 1170 	push	acc
      0033A4 74 38            [12] 1171 	mov	a,#(___str_18 >> 8)
      0033A6 C0 E0            [24] 1172 	push	acc
      0033A8 12 34 15         [24] 1173 	lcall	_printf_tiny
      0033AB 15 81            [12] 1174 	dec	sp
      0033AD 15 81            [12] 1175 	dec	sp
                                   1176 ;	main.c:208: CMOD = 0x02;                //FCLKPERIPH/2
      0033AF 75 D9 02         [24] 1177 	mov	_CMOD,#0x02
                                   1178 ;	main.c:209: CCAP0L = 0x6a;
      0033B2 75 EA 6A         [24] 1179 	mov	_CCAP0L,#0x6a
                                   1180 ;	main.c:210: CCAP0H = 0x6a;
      0033B5 75 FA 6A         [24] 1181 	mov	_CCAP0H,#0x6a
                                   1182 ;	main.c:211: CCON = 0x40;                // SET CR- Counter run bit
      0033B8 75 D8 40         [24] 1183 	mov	_CCON,#0x40
                                   1184 ;	main.c:212: CCAPM0 |= 0x4C;             // Run high speed mode
      0033BB 43 DA 4C         [24] 1185 	orl	_CCAPM0,#0x4c
      0033BE 02 32 A2         [24] 1186 	ljmp	00129$
      0033C1                       1187 00105$:
                                   1188 ;	main.c:214: else if(num==0)
      0033C1 EE               [12] 1189 	mov	a,r6
      0033C2 4F               [12] 1190 	orl	a,r7
      0033C3 70 03            [24] 1191 	jnz	00193$
      0033C5 02 32 0C         [24] 1192 	ljmp	00101$
      0033C8                       1193 00193$:
                                   1194 ;	main.c:216: goto display;
                                   1195 ;	main.c:220: }
      0033C8 02 32 A2         [24] 1196 	ljmp	00129$
                                   1197 ;------------------------------------------------------------
                                   1198 ;Allocation info for local variables in function 'init_mode'
                                   1199 ;------------------------------------------------------------
                                   1200 ;	main.c:222: void init_mode()
                                   1201 ;	-----------------------------------------
                                   1202 ;	 function init_mode
                                   1203 ;	-----------------------------------------
      0033CB                       1204 _init_mode:
                                   1205 ;	main.c:224: CKCON0 |= CLK_CONFIG;      //Clock to run in X2 mode
      0033CB E5 8F            [12] 1206 	mov	a,_CKCON0
      0033CD 75 8F FF         [24] 1207 	mov	_CKCON0,#0xff
                                   1208 ;	main.c:225: IEN0 |= TIM1_INT;       //Interrupt enabled for timer 1
      0033D0 43 A8 80         [24] 1209 	orl	_IEN0,#0x80
                                   1210 ;	main.c:226: TMOD |= TIM_MODE;       //Timer 1 to 16 bit auto reload mode
      0033D3 43 89 20         [24] 1211 	orl	_TMOD,#0x20
                                   1212 ;	main.c:227: SCON |= UART_ENB;       //Enable UART communication
      0033D6 43 98 50         [24] 1213 	orl	_SCON,#0x50
                                   1214 ;	main.c:228: TCON |= TIM1_START;       //Timer 1 to start
      0033D9 43 88 40         [24] 1215 	orl	_TCON,#0x40
                                   1216 ;	main.c:229: TH1 = TIM1_LOAD;         //To generate baud rate of 9600
      0033DC 75 8D FD         [24] 1217 	mov	_TH1,#0xfd
                                   1218 ;	main.c:230: TI = 1;             //To indicate transmission is done
                                   1219 ;	assignBit
      0033DF D2 99            [12] 1220 	setb	_TI
                                   1221 ;	main.c:231: }
      0033E1 22               [24] 1222 	ret
                                   1223 ;------------------------------------------------------------
                                   1224 ;Allocation info for local variables in function 'watchdog_control'
                                   1225 ;------------------------------------------------------------
                                   1226 ;	main.c:233: void watchdog_control(void)
                                   1227 ;	-----------------------------------------
                                   1228 ;	 function watchdog_control
                                   1229 ;	-----------------------------------------
      0033E2                       1230 _watchdog_control:
                                   1231 ;	main.c:235: if(watchdog_trigger==1)
      0033E2 90 00 1A         [24] 1232 	mov	dptr,#_watchdog_trigger
      0033E5 E0               [24] 1233 	movx	a,@dptr
      0033E6 FF               [12] 1234 	mov	r7,a
      0033E7 BF 01 15         [24] 1235 	cjne	r7,#0x01,00102$
                                   1236 ;	main.c:237: printf_tiny("watchdog timer is on");
      0033EA 74 47            [12] 1237 	mov	a,#___str_19
      0033EC C0 E0            [24] 1238 	push	acc
      0033EE 74 38            [12] 1239 	mov	a,#(___str_19 >> 8)
      0033F0 C0 E0            [24] 1240 	push	acc
      0033F2 12 34 15         [24] 1241 	lcall	_printf_tiny
      0033F5 15 81            [12] 1242 	dec	sp
      0033F7 15 81            [12] 1243 	dec	sp
                                   1244 ;	main.c:238: watchdog_trigger=0;
      0033F9 90 00 1A         [24] 1245 	mov	dptr,#_watchdog_trigger
      0033FC E4               [12] 1246 	clr	a
      0033FD F0               [24] 1247 	movx	@dptr,a
      0033FE 22               [24] 1248 	ret
      0033FF                       1249 00102$:
                                   1250 ;	main.c:242: printf_tiny("watchdog timer is off");
      0033FF 74 5C            [12] 1251 	mov	a,#___str_20
      003401 C0 E0            [24] 1252 	push	acc
      003403 74 38            [12] 1253 	mov	a,#(___str_20 >> 8)
      003405 C0 E0            [24] 1254 	push	acc
      003407 12 34 15         [24] 1255 	lcall	_printf_tiny
      00340A 15 81            [12] 1256 	dec	sp
      00340C 15 81            [12] 1257 	dec	sp
                                   1258 ;	main.c:243: watchdog_trigger=1;
      00340E 90 00 1A         [24] 1259 	mov	dptr,#_watchdog_trigger
      003411 74 01            [12] 1260 	mov	a,#0x01
      003413 F0               [24] 1261 	movx	@dptr,a
                                   1262 ;	main.c:245: }
      003414 22               [24] 1263 	ret
                                   1264 	.area CSEG    (CODE)
                                   1265 	.area CONST   (CODE)
                                   1266 	.area CONST   (CODE)
      00355A                       1267 ___str_0:
      00355A 0A                    1268 	.db 0x0a
      00355B 0D                    1269 	.db 0x0d
      00355C 2A 2A 2A 2A 2A 2A 2A  1270 	.ascii "**************************************MENU******************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 4D 45 4E 55
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      003598 2A 2A 2A 2A 2A 2A 2A  1271 	.ascii "********************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A
      0035AC 0D                    1272 	.db 0x0d
      0035AD 00                    1273 	.db 0x00
                                   1274 	.area CSEG    (CODE)
                                   1275 	.area CONST   (CODE)
      0035AE                       1276 ___str_1:
      0035AE 0A                    1277 	.db 0x0a
      0035AF 0D                    1278 	.db 0x0d
      0035B0 20 31 2E 20 52 75 6E  1279 	.ascii " 1. Run PWM Mode"
             20 50 57 4D 20 4D 6F
             64 65
      0035C0 0A                    1280 	.db 0x0a
      0035C1 0D                    1281 	.db 0x0d
      0035C2 00                    1282 	.db 0x00
                                   1283 	.area CSEG    (CODE)
                                   1284 	.area CONST   (CODE)
      0035C3                       1285 ___str_2:
      0035C3 0A                    1286 	.db 0x0a
      0035C4 0D                    1287 	.db 0x0d
      0035C5 20 32 2E 20 53 74 6F  1288 	.ascii " 2. Stop PWM Mode"
             70 20 50 57 4D 20 4D
             6F 64 65
      0035D6 0A                    1289 	.db 0x0a
      0035D7 0D                    1290 	.db 0x0d
      0035D8 00                    1291 	.db 0x00
                                   1292 	.area CSEG    (CODE)
                                   1293 	.area CONST   (CODE)
      0035D9                       1294 ___str_3:
      0035D9 0A                    1295 	.db 0x0a
      0035DA 0D                    1296 	.db 0x0d
      0035DB 20 33 2E 20 53 65 74  1297 	.ascii " 3. Set FCLK PERIPH at the minimum frequency supported by th"
             20 46 43 4C 4B 20 50
             45 52 49 50 48 20 61
             74 20 74 68 65 20 6D
             69 6E 69 6D 75 6D 20
             66 72 65 71 75 65 6E
             63 79 20 73 75 70 70
             6F 72 74 65 64 20 62
             79 20 74 68
      003617 65 20 43 4B 52 4C 20  1298 	.ascii "e CKRL register "
             72 65 67 69 73 74 65
             72 20
      003627 0A                    1299 	.db 0x0a
      003628 0D                    1300 	.db 0x0d
      003629 00                    1301 	.db 0x00
                                   1302 	.area CSEG    (CODE)
                                   1303 	.area CONST   (CODE)
      00362A                       1304 ___str_4:
      00362A 0A                    1305 	.db 0x0a
      00362B 0D                    1306 	.db 0x0d
      00362C 20 34 2E 20 53 65 74  1307 	.ascii " 4. Set FCLK PERIPH at the maximum frequency supported by th"
             20 46 43 4C 4B 20 50
             45 52 49 50 48 20 61
             74 20 74 68 65 20 6D
             61 78 69 6D 75 6D 20
             66 72 65 71 75 65 6E
             63 79 20 73 75 70 70
             6F 72 74 65 64 20 62
             79 20 74 68
      003668 65 20 43 4B 52 4C 20  1308 	.ascii "e CKRL register "
             72 65 67 69 73 74 65
             72 20
      003678 0A                    1309 	.db 0x0a
      003679 0D                    1310 	.db 0x0d
      00367A 00                    1311 	.db 0x00
                                   1312 	.area CSEG    (CODE)
                                   1313 	.area CONST   (CODE)
      00367B                       1314 ___str_5:
      00367B 0A                    1315 	.db 0x0a
      00367C 0D                    1316 	.db 0x0d
      00367D 20 35 2E 20 45 6E 74  1317 	.ascii " 5. Enter Idle mode "
             65 72 20 49 64 6C 65
             20 6D 6F 64 65 20
      003691 0A                    1318 	.db 0x0a
      003692 0D                    1319 	.db 0x0d
      003693 00                    1320 	.db 0x00
                                   1321 	.area CSEG    (CODE)
                                   1322 	.area CONST   (CODE)
      003694                       1323 ___str_6:
      003694 0A                    1324 	.db 0x0a
      003695 0D                    1325 	.db 0x0d
      003696 20 36 2E 20 45 6E 74  1326 	.ascii " 6. Enter Power Down mode "
             65 72 20 50 6F 77 65
             72 20 44 6F 77 6E 20
             6D 6F 64 65 20
      0036B0 0A                    1327 	.db 0x0a
      0036B1 0D                    1328 	.db 0x0d
      0036B2 00                    1329 	.db 0x00
                                   1330 	.area CSEG    (CODE)
                                   1331 	.area CONST   (CODE)
      0036B3                       1332 ___str_7:
      0036B3 0A                    1333 	.db 0x0a
      0036B4 0D                    1334 	.db 0x0d
      0036B5 20 37 2E 20 57 61 74  1335 	.ascii " 7. Watchdog timer mode "
             63 68 64 6F 67 20 74
             69 6D 65 72 20 6D 6F
             64 65 20
      0036CD 0A                    1336 	.db 0x0a
      0036CE 0D                    1337 	.db 0x0d
      0036CF 00                    1338 	.db 0x00
                                   1339 	.area CSEG    (CODE)
                                   1340 	.area CONST   (CODE)
      0036D0                       1341 ___str_8:
      0036D0 0A                    1342 	.db 0x0a
      0036D1 0D                    1343 	.db 0x0d
      0036D2 20 38 2E 20 48 69 67  1344 	.ascii " 8. High speed mode "
             68 20 73 70 65 65 64
             20 6D 6F 64 65 20
      0036E6 0A                    1345 	.db 0x0a
      0036E7 0D                    1346 	.db 0x0d
      0036E8 00                    1347 	.db 0x00
                                   1348 	.area CSEG    (CODE)
                                   1349 	.area CONST   (CODE)
      0036E9                       1350 ___str_9:
      0036E9 0D                    1351 	.db 0x0d
      0036EA 2A 2A 2A 2A 2A 2A 2A  1352 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      003726 2A 2A 2A 2A 2A 2A 2A  1353 	.ascii "********************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A
      00373A 0D                    1354 	.db 0x0d
      00373B 00                    1355 	.db 0x00
                                   1356 	.area CSEG    (CODE)
                                   1357 	.area CONST   (CODE)
      00373C                       1358 ___str_10:
      00373C 0A                    1359 	.db 0x0a
      00373D 0D                    1360 	.db 0x0d
      00373E 20 45 6E 74 65 72 20  1361 	.ascii " Enter a number from menu or press 0 to see menu again "
             61 20 6E 75 6D 62 65
             72 20 66 72 6F 6D 20
             6D 65 6E 75 20 6F 72
             20 70 72 65 73 73 20
             30 20 74 6F 20 73 65
             65 20 6D 65 6E 75 20
             61 67 61 69 6E 20
      003775 0A                    1362 	.db 0x0a
      003776 0D                    1363 	.db 0x0d
      003777 00                    1364 	.db 0x00
                                   1365 	.area CSEG    (CODE)
                                   1366 	.area CONST   (CODE)
      003778                       1367 ___str_11:
      003778 0A                    1368 	.db 0x0a
      003779 0D                    1369 	.db 0x0d
      00377A 20 50 57 4D 20 6F 75  1370 	.ascii " PWM ouput ON "
             70 75 74 20 4F 4E 20
      003788 0A                    1371 	.db 0x0a
      003789 0D                    1372 	.db 0x0d
      00378A 00                    1373 	.db 0x00
                                   1374 	.area CSEG    (CODE)
                                   1375 	.area CONST   (CODE)
      00378B                       1376 ___str_12:
      00378B 0A                    1377 	.db 0x0a
      00378C 0D                    1378 	.db 0x0d
      00378D 20 50 57 4D 20 6F 75  1379 	.ascii " PWM output OFF "
             74 70 75 74 20 4F 46
             46 20
      00379D 0A                    1380 	.db 0x0a
      00379E 0D                    1381 	.db 0x0d
      00379F 00                    1382 	.db 0x00
                                   1383 	.area CSEG    (CODE)
                                   1384 	.area CONST   (CODE)
      0037A0                       1385 ___str_13:
      0037A0 0A                    1386 	.db 0x0a
      0037A1 0D                    1387 	.db 0x0d
      0037A2 20 50 65 72 69 70 68  1388 	.ascii " Peripheral clock at Maximum Frequency "
             65 72 61 6C 20 63 6C
             6F 63 6B 20 61 74 20
             4D 61 78 69 6D 75 6D
             20 46 72 65 71 75 65
             6E 63 79 20
      0037C9 0A                    1389 	.db 0x0a
      0037CA 0D                    1390 	.db 0x0d
      0037CB 00                    1391 	.db 0x00
                                   1392 	.area CSEG    (CODE)
                                   1393 	.area CONST   (CODE)
      0037CC                       1394 ___str_14:
      0037CC 0A                    1395 	.db 0x0a
      0037CD 0D                    1396 	.db 0x0d
      0037CE 20 50 65 72 69 70 68  1397 	.ascii " Peripheral clock at Minimum Frequency "
             65 72 61 6C 20 63 6C
             6F 63 6B 20 61 74 20
             4D 69 6E 69 6D 75 6D
             20 46 72 65 71 75 65
             6E 63 79 20
      0037F5 0A                    1398 	.db 0x0a
      0037F6 0D                    1399 	.db 0x0d
      0037F7 00                    1400 	.db 0x00
                                   1401 	.area CSEG    (CODE)
                                   1402 	.area CONST   (CODE)
      0037F8                       1403 ___str_15:
      0037F8 0A                    1404 	.db 0x0a
      0037F9 0D                    1405 	.db 0x0d
      0037FA 20 49 44 4C 45 20 6D  1406 	.ascii " IDLE mode"
             6F 64 65
      003804 0A                    1407 	.db 0x0a
      003805 0D                    1408 	.db 0x0d
      003806 00                    1409 	.db 0x00
                                   1410 	.area CSEG    (CODE)
                                   1411 	.area CONST   (CODE)
      003807                       1412 ___str_16:
      003807 0A                    1413 	.db 0x0a
      003808 0D                    1414 	.db 0x0d
      003809 50 6F 77 65 72 20 64  1415 	.ascii "Power down mode"
             6F 77 6E 20 6D 6F 64
             65
      003818 0A                    1416 	.db 0x0a
      003819 0D                    1417 	.db 0x0d
      00381A 00                    1418 	.db 0x00
                                   1419 	.area CSEG    (CODE)
                                   1420 	.area CONST   (CODE)
      00381B                       1421 ___str_17:
      00381B 0A                    1422 	.db 0x0a
      00381C 0D                    1423 	.db 0x0d
      00381D 20 57 61 74 63 68 2D  1424 	.ascii " Watch-dog mode"
             64 6F 67 20 6D 6F 64
             65
      00382C 0A                    1425 	.db 0x0a
      00382D 0D                    1426 	.db 0x0d
      00382E 00                    1427 	.db 0x00
                                   1428 	.area CSEG    (CODE)
                                   1429 	.area CONST   (CODE)
      00382F                       1430 ___str_18:
      00382F 0A                    1431 	.db 0x0a
      003830 0D                    1432 	.db 0x0d
      003831 20 48 69 67 68 2D 53  1433 	.ascii " High-Speed mode on"
             70 65 65 64 20 6D 6F
             64 65 20 6F 6E
      003844 0A                    1434 	.db 0x0a
      003845 0D                    1435 	.db 0x0d
      003846 00                    1436 	.db 0x00
                                   1437 	.area CSEG    (CODE)
                                   1438 	.area CONST   (CODE)
      003847                       1439 ___str_19:
      003847 77 61 74 63 68 64 6F  1440 	.ascii "watchdog timer is on"
             67 20 74 69 6D 65 72
             20 69 73 20 6F 6E
      00385B 00                    1441 	.db 0x00
                                   1442 	.area CSEG    (CODE)
                                   1443 	.area CONST   (CODE)
      00385C                       1444 ___str_20:
      00385C 77 61 74 63 68 64 6F  1445 	.ascii "watchdog timer is off"
             67 20 74 69 6D 65 72
             20 69 73 20 6F 66 66
      003871 00                    1446 	.db 0x00
                                   1447 	.area CSEG    (CODE)
                                   1448 	.area XINIT   (CODE)
      003872                       1449 __xinit__num:
      003872 00 00                 1450 	.byte #0x00, #0x00	;  0
      003874                       1451 __xinit__watchdog_trigger:
      003874 01                    1452 	.db #0x01	; 1
                                   1453 	.area CABS    (ABS,CODE)
