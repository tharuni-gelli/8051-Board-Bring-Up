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
                                     12 	.globl _waves_init
                                     13 	.globl _wave_interrupt_handler
                                     14 	.globl __sdcc_external_startup
                                     15 	.globl _dac_decrease_voltage
                                     16 	.globl _dac_increase_voltage
                                     17 	.globl _dac_output_control_change
                                     18 	.globl _dac_next_wave
                                     19 	.globl _dac_update_output
                                     20 	.globl _dac_set
                                     21 	.globl _fetch_number
                                     22 	.globl _my_printf
                                     23 	.globl _getchar
                                     24 	.globl _putchar
                                     25 	.globl _TF1
                                     26 	.globl _TR1
                                     27 	.globl _TF0
                                     28 	.globl _TR0
                                     29 	.globl _IE1
                                     30 	.globl _IT1
                                     31 	.globl _IE0
                                     32 	.globl _IT0
                                     33 	.globl _SM0
                                     34 	.globl _SM1
                                     35 	.globl _SM2
                                     36 	.globl _REN
                                     37 	.globl _TB8
                                     38 	.globl _RB8
                                     39 	.globl _TI
                                     40 	.globl _RI
                                     41 	.globl _CY
                                     42 	.globl _AC
                                     43 	.globl _F0
                                     44 	.globl _RS1
                                     45 	.globl _RS0
                                     46 	.globl _OV
                                     47 	.globl _F1
                                     48 	.globl _P
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD0
                                     56 	.globl _TXD
                                     57 	.globl _RXD0
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _PS
                                     92 	.globl _PT1
                                     93 	.globl _PX1
                                     94 	.globl _PT0
                                     95 	.globl _PX0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _BREG_F7
                                    103 	.globl _BREG_F6
                                    104 	.globl _BREG_F5
                                    105 	.globl _BREG_F4
                                    106 	.globl _BREG_F3
                                    107 	.globl _BREG_F2
                                    108 	.globl _BREG_F1
                                    109 	.globl _BREG_F0
                                    110 	.globl _P5_7
                                    111 	.globl _P5_6
                                    112 	.globl _P5_5
                                    113 	.globl _P5_4
                                    114 	.globl _P5_3
                                    115 	.globl _P5_2
                                    116 	.globl _P5_1
                                    117 	.globl _P5_0
                                    118 	.globl _P4_7
                                    119 	.globl _P4_6
                                    120 	.globl _P4_5
                                    121 	.globl _P4_4
                                    122 	.globl _P4_3
                                    123 	.globl _P4_2
                                    124 	.globl _P4_1
                                    125 	.globl _P4_0
                                    126 	.globl _PX0L
                                    127 	.globl _PT0L
                                    128 	.globl _PX1L
                                    129 	.globl _PT1L
                                    130 	.globl _PSL
                                    131 	.globl _PT2L
                                    132 	.globl _PPCL
                                    133 	.globl _EC
                                    134 	.globl _CCF0
                                    135 	.globl _CCF1
                                    136 	.globl _CCF2
                                    137 	.globl _CCF3
                                    138 	.globl _CCF4
                                    139 	.globl _CR
                                    140 	.globl _CF
                                    141 	.globl _TF2
                                    142 	.globl _EXF2
                                    143 	.globl _RCLK
                                    144 	.globl _TCLK
                                    145 	.globl _EXEN2
                                    146 	.globl _TR2
                                    147 	.globl _C_T2
                                    148 	.globl _CP_RL2
                                    149 	.globl _T2CON_7
                                    150 	.globl _T2CON_6
                                    151 	.globl _T2CON_5
                                    152 	.globl _T2CON_4
                                    153 	.globl _T2CON_3
                                    154 	.globl _T2CON_2
                                    155 	.globl _T2CON_1
                                    156 	.globl _T2CON_0
                                    157 	.globl _PT2
                                    158 	.globl _ET2
                                    159 	.globl _TMOD
                                    160 	.globl _TL1
                                    161 	.globl _TL0
                                    162 	.globl _TH1
                                    163 	.globl _TH0
                                    164 	.globl _TCON
                                    165 	.globl _SP
                                    166 	.globl _SCON
                                    167 	.globl _SBUF0
                                    168 	.globl _SBUF
                                    169 	.globl _PSW
                                    170 	.globl _PCON
                                    171 	.globl _P3
                                    172 	.globl _P2
                                    173 	.globl _P1
                                    174 	.globl _P0
                                    175 	.globl _IP
                                    176 	.globl _IE
                                    177 	.globl _DP0L
                                    178 	.globl _DPL
                                    179 	.globl _DP0H
                                    180 	.globl _DPH
                                    181 	.globl _B
                                    182 	.globl _ACC
                                    183 	.globl _EECON
                                    184 	.globl _KBF
                                    185 	.globl _KBE
                                    186 	.globl _KBLS
                                    187 	.globl _BRL
                                    188 	.globl _BDRCON
                                    189 	.globl _T2MOD
                                    190 	.globl _SPDAT
                                    191 	.globl _SPSTA
                                    192 	.globl _SPCON
                                    193 	.globl _SADEN
                                    194 	.globl _SADDR
                                    195 	.globl _WDTPRG
                                    196 	.globl _WDTRST
                                    197 	.globl _P5
                                    198 	.globl _P4
                                    199 	.globl _IPH1
                                    200 	.globl _IPL1
                                    201 	.globl _IPH0
                                    202 	.globl _IPL0
                                    203 	.globl _IEN1
                                    204 	.globl _IEN0
                                    205 	.globl _CMOD
                                    206 	.globl _CL
                                    207 	.globl _CH
                                    208 	.globl _CCON
                                    209 	.globl _CCAPM4
                                    210 	.globl _CCAPM3
                                    211 	.globl _CCAPM2
                                    212 	.globl _CCAPM1
                                    213 	.globl _CCAPM0
                                    214 	.globl _CCAP4L
                                    215 	.globl _CCAP3L
                                    216 	.globl _CCAP2L
                                    217 	.globl _CCAP1L
                                    218 	.globl _CCAP0L
                                    219 	.globl _CCAP4H
                                    220 	.globl _CCAP3H
                                    221 	.globl _CCAP2H
                                    222 	.globl _CCAP1H
                                    223 	.globl _CCAP0H
                                    224 	.globl _CKCON1
                                    225 	.globl _CKCON0
                                    226 	.globl _CKRL
                                    227 	.globl _AUXR1
                                    228 	.globl _AUXR
                                    229 	.globl _TH2
                                    230 	.globl _TL2
                                    231 	.globl _RCAP2H
                                    232 	.globl _RCAP2L
                                    233 	.globl _T2CON
                                    234 ;--------------------------------------------------------
                                    235 ; special function registers
                                    236 ;--------------------------------------------------------
                                    237 	.area RSEG    (ABS,DATA)
      000000                        238 	.org 0x0000
                           0000C8   239 _T2CON	=	0x00c8
                           0000CA   240 _RCAP2L	=	0x00ca
                           0000CB   241 _RCAP2H	=	0x00cb
                           0000CC   242 _TL2	=	0x00cc
                           0000CD   243 _TH2	=	0x00cd
                           00008E   244 _AUXR	=	0x008e
                           0000A2   245 _AUXR1	=	0x00a2
                           000097   246 _CKRL	=	0x0097
                           00008F   247 _CKCON0	=	0x008f
                           0000AF   248 _CKCON1	=	0x00af
                           0000FA   249 _CCAP0H	=	0x00fa
                           0000FB   250 _CCAP1H	=	0x00fb
                           0000FC   251 _CCAP2H	=	0x00fc
                           0000FD   252 _CCAP3H	=	0x00fd
                           0000FE   253 _CCAP4H	=	0x00fe
                           0000EA   254 _CCAP0L	=	0x00ea
                           0000EB   255 _CCAP1L	=	0x00eb
                           0000EC   256 _CCAP2L	=	0x00ec
                           0000ED   257 _CCAP3L	=	0x00ed
                           0000EE   258 _CCAP4L	=	0x00ee
                           0000DA   259 _CCAPM0	=	0x00da
                           0000DB   260 _CCAPM1	=	0x00db
                           0000DC   261 _CCAPM2	=	0x00dc
                           0000DD   262 _CCAPM3	=	0x00dd
                           0000DE   263 _CCAPM4	=	0x00de
                           0000D8   264 _CCON	=	0x00d8
                           0000F9   265 _CH	=	0x00f9
                           0000E9   266 _CL	=	0x00e9
                           0000D9   267 _CMOD	=	0x00d9
                           0000A8   268 _IEN0	=	0x00a8
                           0000B1   269 _IEN1	=	0x00b1
                           0000B8   270 _IPL0	=	0x00b8
                           0000B7   271 _IPH0	=	0x00b7
                           0000B2   272 _IPL1	=	0x00b2
                           0000B3   273 _IPH1	=	0x00b3
                           0000C0   274 _P4	=	0x00c0
                           0000E8   275 _P5	=	0x00e8
                           0000A6   276 _WDTRST	=	0x00a6
                           0000A7   277 _WDTPRG	=	0x00a7
                           0000A9   278 _SADDR	=	0x00a9
                           0000B9   279 _SADEN	=	0x00b9
                           0000C3   280 _SPCON	=	0x00c3
                           0000C4   281 _SPSTA	=	0x00c4
                           0000C5   282 _SPDAT	=	0x00c5
                           0000C9   283 _T2MOD	=	0x00c9
                           00009B   284 _BDRCON	=	0x009b
                           00009A   285 _BRL	=	0x009a
                           00009C   286 _KBLS	=	0x009c
                           00009D   287 _KBE	=	0x009d
                           00009E   288 _KBF	=	0x009e
                           0000D2   289 _EECON	=	0x00d2
                           0000E0   290 _ACC	=	0x00e0
                           0000F0   291 _B	=	0x00f0
                           000083   292 _DPH	=	0x0083
                           000083   293 _DP0H	=	0x0083
                           000082   294 _DPL	=	0x0082
                           000082   295 _DP0L	=	0x0082
                           0000A8   296 _IE	=	0x00a8
                           0000B8   297 _IP	=	0x00b8
                           000080   298 _P0	=	0x0080
                           000090   299 _P1	=	0x0090
                           0000A0   300 _P2	=	0x00a0
                           0000B0   301 _P3	=	0x00b0
                           000087   302 _PCON	=	0x0087
                           0000D0   303 _PSW	=	0x00d0
                           000099   304 _SBUF	=	0x0099
                           000099   305 _SBUF0	=	0x0099
                           000098   306 _SCON	=	0x0098
                           000081   307 _SP	=	0x0081
                           000088   308 _TCON	=	0x0088
                           00008C   309 _TH0	=	0x008c
                           00008D   310 _TH1	=	0x008d
                           00008A   311 _TL0	=	0x008a
                           00008B   312 _TL1	=	0x008b
                           000089   313 _TMOD	=	0x0089
                                    314 ;--------------------------------------------------------
                                    315 ; special function bits
                                    316 ;--------------------------------------------------------
                                    317 	.area RSEG    (ABS,DATA)
      000000                        318 	.org 0x0000
                           0000AD   319 _ET2	=	0x00ad
                           0000BD   320 _PT2	=	0x00bd
                           0000C8   321 _T2CON_0	=	0x00c8
                           0000C9   322 _T2CON_1	=	0x00c9
                           0000CA   323 _T2CON_2	=	0x00ca
                           0000CB   324 _T2CON_3	=	0x00cb
                           0000CC   325 _T2CON_4	=	0x00cc
                           0000CD   326 _T2CON_5	=	0x00cd
                           0000CE   327 _T2CON_6	=	0x00ce
                           0000CF   328 _T2CON_7	=	0x00cf
                           0000C8   329 _CP_RL2	=	0x00c8
                           0000C9   330 _C_T2	=	0x00c9
                           0000CA   331 _TR2	=	0x00ca
                           0000CB   332 _EXEN2	=	0x00cb
                           0000CC   333 _TCLK	=	0x00cc
                           0000CD   334 _RCLK	=	0x00cd
                           0000CE   335 _EXF2	=	0x00ce
                           0000CF   336 _TF2	=	0x00cf
                           0000DF   337 _CF	=	0x00df
                           0000DE   338 _CR	=	0x00de
                           0000DC   339 _CCF4	=	0x00dc
                           0000DB   340 _CCF3	=	0x00db
                           0000DA   341 _CCF2	=	0x00da
                           0000D9   342 _CCF1	=	0x00d9
                           0000D8   343 _CCF0	=	0x00d8
                           0000AE   344 _EC	=	0x00ae
                           0000BE   345 _PPCL	=	0x00be
                           0000BD   346 _PT2L	=	0x00bd
                           0000BC   347 _PSL	=	0x00bc
                           0000BB   348 _PT1L	=	0x00bb
                           0000BA   349 _PX1L	=	0x00ba
                           0000B9   350 _PT0L	=	0x00b9
                           0000B8   351 _PX0L	=	0x00b8
                           0000C0   352 _P4_0	=	0x00c0
                           0000C1   353 _P4_1	=	0x00c1
                           0000C2   354 _P4_2	=	0x00c2
                           0000C3   355 _P4_3	=	0x00c3
                           0000C4   356 _P4_4	=	0x00c4
                           0000C5   357 _P4_5	=	0x00c5
                           0000C6   358 _P4_6	=	0x00c6
                           0000C7   359 _P4_7	=	0x00c7
                           0000E8   360 _P5_0	=	0x00e8
                           0000E9   361 _P5_1	=	0x00e9
                           0000EA   362 _P5_2	=	0x00ea
                           0000EB   363 _P5_3	=	0x00eb
                           0000EC   364 _P5_4	=	0x00ec
                           0000ED   365 _P5_5	=	0x00ed
                           0000EE   366 _P5_6	=	0x00ee
                           0000EF   367 _P5_7	=	0x00ef
                           0000F0   368 _BREG_F0	=	0x00f0
                           0000F1   369 _BREG_F1	=	0x00f1
                           0000F2   370 _BREG_F2	=	0x00f2
                           0000F3   371 _BREG_F3	=	0x00f3
                           0000F4   372 _BREG_F4	=	0x00f4
                           0000F5   373 _BREG_F5	=	0x00f5
                           0000F6   374 _BREG_F6	=	0x00f6
                           0000F7   375 _BREG_F7	=	0x00f7
                           0000A8   376 _EX0	=	0x00a8
                           0000A9   377 _ET0	=	0x00a9
                           0000AA   378 _EX1	=	0x00aa
                           0000AB   379 _ET1	=	0x00ab
                           0000AC   380 _ES	=	0x00ac
                           0000AF   381 _EA	=	0x00af
                           0000B8   382 _PX0	=	0x00b8
                           0000B9   383 _PT0	=	0x00b9
                           0000BA   384 _PX1	=	0x00ba
                           0000BB   385 _PT1	=	0x00bb
                           0000BC   386 _PS	=	0x00bc
                           000080   387 _P0_0	=	0x0080
                           000081   388 _P0_1	=	0x0081
                           000082   389 _P0_2	=	0x0082
                           000083   390 _P0_3	=	0x0083
                           000084   391 _P0_4	=	0x0084
                           000085   392 _P0_5	=	0x0085
                           000086   393 _P0_6	=	0x0086
                           000087   394 _P0_7	=	0x0087
                           000090   395 _P1_0	=	0x0090
                           000091   396 _P1_1	=	0x0091
                           000092   397 _P1_2	=	0x0092
                           000093   398 _P1_3	=	0x0093
                           000094   399 _P1_4	=	0x0094
                           000095   400 _P1_5	=	0x0095
                           000096   401 _P1_6	=	0x0096
                           000097   402 _P1_7	=	0x0097
                           0000A0   403 _P2_0	=	0x00a0
                           0000A1   404 _P2_1	=	0x00a1
                           0000A2   405 _P2_2	=	0x00a2
                           0000A3   406 _P2_3	=	0x00a3
                           0000A4   407 _P2_4	=	0x00a4
                           0000A5   408 _P2_5	=	0x00a5
                           0000A6   409 _P2_6	=	0x00a6
                           0000A7   410 _P2_7	=	0x00a7
                           0000B0   411 _P3_0	=	0x00b0
                           0000B1   412 _P3_1	=	0x00b1
                           0000B2   413 _P3_2	=	0x00b2
                           0000B3   414 _P3_3	=	0x00b3
                           0000B4   415 _P3_4	=	0x00b4
                           0000B5   416 _P3_5	=	0x00b5
                           0000B6   417 _P3_6	=	0x00b6
                           0000B7   418 _P3_7	=	0x00b7
                           0000B0   419 _RXD	=	0x00b0
                           0000B0   420 _RXD0	=	0x00b0
                           0000B1   421 _TXD	=	0x00b1
                           0000B1   422 _TXD0	=	0x00b1
                           0000B2   423 _INT0	=	0x00b2
                           0000B3   424 _INT1	=	0x00b3
                           0000B4   425 _T0	=	0x00b4
                           0000B5   426 _T1	=	0x00b5
                           0000B6   427 _WR	=	0x00b6
                           0000B7   428 _RD	=	0x00b7
                           0000D0   429 _P	=	0x00d0
                           0000D1   430 _F1	=	0x00d1
                           0000D2   431 _OV	=	0x00d2
                           0000D3   432 _RS0	=	0x00d3
                           0000D4   433 _RS1	=	0x00d4
                           0000D5   434 _F0	=	0x00d5
                           0000D6   435 _AC	=	0x00d6
                           0000D7   436 _CY	=	0x00d7
                           000098   437 _RI	=	0x0098
                           000099   438 _TI	=	0x0099
                           00009A   439 _RB8	=	0x009a
                           00009B   440 _TB8	=	0x009b
                           00009C   441 _REN	=	0x009c
                           00009D   442 _SM2	=	0x009d
                           00009E   443 _SM1	=	0x009e
                           00009F   444 _SM0	=	0x009f
                           000088   445 _IT0	=	0x0088
                           000089   446 _IE0	=	0x0089
                           00008A   447 _IT1	=	0x008a
                           00008B   448 _IE1	=	0x008b
                           00008C   449 _TR0	=	0x008c
                           00008D   450 _TF0	=	0x008d
                           00008E   451 _TR1	=	0x008e
                           00008F   452 _TF1	=	0x008f
                                    453 ;--------------------------------------------------------
                                    454 ; overlayable register banks
                                    455 ;--------------------------------------------------------
                                    456 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        457 	.ds 8
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable bit register bank
                                    460 ;--------------------------------------------------------
                                    461 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        462 bits:
      000021                        463 	.ds 1
                           008000   464 	b0 = bits[0]
                           008100   465 	b1 = bits[1]
                           008200   466 	b2 = bits[2]
                           008300   467 	b3 = bits[3]
                           008400   468 	b4 = bits[4]
                           008500   469 	b5 = bits[5]
                           008600   470 	b6 = bits[6]
                           008700   471 	b7 = bits[7]
                                    472 ;--------------------------------------------------------
                                    473 ; internal ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area DSEG    (DATA)
                                    476 ;--------------------------------------------------------
                                    477 ; overlayable items in internal ram
                                    478 ;--------------------------------------------------------
                                    479 ;--------------------------------------------------------
                                    480 ; Stack segment in internal ram
                                    481 ;--------------------------------------------------------
                                    482 	.area	SSEG
      00002B                        483 __start__stack:
      00002B                        484 	.ds	1
                                    485 
                                    486 ;--------------------------------------------------------
                                    487 ; indirectly addressable internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area ISEG    (DATA)
                                    490 ;--------------------------------------------------------
                                    491 ; absolute internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area IABS    (ABS,DATA)
                                    494 	.area IABS    (ABS,DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; bit data
                                    497 ;--------------------------------------------------------
                                    498 	.area BSEG    (BIT)
                                    499 ;--------------------------------------------------------
                                    500 ; paged external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area PSEG    (PAG,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XSEG    (XDATA)
      000001                        507 _main_Welcome_txt_65536_29:
      000001                        508 	.ds 33
      000022                        509 _main_Welcome_lcd_txt_65536_29:
      000022                        510 	.ds 31
      000041                        511 _main_Instructions_txt_65536_29:
      000041                        512 	.ds 135
      0000C8                        513 _main_DAC_on_txt_65536_29:
      0000C8                        514 	.ds 10
      0000D2                        515 _main_DAC_off_txt_65536_29:
      0000D2                        516 	.ds 11
      0000DD                        517 _main_Enter_data_txt_65536_29:
      0000DD                        518 	.ds 14
      0000EB                        519 _main_DAC_a_txt_65536_29:
      0000EB                        520 	.ds 24
      000103                        521 _main_DAC_b_txt_65536_29:
      000103                        522 	.ds 24
      00011B                        523 _main_DAC_gain_inc_txt_65536_29:
      00011B                        524 	.ds 17
      00012C                        525 _main_DAC_gain_dec_txt_65536_29:
      00012C                        526 	.ds 17
      00013D                        527 _main_DAC_mode_txt_65536_29:
      00013D                        528 	.ds 15
      00014C                        529 _main_DAC_next_wave_txt_65536_29:
      00014C                        530 	.ds 13
                                    531 ;--------------------------------------------------------
                                    532 ; absolute external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XABS    (ABS,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; external initialized ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XISEG   (XDATA)
                                    539 	.area HOME    (CODE)
                                    540 	.area GSINIT0 (CODE)
                                    541 	.area GSINIT1 (CODE)
                                    542 	.area GSINIT2 (CODE)
                                    543 	.area GSINIT3 (CODE)
                                    544 	.area GSINIT4 (CODE)
                                    545 	.area GSINIT5 (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.area GSFINAL (CODE)
                                    548 	.area CSEG    (CODE)
                                    549 ;--------------------------------------------------------
                                    550 ; interrupt vector
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
      002000                        553 __interrupt_vect:
      002000 02 20 11         [24]  554 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  555 	reti
      002004                        556 	.ds	7
      00200B 02 35 0E         [24]  557 	ljmp	_wave_interrupt_handler
                                    558 ;--------------------------------------------------------
                                    559 ; global & static initialisations
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
                                    562 	.area GSINIT  (CODE)
                                    563 	.area GSFINAL (CODE)
                                    564 	.area GSINIT  (CODE)
                                    565 	.globl __sdcc_gsinit_startup
                                    566 	.globl __sdcc_program_startup
                                    567 	.globl __start__stack
                                    568 	.globl __mcs51_genXINIT
                                    569 	.globl __mcs51_genXRAMCLEAR
                                    570 	.globl __mcs51_genRAMCLEAR
                                    571 	.area GSFINAL (CODE)
      003504 02 20 0E         [24]  572 	ljmp	__sdcc_program_startup
                                    573 ;--------------------------------------------------------
                                    574 ; Home
                                    575 ;--------------------------------------------------------
                                    576 	.area HOME    (CODE)
                                    577 	.area HOME    (CODE)
      00200E                        578 __sdcc_program_startup:
      00200E 02 35 67         [24]  579 	ljmp	_main
                                    580 ;	return from main will return to caller
                                    581 ;--------------------------------------------------------
                                    582 ; code
                                    583 ;--------------------------------------------------------
                                    584 	.area CSEG    (CODE)
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    587 ;------------------------------------------------------------
                                    588 ;	main.c:8: _sdcc_external_startup()
                                    589 ;	-----------------------------------------
                                    590 ;	 function _sdcc_external_startup
                                    591 ;	-----------------------------------------
      003507                        592 __sdcc_external_startup:
                           000007   593 	ar7 = 0x07
                           000006   594 	ar6 = 0x06
                           000005   595 	ar5 = 0x05
                           000004   596 	ar4 = 0x04
                           000003   597 	ar3 = 0x03
                           000002   598 	ar2 = 0x02
                           000001   599 	ar1 = 0x01
                           000000   600 	ar0 = 0x00
                                    601 ;	main.c:10: AUXR |= 0x0C;
      003507 43 8E 0C         [24]  602 	orl	_AUXR,#0x0c
                                    603 ;	main.c:11: return 0;
      00350A 90 00 00         [24]  604 	mov	dptr,#0x0000
                                    605 ;	main.c:12: }
      00350D 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'wave_interrupt_handler'
                                    609 ;------------------------------------------------------------
                                    610 ;	main.c:14: void wave_interrupt_handler(void) __interrupt 1
                                    611 ;	-----------------------------------------
                                    612 ;	 function wave_interrupt_handler
                                    613 ;	-----------------------------------------
      00350E                        614 _wave_interrupt_handler:
      00350E C0 21            [24]  615 	push	bits
      003510 C0 E0            [24]  616 	push	acc
      003512 C0 F0            [24]  617 	push	b
      003514 C0 82            [24]  618 	push	dpl
      003516 C0 83            [24]  619 	push	dph
      003518 C0 07            [24]  620 	push	(0+7)
      00351A C0 06            [24]  621 	push	(0+6)
      00351C C0 05            [24]  622 	push	(0+5)
      00351E C0 04            [24]  623 	push	(0+4)
      003520 C0 03            [24]  624 	push	(0+3)
      003522 C0 02            [24]  625 	push	(0+2)
      003524 C0 01            [24]  626 	push	(0+1)
      003526 C0 00            [24]  627 	push	(0+0)
      003528 C0 D0            [24]  628 	push	psw
      00352A 75 D0 00         [24]  629 	mov	psw,#0x00
                                    630 ;	main.c:16: TF0 = 0;
                                    631 ;	assignBit
      00352D C2 8D            [12]  632 	clr	_TF0
                                    633 ;	main.c:17: TL0 = 0x00;
      00352F 75 8A 00         [24]  634 	mov	_TL0,#0x00
                                    635 ;	main.c:18: TH0 = 0xFC;
      003532 75 8C FC         [24]  636 	mov	_TH0,#0xfc
                                    637 ;	main.c:19: dac_update_output();
      003535 12 3E 3F         [24]  638 	lcall	_dac_update_output
                                    639 ;	main.c:20: }
      003538 D0 D0            [24]  640 	pop	psw
      00353A D0 00            [24]  641 	pop	(0+0)
      00353C D0 01            [24]  642 	pop	(0+1)
      00353E D0 02            [24]  643 	pop	(0+2)
      003540 D0 03            [24]  644 	pop	(0+3)
      003542 D0 04            [24]  645 	pop	(0+4)
      003544 D0 05            [24]  646 	pop	(0+5)
      003546 D0 06            [24]  647 	pop	(0+6)
      003548 D0 07            [24]  648 	pop	(0+7)
      00354A D0 83            [24]  649 	pop	dph
      00354C D0 82            [24]  650 	pop	dpl
      00354E D0 F0            [24]  651 	pop	b
      003550 D0 E0            [24]  652 	pop	acc
      003552 D0 21            [24]  653 	pop	bits
      003554 32               [24]  654 	reti
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'waves_init'
                                    657 ;------------------------------------------------------------
                                    658 ;	main.c:22: void waves_init(void)
                                    659 ;	-----------------------------------------
                                    660 ;	 function waves_init
                                    661 ;	-----------------------------------------
      003555                        662 _waves_init:
                                    663 ;	main.c:24: IEN0 |= 0x82;
      003555 43 A8 82         [24]  664 	orl	_IEN0,#0x82
                                    665 ;	main.c:25: TMOD |= 0x01;
      003558 43 89 01         [24]  666 	orl	_TMOD,#0x01
                                    667 ;	main.c:26: TMOD &= 0xF1;
      00355B 53 89 F1         [24]  668 	anl	_TMOD,#0xf1
                                    669 ;	main.c:27: TL0 = 0x00;
      00355E 75 8A 00         [24]  670 	mov	_TL0,#0x00
                                    671 ;	main.c:28: TH0 = 0xFC;
      003561 75 8C FC         [24]  672 	mov	_TH0,#0xfc
                                    673 ;	main.c:29: TR0 = 1;
                                    674 ;	assignBit
      003564 D2 8C            [12]  675 	setb	_TR0
                                    676 ;	main.c:30: return;
                                    677 ;	main.c:31: }
      003566 22               [24]  678 	ret
                                    679 ;------------------------------------------------------------
                                    680 ;Allocation info for local variables in function 'main'
                                    681 ;------------------------------------------------------------
                                    682 ;key_pressed               Allocated with name '_main_key_pressed_65536_29'
                                    683 ;data_byte                 Allocated with name '_main_data_byte_65536_29'
                                    684 ;address                   Allocated with name '_main_address_65536_29'
                                    685 ;Welcome_txt               Allocated with name '_main_Welcome_txt_65536_29'
                                    686 ;Welcome_lcd_txt           Allocated with name '_main_Welcome_lcd_txt_65536_29'
                                    687 ;Instructions_txt          Allocated with name '_main_Instructions_txt_65536_29'
                                    688 ;DAC_on_txt                Allocated with name '_main_DAC_on_txt_65536_29'
                                    689 ;DAC_off_txt               Allocated with name '_main_DAC_off_txt_65536_29'
                                    690 ;Enter_data_txt            Allocated with name '_main_Enter_data_txt_65536_29'
                                    691 ;DAC_a_txt                 Allocated with name '_main_DAC_a_txt_65536_29'
                                    692 ;DAC_b_txt                 Allocated with name '_main_DAC_b_txt_65536_29'
                                    693 ;DAC_gain_inc_txt          Allocated with name '_main_DAC_gain_inc_txt_65536_29'
                                    694 ;DAC_gain_dec_txt          Allocated with name '_main_DAC_gain_dec_txt_65536_29'
                                    695 ;DAC_mode_txt              Allocated with name '_main_DAC_mode_txt_65536_29'
                                    696 ;DAC_next_wave_txt         Allocated with name '_main_DAC_next_wave_txt_65536_29'
                                    697 ;------------------------------------------------------------
                                    698 ;	main.c:33: void main(void)
                                    699 ;	-----------------------------------------
                                    700 ;	 function main
                                    701 ;	-----------------------------------------
      003567                        702 _main:
                                    703 ;	main.c:39: __xdata uint8_t Welcome_txt[] = "\n\rTharuni ESD Lab 4 Supplemental";
      003567 90 00 01         [24]  704 	mov	dptr,#_main_Welcome_txt_65536_29
      00356A 74 0A            [12]  705 	mov	a,#0x0a
      00356C F0               [24]  706 	movx	@dptr,a
      00356D 90 00 02         [24]  707 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0001)
      003570 74 0D            [12]  708 	mov	a,#0x0d
      003572 F0               [24]  709 	movx	@dptr,a
      003573 90 00 03         [24]  710 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0002)
      003576 74 54            [12]  711 	mov	a,#0x54
      003578 F0               [24]  712 	movx	@dptr,a
      003579 90 00 04         [24]  713 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0003)
      00357C 74 68            [12]  714 	mov	a,#0x68
      00357E F0               [24]  715 	movx	@dptr,a
      00357F 90 00 05         [24]  716 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0004)
      003582 74 61            [12]  717 	mov	a,#0x61
      003584 F0               [24]  718 	movx	@dptr,a
      003585 90 00 06         [24]  719 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0005)
      003588 74 72            [12]  720 	mov	a,#0x72
      00358A F0               [24]  721 	movx	@dptr,a
      00358B 90 00 07         [24]  722 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0006)
      00358E 74 75            [12]  723 	mov	a,#0x75
      003590 F0               [24]  724 	movx	@dptr,a
      003591 90 00 08         [24]  725 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0007)
      003594 74 6E            [12]  726 	mov	a,#0x6e
      003596 F0               [24]  727 	movx	@dptr,a
      003597 90 00 09         [24]  728 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0008)
      00359A 74 69            [12]  729 	mov	a,#0x69
      00359C F0               [24]  730 	movx	@dptr,a
      00359D 90 00 0A         [24]  731 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0009)
      0035A0 74 20            [12]  732 	mov	a,#0x20
      0035A2 F0               [24]  733 	movx	@dptr,a
      0035A3 90 00 0B         [24]  734 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000a)
      0035A6 74 45            [12]  735 	mov	a,#0x45
      0035A8 F0               [24]  736 	movx	@dptr,a
      0035A9 90 00 0C         [24]  737 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000b)
      0035AC 74 53            [12]  738 	mov	a,#0x53
      0035AE F0               [24]  739 	movx	@dptr,a
      0035AF 90 00 0D         [24]  740 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000c)
      0035B2 74 44            [12]  741 	mov	a,#0x44
      0035B4 F0               [24]  742 	movx	@dptr,a
      0035B5 90 00 0E         [24]  743 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000d)
      0035B8 74 20            [12]  744 	mov	a,#0x20
      0035BA F0               [24]  745 	movx	@dptr,a
      0035BB 90 00 0F         [24]  746 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000e)
      0035BE 74 4C            [12]  747 	mov	a,#0x4c
      0035C0 F0               [24]  748 	movx	@dptr,a
      0035C1 90 00 10         [24]  749 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x000f)
      0035C4 74 61            [12]  750 	mov	a,#0x61
      0035C6 F0               [24]  751 	movx	@dptr,a
      0035C7 90 00 11         [24]  752 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0010)
      0035CA 04               [12]  753 	inc	a
      0035CB F0               [24]  754 	movx	@dptr,a
      0035CC 90 00 12         [24]  755 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0011)
      0035CF 74 20            [12]  756 	mov	a,#0x20
      0035D1 F0               [24]  757 	movx	@dptr,a
      0035D2 90 00 13         [24]  758 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0012)
      0035D5 74 34            [12]  759 	mov	a,#0x34
      0035D7 F0               [24]  760 	movx	@dptr,a
      0035D8 90 00 14         [24]  761 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0013)
      0035DB 74 20            [12]  762 	mov	a,#0x20
      0035DD F0               [24]  763 	movx	@dptr,a
      0035DE 90 00 15         [24]  764 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0014)
      0035E1 74 53            [12]  765 	mov	a,#0x53
      0035E3 F0               [24]  766 	movx	@dptr,a
      0035E4 90 00 16         [24]  767 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0015)
      0035E7 74 75            [12]  768 	mov	a,#0x75
      0035E9 F0               [24]  769 	movx	@dptr,a
      0035EA 90 00 17         [24]  770 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0016)
      0035ED 74 70            [12]  771 	mov	a,#0x70
      0035EF F0               [24]  772 	movx	@dptr,a
      0035F0 90 00 18         [24]  773 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0017)
      0035F3 F0               [24]  774 	movx	@dptr,a
      0035F4 90 00 19         [24]  775 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0018)
      0035F7 74 6C            [12]  776 	mov	a,#0x6c
      0035F9 F0               [24]  777 	movx	@dptr,a
      0035FA 90 00 1A         [24]  778 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0019)
      0035FD 74 65            [12]  779 	mov	a,#0x65
      0035FF F0               [24]  780 	movx	@dptr,a
      003600 90 00 1B         [24]  781 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001a)
      003603 74 6D            [12]  782 	mov	a,#0x6d
      003605 F0               [24]  783 	movx	@dptr,a
      003606 90 00 1C         [24]  784 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001b)
      003609 74 65            [12]  785 	mov	a,#0x65
      00360B F0               [24]  786 	movx	@dptr,a
      00360C 90 00 1D         [24]  787 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001c)
      00360F 74 6E            [12]  788 	mov	a,#0x6e
      003611 F0               [24]  789 	movx	@dptr,a
      003612 90 00 1E         [24]  790 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001d)
      003615 74 74            [12]  791 	mov	a,#0x74
      003617 F0               [24]  792 	movx	@dptr,a
      003618 90 00 1F         [24]  793 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001e)
      00361B 74 61            [12]  794 	mov	a,#0x61
      00361D F0               [24]  795 	movx	@dptr,a
      00361E 90 00 20         [24]  796 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x001f)
      003621 74 6C            [12]  797 	mov	a,#0x6c
      003623 F0               [24]  798 	movx	@dptr,a
      003624 90 00 21         [24]  799 	mov	dptr,#(_main_Welcome_txt_65536_29 + 0x0020)
      003627 E4               [12]  800 	clr	a
      003628 F0               [24]  801 	movx	@dptr,a
                                    802 ;	main.c:40: __xdata uint8_t Welcome_lcd_txt[] = "Tharuni ESD Lab 4 Supplemental";
      003629 90 00 22         [24]  803 	mov	dptr,#_main_Welcome_lcd_txt_65536_29
      00362C 74 54            [12]  804 	mov	a,#0x54
      00362E F0               [24]  805 	movx	@dptr,a
      00362F 90 00 23         [24]  806 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0001)
      003632 74 68            [12]  807 	mov	a,#0x68
      003634 F0               [24]  808 	movx	@dptr,a
      003635 90 00 24         [24]  809 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0002)
      003638 74 61            [12]  810 	mov	a,#0x61
      00363A F0               [24]  811 	movx	@dptr,a
      00363B 90 00 25         [24]  812 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0003)
      00363E 74 72            [12]  813 	mov	a,#0x72
      003640 F0               [24]  814 	movx	@dptr,a
      003641 90 00 26         [24]  815 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0004)
      003644 74 75            [12]  816 	mov	a,#0x75
      003646 F0               [24]  817 	movx	@dptr,a
      003647 90 00 27         [24]  818 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0005)
      00364A 74 6E            [12]  819 	mov	a,#0x6e
      00364C F0               [24]  820 	movx	@dptr,a
      00364D 90 00 28         [24]  821 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0006)
      003650 74 69            [12]  822 	mov	a,#0x69
      003652 F0               [24]  823 	movx	@dptr,a
      003653 90 00 29         [24]  824 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0007)
      003656 74 20            [12]  825 	mov	a,#0x20
      003658 F0               [24]  826 	movx	@dptr,a
      003659 90 00 2A         [24]  827 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0008)
      00365C 74 45            [12]  828 	mov	a,#0x45
      00365E F0               [24]  829 	movx	@dptr,a
      00365F 90 00 2B         [24]  830 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0009)
      003662 74 53            [12]  831 	mov	a,#0x53
      003664 F0               [24]  832 	movx	@dptr,a
      003665 90 00 2C         [24]  833 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000a)
      003668 74 44            [12]  834 	mov	a,#0x44
      00366A F0               [24]  835 	movx	@dptr,a
      00366B 90 00 2D         [24]  836 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000b)
      00366E 74 20            [12]  837 	mov	a,#0x20
      003670 F0               [24]  838 	movx	@dptr,a
      003671 90 00 2E         [24]  839 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000c)
      003674 74 4C            [12]  840 	mov	a,#0x4c
      003676 F0               [24]  841 	movx	@dptr,a
      003677 90 00 2F         [24]  842 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000d)
      00367A 74 61            [12]  843 	mov	a,#0x61
      00367C F0               [24]  844 	movx	@dptr,a
      00367D 90 00 30         [24]  845 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000e)
      003680 04               [12]  846 	inc	a
      003681 F0               [24]  847 	movx	@dptr,a
      003682 90 00 31         [24]  848 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x000f)
      003685 74 20            [12]  849 	mov	a,#0x20
      003687 F0               [24]  850 	movx	@dptr,a
      003688 90 00 32         [24]  851 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0010)
      00368B 74 34            [12]  852 	mov	a,#0x34
      00368D F0               [24]  853 	movx	@dptr,a
      00368E 90 00 33         [24]  854 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0011)
      003691 74 20            [12]  855 	mov	a,#0x20
      003693 F0               [24]  856 	movx	@dptr,a
      003694 90 00 34         [24]  857 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0012)
      003697 74 53            [12]  858 	mov	a,#0x53
      003699 F0               [24]  859 	movx	@dptr,a
      00369A 90 00 35         [24]  860 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0013)
      00369D 74 75            [12]  861 	mov	a,#0x75
      00369F F0               [24]  862 	movx	@dptr,a
      0036A0 90 00 36         [24]  863 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0014)
      0036A3 74 70            [12]  864 	mov	a,#0x70
      0036A5 F0               [24]  865 	movx	@dptr,a
      0036A6 90 00 37         [24]  866 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0015)
      0036A9 F0               [24]  867 	movx	@dptr,a
      0036AA 90 00 38         [24]  868 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0016)
      0036AD 74 6C            [12]  869 	mov	a,#0x6c
      0036AF F0               [24]  870 	movx	@dptr,a
      0036B0 90 00 39         [24]  871 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0017)
      0036B3 74 65            [12]  872 	mov	a,#0x65
      0036B5 F0               [24]  873 	movx	@dptr,a
      0036B6 90 00 3A         [24]  874 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0018)
      0036B9 74 6D            [12]  875 	mov	a,#0x6d
      0036BB F0               [24]  876 	movx	@dptr,a
      0036BC 90 00 3B         [24]  877 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x0019)
      0036BF 74 65            [12]  878 	mov	a,#0x65
      0036C1 F0               [24]  879 	movx	@dptr,a
      0036C2 90 00 3C         [24]  880 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001a)
      0036C5 74 6E            [12]  881 	mov	a,#0x6e
      0036C7 F0               [24]  882 	movx	@dptr,a
      0036C8 90 00 3D         [24]  883 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001b)
      0036CB 74 74            [12]  884 	mov	a,#0x74
      0036CD F0               [24]  885 	movx	@dptr,a
      0036CE 90 00 3E         [24]  886 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001c)
      0036D1 74 61            [12]  887 	mov	a,#0x61
      0036D3 F0               [24]  888 	movx	@dptr,a
      0036D4 90 00 3F         [24]  889 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001d)
      0036D7 74 6C            [12]  890 	mov	a,#0x6c
      0036D9 F0               [24]  891 	movx	@dptr,a
      0036DA 90 00 40         [24]  892 	mov	dptr,#(_main_Welcome_lcd_txt_65536_29 + 0x001e)
      0036DD E4               [12]  893 	clr	a
      0036DE F0               [24]  894 	movx	@dptr,a
                                    895 ;	main.c:41: __xdata uint8_t Instructions_txt[] = "\n\r'D'->DAC Data Input, 'Z'-> mode change, 'N'-> Next wave, '+'-> Increase DAC voltage, '-'-> Decrease DAC voltage,\n\r'?'-> Display Menu";
      0036DF 90 00 41         [24]  896 	mov	dptr,#_main_Instructions_txt_65536_29
      0036E2 74 0A            [12]  897 	mov	a,#0x0a
      0036E4 F0               [24]  898 	movx	@dptr,a
      0036E5 90 00 42         [24]  899 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0001)
      0036E8 74 0D            [12]  900 	mov	a,#0x0d
      0036EA F0               [24]  901 	movx	@dptr,a
      0036EB 90 00 43         [24]  902 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0002)
      0036EE 74 27            [12]  903 	mov	a,#0x27
      0036F0 F0               [24]  904 	movx	@dptr,a
      0036F1 90 00 44         [24]  905 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0003)
      0036F4 74 44            [12]  906 	mov	a,#0x44
      0036F6 F0               [24]  907 	movx	@dptr,a
      0036F7 90 00 45         [24]  908 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0004)
      0036FA 74 27            [12]  909 	mov	a,#0x27
      0036FC F0               [24]  910 	movx	@dptr,a
      0036FD 90 00 46         [24]  911 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0005)
      003700 74 2D            [12]  912 	mov	a,#0x2d
      003702 F0               [24]  913 	movx	@dptr,a
      003703 90 00 47         [24]  914 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0006)
      003706 74 3E            [12]  915 	mov	a,#0x3e
      003708 F0               [24]  916 	movx	@dptr,a
      003709 90 00 48         [24]  917 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0007)
      00370C 74 44            [12]  918 	mov	a,#0x44
      00370E F0               [24]  919 	movx	@dptr,a
      00370F 90 00 49         [24]  920 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0008)
      003712 74 41            [12]  921 	mov	a,#0x41
      003714 F0               [24]  922 	movx	@dptr,a
      003715 90 00 4A         [24]  923 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0009)
      003718 74 43            [12]  924 	mov	a,#0x43
      00371A F0               [24]  925 	movx	@dptr,a
      00371B 90 00 4B         [24]  926 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000a)
      00371E 74 20            [12]  927 	mov	a,#0x20
      003720 F0               [24]  928 	movx	@dptr,a
      003721 90 00 4C         [24]  929 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000b)
      003724 74 44            [12]  930 	mov	a,#0x44
      003726 F0               [24]  931 	movx	@dptr,a
      003727 90 00 4D         [24]  932 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000c)
      00372A 74 61            [12]  933 	mov	a,#0x61
      00372C F0               [24]  934 	movx	@dptr,a
      00372D 90 00 4E         [24]  935 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000d)
      003730 74 74            [12]  936 	mov	a,#0x74
      003732 F0               [24]  937 	movx	@dptr,a
      003733 90 00 4F         [24]  938 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000e)
      003736 74 61            [12]  939 	mov	a,#0x61
      003738 F0               [24]  940 	movx	@dptr,a
      003739 90 00 50         [24]  941 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x000f)
      00373C 74 20            [12]  942 	mov	a,#0x20
      00373E F0               [24]  943 	movx	@dptr,a
      00373F 90 00 51         [24]  944 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0010)
      003742 74 49            [12]  945 	mov	a,#0x49
      003744 F0               [24]  946 	movx	@dptr,a
      003745 90 00 52         [24]  947 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0011)
      003748 74 6E            [12]  948 	mov	a,#0x6e
      00374A F0               [24]  949 	movx	@dptr,a
      00374B 90 00 53         [24]  950 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0012)
      00374E 74 70            [12]  951 	mov	a,#0x70
      003750 F0               [24]  952 	movx	@dptr,a
      003751 90 00 54         [24]  953 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0013)
      003754 74 75            [12]  954 	mov	a,#0x75
      003756 F0               [24]  955 	movx	@dptr,a
      003757 90 00 55         [24]  956 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0014)
      00375A 14               [12]  957 	dec	a
      00375B F0               [24]  958 	movx	@dptr,a
      00375C 90 00 56         [24]  959 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0015)
      00375F 74 2C            [12]  960 	mov	a,#0x2c
      003761 F0               [24]  961 	movx	@dptr,a
      003762 90 00 57         [24]  962 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0016)
      003765 74 20            [12]  963 	mov	a,#0x20
      003767 F0               [24]  964 	movx	@dptr,a
      003768 90 00 58         [24]  965 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0017)
      00376B 74 27            [12]  966 	mov	a,#0x27
      00376D F0               [24]  967 	movx	@dptr,a
      00376E 90 00 59         [24]  968 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0018)
      003771 74 5A            [12]  969 	mov	a,#0x5a
      003773 F0               [24]  970 	movx	@dptr,a
      003774 90 00 5A         [24]  971 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0019)
      003777 74 27            [12]  972 	mov	a,#0x27
      003779 F0               [24]  973 	movx	@dptr,a
      00377A 90 00 5B         [24]  974 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001a)
      00377D 74 2D            [12]  975 	mov	a,#0x2d
      00377F F0               [24]  976 	movx	@dptr,a
      003780 90 00 5C         [24]  977 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001b)
      003783 74 3E            [12]  978 	mov	a,#0x3e
      003785 F0               [24]  979 	movx	@dptr,a
      003786 90 00 5D         [24]  980 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001c)
      003789 74 20            [12]  981 	mov	a,#0x20
      00378B F0               [24]  982 	movx	@dptr,a
      00378C 90 00 5E         [24]  983 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001d)
      00378F 74 6D            [12]  984 	mov	a,#0x6d
      003791 F0               [24]  985 	movx	@dptr,a
      003792 90 00 5F         [24]  986 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001e)
      003795 74 6F            [12]  987 	mov	a,#0x6f
      003797 F0               [24]  988 	movx	@dptr,a
      003798 90 00 60         [24]  989 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x001f)
      00379B 74 64            [12]  990 	mov	a,#0x64
      00379D F0               [24]  991 	movx	@dptr,a
      00379E 90 00 61         [24]  992 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0020)
      0037A1 04               [12]  993 	inc	a
      0037A2 F0               [24]  994 	movx	@dptr,a
      0037A3 90 00 62         [24]  995 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0021)
      0037A6 74 20            [12]  996 	mov	a,#0x20
      0037A8 F0               [24]  997 	movx	@dptr,a
      0037A9 90 00 63         [24]  998 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0022)
      0037AC 74 63            [12]  999 	mov	a,#0x63
      0037AE F0               [24] 1000 	movx	@dptr,a
      0037AF 90 00 64         [24] 1001 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0023)
      0037B2 74 68            [12] 1002 	mov	a,#0x68
      0037B4 F0               [24] 1003 	movx	@dptr,a
      0037B5 90 00 65         [24] 1004 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0024)
      0037B8 74 61            [12] 1005 	mov	a,#0x61
      0037BA F0               [24] 1006 	movx	@dptr,a
      0037BB 90 00 66         [24] 1007 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0025)
      0037BE 74 6E            [12] 1008 	mov	a,#0x6e
      0037C0 F0               [24] 1009 	movx	@dptr,a
      0037C1 90 00 67         [24] 1010 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0026)
      0037C4 74 67            [12] 1011 	mov	a,#0x67
      0037C6 F0               [24] 1012 	movx	@dptr,a
      0037C7 90 00 68         [24] 1013 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0027)
      0037CA 74 65            [12] 1014 	mov	a,#0x65
      0037CC F0               [24] 1015 	movx	@dptr,a
      0037CD 90 00 69         [24] 1016 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0028)
      0037D0 74 2C            [12] 1017 	mov	a,#0x2c
      0037D2 F0               [24] 1018 	movx	@dptr,a
      0037D3 90 00 6A         [24] 1019 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0029)
      0037D6 74 20            [12] 1020 	mov	a,#0x20
      0037D8 F0               [24] 1021 	movx	@dptr,a
      0037D9 90 00 6B         [24] 1022 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002a)
      0037DC 74 27            [12] 1023 	mov	a,#0x27
      0037DE F0               [24] 1024 	movx	@dptr,a
      0037DF 90 00 6C         [24] 1025 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002b)
      0037E2 23               [12] 1026 	rl	a
      0037E3 F0               [24] 1027 	movx	@dptr,a
      0037E4 90 00 6D         [24] 1028 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002c)
      0037E7 03               [12] 1029 	rr	a
      0037E8 F0               [24] 1030 	movx	@dptr,a
      0037E9 90 00 6E         [24] 1031 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002d)
      0037EC 74 2D            [12] 1032 	mov	a,#0x2d
      0037EE F0               [24] 1033 	movx	@dptr,a
      0037EF 90 00 6F         [24] 1034 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002e)
      0037F2 74 3E            [12] 1035 	mov	a,#0x3e
      0037F4 F0               [24] 1036 	movx	@dptr,a
      0037F5 90 00 70         [24] 1037 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x002f)
      0037F8 74 20            [12] 1038 	mov	a,#0x20
      0037FA F0               [24] 1039 	movx	@dptr,a
      0037FB 90 00 71         [24] 1040 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0030)
      0037FE 74 4E            [12] 1041 	mov	a,#0x4e
      003800 F0               [24] 1042 	movx	@dptr,a
      003801 90 00 72         [24] 1043 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0031)
      003804 74 65            [12] 1044 	mov	a,#0x65
      003806 F0               [24] 1045 	movx	@dptr,a
      003807 90 00 73         [24] 1046 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0032)
      00380A 74 78            [12] 1047 	mov	a,#0x78
      00380C F0               [24] 1048 	movx	@dptr,a
      00380D 90 00 74         [24] 1049 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0033)
      003810 74 74            [12] 1050 	mov	a,#0x74
      003812 F0               [24] 1051 	movx	@dptr,a
      003813 90 00 75         [24] 1052 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0034)
      003816 74 20            [12] 1053 	mov	a,#0x20
      003818 F0               [24] 1054 	movx	@dptr,a
      003819 90 00 76         [24] 1055 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0035)
      00381C 74 77            [12] 1056 	mov	a,#0x77
      00381E F0               [24] 1057 	movx	@dptr,a
      00381F 90 00 77         [24] 1058 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0036)
      003822 74 61            [12] 1059 	mov	a,#0x61
      003824 F0               [24] 1060 	movx	@dptr,a
      003825 90 00 78         [24] 1061 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0037)
      003828 74 76            [12] 1062 	mov	a,#0x76
      00382A F0               [24] 1063 	movx	@dptr,a
      00382B 90 00 79         [24] 1064 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0038)
      00382E 74 65            [12] 1065 	mov	a,#0x65
      003830 F0               [24] 1066 	movx	@dptr,a
      003831 90 00 7A         [24] 1067 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0039)
      003834 74 2C            [12] 1068 	mov	a,#0x2c
      003836 F0               [24] 1069 	movx	@dptr,a
      003837 90 00 7B         [24] 1070 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003a)
      00383A 74 20            [12] 1071 	mov	a,#0x20
      00383C F0               [24] 1072 	movx	@dptr,a
      00383D 90 00 7C         [24] 1073 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003b)
      003840 74 27            [12] 1074 	mov	a,#0x27
      003842 F0               [24] 1075 	movx	@dptr,a
      003843 90 00 7D         [24] 1076 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003c)
      003846 74 2B            [12] 1077 	mov	a,#0x2b
      003848 F0               [24] 1078 	movx	@dptr,a
      003849 90 00 7E         [24] 1079 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003d)
      00384C 74 27            [12] 1080 	mov	a,#0x27
      00384E F0               [24] 1081 	movx	@dptr,a
      00384F 90 00 7F         [24] 1082 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003e)
      003852 74 2D            [12] 1083 	mov	a,#0x2d
      003854 F0               [24] 1084 	movx	@dptr,a
      003855 90 00 80         [24] 1085 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x003f)
      003858 74 3E            [12] 1086 	mov	a,#0x3e
      00385A F0               [24] 1087 	movx	@dptr,a
      00385B 90 00 81         [24] 1088 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0040)
      00385E 74 20            [12] 1089 	mov	a,#0x20
      003860 F0               [24] 1090 	movx	@dptr,a
      003861 90 00 82         [24] 1091 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0041)
      003864 74 49            [12] 1092 	mov	a,#0x49
      003866 F0               [24] 1093 	movx	@dptr,a
      003867 90 00 83         [24] 1094 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0042)
      00386A 74 6E            [12] 1095 	mov	a,#0x6e
      00386C F0               [24] 1096 	movx	@dptr,a
      00386D 90 00 84         [24] 1097 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0043)
      003870 74 63            [12] 1098 	mov	a,#0x63
      003872 F0               [24] 1099 	movx	@dptr,a
      003873 90 00 85         [24] 1100 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0044)
      003876 74 72            [12] 1101 	mov	a,#0x72
      003878 F0               [24] 1102 	movx	@dptr,a
      003879 90 00 86         [24] 1103 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0045)
      00387C 74 65            [12] 1104 	mov	a,#0x65
      00387E F0               [24] 1105 	movx	@dptr,a
      00387F 90 00 87         [24] 1106 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0046)
      003882 74 61            [12] 1107 	mov	a,#0x61
      003884 F0               [24] 1108 	movx	@dptr,a
      003885 90 00 88         [24] 1109 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0047)
      003888 74 73            [12] 1110 	mov	a,#0x73
      00388A F0               [24] 1111 	movx	@dptr,a
      00388B 90 00 89         [24] 1112 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0048)
      00388E 74 65            [12] 1113 	mov	a,#0x65
      003890 F0               [24] 1114 	movx	@dptr,a
      003891 90 00 8A         [24] 1115 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0049)
      003894 74 20            [12] 1116 	mov	a,#0x20
      003896 F0               [24] 1117 	movx	@dptr,a
      003897 90 00 8B         [24] 1118 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004a)
      00389A 74 44            [12] 1119 	mov	a,#0x44
      00389C F0               [24] 1120 	movx	@dptr,a
      00389D 90 00 8C         [24] 1121 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004b)
      0038A0 74 41            [12] 1122 	mov	a,#0x41
      0038A2 F0               [24] 1123 	movx	@dptr,a
      0038A3 90 00 8D         [24] 1124 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004c)
      0038A6 74 43            [12] 1125 	mov	a,#0x43
      0038A8 F0               [24] 1126 	movx	@dptr,a
      0038A9 90 00 8E         [24] 1127 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004d)
      0038AC 74 20            [12] 1128 	mov	a,#0x20
      0038AE F0               [24] 1129 	movx	@dptr,a
      0038AF 90 00 8F         [24] 1130 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004e)
      0038B2 74 76            [12] 1131 	mov	a,#0x76
      0038B4 F0               [24] 1132 	movx	@dptr,a
      0038B5 90 00 90         [24] 1133 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x004f)
      0038B8 74 6F            [12] 1134 	mov	a,#0x6f
      0038BA F0               [24] 1135 	movx	@dptr,a
      0038BB 90 00 91         [24] 1136 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0050)
      0038BE 74 6C            [12] 1137 	mov	a,#0x6c
      0038C0 F0               [24] 1138 	movx	@dptr,a
      0038C1 90 00 92         [24] 1139 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0051)
      0038C4 74 74            [12] 1140 	mov	a,#0x74
      0038C6 F0               [24] 1141 	movx	@dptr,a
      0038C7 90 00 93         [24] 1142 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0052)
      0038CA 74 61            [12] 1143 	mov	a,#0x61
      0038CC F0               [24] 1144 	movx	@dptr,a
      0038CD 90 00 94         [24] 1145 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0053)
      0038D0 74 67            [12] 1146 	mov	a,#0x67
      0038D2 F0               [24] 1147 	movx	@dptr,a
      0038D3 90 00 95         [24] 1148 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0054)
      0038D6 74 65            [12] 1149 	mov	a,#0x65
      0038D8 F0               [24] 1150 	movx	@dptr,a
      0038D9 90 00 96         [24] 1151 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0055)
      0038DC 74 2C            [12] 1152 	mov	a,#0x2c
      0038DE F0               [24] 1153 	movx	@dptr,a
      0038DF 90 00 97         [24] 1154 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0056)
      0038E2 74 20            [12] 1155 	mov	a,#0x20
      0038E4 F0               [24] 1156 	movx	@dptr,a
      0038E5 90 00 98         [24] 1157 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0057)
      0038E8 74 27            [12] 1158 	mov	a,#0x27
      0038EA F0               [24] 1159 	movx	@dptr,a
      0038EB 90 00 99         [24] 1160 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0058)
      0038EE 74 2D            [12] 1161 	mov	a,#0x2d
      0038F0 F0               [24] 1162 	movx	@dptr,a
      0038F1 90 00 9A         [24] 1163 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0059)
      0038F4 74 27            [12] 1164 	mov	a,#0x27
      0038F6 F0               [24] 1165 	movx	@dptr,a
      0038F7 90 00 9B         [24] 1166 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005a)
      0038FA 74 2D            [12] 1167 	mov	a,#0x2d
      0038FC F0               [24] 1168 	movx	@dptr,a
      0038FD 90 00 9C         [24] 1169 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005b)
      003900 74 3E            [12] 1170 	mov	a,#0x3e
      003902 F0               [24] 1171 	movx	@dptr,a
      003903 90 00 9D         [24] 1172 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005c)
      003906 74 20            [12] 1173 	mov	a,#0x20
      003908 F0               [24] 1174 	movx	@dptr,a
      003909 90 00 9E         [24] 1175 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005d)
      00390C 74 44            [12] 1176 	mov	a,#0x44
      00390E F0               [24] 1177 	movx	@dptr,a
      00390F 90 00 9F         [24] 1178 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005e)
      003912 74 65            [12] 1179 	mov	a,#0x65
      003914 F0               [24] 1180 	movx	@dptr,a
      003915 90 00 A0         [24] 1181 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x005f)
      003918 74 63            [12] 1182 	mov	a,#0x63
      00391A F0               [24] 1183 	movx	@dptr,a
      00391B 90 00 A1         [24] 1184 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0060)
      00391E 74 72            [12] 1185 	mov	a,#0x72
      003920 F0               [24] 1186 	movx	@dptr,a
      003921 90 00 A2         [24] 1187 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0061)
      003924 74 65            [12] 1188 	mov	a,#0x65
      003926 F0               [24] 1189 	movx	@dptr,a
      003927 90 00 A3         [24] 1190 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0062)
      00392A 74 61            [12] 1191 	mov	a,#0x61
      00392C F0               [24] 1192 	movx	@dptr,a
      00392D 90 00 A4         [24] 1193 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0063)
      003930 74 73            [12] 1194 	mov	a,#0x73
      003932 F0               [24] 1195 	movx	@dptr,a
      003933 90 00 A5         [24] 1196 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0064)
      003936 74 65            [12] 1197 	mov	a,#0x65
      003938 F0               [24] 1198 	movx	@dptr,a
      003939 90 00 A6         [24] 1199 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0065)
      00393C 74 20            [12] 1200 	mov	a,#0x20
      00393E F0               [24] 1201 	movx	@dptr,a
      00393F 90 00 A7         [24] 1202 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0066)
      003942 74 44            [12] 1203 	mov	a,#0x44
      003944 F0               [24] 1204 	movx	@dptr,a
      003945 90 00 A8         [24] 1205 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0067)
      003948 74 41            [12] 1206 	mov	a,#0x41
      00394A F0               [24] 1207 	movx	@dptr,a
      00394B 90 00 A9         [24] 1208 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0068)
      00394E 74 43            [12] 1209 	mov	a,#0x43
      003950 F0               [24] 1210 	movx	@dptr,a
      003951 90 00 AA         [24] 1211 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0069)
      003954 74 20            [12] 1212 	mov	a,#0x20
      003956 F0               [24] 1213 	movx	@dptr,a
      003957 90 00 AB         [24] 1214 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006a)
      00395A 74 76            [12] 1215 	mov	a,#0x76
      00395C F0               [24] 1216 	movx	@dptr,a
      00395D 90 00 AC         [24] 1217 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006b)
      003960 74 6F            [12] 1218 	mov	a,#0x6f
      003962 F0               [24] 1219 	movx	@dptr,a
      003963 90 00 AD         [24] 1220 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006c)
      003966 74 6C            [12] 1221 	mov	a,#0x6c
      003968 F0               [24] 1222 	movx	@dptr,a
      003969 90 00 AE         [24] 1223 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006d)
      00396C 74 74            [12] 1224 	mov	a,#0x74
      00396E F0               [24] 1225 	movx	@dptr,a
      00396F 90 00 AF         [24] 1226 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006e)
      003972 74 61            [12] 1227 	mov	a,#0x61
      003974 F0               [24] 1228 	movx	@dptr,a
      003975 90 00 B0         [24] 1229 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x006f)
      003978 74 67            [12] 1230 	mov	a,#0x67
      00397A F0               [24] 1231 	movx	@dptr,a
      00397B 90 00 B1         [24] 1232 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0070)
      00397E 74 65            [12] 1233 	mov	a,#0x65
      003980 F0               [24] 1234 	movx	@dptr,a
      003981 90 00 B2         [24] 1235 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0071)
      003984 74 2C            [12] 1236 	mov	a,#0x2c
      003986 F0               [24] 1237 	movx	@dptr,a
      003987 90 00 B3         [24] 1238 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0072)
      00398A 74 0A            [12] 1239 	mov	a,#0x0a
      00398C F0               [24] 1240 	movx	@dptr,a
      00398D 90 00 B4         [24] 1241 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0073)
      003990 74 0D            [12] 1242 	mov	a,#0x0d
      003992 F0               [24] 1243 	movx	@dptr,a
      003993 90 00 B5         [24] 1244 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0074)
      003996 74 27            [12] 1245 	mov	a,#0x27
      003998 F0               [24] 1246 	movx	@dptr,a
      003999 90 00 B6         [24] 1247 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0075)
      00399C 74 3F            [12] 1248 	mov	a,#0x3f
      00399E F0               [24] 1249 	movx	@dptr,a
      00399F 90 00 B7         [24] 1250 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0076)
      0039A2 74 27            [12] 1251 	mov	a,#0x27
      0039A4 F0               [24] 1252 	movx	@dptr,a
      0039A5 90 00 B8         [24] 1253 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0077)
      0039A8 74 2D            [12] 1254 	mov	a,#0x2d
      0039AA F0               [24] 1255 	movx	@dptr,a
      0039AB 90 00 B9         [24] 1256 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0078)
      0039AE 74 3E            [12] 1257 	mov	a,#0x3e
      0039B0 F0               [24] 1258 	movx	@dptr,a
      0039B1 90 00 BA         [24] 1259 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0079)
      0039B4 74 20            [12] 1260 	mov	a,#0x20
      0039B6 F0               [24] 1261 	movx	@dptr,a
      0039B7 90 00 BB         [24] 1262 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007a)
      0039BA 74 44            [12] 1263 	mov	a,#0x44
      0039BC F0               [24] 1264 	movx	@dptr,a
      0039BD 90 00 BC         [24] 1265 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007b)
      0039C0 74 69            [12] 1266 	mov	a,#0x69
      0039C2 F0               [24] 1267 	movx	@dptr,a
      0039C3 90 00 BD         [24] 1268 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007c)
      0039C6 74 73            [12] 1269 	mov	a,#0x73
      0039C8 F0               [24] 1270 	movx	@dptr,a
      0039C9 90 00 BE         [24] 1271 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007d)
      0039CC 74 70            [12] 1272 	mov	a,#0x70
      0039CE F0               [24] 1273 	movx	@dptr,a
      0039CF 90 00 BF         [24] 1274 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007e)
      0039D2 74 6C            [12] 1275 	mov	a,#0x6c
      0039D4 F0               [24] 1276 	movx	@dptr,a
      0039D5 90 00 C0         [24] 1277 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x007f)
      0039D8 74 61            [12] 1278 	mov	a,#0x61
      0039DA F0               [24] 1279 	movx	@dptr,a
      0039DB 90 00 C1         [24] 1280 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0080)
      0039DE 74 79            [12] 1281 	mov	a,#0x79
      0039E0 F0               [24] 1282 	movx	@dptr,a
      0039E1 90 00 C2         [24] 1283 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0081)
      0039E4 74 20            [12] 1284 	mov	a,#0x20
      0039E6 F0               [24] 1285 	movx	@dptr,a
      0039E7 90 00 C3         [24] 1286 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0082)
      0039EA 74 4D            [12] 1287 	mov	a,#0x4d
      0039EC F0               [24] 1288 	movx	@dptr,a
      0039ED 90 00 C4         [24] 1289 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0083)
      0039F0 74 65            [12] 1290 	mov	a,#0x65
      0039F2 F0               [24] 1291 	movx	@dptr,a
      0039F3 90 00 C5         [24] 1292 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0084)
      0039F6 74 6E            [12] 1293 	mov	a,#0x6e
      0039F8 F0               [24] 1294 	movx	@dptr,a
      0039F9 90 00 C6         [24] 1295 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0085)
      0039FC 74 75            [12] 1296 	mov	a,#0x75
      0039FE F0               [24] 1297 	movx	@dptr,a
      0039FF 90 00 C7         [24] 1298 	mov	dptr,#(_main_Instructions_txt_65536_29 + 0x0086)
      003A02 E4               [12] 1299 	clr	a
      003A03 F0               [24] 1300 	movx	@dptr,a
                                   1301 ;	main.c:42: __xdata uint8_t DAC_on_txt[]="DAC is On";
      003A04 90 00 C8         [24] 1302 	mov	dptr,#_main_DAC_on_txt_65536_29
      003A07 74 44            [12] 1303 	mov	a,#0x44
      003A09 F0               [24] 1304 	movx	@dptr,a
      003A0A 90 00 C9         [24] 1305 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0001)
      003A0D 74 41            [12] 1306 	mov	a,#0x41
      003A0F F0               [24] 1307 	movx	@dptr,a
      003A10 90 00 CA         [24] 1308 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0002)
      003A13 74 43            [12] 1309 	mov	a,#0x43
      003A15 F0               [24] 1310 	movx	@dptr,a
      003A16 90 00 CB         [24] 1311 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0003)
      003A19 74 20            [12] 1312 	mov	a,#0x20
      003A1B F0               [24] 1313 	movx	@dptr,a
      003A1C 90 00 CC         [24] 1314 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0004)
      003A1F 74 69            [12] 1315 	mov	a,#0x69
      003A21 F0               [24] 1316 	movx	@dptr,a
      003A22 90 00 CD         [24] 1317 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0005)
      003A25 74 73            [12] 1318 	mov	a,#0x73
      003A27 F0               [24] 1319 	movx	@dptr,a
      003A28 90 00 CE         [24] 1320 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0006)
      003A2B 74 20            [12] 1321 	mov	a,#0x20
      003A2D F0               [24] 1322 	movx	@dptr,a
      003A2E 90 00 CF         [24] 1323 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0007)
      003A31 74 4F            [12] 1324 	mov	a,#0x4f
      003A33 F0               [24] 1325 	movx	@dptr,a
      003A34 90 00 D0         [24] 1326 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0008)
      003A37 74 6E            [12] 1327 	mov	a,#0x6e
      003A39 F0               [24] 1328 	movx	@dptr,a
      003A3A 90 00 D1         [24] 1329 	mov	dptr,#(_main_DAC_on_txt_65536_29 + 0x0009)
      003A3D E4               [12] 1330 	clr	a
      003A3E F0               [24] 1331 	movx	@dptr,a
                                   1332 ;	main.c:43: __xdata uint8_t DAC_off_txt[]="DAC is Off";
      003A3F 90 00 D2         [24] 1333 	mov	dptr,#_main_DAC_off_txt_65536_29
      003A42 74 44            [12] 1334 	mov	a,#0x44
      003A44 F0               [24] 1335 	movx	@dptr,a
      003A45 90 00 D3         [24] 1336 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0001)
      003A48 74 41            [12] 1337 	mov	a,#0x41
      003A4A F0               [24] 1338 	movx	@dptr,a
      003A4B 90 00 D4         [24] 1339 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0002)
      003A4E 74 43            [12] 1340 	mov	a,#0x43
      003A50 F0               [24] 1341 	movx	@dptr,a
      003A51 90 00 D5         [24] 1342 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0003)
      003A54 74 20            [12] 1343 	mov	a,#0x20
      003A56 F0               [24] 1344 	movx	@dptr,a
      003A57 90 00 D6         [24] 1345 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0004)
      003A5A 74 69            [12] 1346 	mov	a,#0x69
      003A5C F0               [24] 1347 	movx	@dptr,a
      003A5D 90 00 D7         [24] 1348 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0005)
      003A60 74 73            [12] 1349 	mov	a,#0x73
      003A62 F0               [24] 1350 	movx	@dptr,a
      003A63 90 00 D8         [24] 1351 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0006)
      003A66 74 20            [12] 1352 	mov	a,#0x20
      003A68 F0               [24] 1353 	movx	@dptr,a
      003A69 90 00 D9         [24] 1354 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0007)
      003A6C 74 4F            [12] 1355 	mov	a,#0x4f
      003A6E F0               [24] 1356 	movx	@dptr,a
      003A6F 90 00 DA         [24] 1357 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0008)
      003A72 74 66            [12] 1358 	mov	a,#0x66
      003A74 F0               [24] 1359 	movx	@dptr,a
      003A75 90 00 DB         [24] 1360 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x0009)
      003A78 F0               [24] 1361 	movx	@dptr,a
      003A79 90 00 DC         [24] 1362 	mov	dptr,#(_main_DAC_off_txt_65536_29 + 0x000a)
      003A7C E4               [12] 1363 	clr	a
      003A7D F0               [24] 1364 	movx	@dptr,a
                                   1365 ;	main.c:44: __xdata uint8_t Enter_data_txt[] = "\n\rEnter Data ";
      003A7E 90 00 DD         [24] 1366 	mov	dptr,#_main_Enter_data_txt_65536_29
      003A81 74 0A            [12] 1367 	mov	a,#0x0a
      003A83 F0               [24] 1368 	movx	@dptr,a
      003A84 90 00 DE         [24] 1369 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0001)
      003A87 74 0D            [12] 1370 	mov	a,#0x0d
      003A89 F0               [24] 1371 	movx	@dptr,a
      003A8A 90 00 DF         [24] 1372 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0002)
      003A8D 74 45            [12] 1373 	mov	a,#0x45
      003A8F F0               [24] 1374 	movx	@dptr,a
      003A90 90 00 E0         [24] 1375 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0003)
      003A93 74 6E            [12] 1376 	mov	a,#0x6e
      003A95 F0               [24] 1377 	movx	@dptr,a
      003A96 90 00 E1         [24] 1378 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0004)
      003A99 74 74            [12] 1379 	mov	a,#0x74
      003A9B F0               [24] 1380 	movx	@dptr,a
      003A9C 90 00 E2         [24] 1381 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0005)
      003A9F 74 65            [12] 1382 	mov	a,#0x65
      003AA1 F0               [24] 1383 	movx	@dptr,a
      003AA2 90 00 E3         [24] 1384 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0006)
      003AA5 74 72            [12] 1385 	mov	a,#0x72
      003AA7 F0               [24] 1386 	movx	@dptr,a
      003AA8 90 00 E4         [24] 1387 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0007)
      003AAB 74 20            [12] 1388 	mov	a,#0x20
      003AAD F0               [24] 1389 	movx	@dptr,a
      003AAE 90 00 E5         [24] 1390 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0008)
      003AB1 74 44            [12] 1391 	mov	a,#0x44
      003AB3 F0               [24] 1392 	movx	@dptr,a
      003AB4 90 00 E6         [24] 1393 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x0009)
      003AB7 74 61            [12] 1394 	mov	a,#0x61
      003AB9 F0               [24] 1395 	movx	@dptr,a
      003ABA 90 00 E7         [24] 1396 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x000a)
      003ABD 74 74            [12] 1397 	mov	a,#0x74
      003ABF F0               [24] 1398 	movx	@dptr,a
      003AC0 90 00 E8         [24] 1399 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x000b)
      003AC3 74 61            [12] 1400 	mov	a,#0x61
      003AC5 F0               [24] 1401 	movx	@dptr,a
      003AC6 90 00 E9         [24] 1402 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x000c)
      003AC9 74 20            [12] 1403 	mov	a,#0x20
      003ACB F0               [24] 1404 	movx	@dptr,a
      003ACC 90 00 EA         [24] 1405 	mov	dptr,#(_main_Enter_data_txt_65536_29 + 0x000d)
      003ACF E4               [12] 1406 	clr	a
      003AD0 F0               [24] 1407 	movx	@dptr,a
                                   1408 ;	main.c:45: __xdata uint8_t DAC_a_txt[]="\n\rDAC output channel A ";
      003AD1 90 00 EB         [24] 1409 	mov	dptr,#_main_DAC_a_txt_65536_29
      003AD4 74 0A            [12] 1410 	mov	a,#0x0a
      003AD6 F0               [24] 1411 	movx	@dptr,a
      003AD7 90 00 EC         [24] 1412 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0001)
      003ADA 74 0D            [12] 1413 	mov	a,#0x0d
      003ADC F0               [24] 1414 	movx	@dptr,a
      003ADD 90 00 ED         [24] 1415 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0002)
      003AE0 74 44            [12] 1416 	mov	a,#0x44
      003AE2 F0               [24] 1417 	movx	@dptr,a
      003AE3 90 00 EE         [24] 1418 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0003)
      003AE6 74 41            [12] 1419 	mov	a,#0x41
      003AE8 F0               [24] 1420 	movx	@dptr,a
      003AE9 90 00 EF         [24] 1421 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0004)
      003AEC 74 43            [12] 1422 	mov	a,#0x43
      003AEE F0               [24] 1423 	movx	@dptr,a
      003AEF 90 00 F0         [24] 1424 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0005)
      003AF2 74 20            [12] 1425 	mov	a,#0x20
      003AF4 F0               [24] 1426 	movx	@dptr,a
      003AF5 90 00 F1         [24] 1427 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0006)
      003AF8 74 6F            [12] 1428 	mov	a,#0x6f
      003AFA F0               [24] 1429 	movx	@dptr,a
      003AFB 90 00 F2         [24] 1430 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0007)
      003AFE 74 75            [12] 1431 	mov	a,#0x75
      003B00 F0               [24] 1432 	movx	@dptr,a
      003B01 90 00 F3         [24] 1433 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0008)
      003B04 14               [12] 1434 	dec	a
      003B05 F0               [24] 1435 	movx	@dptr,a
      003B06 90 00 F4         [24] 1436 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0009)
      003B09 74 70            [12] 1437 	mov	a,#0x70
      003B0B F0               [24] 1438 	movx	@dptr,a
      003B0C 90 00 F5         [24] 1439 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000a)
      003B0F 74 75            [12] 1440 	mov	a,#0x75
      003B11 F0               [24] 1441 	movx	@dptr,a
      003B12 90 00 F6         [24] 1442 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000b)
      003B15 14               [12] 1443 	dec	a
      003B16 F0               [24] 1444 	movx	@dptr,a
      003B17 90 00 F7         [24] 1445 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000c)
      003B1A 74 20            [12] 1446 	mov	a,#0x20
      003B1C F0               [24] 1447 	movx	@dptr,a
      003B1D 90 00 F8         [24] 1448 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000d)
      003B20 74 63            [12] 1449 	mov	a,#0x63
      003B22 F0               [24] 1450 	movx	@dptr,a
      003B23 90 00 F9         [24] 1451 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000e)
      003B26 74 68            [12] 1452 	mov	a,#0x68
      003B28 F0               [24] 1453 	movx	@dptr,a
      003B29 90 00 FA         [24] 1454 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x000f)
      003B2C 74 61            [12] 1455 	mov	a,#0x61
      003B2E F0               [24] 1456 	movx	@dptr,a
      003B2F 90 00 FB         [24] 1457 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0010)
      003B32 74 6E            [12] 1458 	mov	a,#0x6e
      003B34 F0               [24] 1459 	movx	@dptr,a
      003B35 90 00 FC         [24] 1460 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0011)
      003B38 F0               [24] 1461 	movx	@dptr,a
      003B39 90 00 FD         [24] 1462 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0012)
      003B3C 74 65            [12] 1463 	mov	a,#0x65
      003B3E F0               [24] 1464 	movx	@dptr,a
      003B3F 90 00 FE         [24] 1465 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0013)
      003B42 74 6C            [12] 1466 	mov	a,#0x6c
      003B44 F0               [24] 1467 	movx	@dptr,a
      003B45 90 00 FF         [24] 1468 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0014)
      003B48 74 20            [12] 1469 	mov	a,#0x20
      003B4A F0               [24] 1470 	movx	@dptr,a
      003B4B 90 01 00         [24] 1471 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0015)
      003B4E 74 41            [12] 1472 	mov	a,#0x41
      003B50 F0               [24] 1473 	movx	@dptr,a
      003B51 90 01 01         [24] 1474 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0016)
      003B54 74 20            [12] 1475 	mov	a,#0x20
      003B56 F0               [24] 1476 	movx	@dptr,a
      003B57 90 01 02         [24] 1477 	mov	dptr,#(_main_DAC_a_txt_65536_29 + 0x0017)
      003B5A E4               [12] 1478 	clr	a
      003B5B F0               [24] 1479 	movx	@dptr,a
                                   1480 ;	main.c:46: __xdata uint8_t DAC_b_txt[]="\n\rDAC output channel B ";
      003B5C 90 01 03         [24] 1481 	mov	dptr,#_main_DAC_b_txt_65536_29
      003B5F 74 0A            [12] 1482 	mov	a,#0x0a
      003B61 F0               [24] 1483 	movx	@dptr,a
      003B62 90 01 04         [24] 1484 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0001)
      003B65 74 0D            [12] 1485 	mov	a,#0x0d
      003B67 F0               [24] 1486 	movx	@dptr,a
      003B68 90 01 05         [24] 1487 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0002)
      003B6B 74 44            [12] 1488 	mov	a,#0x44
      003B6D F0               [24] 1489 	movx	@dptr,a
      003B6E 90 01 06         [24] 1490 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0003)
      003B71 74 41            [12] 1491 	mov	a,#0x41
      003B73 F0               [24] 1492 	movx	@dptr,a
      003B74 90 01 07         [24] 1493 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0004)
      003B77 74 43            [12] 1494 	mov	a,#0x43
      003B79 F0               [24] 1495 	movx	@dptr,a
      003B7A 90 01 08         [24] 1496 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0005)
      003B7D 74 20            [12] 1497 	mov	a,#0x20
      003B7F F0               [24] 1498 	movx	@dptr,a
      003B80 90 01 09         [24] 1499 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0006)
      003B83 74 6F            [12] 1500 	mov	a,#0x6f
      003B85 F0               [24] 1501 	movx	@dptr,a
      003B86 90 01 0A         [24] 1502 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0007)
      003B89 74 75            [12] 1503 	mov	a,#0x75
      003B8B F0               [24] 1504 	movx	@dptr,a
      003B8C 90 01 0B         [24] 1505 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0008)
      003B8F 14               [12] 1506 	dec	a
      003B90 F0               [24] 1507 	movx	@dptr,a
      003B91 90 01 0C         [24] 1508 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0009)
      003B94 74 70            [12] 1509 	mov	a,#0x70
      003B96 F0               [24] 1510 	movx	@dptr,a
      003B97 90 01 0D         [24] 1511 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000a)
      003B9A 74 75            [12] 1512 	mov	a,#0x75
      003B9C F0               [24] 1513 	movx	@dptr,a
      003B9D 90 01 0E         [24] 1514 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000b)
      003BA0 14               [12] 1515 	dec	a
      003BA1 F0               [24] 1516 	movx	@dptr,a
      003BA2 90 01 0F         [24] 1517 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000c)
      003BA5 74 20            [12] 1518 	mov	a,#0x20
      003BA7 F0               [24] 1519 	movx	@dptr,a
      003BA8 90 01 10         [24] 1520 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000d)
      003BAB 74 63            [12] 1521 	mov	a,#0x63
      003BAD F0               [24] 1522 	movx	@dptr,a
      003BAE 90 01 11         [24] 1523 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000e)
      003BB1 74 68            [12] 1524 	mov	a,#0x68
      003BB3 F0               [24] 1525 	movx	@dptr,a
      003BB4 90 01 12         [24] 1526 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x000f)
      003BB7 74 61            [12] 1527 	mov	a,#0x61
      003BB9 F0               [24] 1528 	movx	@dptr,a
      003BBA 90 01 13         [24] 1529 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0010)
      003BBD 74 6E            [12] 1530 	mov	a,#0x6e
      003BBF F0               [24] 1531 	movx	@dptr,a
      003BC0 90 01 14         [24] 1532 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0011)
      003BC3 F0               [24] 1533 	movx	@dptr,a
      003BC4 90 01 15         [24] 1534 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0012)
      003BC7 74 65            [12] 1535 	mov	a,#0x65
      003BC9 F0               [24] 1536 	movx	@dptr,a
      003BCA 90 01 16         [24] 1537 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0013)
      003BCD 74 6C            [12] 1538 	mov	a,#0x6c
      003BCF F0               [24] 1539 	movx	@dptr,a
      003BD0 90 01 17         [24] 1540 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0014)
      003BD3 74 20            [12] 1541 	mov	a,#0x20
      003BD5 F0               [24] 1542 	movx	@dptr,a
      003BD6 90 01 18         [24] 1543 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0015)
      003BD9 74 42            [12] 1544 	mov	a,#0x42
      003BDB F0               [24] 1545 	movx	@dptr,a
      003BDC 90 01 19         [24] 1546 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0016)
      003BDF 74 20            [12] 1547 	mov	a,#0x20
      003BE1 F0               [24] 1548 	movx	@dptr,a
      003BE2 90 01 1A         [24] 1549 	mov	dptr,#(_main_DAC_b_txt_65536_29 + 0x0017)
      003BE5 E4               [12] 1550 	clr	a
      003BE6 F0               [24] 1551 	movx	@dptr,a
                                   1552 ;	main.c:47: __xdata uint8_t DAC_gain_inc_txt[]="\n\rgain increased";
      003BE7 90 01 1B         [24] 1553 	mov	dptr,#_main_DAC_gain_inc_txt_65536_29
      003BEA 74 0A            [12] 1554 	mov	a,#0x0a
      003BEC F0               [24] 1555 	movx	@dptr,a
      003BED 90 01 1C         [24] 1556 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0001)
      003BF0 74 0D            [12] 1557 	mov	a,#0x0d
      003BF2 F0               [24] 1558 	movx	@dptr,a
      003BF3 90 01 1D         [24] 1559 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0002)
      003BF6 74 67            [12] 1560 	mov	a,#0x67
      003BF8 F0               [24] 1561 	movx	@dptr,a
      003BF9 90 01 1E         [24] 1562 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0003)
      003BFC 74 61            [12] 1563 	mov	a,#0x61
      003BFE F0               [24] 1564 	movx	@dptr,a
      003BFF 90 01 1F         [24] 1565 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0004)
      003C02 74 69            [12] 1566 	mov	a,#0x69
      003C04 F0               [24] 1567 	movx	@dptr,a
      003C05 90 01 20         [24] 1568 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0005)
      003C08 74 6E            [12] 1569 	mov	a,#0x6e
      003C0A F0               [24] 1570 	movx	@dptr,a
      003C0B 90 01 21         [24] 1571 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0006)
      003C0E 74 20            [12] 1572 	mov	a,#0x20
      003C10 F0               [24] 1573 	movx	@dptr,a
      003C11 90 01 22         [24] 1574 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0007)
      003C14 74 69            [12] 1575 	mov	a,#0x69
      003C16 F0               [24] 1576 	movx	@dptr,a
      003C17 90 01 23         [24] 1577 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0008)
      003C1A 74 6E            [12] 1578 	mov	a,#0x6e
      003C1C F0               [24] 1579 	movx	@dptr,a
      003C1D 90 01 24         [24] 1580 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0009)
      003C20 74 63            [12] 1581 	mov	a,#0x63
      003C22 F0               [24] 1582 	movx	@dptr,a
      003C23 90 01 25         [24] 1583 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000a)
      003C26 74 72            [12] 1584 	mov	a,#0x72
      003C28 F0               [24] 1585 	movx	@dptr,a
      003C29 90 01 26         [24] 1586 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000b)
      003C2C 74 65            [12] 1587 	mov	a,#0x65
      003C2E F0               [24] 1588 	movx	@dptr,a
      003C2F 90 01 27         [24] 1589 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000c)
      003C32 74 61            [12] 1590 	mov	a,#0x61
      003C34 F0               [24] 1591 	movx	@dptr,a
      003C35 90 01 28         [24] 1592 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000d)
      003C38 74 73            [12] 1593 	mov	a,#0x73
      003C3A F0               [24] 1594 	movx	@dptr,a
      003C3B 90 01 29         [24] 1595 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000e)
      003C3E 74 65            [12] 1596 	mov	a,#0x65
      003C40 F0               [24] 1597 	movx	@dptr,a
      003C41 90 01 2A         [24] 1598 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x000f)
      003C44 14               [12] 1599 	dec	a
      003C45 F0               [24] 1600 	movx	@dptr,a
      003C46 90 01 2B         [24] 1601 	mov	dptr,#(_main_DAC_gain_inc_txt_65536_29 + 0x0010)
      003C49 E4               [12] 1602 	clr	a
      003C4A F0               [24] 1603 	movx	@dptr,a
                                   1604 ;	main.c:48: __xdata uint8_t DAC_gain_dec_txt[]="\n\rgain decreased";
      003C4B 90 01 2C         [24] 1605 	mov	dptr,#_main_DAC_gain_dec_txt_65536_29
      003C4E 74 0A            [12] 1606 	mov	a,#0x0a
      003C50 F0               [24] 1607 	movx	@dptr,a
      003C51 90 01 2D         [24] 1608 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0001)
      003C54 74 0D            [12] 1609 	mov	a,#0x0d
      003C56 F0               [24] 1610 	movx	@dptr,a
      003C57 90 01 2E         [24] 1611 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0002)
      003C5A 74 67            [12] 1612 	mov	a,#0x67
      003C5C F0               [24] 1613 	movx	@dptr,a
      003C5D 90 01 2F         [24] 1614 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0003)
      003C60 74 61            [12] 1615 	mov	a,#0x61
      003C62 F0               [24] 1616 	movx	@dptr,a
      003C63 90 01 30         [24] 1617 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0004)
      003C66 74 69            [12] 1618 	mov	a,#0x69
      003C68 F0               [24] 1619 	movx	@dptr,a
      003C69 90 01 31         [24] 1620 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0005)
      003C6C 74 6E            [12] 1621 	mov	a,#0x6e
      003C6E F0               [24] 1622 	movx	@dptr,a
      003C6F 90 01 32         [24] 1623 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0006)
      003C72 74 20            [12] 1624 	mov	a,#0x20
      003C74 F0               [24] 1625 	movx	@dptr,a
      003C75 90 01 33         [24] 1626 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0007)
      003C78 74 64            [12] 1627 	mov	a,#0x64
      003C7A F0               [24] 1628 	movx	@dptr,a
      003C7B 90 01 34         [24] 1629 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0008)
      003C7E 04               [12] 1630 	inc	a
      003C7F F0               [24] 1631 	movx	@dptr,a
      003C80 90 01 35         [24] 1632 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0009)
      003C83 74 63            [12] 1633 	mov	a,#0x63
      003C85 F0               [24] 1634 	movx	@dptr,a
      003C86 90 01 36         [24] 1635 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000a)
      003C89 74 72            [12] 1636 	mov	a,#0x72
      003C8B F0               [24] 1637 	movx	@dptr,a
      003C8C 90 01 37         [24] 1638 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000b)
      003C8F 74 65            [12] 1639 	mov	a,#0x65
      003C91 F0               [24] 1640 	movx	@dptr,a
      003C92 90 01 38         [24] 1641 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000c)
      003C95 74 61            [12] 1642 	mov	a,#0x61
      003C97 F0               [24] 1643 	movx	@dptr,a
      003C98 90 01 39         [24] 1644 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000d)
      003C9B 74 73            [12] 1645 	mov	a,#0x73
      003C9D F0               [24] 1646 	movx	@dptr,a
      003C9E 90 01 3A         [24] 1647 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000e)
      003CA1 74 65            [12] 1648 	mov	a,#0x65
      003CA3 F0               [24] 1649 	movx	@dptr,a
      003CA4 90 01 3B         [24] 1650 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x000f)
      003CA7 14               [12] 1651 	dec	a
      003CA8 F0               [24] 1652 	movx	@dptr,a
      003CA9 90 01 3C         [24] 1653 	mov	dptr,#(_main_DAC_gain_dec_txt_65536_29 + 0x0010)
      003CAC E4               [12] 1654 	clr	a
      003CAD F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	main.c:49: __xdata uint8_t DAC_mode_txt[]="\n\rmode changed";
      003CAE 90 01 3D         [24] 1657 	mov	dptr,#_main_DAC_mode_txt_65536_29
      003CB1 74 0A            [12] 1658 	mov	a,#0x0a
      003CB3 F0               [24] 1659 	movx	@dptr,a
      003CB4 90 01 3E         [24] 1660 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0001)
      003CB7 74 0D            [12] 1661 	mov	a,#0x0d
      003CB9 F0               [24] 1662 	movx	@dptr,a
      003CBA 90 01 3F         [24] 1663 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0002)
      003CBD 74 6D            [12] 1664 	mov	a,#0x6d
      003CBF F0               [24] 1665 	movx	@dptr,a
      003CC0 90 01 40         [24] 1666 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0003)
      003CC3 74 6F            [12] 1667 	mov	a,#0x6f
      003CC5 F0               [24] 1668 	movx	@dptr,a
      003CC6 90 01 41         [24] 1669 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0004)
      003CC9 74 64            [12] 1670 	mov	a,#0x64
      003CCB F0               [24] 1671 	movx	@dptr,a
      003CCC 90 01 42         [24] 1672 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0005)
      003CCF 04               [12] 1673 	inc	a
      003CD0 F0               [24] 1674 	movx	@dptr,a
      003CD1 90 01 43         [24] 1675 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0006)
      003CD4 74 20            [12] 1676 	mov	a,#0x20
      003CD6 F0               [24] 1677 	movx	@dptr,a
      003CD7 90 01 44         [24] 1678 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0007)
      003CDA 74 63            [12] 1679 	mov	a,#0x63
      003CDC F0               [24] 1680 	movx	@dptr,a
      003CDD 90 01 45         [24] 1681 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0008)
      003CE0 74 68            [12] 1682 	mov	a,#0x68
      003CE2 F0               [24] 1683 	movx	@dptr,a
      003CE3 90 01 46         [24] 1684 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x0009)
      003CE6 74 61            [12] 1685 	mov	a,#0x61
      003CE8 F0               [24] 1686 	movx	@dptr,a
      003CE9 90 01 47         [24] 1687 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000a)
      003CEC 74 6E            [12] 1688 	mov	a,#0x6e
      003CEE F0               [24] 1689 	movx	@dptr,a
      003CEF 90 01 48         [24] 1690 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000b)
      003CF2 74 67            [12] 1691 	mov	a,#0x67
      003CF4 F0               [24] 1692 	movx	@dptr,a
      003CF5 90 01 49         [24] 1693 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000c)
      003CF8 74 65            [12] 1694 	mov	a,#0x65
      003CFA F0               [24] 1695 	movx	@dptr,a
      003CFB 90 01 4A         [24] 1696 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000d)
      003CFE 14               [12] 1697 	dec	a
      003CFF F0               [24] 1698 	movx	@dptr,a
      003D00 90 01 4B         [24] 1699 	mov	dptr,#(_main_DAC_mode_txt_65536_29 + 0x000e)
      003D03 E4               [12] 1700 	clr	a
      003D04 F0               [24] 1701 	movx	@dptr,a
                                   1702 ;	main.c:50: __xdata uint8_t DAC_next_wave_txt[]="\n\rnext wave ";
      003D05 90 01 4C         [24] 1703 	mov	dptr,#_main_DAC_next_wave_txt_65536_29
      003D08 74 0A            [12] 1704 	mov	a,#0x0a
      003D0A F0               [24] 1705 	movx	@dptr,a
      003D0B 90 01 4D         [24] 1706 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0001)
      003D0E 74 0D            [12] 1707 	mov	a,#0x0d
      003D10 F0               [24] 1708 	movx	@dptr,a
      003D11 90 01 4E         [24] 1709 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0002)
      003D14 74 6E            [12] 1710 	mov	a,#0x6e
      003D16 F0               [24] 1711 	movx	@dptr,a
      003D17 90 01 4F         [24] 1712 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0003)
      003D1A 74 65            [12] 1713 	mov	a,#0x65
      003D1C F0               [24] 1714 	movx	@dptr,a
      003D1D 90 01 50         [24] 1715 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0004)
      003D20 74 78            [12] 1716 	mov	a,#0x78
      003D22 F0               [24] 1717 	movx	@dptr,a
      003D23 90 01 51         [24] 1718 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0005)
      003D26 74 74            [12] 1719 	mov	a,#0x74
      003D28 F0               [24] 1720 	movx	@dptr,a
      003D29 90 01 52         [24] 1721 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0006)
      003D2C 74 20            [12] 1722 	mov	a,#0x20
      003D2E F0               [24] 1723 	movx	@dptr,a
      003D2F 90 01 53         [24] 1724 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0007)
      003D32 74 77            [12] 1725 	mov	a,#0x77
      003D34 F0               [24] 1726 	movx	@dptr,a
      003D35 90 01 54         [24] 1727 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0008)
      003D38 74 61            [12] 1728 	mov	a,#0x61
      003D3A F0               [24] 1729 	movx	@dptr,a
      003D3B 90 01 55         [24] 1730 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x0009)
      003D3E 74 76            [12] 1731 	mov	a,#0x76
      003D40 F0               [24] 1732 	movx	@dptr,a
      003D41 90 01 56         [24] 1733 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x000a)
      003D44 74 65            [12] 1734 	mov	a,#0x65
      003D46 F0               [24] 1735 	movx	@dptr,a
      003D47 90 01 57         [24] 1736 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x000b)
      003D4A 74 20            [12] 1737 	mov	a,#0x20
      003D4C F0               [24] 1738 	movx	@dptr,a
      003D4D 90 01 58         [24] 1739 	mov	dptr,#(_main_DAC_next_wave_txt_65536_29 + 0x000c)
      003D50 E4               [12] 1740 	clr	a
      003D51 F0               [24] 1741 	movx	@dptr,a
                                   1742 ;	main.c:51: my_printf(Welcome_txt);
      003D52 90 00 01         [24] 1743 	mov	dptr,#_main_Welcome_txt_65536_29
      003D55 12 42 32         [24] 1744 	lcall	_my_printf
                                   1745 ;	main.c:52: my_printf(Instructions_txt);
      003D58 90 00 41         [24] 1746 	mov	dptr,#_main_Instructions_txt_65536_29
      003D5B 12 42 32         [24] 1747 	lcall	_my_printf
                                   1748 ;	main.c:53: waves_init();
      003D5E 12 35 55         [24] 1749 	lcall	_waves_init
                                   1750 ;	main.c:55: while(1)
      003D61                       1751 00114$:
                                   1752 ;	main.c:57: key_pressed=getchar();
      003D61 12 3F DD         [24] 1753 	lcall	_getchar
      003D64 AE 82            [24] 1754 	mov	r6,dpl
      003D66 AF 83            [24] 1755 	mov	r7,dph
                                   1756 ;	main.c:58: if(mode==0)
      003D68 90 01 5B         [24] 1757 	mov	dptr,#_mode
      003D6B E0               [24] 1758 	movx	a,@dptr
      003D6C 70 02            [24] 1759 	jnz	00102$
                                   1760 ;	main.c:60: TR0 = 0;
                                   1761 ;	assignBit
      003D6E C2 8C            [12] 1762 	clr	_TR0
      003D70                       1763 00102$:
                                   1764 ;	main.c:62: switch(key_pressed)
      003D70 BE 2B 02         [24] 1765 	cjne	r6,#0x2b,00155$
      003D73 80 4C            [24] 1766 	sjmp	00107$
      003D75                       1767 00155$:
      003D75 BE 2D 02         [24] 1768 	cjne	r6,#0x2d,00156$
      003D78 80 52            [24] 1769 	sjmp	00108$
      003D7A                       1770 00156$:
      003D7A BE 3F 02         [24] 1771 	cjne	r6,#0x3f,00157$
      003D7D 80 0F            [24] 1772 	sjmp	00103$
      003D7F                       1773 00157$:
      003D7F BE 44 02         [24] 1774 	cjne	r6,#0x44,00158$
      003D82 80 28            [24] 1775 	sjmp	00106$
      003D84                       1776 00158$:
      003D84 BE 4E 02         [24] 1777 	cjne	r6,#0x4e,00159$
      003D87 80 18            [24] 1778 	sjmp	00105$
      003D89                       1779 00159$:
                                   1780 ;	main.c:64: case '?':
      003D89 BE 5A 4B         [24] 1781 	cjne	r6,#0x5a,00109$
      003D8C 80 08            [24] 1782 	sjmp	00104$
      003D8E                       1783 00103$:
                                   1784 ;	main.c:66: my_printf(Instructions_txt);
      003D8E 90 00 41         [24] 1785 	mov	dptr,#_main_Instructions_txt_65536_29
      003D91 12 42 32         [24] 1786 	lcall	_my_printf
                                   1787 ;	main.c:67: break;
                                   1788 ;	main.c:70: case 'Z':
      003D94 80 4A            [24] 1789 	sjmp	00110$
      003D96                       1790 00104$:
                                   1791 ;	main.c:72: dac_output_control_change();
      003D96 12 3F 84         [24] 1792 	lcall	_dac_output_control_change
                                   1793 ;	main.c:73: my_printf(DAC_mode_txt);
      003D99 90 01 3D         [24] 1794 	mov	dptr,#_main_DAC_mode_txt_65536_29
      003D9C 12 42 32         [24] 1795 	lcall	_my_printf
                                   1796 ;	main.c:74: break;
                                   1797 ;	main.c:77: case 'N':
      003D9F 80 3F            [24] 1798 	sjmp	00110$
      003DA1                       1799 00105$:
                                   1800 ;	main.c:79: my_printf(DAC_next_wave_txt);
      003DA1 90 01 4C         [24] 1801 	mov	dptr,#_main_DAC_next_wave_txt_65536_29
      003DA4 12 42 32         [24] 1802 	lcall	_my_printf
                                   1803 ;	main.c:80: dac_next_wave();
      003DA7 12 3F 9B         [24] 1804 	lcall	_dac_next_wave
                                   1805 ;	main.c:81: break;
                                   1806 ;	main.c:84: case 'D':
      003DAA 80 34            [24] 1807 	sjmp	00110$
      003DAC                       1808 00106$:
                                   1809 ;	main.c:86: my_printf(Enter_data_txt);
      003DAC 90 00 DD         [24] 1810 	mov	dptr,#_main_Enter_data_txt_65536_29
      003DAF 12 42 32         [24] 1811 	lcall	_my_printf
                                   1812 ;	main.c:87: data_byte = fetch_number(16);
      003DB2 75 82 10         [24] 1813 	mov	dpl,#0x10
      003DB5 12 43 97         [24] 1814 	lcall	_fetch_number
                                   1815 ;	main.c:88: dac_set(data_byte);
      003DB8 7F 00            [12] 1816 	mov	r7,#0x00
      003DBA 8F 83            [24] 1817 	mov	dph,r7
      003DBC 12 3F 3A         [24] 1818 	lcall	_dac_set
                                   1819 ;	main.c:89: break;
                                   1820 ;	main.c:92: case '+':
      003DBF 80 1F            [24] 1821 	sjmp	00110$
      003DC1                       1822 00107$:
                                   1823 ;	main.c:94: dac_increase_voltage();
      003DC1 12 3F B0         [24] 1824 	lcall	_dac_increase_voltage
                                   1825 ;	main.c:95: my_printf(DAC_gain_inc_txt);
      003DC4 90 01 1B         [24] 1826 	mov	dptr,#_main_DAC_gain_inc_txt_65536_29
      003DC7 12 42 32         [24] 1827 	lcall	_my_printf
                                   1828 ;	main.c:96: break;
                                   1829 ;	main.c:99: case '-':
      003DCA 80 14            [24] 1830 	sjmp	00110$
      003DCC                       1831 00108$:
                                   1832 ;	main.c:101: dac_decrease_voltage();
      003DCC 12 3F B7         [24] 1833 	lcall	_dac_decrease_voltage
                                   1834 ;	main.c:102: my_printf(DAC_gain_dec_txt);
      003DCF 90 01 2C         [24] 1835 	mov	dptr,#_main_DAC_gain_dec_txt_65536_29
      003DD2 12 42 32         [24] 1836 	lcall	_my_printf
                                   1837 ;	main.c:103: break;
                                   1838 ;	main.c:106: default:
      003DD5 80 09            [24] 1839 	sjmp	00110$
      003DD7                       1840 00109$:
                                   1841 ;	main.c:108: putchar(key_pressed);
      003DD7 7F 00            [12] 1842 	mov	r7,#0x00
      003DD9 8E 82            [24] 1843 	mov	dpl,r6
      003DDB 8F 83            [24] 1844 	mov	dph,r7
      003DDD 12 3F BE         [24] 1845 	lcall	_putchar
                                   1846 ;	main.c:111: }
      003DE0                       1847 00110$:
                                   1848 ;	main.c:112: if(mode==0)
      003DE0 90 01 5B         [24] 1849 	mov	dptr,#_mode
      003DE3 E0               [24] 1850 	movx	a,@dptr
      003DE4 60 03            [24] 1851 	jz	00161$
      003DE6 02 3D 61         [24] 1852 	ljmp	00114$
      003DE9                       1853 00161$:
                                   1854 ;	main.c:114: TR0 = 1;
                                   1855 ;	assignBit
      003DE9 D2 8C            [12] 1856 	setb	_TR0
                                   1857 ;	main.c:116: key_pressed=0;
                                   1858 ;	main.c:118: }
      003DEB 02 3D 61         [24] 1859 	ljmp	00114$
                                   1860 	.area CSEG    (CODE)
                                   1861 	.area CONST   (CODE)
                                   1862 	.area XINIT   (CODE)
                                   1863 	.area CABS    (ABS,CODE)
