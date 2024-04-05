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
                                     13 	.globl _free
                                     14 	.globl _malloc
                                     15 	.globl _printf_tiny
                                     16 	.globl _printf
                                     17 	.globl _TF1
                                     18 	.globl _TR1
                                     19 	.globl _TF0
                                     20 	.globl _TR0
                                     21 	.globl _IE1
                                     22 	.globl _IT1
                                     23 	.globl _IE0
                                     24 	.globl _IT0
                                     25 	.globl _SM0
                                     26 	.globl _SM1
                                     27 	.globl _SM2
                                     28 	.globl _REN
                                     29 	.globl _TB8
                                     30 	.globl _RB8
                                     31 	.globl _TI
                                     32 	.globl _RI
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD0
                                     48 	.globl _TXD
                                     49 	.globl _RXD0
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _P0_7
                                     76 	.globl _P0_6
                                     77 	.globl _P0_5
                                     78 	.globl _P0_4
                                     79 	.globl _P0_3
                                     80 	.globl _P0_2
                                     81 	.globl _P0_1
                                     82 	.globl _P0_0
                                     83 	.globl _PS
                                     84 	.globl _PT1
                                     85 	.globl _PX1
                                     86 	.globl _PT0
                                     87 	.globl _PX0
                                     88 	.globl _EA
                                     89 	.globl _ES
                                     90 	.globl _ET1
                                     91 	.globl _EX1
                                     92 	.globl _ET0
                                     93 	.globl _EX0
                                     94 	.globl _BREG_F7
                                     95 	.globl _BREG_F6
                                     96 	.globl _BREG_F5
                                     97 	.globl _BREG_F4
                                     98 	.globl _BREG_F3
                                     99 	.globl _BREG_F2
                                    100 	.globl _BREG_F1
                                    101 	.globl _BREG_F0
                                    102 	.globl _P5_7
                                    103 	.globl _P5_6
                                    104 	.globl _P5_5
                                    105 	.globl _P5_4
                                    106 	.globl _P5_3
                                    107 	.globl _P5_2
                                    108 	.globl _P5_1
                                    109 	.globl _P5_0
                                    110 	.globl _P4_7
                                    111 	.globl _P4_6
                                    112 	.globl _P4_5
                                    113 	.globl _P4_4
                                    114 	.globl _P4_3
                                    115 	.globl _P4_2
                                    116 	.globl _P4_1
                                    117 	.globl _P4_0
                                    118 	.globl _PX0L
                                    119 	.globl _PT0L
                                    120 	.globl _PX1L
                                    121 	.globl _PT1L
                                    122 	.globl _PSL
                                    123 	.globl _PT2L
                                    124 	.globl _PPCL
                                    125 	.globl _EC
                                    126 	.globl _CCF0
                                    127 	.globl _CCF1
                                    128 	.globl _CCF2
                                    129 	.globl _CCF3
                                    130 	.globl _CCF4
                                    131 	.globl _CR
                                    132 	.globl _CF
                                    133 	.globl _TF2
                                    134 	.globl _EXF2
                                    135 	.globl _RCLK
                                    136 	.globl _TCLK
                                    137 	.globl _EXEN2
                                    138 	.globl _TR2
                                    139 	.globl _C_T2
                                    140 	.globl _CP_RL2
                                    141 	.globl _T2CON_7
                                    142 	.globl _T2CON_6
                                    143 	.globl _T2CON_5
                                    144 	.globl _T2CON_4
                                    145 	.globl _T2CON_3
                                    146 	.globl _T2CON_2
                                    147 	.globl _T2CON_1
                                    148 	.globl _T2CON_0
                                    149 	.globl _PT2
                                    150 	.globl _ET2
                                    151 	.globl _TMOD
                                    152 	.globl _TL1
                                    153 	.globl _TL0
                                    154 	.globl _TH1
                                    155 	.globl _TH0
                                    156 	.globl _TCON
                                    157 	.globl _SP
                                    158 	.globl _SCON
                                    159 	.globl _SBUF0
                                    160 	.globl _SBUF
                                    161 	.globl _PSW
                                    162 	.globl _PCON
                                    163 	.globl _P3
                                    164 	.globl _P2
                                    165 	.globl _P1
                                    166 	.globl _P0
                                    167 	.globl _IP
                                    168 	.globl _IE
                                    169 	.globl _DP0L
                                    170 	.globl _DPL
                                    171 	.globl _DP0H
                                    172 	.globl _DPH
                                    173 	.globl _B
                                    174 	.globl _ACC
                                    175 	.globl _EECON
                                    176 	.globl _KBF
                                    177 	.globl _KBE
                                    178 	.globl _KBLS
                                    179 	.globl _BRL
                                    180 	.globl _BDRCON
                                    181 	.globl _T2MOD
                                    182 	.globl _SPDAT
                                    183 	.globl _SPSTA
                                    184 	.globl _SPCON
                                    185 	.globl _SADEN
                                    186 	.globl _SADDR
                                    187 	.globl _WDTPRG
                                    188 	.globl _WDTRST
                                    189 	.globl _P5
                                    190 	.globl _P4
                                    191 	.globl _IPH1
                                    192 	.globl _IPL1
                                    193 	.globl _IPH0
                                    194 	.globl _IPL0
                                    195 	.globl _IEN1
                                    196 	.globl _IEN0
                                    197 	.globl _CMOD
                                    198 	.globl _CL
                                    199 	.globl _CH
                                    200 	.globl _CCON
                                    201 	.globl _CCAPM4
                                    202 	.globl _CCAPM3
                                    203 	.globl _CCAPM2
                                    204 	.globl _CCAPM1
                                    205 	.globl _CCAPM0
                                    206 	.globl _CCAP4L
                                    207 	.globl _CCAP3L
                                    208 	.globl _CCAP2L
                                    209 	.globl _CCAP1L
                                    210 	.globl _CCAP0L
                                    211 	.globl _CCAP4H
                                    212 	.globl _CCAP3H
                                    213 	.globl _CCAP2H
                                    214 	.globl _CCAP1H
                                    215 	.globl _CCAP0H
                                    216 	.globl _CKCON1
                                    217 	.globl _CKCON0
                                    218 	.globl _CKRL
                                    219 	.globl _AUXR1
                                    220 	.globl _AUXR
                                    221 	.globl _TH2
                                    222 	.globl _TL2
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _T2CON
                                    226 	.globl _dataout
                                    227 	.globl _putchar
                                    228 	.globl _getchar
                                    229 	.globl _get_input
                                    230 	.globl _get_num1
                                    231 ;--------------------------------------------------------
                                    232 ; special function registers
                                    233 ;--------------------------------------------------------
                                    234 	.area RSEG    (ABS,DATA)
      000000                        235 	.org 0x0000
                           0000C8   236 _T2CON	=	0x00c8
                           0000CA   237 _RCAP2L	=	0x00ca
                           0000CB   238 _RCAP2H	=	0x00cb
                           0000CC   239 _TL2	=	0x00cc
                           0000CD   240 _TH2	=	0x00cd
                           00008E   241 _AUXR	=	0x008e
                           0000A2   242 _AUXR1	=	0x00a2
                           000097   243 _CKRL	=	0x0097
                           00008F   244 _CKCON0	=	0x008f
                           0000AF   245 _CKCON1	=	0x00af
                           0000FA   246 _CCAP0H	=	0x00fa
                           0000FB   247 _CCAP1H	=	0x00fb
                           0000FC   248 _CCAP2H	=	0x00fc
                           0000FD   249 _CCAP3H	=	0x00fd
                           0000FE   250 _CCAP4H	=	0x00fe
                           0000EA   251 _CCAP0L	=	0x00ea
                           0000EB   252 _CCAP1L	=	0x00eb
                           0000EC   253 _CCAP2L	=	0x00ec
                           0000ED   254 _CCAP3L	=	0x00ed
                           0000EE   255 _CCAP4L	=	0x00ee
                           0000DA   256 _CCAPM0	=	0x00da
                           0000DB   257 _CCAPM1	=	0x00db
                           0000DC   258 _CCAPM2	=	0x00dc
                           0000DD   259 _CCAPM3	=	0x00dd
                           0000DE   260 _CCAPM4	=	0x00de
                           0000D8   261 _CCON	=	0x00d8
                           0000F9   262 _CH	=	0x00f9
                           0000E9   263 _CL	=	0x00e9
                           0000D9   264 _CMOD	=	0x00d9
                           0000A8   265 _IEN0	=	0x00a8
                           0000B1   266 _IEN1	=	0x00b1
                           0000B8   267 _IPL0	=	0x00b8
                           0000B7   268 _IPH0	=	0x00b7
                           0000B2   269 _IPL1	=	0x00b2
                           0000B3   270 _IPH1	=	0x00b3
                           0000C0   271 _P4	=	0x00c0
                           0000E8   272 _P5	=	0x00e8
                           0000A6   273 _WDTRST	=	0x00a6
                           0000A7   274 _WDTPRG	=	0x00a7
                           0000A9   275 _SADDR	=	0x00a9
                           0000B9   276 _SADEN	=	0x00b9
                           0000C3   277 _SPCON	=	0x00c3
                           0000C4   278 _SPSTA	=	0x00c4
                           0000C5   279 _SPDAT	=	0x00c5
                           0000C9   280 _T2MOD	=	0x00c9
                           00009B   281 _BDRCON	=	0x009b
                           00009A   282 _BRL	=	0x009a
                           00009C   283 _KBLS	=	0x009c
                           00009D   284 _KBE	=	0x009d
                           00009E   285 _KBF	=	0x009e
                           0000D2   286 _EECON	=	0x00d2
                           0000E0   287 _ACC	=	0x00e0
                           0000F0   288 _B	=	0x00f0
                           000083   289 _DPH	=	0x0083
                           000083   290 _DP0H	=	0x0083
                           000082   291 _DPL	=	0x0082
                           000082   292 _DP0L	=	0x0082
                           0000A8   293 _IE	=	0x00a8
                           0000B8   294 _IP	=	0x00b8
                           000080   295 _P0	=	0x0080
                           000090   296 _P1	=	0x0090
                           0000A0   297 _P2	=	0x00a0
                           0000B0   298 _P3	=	0x00b0
                           000087   299 _PCON	=	0x0087
                           0000D0   300 _PSW	=	0x00d0
                           000099   301 _SBUF	=	0x0099
                           000099   302 _SBUF0	=	0x0099
                           000098   303 _SCON	=	0x0098
                           000081   304 _SP	=	0x0081
                           000088   305 _TCON	=	0x0088
                           00008C   306 _TH0	=	0x008c
                           00008D   307 _TH1	=	0x008d
                           00008A   308 _TL0	=	0x008a
                           00008B   309 _TL1	=	0x008b
                           000089   310 _TMOD	=	0x0089
                                    311 ;--------------------------------------------------------
                                    312 ; special function bits
                                    313 ;--------------------------------------------------------
                                    314 	.area RSEG    (ABS,DATA)
      000000                        315 	.org 0x0000
                           0000AD   316 _ET2	=	0x00ad
                           0000BD   317 _PT2	=	0x00bd
                           0000C8   318 _T2CON_0	=	0x00c8
                           0000C9   319 _T2CON_1	=	0x00c9
                           0000CA   320 _T2CON_2	=	0x00ca
                           0000CB   321 _T2CON_3	=	0x00cb
                           0000CC   322 _T2CON_4	=	0x00cc
                           0000CD   323 _T2CON_5	=	0x00cd
                           0000CE   324 _T2CON_6	=	0x00ce
                           0000CF   325 _T2CON_7	=	0x00cf
                           0000C8   326 _CP_RL2	=	0x00c8
                           0000C9   327 _C_T2	=	0x00c9
                           0000CA   328 _TR2	=	0x00ca
                           0000CB   329 _EXEN2	=	0x00cb
                           0000CC   330 _TCLK	=	0x00cc
                           0000CD   331 _RCLK	=	0x00cd
                           0000CE   332 _EXF2	=	0x00ce
                           0000CF   333 _TF2	=	0x00cf
                           0000DF   334 _CF	=	0x00df
                           0000DE   335 _CR	=	0x00de
                           0000DC   336 _CCF4	=	0x00dc
                           0000DB   337 _CCF3	=	0x00db
                           0000DA   338 _CCF2	=	0x00da
                           0000D9   339 _CCF1	=	0x00d9
                           0000D8   340 _CCF0	=	0x00d8
                           0000AE   341 _EC	=	0x00ae
                           0000BE   342 _PPCL	=	0x00be
                           0000BD   343 _PT2L	=	0x00bd
                           0000BC   344 _PSL	=	0x00bc
                           0000BB   345 _PT1L	=	0x00bb
                           0000BA   346 _PX1L	=	0x00ba
                           0000B9   347 _PT0L	=	0x00b9
                           0000B8   348 _PX0L	=	0x00b8
                           0000C0   349 _P4_0	=	0x00c0
                           0000C1   350 _P4_1	=	0x00c1
                           0000C2   351 _P4_2	=	0x00c2
                           0000C3   352 _P4_3	=	0x00c3
                           0000C4   353 _P4_4	=	0x00c4
                           0000C5   354 _P4_5	=	0x00c5
                           0000C6   355 _P4_6	=	0x00c6
                           0000C7   356 _P4_7	=	0x00c7
                           0000E8   357 _P5_0	=	0x00e8
                           0000E9   358 _P5_1	=	0x00e9
                           0000EA   359 _P5_2	=	0x00ea
                           0000EB   360 _P5_3	=	0x00eb
                           0000EC   361 _P5_4	=	0x00ec
                           0000ED   362 _P5_5	=	0x00ed
                           0000EE   363 _P5_6	=	0x00ee
                           0000EF   364 _P5_7	=	0x00ef
                           0000F0   365 _BREG_F0	=	0x00f0
                           0000F1   366 _BREG_F1	=	0x00f1
                           0000F2   367 _BREG_F2	=	0x00f2
                           0000F3   368 _BREG_F3	=	0x00f3
                           0000F4   369 _BREG_F4	=	0x00f4
                           0000F5   370 _BREG_F5	=	0x00f5
                           0000F6   371 _BREG_F6	=	0x00f6
                           0000F7   372 _BREG_F7	=	0x00f7
                           0000A8   373 _EX0	=	0x00a8
                           0000A9   374 _ET0	=	0x00a9
                           0000AA   375 _EX1	=	0x00aa
                           0000AB   376 _ET1	=	0x00ab
                           0000AC   377 _ES	=	0x00ac
                           0000AF   378 _EA	=	0x00af
                           0000B8   379 _PX0	=	0x00b8
                           0000B9   380 _PT0	=	0x00b9
                           0000BA   381 _PX1	=	0x00ba
                           0000BB   382 _PT1	=	0x00bb
                           0000BC   383 _PS	=	0x00bc
                           000080   384 _P0_0	=	0x0080
                           000081   385 _P0_1	=	0x0081
                           000082   386 _P0_2	=	0x0082
                           000083   387 _P0_3	=	0x0083
                           000084   388 _P0_4	=	0x0084
                           000085   389 _P0_5	=	0x0085
                           000086   390 _P0_6	=	0x0086
                           000087   391 _P0_7	=	0x0087
                           000090   392 _P1_0	=	0x0090
                           000091   393 _P1_1	=	0x0091
                           000092   394 _P1_2	=	0x0092
                           000093   395 _P1_3	=	0x0093
                           000094   396 _P1_4	=	0x0094
                           000095   397 _P1_5	=	0x0095
                           000096   398 _P1_6	=	0x0096
                           000097   399 _P1_7	=	0x0097
                           0000A0   400 _P2_0	=	0x00a0
                           0000A1   401 _P2_1	=	0x00a1
                           0000A2   402 _P2_2	=	0x00a2
                           0000A3   403 _P2_3	=	0x00a3
                           0000A4   404 _P2_4	=	0x00a4
                           0000A5   405 _P2_5	=	0x00a5
                           0000A6   406 _P2_6	=	0x00a6
                           0000A7   407 _P2_7	=	0x00a7
                           0000B0   408 _P3_0	=	0x00b0
                           0000B1   409 _P3_1	=	0x00b1
                           0000B2   410 _P3_2	=	0x00b2
                           0000B3   411 _P3_3	=	0x00b3
                           0000B4   412 _P3_4	=	0x00b4
                           0000B5   413 _P3_5	=	0x00b5
                           0000B6   414 _P3_6	=	0x00b6
                           0000B7   415 _P3_7	=	0x00b7
                           0000B0   416 _RXD	=	0x00b0
                           0000B0   417 _RXD0	=	0x00b0
                           0000B1   418 _TXD	=	0x00b1
                           0000B1   419 _TXD0	=	0x00b1
                           0000B2   420 _INT0	=	0x00b2
                           0000B3   421 _INT1	=	0x00b3
                           0000B4   422 _T0	=	0x00b4
                           0000B5   423 _T1	=	0x00b5
                           0000B6   424 _WR	=	0x00b6
                           0000B7   425 _RD	=	0x00b7
                           0000D0   426 _P	=	0x00d0
                           0000D1   427 _F1	=	0x00d1
                           0000D2   428 _OV	=	0x00d2
                           0000D3   429 _RS0	=	0x00d3
                           0000D4   430 _RS1	=	0x00d4
                           0000D5   431 _F0	=	0x00d5
                           0000D6   432 _AC	=	0x00d6
                           0000D7   433 _CY	=	0x00d7
                           000098   434 _RI	=	0x0098
                           000099   435 _TI	=	0x0099
                           00009A   436 _RB8	=	0x009a
                           00009B   437 _TB8	=	0x009b
                           00009C   438 _REN	=	0x009c
                           00009D   439 _SM2	=	0x009d
                           00009E   440 _SM1	=	0x009e
                           00009F   441 _SM0	=	0x009f
                           000088   442 _IT0	=	0x0088
                           000089   443 _IE0	=	0x0089
                           00008A   444 _IT1	=	0x008a
                           00008B   445 _IE1	=	0x008b
                           00008C   446 _TR0	=	0x008c
                           00008D   447 _TF0	=	0x008d
                           00008E   448 _TR1	=	0x008e
                           00008F   449 _TF1	=	0x008f
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable register banks
                                    452 ;--------------------------------------------------------
                                    453 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        454 	.ds 8
                                    455 ;--------------------------------------------------------
                                    456 ; internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area DSEG    (DATA)
      000008                        459 _main_sloc0_1_0:
      000008                        460 	.ds 2
      00000A                        461 _main_sloc1_1_0:
      00000A                        462 	.ds 2
      00000C                        463 _main_sloc2_1_0:
      00000C                        464 	.ds 2
      00000E                        465 _main_sloc3_1_0:
      00000E                        466 	.ds 1
      00000F                        467 _main_sloc4_1_0:
      00000F                        468 	.ds 2
      000011                        469 _main_sloc5_1_0:
      000011                        470 	.ds 2
      000013                        471 _main_sloc6_1_0:
      000013                        472 	.ds 2
      000015                        473 _main_sloc7_1_0:
      000015                        474 	.ds 2
      000017                        475 _main_sloc8_1_0:
      000017                        476 	.ds 2
                                    477 ;--------------------------------------------------------
                                    478 ; overlayable items in internal ram
                                    479 ;--------------------------------------------------------
                                    480 ;--------------------------------------------------------
                                    481 ; Stack segment in internal ram
                                    482 ;--------------------------------------------------------
                                    483 	.area	SSEG
      000027                        484 __start__stack:
      000027                        485 	.ds	1
                                    486 
                                    487 ;--------------------------------------------------------
                                    488 ; indirectly addressable internal ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area ISEG    (DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; absolute internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area IABS    (ABS,DATA)
                                    495 	.area IABS    (ABS,DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; bit data
                                    498 ;--------------------------------------------------------
                                    499 	.area BSEG    (BIT)
                                    500 ;--------------------------------------------------------
                                    501 ; paged external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area PSEG    (PAG,XDATA)
                                    504 ;--------------------------------------------------------
                                    505 ; external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XSEG    (XDATA)
      0015E1                        508 _dataout_v_65536_47:
      0015E1                        509 	.ds 1
      0015E2                        510 _putchar_ch_65536_49:
      0015E2                        511 	.ds 2
      0015E4                        512 _get_input_num_65536_56:
      0015E4                        513 	.ds 2
      0015E6                        514 _get_input_count_65536_56:
      0015E6                        515 	.ds 1
      0015E7                        516 _get_input_input_arr_65536_56:
      0015E7                        517 	.ds 16
      0015F7                        518 _get_num1_num_65536_63:
      0015F7                        519 	.ds 2
      0015F9                        520 _get_num1_var_65536_63:
      0015F9                        521 	.ds 2
      0015FB                        522 _main_symbol_stored_65536_69:
      0015FB                        523 	.ds 2
      0015FD                        524 _main_counter_65536_69:
      0015FD                        525 	.ds 2
      0015FF                        526 _main_buffer1_65536_69:
      0015FF                        527 	.ds 2
      001601                        528 _main_buffern_65536_69:
      001601                        529 	.ds 90
      00165B                        530 _main_buffer_size_65536_69:
      00165B                        531 	.ds 94
      0016B9                        532 _main_num2_65536_69:
      0016B9                        533 	.ds 2
                                    534 ;--------------------------------------------------------
                                    535 ; absolute external ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area XABS    (ABS,XDATA)
                                    538 ;--------------------------------------------------------
                                    539 ; external initialized ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area XISEG   (XDATA)
                                    542 	.area HOME    (CODE)
                                    543 	.area GSINIT0 (CODE)
                                    544 	.area GSINIT1 (CODE)
                                    545 	.area GSINIT2 (CODE)
                                    546 	.area GSINIT3 (CODE)
                                    547 	.area GSINIT4 (CODE)
                                    548 	.area GSINIT5 (CODE)
                                    549 	.area GSINIT  (CODE)
                                    550 	.area GSFINAL (CODE)
                                    551 	.area CSEG    (CODE)
                                    552 ;--------------------------------------------------------
                                    553 ; interrupt vector
                                    554 ;--------------------------------------------------------
                                    555 	.area HOME    (CODE)
      002000                        556 __interrupt_vect:
      002000 02 20 06         [24]  557 	ljmp	__sdcc_gsinit_startup
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
      00205F 02 20 03         [24]  572 	ljmp	__sdcc_program_startup
                                    573 ;--------------------------------------------------------
                                    574 ; Home
                                    575 ;--------------------------------------------------------
                                    576 	.area HOME    (CODE)
                                    577 	.area HOME    (CODE)
      002003                        578 __sdcc_program_startup:
      002003 02 22 AE         [24]  579 	ljmp	_main
                                    580 ;	return from main will return to caller
                                    581 ;--------------------------------------------------------
                                    582 ; code
                                    583 ;--------------------------------------------------------
                                    584 	.area CSEG    (CODE)
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    587 ;------------------------------------------------------------
                                    588 ;	main.c:21: _sdcc_external_startup()
                                    589 ;	-----------------------------------------
                                    590 ;	 function _sdcc_external_startup
                                    591 ;	-----------------------------------------
      002062                        592 __sdcc_external_startup:
                           000007   593 	ar7 = 0x07
                           000006   594 	ar6 = 0x06
                           000005   595 	ar5 = 0x05
                           000004   596 	ar4 = 0x04
                           000003   597 	ar3 = 0x03
                           000002   598 	ar2 = 0x02
                           000001   599 	ar1 = 0x01
                           000000   600 	ar0 = 0x00
                                    601 ;	main.c:23: AUXR |= 0X0C;
      002062 43 8E 0C         [24]  602 	orl	_AUXR,#0x0c
                                    603 ;	main.c:24: return 0;
      002065 90 00 00         [24]  604 	mov	dptr,#0x0000
                                    605 ;	main.c:25: }
      002068 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'dataout'
                                    609 ;------------------------------------------------------------
                                    610 ;v                         Allocated with name '_dataout_v_65536_47'
                                    611 ;ptr                       Allocated with name '_dataout_ptr_65536_48'
                                    612 ;------------------------------------------------------------
                                    613 ;	main.c:36: void dataout(uint8_t v)
                                    614 ;	-----------------------------------------
                                    615 ;	 function dataout
                                    616 ;	-----------------------------------------
      002069                        617 _dataout:
      002069 E5 82            [12]  618 	mov	a,dpl
      00206B 90 15 E1         [24]  619 	mov	dptr,#_dataout_v_65536_47
      00206E F0               [24]  620 	movx	@dptr,a
                                    621 ;	main.c:39: *ptr=v;
      00206F E0               [24]  622 	movx	a,@dptr
      002070 FF               [12]  623 	mov	r7,a
      002071 7E 00            [12]  624 	mov	r6,#0x00
      002073 90 70 05         [24]  625 	mov	dptr,#0x7005
      002076 EF               [12]  626 	mov	a,r7
      002077 F0               [24]  627 	movx	@dptr,a
      002078 EE               [12]  628 	mov	a,r6
      002079 A3               [24]  629 	inc	dptr
      00207A F0               [24]  630 	movx	@dptr,a
                                    631 ;	main.c:40: }
      00207B 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'putchar'
                                    635 ;------------------------------------------------------------
                                    636 ;ch                        Allocated with name '_putchar_ch_65536_49'
                                    637 ;------------------------------------------------------------
                                    638 ;	main.c:42: int putchar (int ch)
                                    639 ;	-----------------------------------------
                                    640 ;	 function putchar
                                    641 ;	-----------------------------------------
      00207C                        642 _putchar:
      00207C AF 83            [24]  643 	mov	r7,dph
      00207E E5 82            [12]  644 	mov	a,dpl
      002080 90 15 E2         [24]  645 	mov	dptr,#_putchar_ch_65536_49
      002083 F0               [24]  646 	movx	@dptr,a
      002084 EF               [12]  647 	mov	a,r7
      002085 A3               [24]  648 	inc	dptr
      002086 F0               [24]  649 	movx	@dptr,a
                                    650 ;	main.c:44: while (TI==0)
      002087                        651 00101$:
      002087 30 99 FD         [24]  652 	jnb	_TI,00101$
                                    653 ;	main.c:49: SBUF = ch;
      00208A 90 15 E2         [24]  654 	mov	dptr,#_putchar_ch_65536_49
      00208D E0               [24]  655 	movx	a,@dptr
      00208E FE               [12]  656 	mov	r6,a
      00208F A3               [24]  657 	inc	dptr
      002090 E0               [24]  658 	movx	a,@dptr
      002091 FF               [12]  659 	mov	r7,a
      002092 8E 99            [24]  660 	mov	_SBUF,r6
                                    661 ;	main.c:50: TI = 0;
                                    662 ;	assignBit
      002094 C2 99            [12]  663 	clr	_TI
                                    664 ;	main.c:52: return ch;
      002096 8E 82            [24]  665 	mov	dpl,r6
      002098 8F 83            [24]  666 	mov	dph,r7
                                    667 ;	main.c:53: }
      00209A 22               [24]  668 	ret
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'getchar'
                                    671 ;------------------------------------------------------------
                                    672 ;	main.c:55: int getchar (void)
                                    673 ;	-----------------------------------------
                                    674 ;	 function getchar
                                    675 ;	-----------------------------------------
      00209B                        676 _getchar:
                                    677 ;	main.c:57: while (RI==0)
      00209B                        678 00101$:
                                    679 ;	main.c:62: RI = 0;
                                    680 ;	assignBit
      00209B 10 98 02         [24]  681 	jbc	_RI,00114$
      00209E 80 FB            [24]  682 	sjmp	00101$
      0020A0                        683 00114$:
                                    684 ;	main.c:63: return SBUF;
      0020A0 AE 99            [24]  685 	mov	r6,_SBUF
      0020A2 7F 00            [12]  686 	mov	r7,#0x00
      0020A4 8E 82            [24]  687 	mov	dpl,r6
      0020A6 8F 83            [24]  688 	mov	dph,r7
                                    689 ;	main.c:64: }
      0020A8 22               [24]  690 	ret
                                    691 ;------------------------------------------------------------
                                    692 ;Allocation info for local variables in function 'get_input'
                                    693 ;------------------------------------------------------------
                                    694 ;num                       Allocated with name '_get_input_num_65536_56'
                                    695 ;count                     Allocated with name '_get_input_count_65536_56'
                                    696 ;input_arr                 Allocated with name '_get_input_input_arr_65536_56'
                                    697 ;i                         Allocated with name '_get_input_i_131072_61'
                                    698 ;------------------------------------------------------------
                                    699 ;	main.c:66: uint16_t get_input(void)
                                    700 ;	-----------------------------------------
                                    701 ;	 function get_input
                                    702 ;	-----------------------------------------
      0020A9                        703 _get_input:
                                    704 ;	main.c:68: __xdata uint16_t num =0;
      0020A9 90 15 E4         [24]  705 	mov	dptr,#_get_input_num_65536_56
      0020AC E4               [12]  706 	clr	a
      0020AD F0               [24]  707 	movx	@dptr,a
      0020AE A3               [24]  708 	inc	dptr
      0020AF F0               [24]  709 	movx	@dptr,a
                                    710 ;	main.c:69: __xdata uint8_t count = 0;
      0020B0 90 15 E6         [24]  711 	mov	dptr,#_get_input_count_65536_56
      0020B3 F0               [24]  712 	movx	@dptr,a
                                    713 ;	main.c:73: while(input_arr[count] = getchar())
      0020B4                        714 00108$:
      0020B4 90 15 E6         [24]  715 	mov	dptr,#_get_input_count_65536_56
      0020B7 E0               [24]  716 	movx	a,@dptr
      0020B8 FF               [12]  717 	mov	r7,a
      0020B9 24 E7            [12]  718 	add	a,#_get_input_input_arr_65536_56
      0020BB FD               [12]  719 	mov	r5,a
      0020BC E4               [12]  720 	clr	a
      0020BD 34 15            [12]  721 	addc	a,#(_get_input_input_arr_65536_56 >> 8)
      0020BF FE               [12]  722 	mov	r6,a
      0020C0 C0 07            [24]  723 	push	ar7
      0020C2 C0 06            [24]  724 	push	ar6
      0020C4 C0 05            [24]  725 	push	ar5
      0020C6 12 20 9B         [24]  726 	lcall	_getchar
      0020C9 AB 82            [24]  727 	mov	r3,dpl
      0020CB AC 83            [24]  728 	mov	r4,dph
      0020CD D0 05            [24]  729 	pop	ar5
      0020CF D0 06            [24]  730 	pop	ar6
      0020D1 D0 07            [24]  731 	pop	ar7
      0020D3 8D 82            [24]  732 	mov	dpl,r5
      0020D5 8E 83            [24]  733 	mov	dph,r6
      0020D7 EB               [12]  734 	mov	a,r3
      0020D8 F0               [24]  735 	movx	@dptr,a
      0020D9 EB               [12]  736 	mov	a,r3
      0020DA 70 03            [24]  737 	jnz	00150$
      0020DC 02 21 56         [24]  738 	ljmp	00124$
      0020DF                        739 00150$:
                                    740 ;	main.c:75: if(input_arr[count] == 13)
      0020DF 8D 82            [24]  741 	mov	dpl,r5
      0020E1 8E 83            [24]  742 	mov	dph,r6
      0020E3 E0               [24]  743 	movx	a,@dptr
      0020E4 FC               [12]  744 	mov	r4,a
      0020E5 BC 0D 02         [24]  745 	cjne	r4,#0x0d,00151$
      0020E8 80 6C            [24]  746 	sjmp	00124$
      0020EA                        747 00151$:
                                    748 ;	main.c:80: if(input_arr[count]==8)
      0020EA 8D 82            [24]  749 	mov	dpl,r5
      0020EC 8E 83            [24]  750 	mov	dph,r6
      0020EE E0               [24]  751 	movx	a,@dptr
      0020EF FD               [12]  752 	mov	r5,a
      0020F0 BD 08 1C         [24]  753 	cjne	r5,#0x08,00104$
                                    754 ;	main.c:82: putchar(8);
      0020F3 90 00 08         [24]  755 	mov	dptr,#0x0008
      0020F6 C0 07            [24]  756 	push	ar7
      0020F8 12 20 7C         [24]  757 	lcall	_putchar
                                    758 ;	main.c:83: putchar(32);
      0020FB 90 00 20         [24]  759 	mov	dptr,#0x0020
      0020FE 12 20 7C         [24]  760 	lcall	_putchar
                                    761 ;	main.c:84: putchar(8);
      002101 90 00 08         [24]  762 	mov	dptr,#0x0008
      002104 12 20 7C         [24]  763 	lcall	_putchar
      002107 D0 07            [24]  764 	pop	ar7
                                    765 ;	main.c:86: count--;
      002109 EF               [12]  766 	mov	a,r7
      00210A 14               [12]  767 	dec	a
      00210B 90 15 E6         [24]  768 	mov	dptr,#_get_input_count_65536_56
      00210E F0               [24]  769 	movx	@dptr,a
      00210F                        770 00104$:
                                    771 ;	main.c:89: if((input_arr[count] >= '0') && (input_arr[count] <= '9'))
      00210F 90 15 E6         [24]  772 	mov	dptr,#_get_input_count_65536_56
      002112 E0               [24]  773 	movx	a,@dptr
      002113 FF               [12]  774 	mov	r7,a
      002114 24 E7            [12]  775 	add	a,#_get_input_input_arr_65536_56
      002116 FD               [12]  776 	mov	r5,a
      002117 E4               [12]  777 	clr	a
      002118 34 15            [12]  778 	addc	a,#(_get_input_input_arr_65536_56 >> 8)
      00211A FE               [12]  779 	mov	r6,a
      00211B 8D 82            [24]  780 	mov	dpl,r5
      00211D 8E 83            [24]  781 	mov	dph,r6
      00211F E0               [24]  782 	movx	a,@dptr
      002120 FC               [12]  783 	mov	r4,a
      002121 BC 30 00         [24]  784 	cjne	r4,#0x30,00154$
      002124                        785 00154$:
      002124 40 8E            [24]  786 	jc	00108$
      002126 EC               [12]  787 	mov	a,r4
      002127 24 C6            [12]  788 	add	a,#0xff - 0x39
      002129 40 89            [24]  789 	jc	00108$
                                    790 ;	main.c:91: putchar(input_arr[count]);
      00212B 7B 00            [12]  791 	mov	r3,#0x00
      00212D 8C 82            [24]  792 	mov	dpl,r4
      00212F 8B 83            [24]  793 	mov	dph,r3
      002131 C0 07            [24]  794 	push	ar7
      002133 C0 06            [24]  795 	push	ar6
      002135 C0 05            [24]  796 	push	ar5
      002137 12 20 7C         [24]  797 	lcall	_putchar
      00213A D0 05            [24]  798 	pop	ar5
      00213C D0 06            [24]  799 	pop	ar6
      00213E D0 07            [24]  800 	pop	ar7
                                    801 ;	main.c:92: input_arr[count]=input_arr[count]-'0';
      002140 8D 82            [24]  802 	mov	dpl,r5
      002142 8E 83            [24]  803 	mov	dph,r6
      002144 E0               [24]  804 	movx	a,@dptr
      002145 24 D0            [12]  805 	add	a,#0xd0
      002147 FC               [12]  806 	mov	r4,a
      002148 8D 82            [24]  807 	mov	dpl,r5
      00214A 8E 83            [24]  808 	mov	dph,r6
      00214C F0               [24]  809 	movx	@dptr,a
                                    810 ;	main.c:93: count++;
      00214D 90 15 E6         [24]  811 	mov	dptr,#_get_input_count_65536_56
      002150 EF               [12]  812 	mov	a,r7
      002151 04               [12]  813 	inc	a
      002152 F0               [24]  814 	movx	@dptr,a
      002153 02 20 B4         [24]  815 	ljmp	00108$
                                    816 ;	main.c:97: for(int i=0;i<count;i++)
      002156                        817 00124$:
      002156 90 15 E6         [24]  818 	mov	dptr,#_get_input_count_65536_56
      002159 E0               [24]  819 	movx	a,@dptr
      00215A FF               [12]  820 	mov	r7,a
      00215B 7D 00            [12]  821 	mov	r5,#0x00
      00215D 7E 00            [12]  822 	mov	r6,#0x00
      00215F                        823 00113$:
      00215F 8F 03            [24]  824 	mov	ar3,r7
      002161 7C 00            [12]  825 	mov	r4,#0x00
      002163 C3               [12]  826 	clr	c
      002164 ED               [12]  827 	mov	a,r5
      002165 9B               [12]  828 	subb	a,r3
      002166 EE               [12]  829 	mov	a,r6
      002167 64 80            [12]  830 	xrl	a,#0x80
      002169 8C F0            [24]  831 	mov	b,r4
      00216B 63 F0 80         [24]  832 	xrl	b,#0x80
      00216E 95 F0            [12]  833 	subb	a,b
      002170 50 59            [24]  834 	jnc	00111$
                                    835 ;	main.c:99: num = num * 10;
      002172 90 15 E4         [24]  836 	mov	dptr,#_get_input_num_65536_56
      002175 E0               [24]  837 	movx	a,@dptr
      002176 FB               [12]  838 	mov	r3,a
      002177 A3               [24]  839 	inc	dptr
      002178 E0               [24]  840 	movx	a,@dptr
      002179 FC               [12]  841 	mov	r4,a
      00217A 90 16 CC         [24]  842 	mov	dptr,#__mulint_PARM_2
      00217D EB               [12]  843 	mov	a,r3
      00217E F0               [24]  844 	movx	@dptr,a
      00217F EC               [12]  845 	mov	a,r4
      002180 A3               [24]  846 	inc	dptr
      002181 F0               [24]  847 	movx	@dptr,a
      002182 90 00 0A         [24]  848 	mov	dptr,#0x000a
      002185 C0 07            [24]  849 	push	ar7
      002187 C0 06            [24]  850 	push	ar6
      002189 C0 05            [24]  851 	push	ar5
      00218B 12 34 95         [24]  852 	lcall	__mulint
      00218E AB 82            [24]  853 	mov	r3,dpl
      002190 AC 83            [24]  854 	mov	r4,dph
      002192 D0 05            [24]  855 	pop	ar5
      002194 D0 06            [24]  856 	pop	ar6
      002196 D0 07            [24]  857 	pop	ar7
      002198 90 15 E4         [24]  858 	mov	dptr,#_get_input_num_65536_56
      00219B EB               [12]  859 	mov	a,r3
      00219C F0               [24]  860 	movx	@dptr,a
      00219D EC               [12]  861 	mov	a,r4
      00219E A3               [24]  862 	inc	dptr
      00219F F0               [24]  863 	movx	@dptr,a
                                    864 ;	main.c:100: num = num + input_arr[i];
      0021A0 ED               [12]  865 	mov	a,r5
      0021A1 24 E7            [12]  866 	add	a,#_get_input_input_arr_65536_56
      0021A3 F5 82            [12]  867 	mov	dpl,a
      0021A5 EE               [12]  868 	mov	a,r6
      0021A6 34 15            [12]  869 	addc	a,#(_get_input_input_arr_65536_56 >> 8)
      0021A8 F5 83            [12]  870 	mov	dph,a
      0021AA E0               [24]  871 	movx	a,@dptr
      0021AB FC               [12]  872 	mov	r4,a
      0021AC 7B 00            [12]  873 	mov	r3,#0x00
      0021AE 90 15 E4         [24]  874 	mov	dptr,#_get_input_num_65536_56
      0021B1 E0               [24]  875 	movx	a,@dptr
      0021B2 F9               [12]  876 	mov	r1,a
      0021B3 A3               [24]  877 	inc	dptr
      0021B4 E0               [24]  878 	movx	a,@dptr
      0021B5 FA               [12]  879 	mov	r2,a
      0021B6 EC               [12]  880 	mov	a,r4
      0021B7 29               [12]  881 	add	a,r1
      0021B8 F9               [12]  882 	mov	r1,a
      0021B9 EB               [12]  883 	mov	a,r3
      0021BA 3A               [12]  884 	addc	a,r2
      0021BB FA               [12]  885 	mov	r2,a
      0021BC 90 15 E4         [24]  886 	mov	dptr,#_get_input_num_65536_56
      0021BF E9               [12]  887 	mov	a,r1
      0021C0 F0               [24]  888 	movx	@dptr,a
      0021C1 EA               [12]  889 	mov	a,r2
      0021C2 A3               [24]  890 	inc	dptr
      0021C3 F0               [24]  891 	movx	@dptr,a
                                    892 ;	main.c:97: for(int i=0;i<count;i++)
      0021C4 0D               [12]  893 	inc	r5
      0021C5 BD 00 97         [24]  894 	cjne	r5,#0x00,00113$
      0021C8 0E               [12]  895 	inc	r6
      0021C9 80 94            [24]  896 	sjmp	00113$
      0021CB                        897 00111$:
                                    898 ;	main.c:103: return num;
      0021CB 90 15 E4         [24]  899 	mov	dptr,#_get_input_num_65536_56
      0021CE E0               [24]  900 	movx	a,@dptr
      0021CF FE               [12]  901 	mov	r6,a
      0021D0 A3               [24]  902 	inc	dptr
      0021D1 E0               [24]  903 	movx	a,@dptr
                                    904 ;	main.c:104: }
      0021D2 8E 82            [24]  905 	mov	dpl,r6
      0021D4 F5 83            [12]  906 	mov	dph,a
      0021D6 22               [24]  907 	ret
                                    908 ;------------------------------------------------------------
                                    909 ;Allocation info for local variables in function 'get_num1'
                                    910 ;------------------------------------------------------------
                                    911 ;num                       Allocated with name '_get_num1_num_65536_63'
                                    912 ;var                       Allocated with name '_get_num1_var_65536_63'
                                    913 ;------------------------------------------------------------
                                    914 ;	main.c:106: int get_num1()
                                    915 ;	-----------------------------------------
                                    916 ;	 function get_num1
                                    917 ;	-----------------------------------------
      0021D7                        918 _get_num1:
                                    919 ;	main.c:108: int num=0;
      0021D7 90 15 F7         [24]  920 	mov	dptr,#_get_num1_num_65536_63
      0021DA E4               [12]  921 	clr	a
      0021DB F0               [24]  922 	movx	@dptr,a
      0021DC A3               [24]  923 	inc	dptr
      0021DD F0               [24]  924 	movx	@dptr,a
                                    925 ;	main.c:109: int var=0;
      0021DE 90 15 F9         [24]  926 	mov	dptr,#_get_num1_var_65536_63
      0021E1 F0               [24]  927 	movx	@dptr,a
      0021E2 A3               [24]  928 	inc	dptr
      0021E3 F0               [24]  929 	movx	@dptr,a
                                    930 ;	main.c:110: while(var==0)
      0021E4                        931 00108$:
      0021E4 90 15 F9         [24]  932 	mov	dptr,#_get_num1_var_65536_63
      0021E7 E0               [24]  933 	movx	a,@dptr
      0021E8 F5 F0            [12]  934 	mov	b,a
      0021EA A3               [24]  935 	inc	dptr
      0021EB E0               [24]  936 	movx	a,@dptr
      0021EC 45 F0            [12]  937 	orl	a,b
      0021EE 60 03            [24]  938 	jz	00129$
      0021F0 02 22 A2         [24]  939 	ljmp	00110$
      0021F3                        940 00129$:
                                    941 ;	main.c:112: num = get_input();
      0021F3 12 20 A9         [24]  942 	lcall	_get_input
      0021F6 AE 82            [24]  943 	mov	r6,dpl
      0021F8 AF 83            [24]  944 	mov	r7,dph
                                    945 ;	main.c:113: printf_tiny("\n \r The input number is:%d \n \r",num);
      0021FA C0 07            [24]  946 	push	ar7
      0021FC C0 06            [24]  947 	push	ar6
      0021FE C0 06            [24]  948 	push	ar6
      002200 C0 07            [24]  949 	push	ar7
      002202 74 61            [12]  950 	mov	a,#___str_0
      002204 C0 E0            [24]  951 	push	acc
      002206 74 40            [12]  952 	mov	a,#(___str_0 >> 8)
      002208 C0 E0            [24]  953 	push	acc
      00220A 12 31 E7         [24]  954 	lcall	_printf_tiny
      00220D E5 81            [12]  955 	mov	a,sp
      00220F 24 FC            [12]  956 	add	a,#0xfc
      002211 F5 81            [12]  957 	mov	sp,a
      002213 D0 06            [24]  958 	pop	ar6
      002215 D0 07            [24]  959 	pop	ar7
                                    960 ;	main.c:115: if ((num < 32 || num > 4800))
      002217 C3               [12]  961 	clr	c
      002218 EE               [12]  962 	mov	a,r6
      002219 94 20            [12]  963 	subb	a,#0x20
      00221B EF               [12]  964 	mov	a,r7
      00221C 64 80            [12]  965 	xrl	a,#0x80
      00221E 94 80            [12]  966 	subb	a,#0x80
      002220 40 0E            [24]  967 	jc	00104$
      002222 74 C0            [12]  968 	mov	a,#0xc0
      002224 9E               [12]  969 	subb	a,r6
      002225 74 92            [12]  970 	mov	a,#(0x12 ^ 0x80)
      002227 8F F0            [24]  971 	mov	b,r7
      002229 63 F0 80         [24]  972 	xrl	b,#0x80
      00222C 95 F0            [12]  973 	subb	a,b
      00222E 50 1E            [24]  974 	jnc	00105$
      002230                        975 00104$:
                                    976 ;	main.c:117: printf_tiny("Invalid number! Please try again.\n \r");
      002230 74 80            [12]  977 	mov	a,#___str_1
      002232 C0 E0            [24]  978 	push	acc
      002234 74 40            [12]  979 	mov	a,#(___str_1 >> 8)
      002236 C0 E0            [24]  980 	push	acc
      002238 12 31 E7         [24]  981 	lcall	_printf_tiny
      00223B 15 81            [12]  982 	dec	sp
      00223D 15 81            [12]  983 	dec	sp
                                    984 ;	main.c:118: var = 0;
      00223F 90 15 F9         [24]  985 	mov	dptr,#_get_num1_var_65536_63
      002242 E4               [12]  986 	clr	a
      002243 F0               [24]  987 	movx	@dptr,a
      002244 A3               [24]  988 	inc	dptr
      002245 F0               [24]  989 	movx	@dptr,a
                                    990 ;	main.c:119: num=0;
      002246 90 15 F7         [24]  991 	mov	dptr,#_get_num1_num_65536_63
      002249 F0               [24]  992 	movx	@dptr,a
      00224A A3               [24]  993 	inc	dptr
      00224B F0               [24]  994 	movx	@dptr,a
      00224C 80 96            [24]  995 	sjmp	00108$
      00224E                        996 00105$:
                                    997 ;	main.c:121: else if(num % 16 == 0)
      00224E 90 16 CE         [24]  998 	mov	dptr,#__modsint_PARM_2
      002251 74 10            [12]  999 	mov	a,#0x10
      002253 F0               [24] 1000 	movx	@dptr,a
      002254 E4               [12] 1001 	clr	a
      002255 A3               [24] 1002 	inc	dptr
      002256 F0               [24] 1003 	movx	@dptr,a
      002257 8E 82            [24] 1004 	mov	dpl,r6
      002259 8F 83            [24] 1005 	mov	dph,r7
      00225B C0 07            [24] 1006 	push	ar7
      00225D C0 06            [24] 1007 	push	ar6
      00225F 12 34 B5         [24] 1008 	lcall	__modsint
      002262 E5 82            [12] 1009 	mov	a,dpl
      002264 85 83 F0         [24] 1010 	mov	b,dph
      002267 D0 06            [24] 1011 	pop	ar6
      002269 D0 07            [24] 1012 	pop	ar7
      00226B 45 F0            [12] 1013 	orl	a,b
      00226D 70 14            [24] 1014 	jnz	00102$
                                   1015 ;	main.c:123: var = 1;
      00226F 90 15 F9         [24] 1016 	mov	dptr,#_get_num1_var_65536_63
      002272 74 01            [12] 1017 	mov	a,#0x01
      002274 F0               [24] 1018 	movx	@dptr,a
      002275 E4               [12] 1019 	clr	a
      002276 A3               [24] 1020 	inc	dptr
      002277 F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	main.c:124: num=num;
      002278 90 15 F7         [24] 1023 	mov	dptr,#_get_num1_num_65536_63
      00227B EE               [12] 1024 	mov	a,r6
      00227C F0               [24] 1025 	movx	@dptr,a
      00227D EF               [12] 1026 	mov	a,r7
      00227E A3               [24] 1027 	inc	dptr
      00227F F0               [24] 1028 	movx	@dptr,a
      002280 02 21 E4         [24] 1029 	ljmp	00108$
      002283                       1030 00102$:
                                   1031 ;	main.c:128: printf_tiny("Invalid number! Please try again.\n \r");
      002283 74 80            [12] 1032 	mov	a,#___str_1
      002285 C0 E0            [24] 1033 	push	acc
      002287 74 40            [12] 1034 	mov	a,#(___str_1 >> 8)
      002289 C0 E0            [24] 1035 	push	acc
      00228B 12 31 E7         [24] 1036 	lcall	_printf_tiny
      00228E 15 81            [12] 1037 	dec	sp
      002290 15 81            [12] 1038 	dec	sp
                                   1039 ;	main.c:129: num=0;
      002292 90 15 F7         [24] 1040 	mov	dptr,#_get_num1_num_65536_63
      002295 E4               [12] 1041 	clr	a
      002296 F0               [24] 1042 	movx	@dptr,a
      002297 A3               [24] 1043 	inc	dptr
      002298 F0               [24] 1044 	movx	@dptr,a
                                   1045 ;	main.c:130: var=0;
      002299 90 15 F9         [24] 1046 	mov	dptr,#_get_num1_var_65536_63
      00229C F0               [24] 1047 	movx	@dptr,a
      00229D A3               [24] 1048 	inc	dptr
      00229E F0               [24] 1049 	movx	@dptr,a
      00229F 02 21 E4         [24] 1050 	ljmp	00108$
      0022A2                       1051 00110$:
                                   1052 ;	main.c:133: return num;
      0022A2 90 15 F7         [24] 1053 	mov	dptr,#_get_num1_num_65536_63
      0022A5 E0               [24] 1054 	movx	a,@dptr
      0022A6 FE               [12] 1055 	mov	r6,a
      0022A7 A3               [24] 1056 	inc	dptr
      0022A8 E0               [24] 1057 	movx	a,@dptr
                                   1058 ;	main.c:134: }
      0022A9 8E 82            [24] 1059 	mov	dpl,r6
      0022AB F5 83            [12] 1060 	mov	dph,a
      0022AD 22               [24] 1061 	ret
                                   1062 ;------------------------------------------------------------
                                   1063 ;Allocation info for local variables in function 'main'
                                   1064 ;------------------------------------------------------------
                                   1065 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1066 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1067 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                   1068 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                   1069 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                   1070 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                   1071 ;sloc6                     Allocated with name '_main_sloc6_1_0'
                                   1072 ;sloc7                     Allocated with name '_main_sloc7_1_0'
                                   1073 ;sloc8                     Allocated with name '_main_sloc8_1_0'
                                   1074 ;input_symbol              Allocated with name '_main_input_symbol_65536_69'
                                   1075 ;total_symbol              Allocated with name '_main_total_symbol_65536_69'
                                   1076 ;symbol_stored             Allocated with name '_main_symbol_stored_65536_69'
                                   1077 ;counter                   Allocated with name '_main_counter_65536_69'
                                   1078 ;buffer0                   Allocated with name '_main_buffer0_65536_69'
                                   1079 ;buffer1                   Allocated with name '_main_buffer1_65536_69'
                                   1080 ;buffern                   Allocated with name '_main_buffern_65536_69'
                                   1081 ;buffer_size               Allocated with name '_main_buffer_size_65536_69'
                                   1082 ;buffer0_temper            Allocated with name '_main_buffer0_temper_65536_69'
                                   1083 ;buffer1_temper            Allocated with name '_main_buffer1_temper_65536_69'
                                   1084 ;num1                      Allocated with name '_main_num1_65536_69'
                                   1085 ;num2                      Allocated with name '_main_num2_65536_69'
                                   1086 ;deleted                   Allocated with name '_main_deleted_65536_69'
                                   1087 ;i                         Allocated with name '_main_i_65536_69'
                                   1088 ;j                         Allocated with name '_main_j_65536_69'
                                   1089 ;n                         Allocated with name '_main_n_65536_69'
                                   1090 ;buff0_char_count          Allocated with name '_main_buff0_char_count_65536_69'
                                   1091 ;total_buffer              Allocated with name '_main_total_buffer_65536_69'
                                   1092 ;var                       Allocated with name '_main_var_65537_70'
                                   1093 ;index                     Allocated with name '_main_index_262145_100'
                                   1094 ;a                         Allocated with name '_main_a_393217_102'
                                   1095 ;------------------------------------------------------------
                                   1096 ;	main.c:137: void main(void)
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function main
                                   1099 ;	-----------------------------------------
      0022AE                       1100 _main:
                                   1101 ;	main.c:141: unsigned int symbol_stored=0;
      0022AE 90 15 FB         [24] 1102 	mov	dptr,#_main_symbol_stored_65536_69
      0022B1 E4               [12] 1103 	clr	a
      0022B2 F0               [24] 1104 	movx	@dptr,a
      0022B3 A3               [24] 1105 	inc	dptr
      0022B4 F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	main.c:142: unsigned int counter=0;
      0022B5 90 15 FD         [24] 1108 	mov	dptr,#_main_counter_65536_69
      0022B8 F0               [24] 1109 	movx	@dptr,a
      0022B9 A3               [24] 1110 	inc	dptr
      0022BA F0               [24] 1111 	movx	@dptr,a
                                   1112 ;	main.c:162: printf_tiny("\n\r********* HELLO :) ********\n\r");
      0022BB 74 A5            [12] 1113 	mov	a,#___str_2
      0022BD C0 E0            [24] 1114 	push	acc
      0022BF 74 40            [12] 1115 	mov	a,#(___str_2 >> 8)
      0022C1 C0 E0            [24] 1116 	push	acc
      0022C3 12 31 E7         [24] 1117 	lcall	_printf_tiny
      0022C6 15 81            [12] 1118 	dec	sp
      0022C8 15 81            [12] 1119 	dec	sp
                                   1120 ;	main.c:163: printf("\n\rEnter a number between 32 & 4800 for buffer size\n\r");
      0022CA 74 C5            [12] 1121 	mov	a,#___str_3
      0022CC C0 E0            [24] 1122 	push	acc
      0022CE 74 40            [12] 1123 	mov	a,#(___str_3 >> 8)
      0022D0 C0 E0            [24] 1124 	push	acc
      0022D2 74 80            [12] 1125 	mov	a,#0x80
      0022D4 C0 E0            [24] 1126 	push	acc
      0022D6 12 36 17         [24] 1127 	lcall	_printf
      0022D9 15 81            [12] 1128 	dec	sp
      0022DB 15 81            [12] 1129 	dec	sp
      0022DD 15 81            [12] 1130 	dec	sp
                                   1131 ;	main.c:167: do
      0022DF                       1132 00106$:
                                   1133 ;	main.c:169: num1= get_num1();
      0022DF 12 21 D7         [24] 1134 	lcall	_get_num1
                                   1135 ;	main.c:170: if ((buffer0 = malloc(num1)) == 0)
      0022E2 85 82 17         [24] 1136 	mov	_main_sloc8_1_0,dpl
      0022E5 85 83 18         [24] 1137 	mov  (_main_sloc8_1_0 + 1),dph
      0022E8 12 33 2C         [24] 1138 	lcall	_malloc
      0022EB AC 82            [24] 1139 	mov	r4,dpl
      0022ED AD 83            [24] 1140 	mov	r5,dph
      0022EF EC               [12] 1141 	mov	a,r4
      0022F0 4D               [12] 1142 	orl	a,r5
      0022F1 70 17            [24] 1143 	jnz	00102$
                                   1144 ;	main.c:173: printf_tiny("buffer 0 creation is failed\n\r");
      0022F3 C0 05            [24] 1145 	push	ar5
      0022F5 C0 04            [24] 1146 	push	ar4
      0022F7 74 FA            [12] 1147 	mov	a,#___str_4
      0022F9 C0 E0            [24] 1148 	push	acc
      0022FB 74 40            [12] 1149 	mov	a,#(___str_4 >> 8)
      0022FD C0 E0            [24] 1150 	push	acc
      0022FF 12 31 E7         [24] 1151 	lcall	_printf_tiny
      002302 15 81            [12] 1152 	dec	sp
      002304 15 81            [12] 1153 	dec	sp
      002306 D0 04            [24] 1154 	pop	ar4
      002308 D0 05            [24] 1155 	pop	ar5
      00230A                       1156 00102$:
                                   1157 ;	main.c:177: if ((buffer1 = malloc(num1)) == 0)
      00230A 85 17 82         [24] 1158 	mov	dpl,_main_sloc8_1_0
      00230D 85 18 83         [24] 1159 	mov	dph,(_main_sloc8_1_0 + 1)
      002310 C0 05            [24] 1160 	push	ar5
      002312 C0 04            [24] 1161 	push	ar4
      002314 12 33 2C         [24] 1162 	lcall	_malloc
      002317 AA 82            [24] 1163 	mov	r2,dpl
      002319 AB 83            [24] 1164 	mov	r3,dph
      00231B D0 04            [24] 1165 	pop	ar4
      00231D D0 05            [24] 1166 	pop	ar5
      00231F 90 15 FF         [24] 1167 	mov	dptr,#_main_buffer1_65536_69
      002322 EA               [12] 1168 	mov	a,r2
      002323 F0               [24] 1169 	movx	@dptr,a
      002324 EB               [12] 1170 	mov	a,r3
      002325 A3               [24] 1171 	inc	dptr
      002326 F0               [24] 1172 	movx	@dptr,a
      002327 EA               [12] 1173 	mov	a,r2
      002328 4B               [12] 1174 	orl	a,r3
      002329 70 3E            [24] 1175 	jnz	00107$
                                   1176 ;	main.c:179: printf_tiny("buffer 1 creation is failed\n\r");
      00232B C0 05            [24] 1177 	push	ar5
      00232D C0 04            [24] 1178 	push	ar4
      00232F C0 03            [24] 1179 	push	ar3
      002331 C0 02            [24] 1180 	push	ar2
      002333 74 18            [12] 1181 	mov	a,#___str_5
      002335 C0 E0            [24] 1182 	push	acc
      002337 74 41            [12] 1183 	mov	a,#(___str_5 >> 8)
      002339 C0 E0            [24] 1184 	push	acc
      00233B 12 31 E7         [24] 1185 	lcall	_printf_tiny
      00233E 15 81            [12] 1186 	dec	sp
      002340 15 81            [12] 1187 	dec	sp
      002342 D0 02            [24] 1188 	pop	ar2
      002344 D0 03            [24] 1189 	pop	ar3
      002346 D0 04            [24] 1190 	pop	ar4
      002348 D0 05            [24] 1191 	pop	ar5
                                   1192 ;	main.c:181: free (buffer0);
      00234A 8C 00            [24] 1193 	mov	ar0,r4
      00234C 8D 01            [24] 1194 	mov	ar1,r5
      00234E 7F 00            [12] 1195 	mov	r7,#0x00
      002350 88 82            [24] 1196 	mov	dpl,r0
      002352 89 83            [24] 1197 	mov	dph,r1
      002354 8F F0            [24] 1198 	mov	b,r7
      002356 C0 05            [24] 1199 	push	ar5
      002358 C0 04            [24] 1200 	push	ar4
      00235A C0 03            [24] 1201 	push	ar3
      00235C C0 02            [24] 1202 	push	ar2
      00235E 12 30 90         [24] 1203 	lcall	_free
      002361 D0 02            [24] 1204 	pop	ar2
      002363 D0 03            [24] 1205 	pop	ar3
      002365 D0 04            [24] 1206 	pop	ar4
      002367 D0 05            [24] 1207 	pop	ar5
                                   1208 ;	main.c:399: counter=0;
                                   1209 ;	main.c:182: continue;
      002369                       1210 00107$:
                                   1211 ;	main.c:185: } while ((buffer0 == 0) || (buffer1 == 0));
      002369 EC               [12] 1212 	mov	a,r4
      00236A 4D               [12] 1213 	orl	a,r5
      00236B 70 03            [24] 1214 	jnz	00353$
      00236D 02 22 DF         [24] 1215 	ljmp	00106$
      002370                       1216 00353$:
      002370 EA               [12] 1217 	mov	a,r2
      002371 4B               [12] 1218 	orl	a,r3
      002372 70 03            [24] 1219 	jnz	00354$
      002374 02 22 DF         [24] 1220 	ljmp	00106$
      002377                       1221 00354$:
                                   1222 ;	main.c:187: buffer0_temper = (uint16_t)buffer0;
      002377 8C 00            [24] 1223 	mov	ar0,r4
      002379 8D 01            [24] 1224 	mov	ar1,r5
      00237B 88 15            [24] 1225 	mov	_main_sloc7_1_0,r0
      00237D 89 16            [24] 1226 	mov	(_main_sloc7_1_0 + 1),r1
                                   1227 ;	main.c:188: buffer1_temper = (uint16_t)buffer1;
                                   1228 ;	main.c:189: printf_tiny("Start Address of buffer0 = 0x%x\n\r",buffer0_temper);
      00237F C0 05            [24] 1229 	push	ar5
      002381 C0 04            [24] 1230 	push	ar4
      002383 C0 03            [24] 1231 	push	ar3
      002385 C0 02            [24] 1232 	push	ar2
      002387 C0 15            [24] 1233 	push	_main_sloc7_1_0
      002389 C0 16            [24] 1234 	push	(_main_sloc7_1_0 + 1)
      00238B 74 36            [12] 1235 	mov	a,#___str_6
      00238D C0 E0            [24] 1236 	push	acc
      00238F 74 41            [12] 1237 	mov	a,#(___str_6 >> 8)
      002391 C0 E0            [24] 1238 	push	acc
      002393 12 31 E7         [24] 1239 	lcall	_printf_tiny
      002396 E5 81            [12] 1240 	mov	a,sp
      002398 24 FC            [12] 1241 	add	a,#0xfc
      00239A F5 81            [12] 1242 	mov	sp,a
      00239C D0 02            [24] 1243 	pop	ar2
      00239E D0 03            [24] 1244 	pop	ar3
                                   1245 ;	main.c:190: printf_tiny("Start Address of buffer1 = 0x%x\n\r",buffer1_temper);
      0023A0 C0 03            [24] 1246 	push	ar3
      0023A2 C0 02            [24] 1247 	push	ar2
      0023A4 C0 02            [24] 1248 	push	ar2
      0023A6 C0 03            [24] 1249 	push	ar3
      0023A8 74 58            [12] 1250 	mov	a,#___str_7
      0023AA C0 E0            [24] 1251 	push	acc
      0023AC 74 41            [12] 1252 	mov	a,#(___str_7 >> 8)
      0023AE C0 E0            [24] 1253 	push	acc
      0023B0 12 31 E7         [24] 1254 	lcall	_printf_tiny
      0023B3 E5 81            [12] 1255 	mov	a,sp
      0023B5 24 FC            [12] 1256 	add	a,#0xfc
      0023B7 F5 81            [12] 1257 	mov	sp,a
                                   1258 ;	main.c:191: printf_tiny("Buffer_0 and Buffer_1 successfully created\n\r");
      0023B9 74 7A            [12] 1259 	mov	a,#___str_8
      0023BB C0 E0            [24] 1260 	push	acc
      0023BD 74 41            [12] 1261 	mov	a,#(___str_8 >> 8)
      0023BF C0 E0            [24] 1262 	push	acc
      0023C1 12 31 E7         [24] 1263 	lcall	_printf_tiny
      0023C4 15 81            [12] 1264 	dec	sp
      0023C6 15 81            [12] 1265 	dec	sp
                                   1266 ;	main.c:192: printf_tiny("\n\r OPTIONS TO CHOOSE \n\r");
      0023C8 74 A7            [12] 1267 	mov	a,#___str_9
      0023CA C0 E0            [24] 1268 	push	acc
      0023CC 74 41            [12] 1269 	mov	a,#(___str_9 >> 8)
      0023CE C0 E0            [24] 1270 	push	acc
      0023D0 12 31 E7         [24] 1271 	lcall	_printf_tiny
      0023D3 15 81            [12] 1272 	dec	sp
      0023D5 15 81            [12] 1273 	dec	sp
                                   1274 ;	main.c:193: printf_tiny("You can enter characters to be stored in buffer 0\n\r");
      0023D7 74 BF            [12] 1275 	mov	a,#___str_10
      0023D9 C0 E0            [24] 1276 	push	acc
      0023DB 74 41            [12] 1277 	mov	a,#(___str_10 >> 8)
      0023DD C0 E0            [24] 1278 	push	acc
      0023DF 12 31 E7         [24] 1279 	lcall	_printf_tiny
      0023E2 15 81            [12] 1280 	dec	sp
      0023E4 15 81            [12] 1281 	dec	sp
                                   1282 ;	main.c:194: printf_tiny("Enter + to create a new buffer of size between 20 and 400 bytes\n\r");
      0023E6 74 F3            [12] 1283 	mov	a,#___str_11
      0023E8 C0 E0            [24] 1284 	push	acc
      0023EA 74 41            [12] 1285 	mov	a,#(___str_11 >> 8)
      0023EC C0 E0            [24] 1286 	push	acc
      0023EE 12 31 E7         [24] 1287 	lcall	_printf_tiny
      0023F1 15 81            [12] 1288 	dec	sp
      0023F3 15 81            [12] 1289 	dec	sp
                                   1290 ;	main.c:195: printf_tiny("Enter - to delete a buffer.\n\r");
      0023F5 74 35            [12] 1291 	mov	a,#___str_12
      0023F7 C0 E0            [24] 1292 	push	acc
      0023F9 74 42            [12] 1293 	mov	a,#(___str_12 >> 8)
      0023FB C0 E0            [24] 1294 	push	acc
      0023FD 12 31 E7         [24] 1295 	lcall	_printf_tiny
      002400 15 81            [12] 1296 	dec	sp
      002402 15 81            [12] 1297 	dec	sp
                                   1298 ;	main.c:196: printf_tiny("Enter ? to generate a heap report.\n\r");
      002404 74 53            [12] 1299 	mov	a,#___str_13
      002406 C0 E0            [24] 1300 	push	acc
      002408 74 42            [12] 1301 	mov	a,#(___str_13 >> 8)
      00240A C0 E0            [24] 1302 	push	acc
      00240C 12 31 E7         [24] 1303 	lcall	_printf_tiny
      00240F 15 81            [12] 1304 	dec	sp
      002411 15 81            [12] 1305 	dec	sp
                                   1306 ;	main.c:197: printf_tiny("Enter = to display current contents of buffer 0.\n\r");
      002413 74 78            [12] 1307 	mov	a,#___str_14
      002415 C0 E0            [24] 1308 	push	acc
      002417 74 42            [12] 1309 	mov	a,#(___str_14 >> 8)
      002419 C0 E0            [24] 1310 	push	acc
      00241B 12 31 E7         [24] 1311 	lcall	_printf_tiny
      00241E 15 81            [12] 1312 	dec	sp
      002420 15 81            [12] 1313 	dec	sp
                                   1314 ;	main.c:198: printf_tiny("Enter @ to free all buffers and start program again.\n\r");
      002422 74 AB            [12] 1315 	mov	a,#___str_15
      002424 C0 E0            [24] 1316 	push	acc
      002426 74 42            [12] 1317 	mov	a,#(___str_15 >> 8)
      002428 C0 E0            [24] 1318 	push	acc
      00242A 12 31 E7         [24] 1319 	lcall	_printf_tiny
      00242D 15 81            [12] 1320 	dec	sp
      00242F 15 81            [12] 1321 	dec	sp
                                   1322 ;	main.c:199: printf_tiny("\n\r****************************THANK YOU****************************\n\r");
      002431 74 E2            [12] 1323 	mov	a,#___str_16
      002433 C0 E0            [24] 1324 	push	acc
      002435 74 42            [12] 1325 	mov	a,#(___str_16 >> 8)
      002437 C0 E0            [24] 1326 	push	acc
      002439 12 31 E7         [24] 1327 	lcall	_printf_tiny
      00243C 15 81            [12] 1328 	dec	sp
      00243E 15 81            [12] 1329 	dec	sp
      002440 D0 02            [24] 1330 	pop	ar2
      002442 D0 03            [24] 1331 	pop	ar3
      002444 D0 04            [24] 1332 	pop	ar4
      002446 D0 05            [24] 1333 	pop	ar5
                                   1334 ;	main.c:202: while (1)
      002448 E4               [12] 1335 	clr	a
      002449 F5 08            [12] 1336 	mov	_main_sloc0_1_0,a
      00244B F5 09            [12] 1337 	mov	(_main_sloc0_1_0 + 1),a
      00244D 75 0A 02         [24] 1338 	mov	_main_sloc1_1_0,#0x02
                                   1339 ;	1-genFromRTrack replaced	mov	(_main_sloc1_1_0 + 1),#0x00
      002450 F5 0B            [12] 1340 	mov	(_main_sloc1_1_0 + 1),a
      002452 F5 0C            [12] 1341 	mov	_main_sloc2_1_0,a
      002454 F5 0D            [12] 1342 	mov	(_main_sloc2_1_0 + 1),a
      002456                       1343 00172$:
                                   1344 ;	main.c:204: input_symbol = getchar();
      002456 C0 02            [24] 1345 	push	ar2
      002458 C0 03            [24] 1346 	push	ar3
      00245A C0 05            [24] 1347 	push	ar5
      00245C C0 04            [24] 1348 	push	ar4
      00245E 12 20 9B         [24] 1349 	lcall	_getchar
      002461 AA 82            [24] 1350 	mov	r2,dpl
      002463 AB 83            [24] 1351 	mov	r3,dph
      002465 D0 04            [24] 1352 	pop	ar4
      002467 D0 05            [24] 1353 	pop	ar5
      002469 8A 0E            [24] 1354 	mov	_main_sloc3_1_0,r2
                                   1355 ;	main.c:205: total_symbol++;
      00246B 05 08            [12] 1356 	inc	_main_sloc0_1_0
      00246D E4               [12] 1357 	clr	a
      00246E B5 08 02         [24] 1358 	cjne	a,_main_sloc0_1_0,00355$
      002471 05 09            [12] 1359 	inc	(_main_sloc0_1_0 + 1)
      002473                       1360 00355$:
                                   1361 ;	main.c:206: putchar(input_symbol);
      002473 85 0E 0F         [24] 1362 	mov	_main_sloc4_1_0,_main_sloc3_1_0
      002476 75 10 00         [24] 1363 	mov	(_main_sloc4_1_0 + 1),#0x00
      002479 85 0F 82         [24] 1364 	mov	dpl,_main_sloc4_1_0
      00247C 85 10 83         [24] 1365 	mov	dph,(_main_sloc4_1_0 + 1)
      00247F C0 05            [24] 1366 	push	ar5
      002481 C0 04            [24] 1367 	push	ar4
      002483 C0 03            [24] 1368 	push	ar3
      002485 C0 02            [24] 1369 	push	ar2
      002487 12 20 7C         [24] 1370 	lcall	_putchar
                                   1371 ;	main.c:207: printf_tiny("\n\r");
      00248A 74 28            [12] 1372 	mov	a,#___str_17
      00248C C0 E0            [24] 1373 	push	acc
      00248E 74 43            [12] 1374 	mov	a,#(___str_17 >> 8)
      002490 C0 E0            [24] 1375 	push	acc
      002492 12 31 E7         [24] 1376 	lcall	_printf_tiny
      002495 15 81            [12] 1377 	dec	sp
      002497 15 81            [12] 1378 	dec	sp
      002499 D0 02            [24] 1379 	pop	ar2
      00249B D0 03            [24] 1380 	pop	ar3
      00249D D0 04            [24] 1381 	pop	ar4
      00249F D0 05            [24] 1382 	pop	ar5
                                   1383 ;	main.c:209: if(((input_symbol)>='A') && (((input_symbol)<='Z') && (counter<num1)))
      0024A1 C3               [12] 1384 	clr	c
      0024A2 E5 0E            [12] 1385 	mov	a,_main_sloc3_1_0
      0024A4 94 41            [12] 1386 	subb	a,#0x41
      0024A6 D0 03            [24] 1387 	pop	ar3
      0024A8 D0 02            [24] 1388 	pop	ar2
      0024AA 40 64            [24] 1389 	jc	00167$
      0024AC E5 0E            [12] 1390 	mov	a,_main_sloc3_1_0
      0024AE 24 A5            [12] 1391 	add	a,#0xff - 0x5a
      0024B0 40 5E            [24] 1392 	jc	00167$
      0024B2 C0 02            [24] 1393 	push	ar2
      0024B4 C0 03            [24] 1394 	push	ar3
      0024B6 90 15 FD         [24] 1395 	mov	dptr,#_main_counter_65536_69
      0024B9 E0               [24] 1396 	movx	a,@dptr
      0024BA F5 11            [12] 1397 	mov	_main_sloc5_1_0,a
      0024BC A3               [24] 1398 	inc	dptr
      0024BD E0               [24] 1399 	movx	a,@dptr
      0024BE F5 12            [12] 1400 	mov	(_main_sloc5_1_0 + 1),a
      0024C0 AA 17            [24] 1401 	mov	r2,_main_sloc8_1_0
      0024C2 AB 18            [24] 1402 	mov	r3,(_main_sloc8_1_0 + 1)
      0024C4 C3               [12] 1403 	clr	c
      0024C5 E5 11            [12] 1404 	mov	a,_main_sloc5_1_0
      0024C7 9A               [12] 1405 	subb	a,r2
      0024C8 E5 12            [12] 1406 	mov	a,(_main_sloc5_1_0 + 1)
      0024CA 9B               [12] 1407 	subb	a,r3
      0024CB D0 03            [24] 1408 	pop	ar3
      0024CD D0 02            [24] 1409 	pop	ar2
      0024CF 50 3F            [24] 1410 	jnc	00167$
                                   1411 ;	main.c:211: DEBUGPORT(0);
      0024D1 75 82 00         [24] 1412 	mov	dpl,#0x00
      0024D4 C0 05            [24] 1413 	push	ar5
      0024D6 C0 04            [24] 1414 	push	ar4
      0024D8 C0 03            [24] 1415 	push	ar3
      0024DA C0 02            [24] 1416 	push	ar2
      0024DC 12 20 69         [24] 1417 	lcall	_dataout
      0024DF D0 02            [24] 1418 	pop	ar2
      0024E1 D0 03            [24] 1419 	pop	ar3
      0024E3 D0 04            [24] 1420 	pop	ar4
      0024E5 D0 05            [24] 1421 	pop	ar5
                                   1422 ;	main.c:212: symbol_stored++;
      0024E7 90 15 FB         [24] 1423 	mov	dptr,#_main_symbol_stored_65536_69
      0024EA E0               [24] 1424 	movx	a,@dptr
      0024EB 24 01            [12] 1425 	add	a,#0x01
      0024ED F0               [24] 1426 	movx	@dptr,a
      0024EE A3               [24] 1427 	inc	dptr
      0024EF E0               [24] 1428 	movx	a,@dptr
      0024F0 34 00            [12] 1429 	addc	a,#0x00
      0024F2 F0               [24] 1430 	movx	@dptr,a
                                   1431 ;	main.c:213: *((buffer0)+counter)=input_symbol;
      0024F3 E5 11            [12] 1432 	mov	a,_main_sloc5_1_0
      0024F5 2C               [12] 1433 	add	a,r4
      0024F6 F5 82            [12] 1434 	mov	dpl,a
      0024F8 E5 12            [12] 1435 	mov	a,(_main_sloc5_1_0 + 1)
      0024FA 3D               [12] 1436 	addc	a,r5
      0024FB F5 83            [12] 1437 	mov	dph,a
      0024FD E5 0E            [12] 1438 	mov	a,_main_sloc3_1_0
      0024FF F0               [24] 1439 	movx	@dptr,a
                                   1440 ;	main.c:214: counter++;
      002500 90 15 FD         [24] 1441 	mov	dptr,#_main_counter_65536_69
      002503 74 01            [12] 1442 	mov	a,#0x01
      002505 25 11            [12] 1443 	add	a,_main_sloc5_1_0
      002507 F0               [24] 1444 	movx	@dptr,a
      002508 E4               [12] 1445 	clr	a
      002509 35 12            [12] 1446 	addc	a,(_main_sloc5_1_0 + 1)
      00250B A3               [24] 1447 	inc	dptr
      00250C F0               [24] 1448 	movx	@dptr,a
      00250D 02 24 56         [24] 1449 	ljmp	00172$
      002510                       1450 00167$:
                                   1451 ;	main.c:218: else if ((counter == num1) && (input_symbol != '+') && (input_symbol != '-') && (input_symbol != '?') && (input_symbol != '=') && (input_symbol != '@'))
      002510 C0 02            [24] 1452 	push	ar2
      002512 C0 03            [24] 1453 	push	ar3
      002514 90 15 FD         [24] 1454 	mov	dptr,#_main_counter_65536_69
      002517 E0               [24] 1455 	movx	a,@dptr
      002518 FA               [12] 1456 	mov	r2,a
      002519 A3               [24] 1457 	inc	dptr
      00251A E0               [24] 1458 	movx	a,@dptr
      00251B FB               [12] 1459 	mov	r3,a
      00251C 85 17 11         [24] 1460 	mov	_main_sloc5_1_0,_main_sloc8_1_0
      00251F 85 18 12         [24] 1461 	mov	(_main_sloc5_1_0 + 1),(_main_sloc8_1_0 + 1)
      002522 EA               [12] 1462 	mov	a,r2
      002523 B5 11 06         [24] 1463 	cjne	a,_main_sloc5_1_0,00359$
      002526 EB               [12] 1464 	mov	a,r3
      002527 B5 12 02         [24] 1465 	cjne	a,(_main_sloc5_1_0 + 1),00359$
      00252A 80 06            [24] 1466 	sjmp	00360$
      00252C                       1467 00359$:
      00252C D0 03            [24] 1468 	pop	ar3
      00252E D0 02            [24] 1469 	pop	ar2
      002530 80 52            [24] 1470 	sjmp	00159$
      002532                       1471 00360$:
      002532 D0 03            [24] 1472 	pop	ar3
      002534 D0 02            [24] 1473 	pop	ar2
      002536 74 2B            [12] 1474 	mov	a,#0x2b
      002538 B5 0E 02         [24] 1475 	cjne	a,_main_sloc3_1_0,00361$
      00253B 80 47            [24] 1476 	sjmp	00159$
      00253D                       1477 00361$:
      00253D 74 2D            [12] 1478 	mov	a,#0x2d
      00253F B5 0E 02         [24] 1479 	cjne	a,_main_sloc3_1_0,00362$
      002542 80 40            [24] 1480 	sjmp	00159$
      002544                       1481 00362$:
      002544 74 3F            [12] 1482 	mov	a,#0x3f
      002546 B5 0E 02         [24] 1483 	cjne	a,_main_sloc3_1_0,00363$
      002549 80 39            [24] 1484 	sjmp	00159$
      00254B                       1485 00363$:
      00254B 74 3D            [12] 1486 	mov	a,#0x3d
      00254D B5 0E 02         [24] 1487 	cjne	a,_main_sloc3_1_0,00364$
      002550 80 32            [24] 1488 	sjmp	00159$
      002552                       1489 00364$:
      002552 74 40            [12] 1490 	mov	a,#0x40
      002554 B5 0E 02         [24] 1491 	cjne	a,_main_sloc3_1_0,00365$
      002557 80 2B            [24] 1492 	sjmp	00159$
      002559                       1493 00365$:
                                   1494 ;	main.c:220: putchar(input_symbol);
      002559 85 0F 82         [24] 1495 	mov	dpl,_main_sloc4_1_0
      00255C 85 10 83         [24] 1496 	mov	dph,(_main_sloc4_1_0 + 1)
      00255F C0 05            [24] 1497 	push	ar5
      002561 C0 04            [24] 1498 	push	ar4
      002563 C0 03            [24] 1499 	push	ar3
      002565 C0 02            [24] 1500 	push	ar2
      002567 12 20 7C         [24] 1501 	lcall	_putchar
                                   1502 ;	main.c:221: printf_tiny("\n\rbuffer 0 is full.\n\r");
      00256A 74 2B            [12] 1503 	mov	a,#___str_18
      00256C C0 E0            [24] 1504 	push	acc
      00256E 74 43            [12] 1505 	mov	a,#(___str_18 >> 8)
      002570 C0 E0            [24] 1506 	push	acc
      002572 12 31 E7         [24] 1507 	lcall	_printf_tiny
      002575 15 81            [12] 1508 	dec	sp
      002577 15 81            [12] 1509 	dec	sp
      002579 D0 02            [24] 1510 	pop	ar2
      00257B D0 03            [24] 1511 	pop	ar3
      00257D D0 04            [24] 1512 	pop	ar4
      00257F D0 05            [24] 1513 	pop	ar5
      002581 02 24 56         [24] 1514 	ljmp	00172$
      002584                       1515 00159$:
                                   1516 ;	main.c:223: else if(input_symbol == '+')
      002584 74 2B            [12] 1517 	mov	a,#0x2b
      002586 B5 0E 02         [24] 1518 	cjne	a,_main_sloc3_1_0,00366$
      002589 80 03            [24] 1519 	sjmp	00367$
      00258B                       1520 00366$:
      00258B 02 27 60         [24] 1521 	ljmp	00156$
      00258E                       1522 00367$:
                                   1523 ;	main.c:225: DEBUGPORT(1);
      00258E C0 02            [24] 1524 	push	ar2
      002590 C0 03            [24] 1525 	push	ar3
      002592 75 82 01         [24] 1526 	mov	dpl,#0x01
      002595 C0 05            [24] 1527 	push	ar5
      002597 C0 04            [24] 1528 	push	ar4
      002599 C0 03            [24] 1529 	push	ar3
      00259B C0 02            [24] 1530 	push	ar2
      00259D 12 20 69         [24] 1531 	lcall	_dataout
                                   1532 ;	main.c:226: printf_tiny("\n\r Creates a new buffer \n\r");
      0025A0 74 41            [12] 1533 	mov	a,#___str_19
      0025A2 C0 E0            [24] 1534 	push	acc
      0025A4 74 43            [12] 1535 	mov	a,#(___str_19 >> 8)
      0025A6 C0 E0            [24] 1536 	push	acc
      0025A8 12 31 E7         [24] 1537 	lcall	_printf_tiny
      0025AB 15 81            [12] 1538 	dec	sp
      0025AD 15 81            [12] 1539 	dec	sp
                                   1540 ;	main.c:227: printf_tiny("\n\rEnter the new buffer size between 20 and 400\n\r");
      0025AF 74 5C            [12] 1541 	mov	a,#___str_20
      0025B1 C0 E0            [24] 1542 	push	acc
      0025B3 74 43            [12] 1543 	mov	a,#(___str_20 >> 8)
      0025B5 C0 E0            [24] 1544 	push	acc
      0025B7 12 31 E7         [24] 1545 	lcall	_printf_tiny
      0025BA 15 81            [12] 1546 	dec	sp
      0025BC 15 81            [12] 1547 	dec	sp
      0025BE D0 02            [24] 1548 	pop	ar2
      0025C0 D0 03            [24] 1549 	pop	ar3
                                   1550 ;	main.c:229: num2=get_input();
      0025C2 12 20 A9         [24] 1551 	lcall	_get_input
      0025C5 AA 82            [24] 1552 	mov	r2,dpl
      0025C7 AB 83            [24] 1553 	mov	r3,dph
      0025C9 D0 04            [24] 1554 	pop	ar4
      0025CB D0 05            [24] 1555 	pop	ar5
      0025CD 8A 0F            [24] 1556 	mov	_main_sloc4_1_0,r2
      0025CF 8B 10            [24] 1557 	mov	(_main_sloc4_1_0 + 1),r3
      0025D1 90 16 B9         [24] 1558 	mov	dptr,#_main_num2_65536_69
      0025D4 E5 0F            [12] 1559 	mov	a,_main_sloc4_1_0
      0025D6 F0               [24] 1560 	movx	@dptr,a
      0025D7 E5 10            [12] 1561 	mov	a,(_main_sloc4_1_0 + 1)
      0025D9 A3               [24] 1562 	inc	dptr
      0025DA F0               [24] 1563 	movx	@dptr,a
                                   1564 ;	main.c:232: if (num2 < 20 || num2 > 400)
      0025DB C3               [12] 1565 	clr	c
      0025DC E5 0F            [12] 1566 	mov	a,_main_sloc4_1_0
      0025DE 94 14            [12] 1567 	subb	a,#0x14
      0025E0 E5 10            [12] 1568 	mov	a,(_main_sloc4_1_0 + 1)
      0025E2 64 80            [12] 1569 	xrl	a,#0x80
      0025E4 94 80            [12] 1570 	subb	a,#0x80
      0025E6 D0 03            [24] 1571 	pop	ar3
      0025E8 D0 02            [24] 1572 	pop	ar2
      0025EA 40 10            [24] 1573 	jc	00109$
      0025EC 74 90            [12] 1574 	mov	a,#0x90
      0025EE 95 0F            [12] 1575 	subb	a,_main_sloc4_1_0
      0025F0 74 81            [12] 1576 	mov	a,#(0x01 ^ 0x80)
      0025F2 85 10 F0         [24] 1577 	mov	b,(_main_sloc4_1_0 + 1)
      0025F5 63 F0 80         [24] 1578 	xrl	b,#0x80
      0025F8 95 F0            [12] 1579 	subb	a,b
      0025FA 50 07            [24] 1580 	jnc	00110$
      0025FC                       1581 00109$:
                                   1582 ;	main.c:235: num2 = 0;
      0025FC 90 16 B9         [24] 1583 	mov	dptr,#_main_num2_65536_69
      0025FF E4               [12] 1584 	clr	a
      002600 F0               [24] 1585 	movx	@dptr,a
      002601 A3               [24] 1586 	inc	dptr
      002602 F0               [24] 1587 	movx	@dptr,a
      002603                       1588 00110$:
                                   1589 ;	main.c:239: buffern[i] = malloc(num2);
      002603 C0 02            [24] 1590 	push	ar2
      002605 C0 03            [24] 1591 	push	ar3
      002607 E5 0C            [12] 1592 	mov	a,_main_sloc2_1_0
      002609 25 0C            [12] 1593 	add	a,_main_sloc2_1_0
      00260B FA               [12] 1594 	mov	r2,a
      00260C E5 0D            [12] 1595 	mov	a,(_main_sloc2_1_0 + 1)
      00260E 33               [12] 1596 	rlc	a
      00260F FB               [12] 1597 	mov	r3,a
      002610 EA               [12] 1598 	mov	a,r2
      002611 24 01            [12] 1599 	add	a,#_main_buffern_65536_69
      002613 F5 13            [12] 1600 	mov	_main_sloc6_1_0,a
      002615 EB               [12] 1601 	mov	a,r3
      002616 34 16            [12] 1602 	addc	a,#(_main_buffern_65536_69 >> 8)
      002618 F5 14            [12] 1603 	mov	(_main_sloc6_1_0 + 1),a
      00261A 90 16 B9         [24] 1604 	mov	dptr,#_main_num2_65536_69
      00261D E0               [24] 1605 	movx	a,@dptr
      00261E F5 0F            [12] 1606 	mov	_main_sloc4_1_0,a
      002620 A3               [24] 1607 	inc	dptr
      002621 E0               [24] 1608 	movx	a,@dptr
      002622 F5 10            [12] 1609 	mov	(_main_sloc4_1_0 + 1),a
      002624 85 0F 82         [24] 1610 	mov	dpl,_main_sloc4_1_0
      002627 85 10 83         [24] 1611 	mov	dph,(_main_sloc4_1_0 + 1)
      00262A C0 05            [24] 1612 	push	ar5
      00262C C0 04            [24] 1613 	push	ar4
      00262E 12 33 2C         [24] 1614 	lcall	_malloc
      002631 AA 82            [24] 1615 	mov	r2,dpl
      002633 AB 83            [24] 1616 	mov	r3,dph
      002635 D0 04            [24] 1617 	pop	ar4
      002637 D0 05            [24] 1618 	pop	ar5
      002639 85 13 82         [24] 1619 	mov	dpl,_main_sloc6_1_0
      00263C 85 14 83         [24] 1620 	mov	dph,(_main_sloc6_1_0 + 1)
      00263F EA               [12] 1621 	mov	a,r2
      002640 F0               [24] 1622 	movx	@dptr,a
      002641 EB               [12] 1623 	mov	a,r3
      002642 A3               [24] 1624 	inc	dptr
      002643 F0               [24] 1625 	movx	@dptr,a
                                   1626 ;	main.c:242: if (buffern[i] == NULL)
      002644 EA               [12] 1627 	mov	a,r2
      002645 4B               [12] 1628 	orl	a,r3
      002646 D0 03            [24] 1629 	pop	ar3
      002648 D0 02            [24] 1630 	pop	ar2
      00264A 70 39            [24] 1631 	jnz	00113$
                                   1632 ;	main.c:245: printf_tiny("\n\rMemory Allocation for Buffer_%d Failed\n\rPress '+' to Try again\n\r", i+2);
      00264C C0 02            [24] 1633 	push	ar2
      00264E C0 03            [24] 1634 	push	ar3
      002650 74 02            [12] 1635 	mov	a,#0x02
      002652 25 0C            [12] 1636 	add	a,_main_sloc2_1_0
      002654 FA               [12] 1637 	mov	r2,a
      002655 E4               [12] 1638 	clr	a
      002656 35 0D            [12] 1639 	addc	a,(_main_sloc2_1_0 + 1)
      002658 FB               [12] 1640 	mov	r3,a
      002659 C0 05            [24] 1641 	push	ar5
      00265B C0 04            [24] 1642 	push	ar4
      00265D C0 03            [24] 1643 	push	ar3
      00265F C0 02            [24] 1644 	push	ar2
      002661 C0 02            [24] 1645 	push	ar2
      002663 C0 03            [24] 1646 	push	ar3
      002665 74 8D            [12] 1647 	mov	a,#___str_21
      002667 C0 E0            [24] 1648 	push	acc
      002669 74 43            [12] 1649 	mov	a,#(___str_21 >> 8)
      00266B C0 E0            [24] 1650 	push	acc
      00266D 12 31 E7         [24] 1651 	lcall	_printf_tiny
      002670 E5 81            [12] 1652 	mov	a,sp
      002672 24 FC            [12] 1653 	add	a,#0xfc
      002674 F5 81            [12] 1654 	mov	sp,a
      002676 D0 02            [24] 1655 	pop	ar2
      002678 D0 03            [24] 1656 	pop	ar3
      00267A D0 04            [24] 1657 	pop	ar4
      00267C D0 05            [24] 1658 	pop	ar5
      00267E D0 03            [24] 1659 	pop	ar3
      002680 D0 02            [24] 1660 	pop	ar2
      002682 02 24 56         [24] 1661 	ljmp	00172$
      002685                       1662 00113$:
                                   1663 ;	main.c:250: printf_tiny("\n\r Successful allocated memory for Buffer_%d\n\r",(i+2));
      002685 C0 02            [24] 1664 	push	ar2
      002687 C0 03            [24] 1665 	push	ar3
      002689 74 02            [12] 1666 	mov	a,#0x02
      00268B 25 0C            [12] 1667 	add	a,_main_sloc2_1_0
      00268D FA               [12] 1668 	mov	r2,a
      00268E E4               [12] 1669 	clr	a
      00268F 35 0D            [12] 1670 	addc	a,(_main_sloc2_1_0 + 1)
      002691 FB               [12] 1671 	mov	r3,a
      002692 C0 05            [24] 1672 	push	ar5
      002694 C0 04            [24] 1673 	push	ar4
      002696 C0 03            [24] 1674 	push	ar3
      002698 C0 02            [24] 1675 	push	ar2
      00269A C0 02            [24] 1676 	push	ar2
      00269C C0 03            [24] 1677 	push	ar3
      00269E 74 D0            [12] 1678 	mov	a,#___str_22
      0026A0 C0 E0            [24] 1679 	push	acc
      0026A2 74 43            [12] 1680 	mov	a,#(___str_22 >> 8)
      0026A4 C0 E0            [24] 1681 	push	acc
      0026A6 12 31 E7         [24] 1682 	lcall	_printf_tiny
      0026A9 E5 81            [12] 1683 	mov	a,sp
      0026AB 24 FC            [12] 1684 	add	a,#0xfc
      0026AD F5 81            [12] 1685 	mov	sp,a
      0026AF D0 02            [24] 1686 	pop	ar2
      0026B1 D0 03            [24] 1687 	pop	ar3
                                   1688 ;	main.c:251: printf_tiny("\n\rBuffer_%d has allocated a size of %d\n\r",(i+2),num2);
      0026B3 C0 03            [24] 1689 	push	ar3
      0026B5 C0 02            [24] 1690 	push	ar2
      0026B7 C0 0F            [24] 1691 	push	_main_sloc4_1_0
      0026B9 C0 10            [24] 1692 	push	(_main_sloc4_1_0 + 1)
      0026BB C0 02            [24] 1693 	push	ar2
      0026BD C0 03            [24] 1694 	push	ar3
      0026BF 74 FF            [12] 1695 	mov	a,#___str_23
      0026C1 C0 E0            [24] 1696 	push	acc
      0026C3 74 43            [12] 1697 	mov	a,#(___str_23 >> 8)
      0026C5 C0 E0            [24] 1698 	push	acc
      0026C7 12 31 E7         [24] 1699 	lcall	_printf_tiny
      0026CA E5 81            [12] 1700 	mov	a,sp
      0026CC 24 FA            [12] 1701 	add	a,#0xfa
      0026CE F5 81            [12] 1702 	mov	sp,a
      0026D0 D0 02            [24] 1703 	pop	ar2
      0026D2 D0 03            [24] 1704 	pop	ar3
      0026D4 D0 04            [24] 1705 	pop	ar4
      0026D6 D0 05            [24] 1706 	pop	ar5
                                   1707 ;	main.c:252: printf_tiny("\n\rStart Address of buffer_%d = 0x%x\n\r",(i+2),(uint16_t)(buffern[i+2]));
      0026D8 A9 0C            [24] 1708 	mov	r1,_main_sloc2_1_0
      0026DA 09               [12] 1709 	inc	r1
      0026DB 09               [12] 1710 	inc	r1
      0026DC C2 D5            [12] 1711 	clr	F0
      0026DE 75 F0 02         [24] 1712 	mov	b,#0x02
      0026E1 E9               [12] 1713 	mov	a,r1
      0026E2 30 E7 04         [24] 1714 	jnb	acc.7,00371$
      0026E5 B2 D5            [12] 1715 	cpl	F0
      0026E7 F4               [12] 1716 	cpl	a
      0026E8 04               [12] 1717 	inc	a
      0026E9                       1718 00371$:
      0026E9 A4               [48] 1719 	mul	ab
      0026EA 30 D5 0A         [24] 1720 	jnb	F0,00372$
      0026ED F4               [12] 1721 	cpl	a
      0026EE 24 01            [12] 1722 	add	a,#0x01
      0026F0 C5 F0            [12] 1723 	xch	a,b
      0026F2 F4               [12] 1724 	cpl	a
      0026F3 34 00            [12] 1725 	addc	a,#0x00
      0026F5 C5 F0            [12] 1726 	xch	a,b
      0026F7                       1727 00372$:
      0026F7 24 01            [12] 1728 	add	a,#_main_buffern_65536_69
      0026F9 F5 82            [12] 1729 	mov	dpl,a
      0026FB 74 16            [12] 1730 	mov	a,#(_main_buffern_65536_69 >> 8)
      0026FD 35 F0            [12] 1731 	addc	a,b
      0026FF F5 83            [12] 1732 	mov	dph,a
      002701 E0               [24] 1733 	movx	a,@dptr
      002702 F8               [12] 1734 	mov	r0,a
      002703 A3               [24] 1735 	inc	dptr
      002704 E0               [24] 1736 	movx	a,@dptr
      002705 F9               [12] 1737 	mov	r1,a
      002706 C0 05            [24] 1738 	push	ar5
      002708 C0 04            [24] 1739 	push	ar4
      00270A C0 03            [24] 1740 	push	ar3
      00270C C0 02            [24] 1741 	push	ar2
      00270E C0 00            [24] 1742 	push	ar0
      002710 C0 01            [24] 1743 	push	ar1
      002712 C0 02            [24] 1744 	push	ar2
      002714 C0 03            [24] 1745 	push	ar3
      002716 74 28            [12] 1746 	mov	a,#___str_24
      002718 C0 E0            [24] 1747 	push	acc
      00271A 74 44            [12] 1748 	mov	a,#(___str_24 >> 8)
      00271C C0 E0            [24] 1749 	push	acc
      00271E 12 31 E7         [24] 1750 	lcall	_printf_tiny
      002721 E5 81            [12] 1751 	mov	a,sp
      002723 24 FA            [12] 1752 	add	a,#0xfa
      002725 F5 81            [12] 1753 	mov	sp,a
      002727 D0 02            [24] 1754 	pop	ar2
      002729 D0 03            [24] 1755 	pop	ar3
      00272B D0 04            [24] 1756 	pop	ar4
      00272D D0 05            [24] 1757 	pop	ar5
                                   1758 ;	main.c:255: buffer_size[j]=num2;
      00272F E5 0A            [12] 1759 	mov	a,_main_sloc1_1_0
      002731 25 0A            [12] 1760 	add	a,_main_sloc1_1_0
      002733 FA               [12] 1761 	mov	r2,a
      002734 E5 0B            [12] 1762 	mov	a,(_main_sloc1_1_0 + 1)
      002736 33               [12] 1763 	rlc	a
      002737 FB               [12] 1764 	mov	r3,a
      002738 EA               [12] 1765 	mov	a,r2
      002739 24 5B            [12] 1766 	add	a,#_main_buffer_size_65536_69
      00273B F5 82            [12] 1767 	mov	dpl,a
      00273D EB               [12] 1768 	mov	a,r3
      00273E 34 16            [12] 1769 	addc	a,#(_main_buffer_size_65536_69 >> 8)
      002740 F5 83            [12] 1770 	mov	dph,a
      002742 E5 0F            [12] 1771 	mov	a,_main_sloc4_1_0
      002744 F0               [24] 1772 	movx	@dptr,a
      002745 E5 10            [12] 1773 	mov	a,(_main_sloc4_1_0 + 1)
      002747 A3               [24] 1774 	inc	dptr
      002748 F0               [24] 1775 	movx	@dptr,a
                                   1776 ;	main.c:256: j++;
      002749 05 0A            [12] 1777 	inc	_main_sloc1_1_0
      00274B E4               [12] 1778 	clr	a
      00274C B5 0A 02         [24] 1779 	cjne	a,_main_sloc1_1_0,00373$
      00274F 05 0B            [12] 1780 	inc	(_main_sloc1_1_0 + 1)
      002751                       1781 00373$:
                                   1782 ;	main.c:257: i++;
      002751 05 0C            [12] 1783 	inc	_main_sloc2_1_0
      002753 E4               [12] 1784 	clr	a
      002754 B5 0C 02         [24] 1785 	cjne	a,_main_sloc2_1_0,00374$
      002757 05 0D            [12] 1786 	inc	(_main_sloc2_1_0 + 1)
      002759                       1787 00374$:
      002759 D0 03            [24] 1788 	pop	ar3
      00275B D0 02            [24] 1789 	pop	ar2
      00275D 02 24 56         [24] 1790 	ljmp	00172$
      002760                       1791 00156$:
                                   1792 ;	main.c:260: else if(input_symbol == '-')
      002760 74 2D            [12] 1793 	mov	a,#0x2d
      002762 B5 0E 02         [24] 1794 	cjne	a,_main_sloc3_1_0,00375$
      002765 80 03            [24] 1795 	sjmp	00376$
      002767                       1796 00375$:
      002767 02 29 03         [24] 1797 	ljmp	00153$
      00276A                       1798 00376$:
                                   1799 ;	main.c:262: DEBUGPORT(2);
      00276A 75 82 02         [24] 1800 	mov	dpl,#0x02
      00276D C0 05            [24] 1801 	push	ar5
      00276F C0 04            [24] 1802 	push	ar4
      002771 C0 03            [24] 1803 	push	ar3
      002773 C0 02            [24] 1804 	push	ar2
      002775 12 20 69         [24] 1805 	lcall	_dataout
                                   1806 ;	main.c:263: printf_tiny("\n\rEnter a valid buffer number\n\r");
      002778 74 4E            [12] 1807 	mov	a,#___str_25
      00277A C0 E0            [24] 1808 	push	acc
      00277C 74 44            [12] 1809 	mov	a,#(___str_25 >> 8)
      00277E C0 E0            [24] 1810 	push	acc
      002780 12 31 E7         [24] 1811 	lcall	_printf_tiny
      002783 15 81            [12] 1812 	dec	sp
      002785 15 81            [12] 1813 	dec	sp
                                   1814 ;	main.c:266: deleted=get_input();
      002787 12 20 A9         [24] 1815 	lcall	_get_input
      00278A A8 82            [24] 1816 	mov	r0,dpl
      00278C A9 83            [24] 1817 	mov	r1,dph
      00278E D0 02            [24] 1818 	pop	ar2
      002790 D0 03            [24] 1819 	pop	ar3
      002792 D0 04            [24] 1820 	pop	ar4
      002794 D0 05            [24] 1821 	pop	ar5
                                   1822 ;	main.c:268: if(deleted == 0)
      002796 E8               [12] 1823 	mov	a,r0
      002797 49               [12] 1824 	orl	a,r1
      002798 70 22            [24] 1825 	jnz	00123$
                                   1826 ;	main.c:270: printf_tiny("\n\rBuffer 0 cannot be deleted!\n\r");
      00279A C0 05            [24] 1827 	push	ar5
      00279C C0 04            [24] 1828 	push	ar4
      00279E C0 03            [24] 1829 	push	ar3
      0027A0 C0 02            [24] 1830 	push	ar2
      0027A2 74 6E            [12] 1831 	mov	a,#___str_26
      0027A4 C0 E0            [24] 1832 	push	acc
      0027A6 74 44            [12] 1833 	mov	a,#(___str_26 >> 8)
      0027A8 C0 E0            [24] 1834 	push	acc
      0027AA 12 31 E7         [24] 1835 	lcall	_printf_tiny
      0027AD 15 81            [12] 1836 	dec	sp
      0027AF 15 81            [12] 1837 	dec	sp
      0027B1 D0 02            [24] 1838 	pop	ar2
      0027B3 D0 03            [24] 1839 	pop	ar3
      0027B5 D0 04            [24] 1840 	pop	ar4
      0027B7 D0 05            [24] 1841 	pop	ar5
      0027B9 02 24 56         [24] 1842 	ljmp	00172$
      0027BC                       1843 00123$:
                                   1844 ;	main.c:272: else if(deleted == 1)
      0027BC B8 01 56         [24] 1845 	cjne	r0,#0x01,00120$
      0027BF B9 00 53         [24] 1846 	cjne	r1,#0x00,00120$
                                   1847 ;	main.c:274: free(buffer1);
      0027C2 C0 02            [24] 1848 	push	ar2
      0027C4 C0 03            [24] 1849 	push	ar3
      0027C6 90 15 FF         [24] 1850 	mov	dptr,#_main_buffer1_65536_69
      0027C9 E0               [24] 1851 	movx	a,@dptr
      0027CA FA               [12] 1852 	mov	r2,a
      0027CB A3               [24] 1853 	inc	dptr
      0027CC E0               [24] 1854 	movx	a,@dptr
      0027CD FB               [12] 1855 	mov	r3,a
      0027CE 7F 00            [12] 1856 	mov	r7,#0x00
      0027D0 8A 82            [24] 1857 	mov	dpl,r2
      0027D2 8B 83            [24] 1858 	mov	dph,r3
      0027D4 8F F0            [24] 1859 	mov	b,r7
      0027D6 C0 05            [24] 1860 	push	ar5
      0027D8 C0 04            [24] 1861 	push	ar4
      0027DA C0 03            [24] 1862 	push	ar3
      0027DC C0 02            [24] 1863 	push	ar2
      0027DE 12 30 90         [24] 1864 	lcall	_free
                                   1865 ;	main.c:275: printf_tiny("\n\rDeleting buffer 1\n\r");
      0027E1 74 8E            [12] 1866 	mov	a,#___str_27
      0027E3 C0 E0            [24] 1867 	push	acc
      0027E5 74 44            [12] 1868 	mov	a,#(___str_27 >> 8)
      0027E7 C0 E0            [24] 1869 	push	acc
      0027E9 12 31 E7         [24] 1870 	lcall	_printf_tiny
      0027EC 15 81            [12] 1871 	dec	sp
      0027EE 15 81            [12] 1872 	dec	sp
                                   1873 ;	main.c:276: buffer1 = 0;
      0027F0 90 15 FF         [24] 1874 	mov	dptr,#_main_buffer1_65536_69
      0027F3 E4               [12] 1875 	clr	a
      0027F4 F0               [24] 1876 	movx	@dptr,a
      0027F5 A3               [24] 1877 	inc	dptr
      0027F6 F0               [24] 1878 	movx	@dptr,a
                                   1879 ;	main.c:277: printf_tiny("Buffer 1 is free");
      0027F7 74 A4            [12] 1880 	mov	a,#___str_28
      0027F9 C0 E0            [24] 1881 	push	acc
      0027FB 74 44            [12] 1882 	mov	a,#(___str_28 >> 8)
      0027FD C0 E0            [24] 1883 	push	acc
      0027FF 12 31 E7         [24] 1884 	lcall	_printf_tiny
      002802 15 81            [12] 1885 	dec	sp
      002804 15 81            [12] 1886 	dec	sp
      002806 D0 02            [24] 1887 	pop	ar2
      002808 D0 03            [24] 1888 	pop	ar3
      00280A D0 04            [24] 1889 	pop	ar4
      00280C D0 05            [24] 1890 	pop	ar5
      00280E D0 03            [24] 1891 	pop	ar3
      002810 D0 02            [24] 1892 	pop	ar2
      002812 02 24 56         [24] 1893 	ljmp	00172$
      002815                       1894 00120$:
                                   1895 ;	main.c:279: else if(deleted > 1 && deleted < (i+2))
      002815 C3               [12] 1896 	clr	c
      002816 74 01            [12] 1897 	mov	a,#0x01
      002818 98               [12] 1898 	subb	a,r0
      002819 E4               [12] 1899 	clr	a
      00281A 99               [12] 1900 	subb	a,r1
      00281B 40 03            [24] 1901 	jc	00380$
      00281D 02 28 E1         [24] 1902 	ljmp	00116$
      002820                       1903 00380$:
      002820 74 02            [12] 1904 	mov	a,#0x02
      002822 25 0C            [12] 1905 	add	a,_main_sloc2_1_0
      002824 FE               [12] 1906 	mov	r6,a
      002825 E4               [12] 1907 	clr	a
      002826 35 0D            [12] 1908 	addc	a,(_main_sloc2_1_0 + 1)
      002828 FF               [12] 1909 	mov	r7,a
      002829 C3               [12] 1910 	clr	c
      00282A E8               [12] 1911 	mov	a,r0
      00282B 9E               [12] 1912 	subb	a,r6
      00282C E9               [12] 1913 	mov	a,r1
      00282D 9F               [12] 1914 	subb	a,r7
      00282E 40 03            [24] 1915 	jc	00381$
      002830 02 28 E1         [24] 1916 	ljmp	00116$
      002833                       1917 00381$:
                                   1918 ;	main.c:281: printf_tiny("\n\rDeleting buffer %d \n\r",deleted);
      002833 C0 02            [24] 1919 	push	ar2
      002835 C0 03            [24] 1920 	push	ar3
      002837 C0 05            [24] 1921 	push	ar5
      002839 C0 04            [24] 1922 	push	ar4
      00283B C0 03            [24] 1923 	push	ar3
      00283D C0 02            [24] 1924 	push	ar2
      00283F C0 01            [24] 1925 	push	ar1
      002841 C0 00            [24] 1926 	push	ar0
      002843 C0 00            [24] 1927 	push	ar0
      002845 C0 01            [24] 1928 	push	ar1
      002847 74 B5            [12] 1929 	mov	a,#___str_29
      002849 C0 E0            [24] 1930 	push	acc
      00284B 74 44            [12] 1931 	mov	a,#(___str_29 >> 8)
      00284D C0 E0            [24] 1932 	push	acc
      00284F 12 31 E7         [24] 1933 	lcall	_printf_tiny
      002852 E5 81            [12] 1934 	mov	a,sp
      002854 24 FC            [12] 1935 	add	a,#0xfc
      002856 F5 81            [12] 1936 	mov	sp,a
      002858 D0 00            [24] 1937 	pop	ar0
      00285A D0 01            [24] 1938 	pop	ar1
      00285C D0 02            [24] 1939 	pop	ar2
      00285E D0 03            [24] 1940 	pop	ar3
      002860 D0 04            [24] 1941 	pop	ar4
      002862 D0 05            [24] 1942 	pop	ar5
                                   1943 ;	main.c:282: free(buffern[deleted-2]);
      002864 88 07            [24] 1944 	mov	ar7,r0
      002866 1F               [12] 1945 	dec	r7
      002867 1F               [12] 1946 	dec	r7
      002868 C2 D5            [12] 1947 	clr	F0
      00286A 75 F0 02         [24] 1948 	mov	b,#0x02
      00286D EF               [12] 1949 	mov	a,r7
      00286E 30 E7 04         [24] 1950 	jnb	acc.7,00382$
      002871 B2 D5            [12] 1951 	cpl	F0
      002873 F4               [12] 1952 	cpl	a
      002874 04               [12] 1953 	inc	a
      002875                       1954 00382$:
      002875 A4               [48] 1955 	mul	ab
      002876 30 D5 0A         [24] 1956 	jnb	F0,00383$
      002879 F4               [12] 1957 	cpl	a
      00287A 24 01            [12] 1958 	add	a,#0x01
      00287C C5 F0            [12] 1959 	xch	a,b
      00287E F4               [12] 1960 	cpl	a
      00287F 34 00            [12] 1961 	addc	a,#0x00
      002881 C5 F0            [12] 1962 	xch	a,b
      002883                       1963 00383$:
      002883 24 01            [12] 1964 	add	a,#_main_buffern_65536_69
      002885 F5 13            [12] 1965 	mov	_main_sloc6_1_0,a
      002887 74 16            [12] 1966 	mov	a,#(_main_buffern_65536_69 >> 8)
      002889 35 F0            [12] 1967 	addc	a,b
      00288B F5 14            [12] 1968 	mov	(_main_sloc6_1_0 + 1),a
      00288D 85 13 82         [24] 1969 	mov	dpl,_main_sloc6_1_0
      002890 85 14 83         [24] 1970 	mov	dph,(_main_sloc6_1_0 + 1)
      002893 E0               [24] 1971 	movx	a,@dptr
      002894 FA               [12] 1972 	mov	r2,a
      002895 A3               [24] 1973 	inc	dptr
      002896 E0               [24] 1974 	movx	a,@dptr
      002897 FB               [12] 1975 	mov	r3,a
      002898 7F 00            [12] 1976 	mov	r7,#0x00
      00289A 8A 82            [24] 1977 	mov	dpl,r2
      00289C 8B 83            [24] 1978 	mov	dph,r3
      00289E 8F F0            [24] 1979 	mov	b,r7
      0028A0 C0 05            [24] 1980 	push	ar5
      0028A2 C0 04            [24] 1981 	push	ar4
      0028A4 C0 03            [24] 1982 	push	ar3
      0028A6 C0 02            [24] 1983 	push	ar2
      0028A8 C0 01            [24] 1984 	push	ar1
      0028AA C0 00            [24] 1985 	push	ar0
      0028AC 12 30 90         [24] 1986 	lcall	_free
      0028AF D0 00            [24] 1987 	pop	ar0
      0028B1 D0 01            [24] 1988 	pop	ar1
                                   1989 ;	main.c:283: printf_tiny("\n\rBuffer %d is Free\n\r",deleted);
      0028B3 C0 00            [24] 1990 	push	ar0
      0028B5 C0 01            [24] 1991 	push	ar1
      0028B7 74 CD            [12] 1992 	mov	a,#___str_30
      0028B9 C0 E0            [24] 1993 	push	acc
      0028BB 74 44            [12] 1994 	mov	a,#(___str_30 >> 8)
      0028BD C0 E0            [24] 1995 	push	acc
      0028BF 12 31 E7         [24] 1996 	lcall	_printf_tiny
      0028C2 E5 81            [12] 1997 	mov	a,sp
      0028C4 24 FC            [12] 1998 	add	a,#0xfc
      0028C6 F5 81            [12] 1999 	mov	sp,a
      0028C8 D0 02            [24] 2000 	pop	ar2
      0028CA D0 03            [24] 2001 	pop	ar3
      0028CC D0 04            [24] 2002 	pop	ar4
      0028CE D0 05            [24] 2003 	pop	ar5
                                   2004 ;	main.c:284: buffern[deleted-2]=0;
      0028D0 85 13 82         [24] 2005 	mov	dpl,_main_sloc6_1_0
      0028D3 85 14 83         [24] 2006 	mov	dph,(_main_sloc6_1_0 + 1)
      0028D6 E4               [12] 2007 	clr	a
      0028D7 F0               [24] 2008 	movx	@dptr,a
      0028D8 A3               [24] 2009 	inc	dptr
      0028D9 F0               [24] 2010 	movx	@dptr,a
      0028DA D0 03            [24] 2011 	pop	ar3
      0028DC D0 02            [24] 2012 	pop	ar2
      0028DE 02 24 56         [24] 2013 	ljmp	00172$
      0028E1                       2014 00116$:
                                   2015 ;	main.c:288: printf_tiny("\n\rEnter a valid buffer number\n\rPress '-' to delete any valid buffer\n\r");
      0028E1 C0 05            [24] 2016 	push	ar5
      0028E3 C0 04            [24] 2017 	push	ar4
      0028E5 C0 03            [24] 2018 	push	ar3
      0028E7 C0 02            [24] 2019 	push	ar2
      0028E9 74 E3            [12] 2020 	mov	a,#___str_31
      0028EB C0 E0            [24] 2021 	push	acc
      0028ED 74 44            [12] 2022 	mov	a,#(___str_31 >> 8)
      0028EF C0 E0            [24] 2023 	push	acc
      0028F1 12 31 E7         [24] 2024 	lcall	_printf_tiny
      0028F4 15 81            [12] 2025 	dec	sp
      0028F6 15 81            [12] 2026 	dec	sp
      0028F8 D0 02            [24] 2027 	pop	ar2
      0028FA D0 03            [24] 2028 	pop	ar3
      0028FC D0 04            [24] 2029 	pop	ar4
      0028FE D0 05            [24] 2030 	pop	ar5
      002900 02 24 56         [24] 2031 	ljmp	00172$
      002903                       2032 00153$:
                                   2033 ;	main.c:293: else if(input_symbol == '=')
      002903 74 3D            [12] 2034 	mov	a,#0x3d
      002905 B5 0E 02         [24] 2035 	cjne	a,_main_sloc3_1_0,00384$
      002908 80 03            [24] 2036 	sjmp	00385$
      00290A                       2037 00384$:
      00290A 02 2A 39         [24] 2038 	ljmp	00150$
      00290D                       2039 00385$:
                                   2040 ;	main.c:295: DEBUGPORT(4);
      00290D 75 82 04         [24] 2041 	mov	dpl,#0x04
      002910 C0 05            [24] 2042 	push	ar5
      002912 C0 04            [24] 2043 	push	ar4
      002914 C0 03            [24] 2044 	push	ar3
      002916 C0 02            [24] 2045 	push	ar2
      002918 12 20 69         [24] 2046 	lcall	_dataout
                                   2047 ;	main.c:296: printf_tiny("\n\rThe Stored Characters in Buffer 0 are\n\r");
      00291B 74 29            [12] 2048 	mov	a,#___str_32
      00291D C0 E0            [24] 2049 	push	acc
      00291F 74 45            [12] 2050 	mov	a,#(___str_32 >> 8)
      002921 C0 E0            [24] 2051 	push	acc
      002923 12 31 E7         [24] 2052 	lcall	_printf_tiny
      002926 15 81            [12] 2053 	dec	sp
      002928 15 81            [12] 2054 	dec	sp
      00292A D0 02            [24] 2055 	pop	ar2
      00292C D0 03            [24] 2056 	pop	ar3
      00292E D0 04            [24] 2057 	pop	ar4
      002930 D0 05            [24] 2058 	pop	ar5
                                   2059 ;	main.c:298: for((buff0_char_count)=0; (buff0_char_count)<symbol_stored; (buff0_char_count)++)
      002932 90 15 FB         [24] 2060 	mov	dptr,#_main_symbol_stored_65536_69
      002935 E0               [24] 2061 	movx	a,@dptr
      002936 F5 13            [12] 2062 	mov	_main_sloc6_1_0,a
      002938 A3               [24] 2063 	inc	dptr
      002939 E0               [24] 2064 	movx	a,@dptr
      00293A F5 14            [12] 2065 	mov	(_main_sloc6_1_0 + 1),a
      00293C 78 00            [12] 2066 	mov	r0,#0x00
      00293E 79 00            [12] 2067 	mov	r1,#0x00
      002940                       2068 00175$:
      002940 C3               [12] 2069 	clr	c
      002941 E8               [12] 2070 	mov	a,r0
      002942 95 13            [12] 2071 	subb	a,_main_sloc6_1_0
      002944 E9               [12] 2072 	mov	a,r1
      002945 95 14            [12] 2073 	subb	a,(_main_sloc6_1_0 + 1)
      002947 40 03            [24] 2074 	jc	00386$
      002949 02 24 56         [24] 2075 	ljmp	00172$
      00294C                       2076 00386$:
                                   2077 ;	main.c:301: if(buff0_char_count==0)
      00294C E8               [12] 2078 	mov	a,r0
      00294D 49               [12] 2079 	orl	a,r1
      00294E 70 4A            [24] 2080 	jnz	00131$
                                   2081 ;	main.c:303: printf_tiny("0x%x >> %x",(uint16_t)(buffer0+buff0_char_count),*((buffer0)+(buff0_char_count)));
      002950 C0 02            [24] 2082 	push	ar2
      002952 C0 03            [24] 2083 	push	ar3
      002954 E8               [12] 2084 	mov	a,r0
      002955 2C               [12] 2085 	add	a,r4
      002956 FA               [12] 2086 	mov	r2,a
      002957 E9               [12] 2087 	mov	a,r1
      002958 3D               [12] 2088 	addc	a,r5
      002959 FB               [12] 2089 	mov	r3,a
      00295A 8A 82            [24] 2090 	mov	dpl,r2
      00295C 8B 83            [24] 2091 	mov	dph,r3
      00295E E0               [24] 2092 	movx	a,@dptr
      00295F FF               [12] 2093 	mov	r7,a
      002960 7E 00            [12] 2094 	mov	r6,#0x00
      002962 C0 05            [24] 2095 	push	ar5
      002964 C0 04            [24] 2096 	push	ar4
      002966 C0 03            [24] 2097 	push	ar3
      002968 C0 02            [24] 2098 	push	ar2
      00296A C0 01            [24] 2099 	push	ar1
      00296C C0 00            [24] 2100 	push	ar0
      00296E C0 07            [24] 2101 	push	ar7
      002970 C0 06            [24] 2102 	push	ar6
      002972 C0 02            [24] 2103 	push	ar2
      002974 C0 03            [24] 2104 	push	ar3
      002976 74 53            [12] 2105 	mov	a,#___str_33
      002978 C0 E0            [24] 2106 	push	acc
      00297A 74 45            [12] 2107 	mov	a,#(___str_33 >> 8)
      00297C C0 E0            [24] 2108 	push	acc
      00297E 12 31 E7         [24] 2109 	lcall	_printf_tiny
      002981 E5 81            [12] 2110 	mov	a,sp
      002983 24 FA            [12] 2111 	add	a,#0xfa
      002985 F5 81            [12] 2112 	mov	sp,a
      002987 D0 00            [24] 2113 	pop	ar0
      002989 D0 01            [24] 2114 	pop	ar1
      00298B D0 02            [24] 2115 	pop	ar2
      00298D D0 03            [24] 2116 	pop	ar3
      00298F D0 04            [24] 2117 	pop	ar4
      002991 D0 05            [24] 2118 	pop	ar5
      002993 D0 03            [24] 2119 	pop	ar3
      002995 D0 02            [24] 2120 	pop	ar2
      002997 02 2A 31         [24] 2121 	ljmp	00176$
      00299A                       2122 00131$:
                                   2123 ;	main.c:305: else if((buff0_char_count%16)!=0)
      00299A 74 0F            [12] 2124 	mov	a,#0x0f
      00299C 58               [12] 2125 	anl	a,r0
      00299D FE               [12] 2126 	mov	r6,a
      00299E 7F 00            [12] 2127 	mov	r7,#0x00
      0029A0 4F               [12] 2128 	orl	a,r7
      0029A1 60 43            [24] 2129 	jz	00128$
                                   2130 ;	main.c:307: printf_tiny(" %x",*((buffer0)+(buff0_char_count)));
      0029A3 C0 02            [24] 2131 	push	ar2
      0029A5 C0 03            [24] 2132 	push	ar3
      0029A7 E8               [12] 2133 	mov	a,r0
      0029A8 2C               [12] 2134 	add	a,r4
      0029A9 F5 82            [12] 2135 	mov	dpl,a
      0029AB E9               [12] 2136 	mov	a,r1
      0029AC 3D               [12] 2137 	addc	a,r5
      0029AD F5 83            [12] 2138 	mov	dph,a
      0029AF E0               [24] 2139 	movx	a,@dptr
      0029B0 FB               [12] 2140 	mov	r3,a
      0029B1 7A 00            [12] 2141 	mov	r2,#0x00
      0029B3 C0 05            [24] 2142 	push	ar5
      0029B5 C0 04            [24] 2143 	push	ar4
      0029B7 C0 03            [24] 2144 	push	ar3
      0029B9 C0 02            [24] 2145 	push	ar2
      0029BB C0 01            [24] 2146 	push	ar1
      0029BD C0 00            [24] 2147 	push	ar0
      0029BF C0 03            [24] 2148 	push	ar3
      0029C1 C0 02            [24] 2149 	push	ar2
      0029C3 74 5E            [12] 2150 	mov	a,#___str_34
      0029C5 C0 E0            [24] 2151 	push	acc
      0029C7 74 45            [12] 2152 	mov	a,#(___str_34 >> 8)
      0029C9 C0 E0            [24] 2153 	push	acc
      0029CB 12 31 E7         [24] 2154 	lcall	_printf_tiny
      0029CE E5 81            [12] 2155 	mov	a,sp
      0029D0 24 FC            [12] 2156 	add	a,#0xfc
      0029D2 F5 81            [12] 2157 	mov	sp,a
      0029D4 D0 00            [24] 2158 	pop	ar0
      0029D6 D0 01            [24] 2159 	pop	ar1
      0029D8 D0 02            [24] 2160 	pop	ar2
      0029DA D0 03            [24] 2161 	pop	ar3
      0029DC D0 04            [24] 2162 	pop	ar4
      0029DE D0 05            [24] 2163 	pop	ar5
      0029E0 D0 03            [24] 2164 	pop	ar3
      0029E2 D0 02            [24] 2165 	pop	ar2
      0029E4 80 4B            [24] 2166 	sjmp	00176$
      0029E6                       2167 00128$:
                                   2168 ;	main.c:309: else if(buff0_char_count%16==0)
      0029E6 EE               [12] 2169 	mov	a,r6
      0029E7 4F               [12] 2170 	orl	a,r7
      0029E8 70 47            [24] 2171 	jnz	00176$
                                   2172 ;	main.c:311: printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer0+buff0_char_count),*((buffer0)+(buff0_char_count)));
      0029EA C0 02            [24] 2173 	push	ar2
      0029EC C0 03            [24] 2174 	push	ar3
      0029EE E8               [12] 2175 	mov	a,r0
      0029EF 2C               [12] 2176 	add	a,r4
      0029F0 FE               [12] 2177 	mov	r6,a
      0029F1 E9               [12] 2178 	mov	a,r1
      0029F2 3D               [12] 2179 	addc	a,r5
      0029F3 FF               [12] 2180 	mov	r7,a
      0029F4 8E 82            [24] 2181 	mov	dpl,r6
      0029F6 8F 83            [24] 2182 	mov	dph,r7
      0029F8 E0               [24] 2183 	movx	a,@dptr
      0029F9 FB               [12] 2184 	mov	r3,a
      0029FA 7A 00            [12] 2185 	mov	r2,#0x00
      0029FC C0 05            [24] 2186 	push	ar5
      0029FE C0 04            [24] 2187 	push	ar4
      002A00 C0 03            [24] 2188 	push	ar3
      002A02 C0 02            [24] 2189 	push	ar2
      002A04 C0 01            [24] 2190 	push	ar1
      002A06 C0 00            [24] 2191 	push	ar0
      002A08 C0 03            [24] 2192 	push	ar3
      002A0A C0 02            [24] 2193 	push	ar2
      002A0C C0 06            [24] 2194 	push	ar6
      002A0E C0 07            [24] 2195 	push	ar7
      002A10 74 62            [12] 2196 	mov	a,#___str_35
      002A12 C0 E0            [24] 2197 	push	acc
      002A14 74 45            [12] 2198 	mov	a,#(___str_35 >> 8)
      002A16 C0 E0            [24] 2199 	push	acc
      002A18 12 31 E7         [24] 2200 	lcall	_printf_tiny
      002A1B E5 81            [12] 2201 	mov	a,sp
      002A1D 24 FA            [12] 2202 	add	a,#0xfa
      002A1F F5 81            [12] 2203 	mov	sp,a
      002A21 D0 00            [24] 2204 	pop	ar0
      002A23 D0 01            [24] 2205 	pop	ar1
      002A25 D0 02            [24] 2206 	pop	ar2
      002A27 D0 03            [24] 2207 	pop	ar3
      002A29 D0 04            [24] 2208 	pop	ar4
      002A2B D0 05            [24] 2209 	pop	ar5
                                   2210 ;	main.c:399: counter=0;
      002A2D D0 03            [24] 2211 	pop	ar3
      002A2F D0 02            [24] 2212 	pop	ar2
                                   2213 ;	main.c:311: printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer0+buff0_char_count),*((buffer0)+(buff0_char_count)));
      002A31                       2214 00176$:
                                   2215 ;	main.c:298: for((buff0_char_count)=0; (buff0_char_count)<symbol_stored; (buff0_char_count)++)
      002A31 08               [12] 2216 	inc	r0
      002A32 B8 00 01         [24] 2217 	cjne	r0,#0x00,00390$
      002A35 09               [12] 2218 	inc	r1
      002A36                       2219 00390$:
      002A36 02 29 40         [24] 2220 	ljmp	00175$
      002A39                       2221 00150$:
                                   2222 ;	main.c:316: else if(input_symbol == '@')
      002A39 74 40            [12] 2223 	mov	a,#0x40
      002A3B B5 0E 02         [24] 2224 	cjne	a,_main_sloc3_1_0,00391$
      002A3E 80 03            [24] 2225 	sjmp	00392$
      002A40                       2226 00391$:
      002A40 02 2B 7F         [24] 2227 	ljmp	00147$
      002A43                       2228 00392$:
                                   2229 ;	main.c:318: DEBUGPORT(5);
      002A43 75 82 05         [24] 2230 	mov	dpl,#0x05
      002A46 C0 05            [24] 2231 	push	ar5
      002A48 C0 04            [24] 2232 	push	ar4
      002A4A C0 03            [24] 2233 	push	ar3
      002A4C C0 02            [24] 2234 	push	ar2
      002A4E 12 20 69         [24] 2235 	lcall	_dataout
                                   2236 ;	main.c:319: printf_tiny("\n\rDeleting Buffer 0 \n\r");
      002A51 74 6E            [12] 2237 	mov	a,#___str_36
      002A53 C0 E0            [24] 2238 	push	acc
      002A55 74 45            [12] 2239 	mov	a,#(___str_36 >> 8)
      002A57 C0 E0            [24] 2240 	push	acc
      002A59 12 31 E7         [24] 2241 	lcall	_printf_tiny
      002A5C 15 81            [12] 2242 	dec	sp
      002A5E 15 81            [12] 2243 	dec	sp
      002A60 D0 02            [24] 2244 	pop	ar2
      002A62 D0 03            [24] 2245 	pop	ar3
      002A64 D0 04            [24] 2246 	pop	ar4
      002A66 D0 05            [24] 2247 	pop	ar5
                                   2248 ;	main.c:320: free(buffer0);
      002A68 8C 06            [24] 2249 	mov	ar6,r4
      002A6A 8D 07            [24] 2250 	mov	ar7,r5
      002A6C 8F 01            [24] 2251 	mov	ar1,r7
      002A6E 7F 00            [12] 2252 	mov	r7,#0x00
      002A70 8E 82            [24] 2253 	mov	dpl,r6
      002A72 89 83            [24] 2254 	mov	dph,r1
      002A74 8F F0            [24] 2255 	mov	b,r7
      002A76 C0 05            [24] 2256 	push	ar5
      002A78 C0 04            [24] 2257 	push	ar4
      002A7A C0 03            [24] 2258 	push	ar3
      002A7C C0 02            [24] 2259 	push	ar2
      002A7E 12 30 90         [24] 2260 	lcall	_free
                                   2261 ;	main.c:321: printf_tiny("\n\rBuffer 0 is free\n\r");
      002A81 74 85            [12] 2262 	mov	a,#___str_37
      002A83 C0 E0            [24] 2263 	push	acc
      002A85 74 45            [12] 2264 	mov	a,#(___str_37 >> 8)
      002A87 C0 E0            [24] 2265 	push	acc
      002A89 12 31 E7         [24] 2266 	lcall	_printf_tiny
      002A8C 15 81            [12] 2267 	dec	sp
      002A8E 15 81            [12] 2268 	dec	sp
                                   2269 ;	main.c:323: printf_tiny("\n\rDeleting Buffer 1 \n\r");
      002A90 74 9A            [12] 2270 	mov	a,#___str_38
      002A92 C0 E0            [24] 2271 	push	acc
      002A94 74 45            [12] 2272 	mov	a,#(___str_38 >> 8)
      002A96 C0 E0            [24] 2273 	push	acc
      002A98 12 31 E7         [24] 2274 	lcall	_printf_tiny
      002A9B 15 81            [12] 2275 	dec	sp
      002A9D 15 81            [12] 2276 	dec	sp
                                   2277 ;	main.c:324: free(buffer1);
      002A9F 90 15 FF         [24] 2278 	mov	dptr,#_main_buffer1_65536_69
      002AA2 E0               [24] 2279 	movx	a,@dptr
      002AA3 FE               [12] 2280 	mov	r6,a
      002AA4 A3               [24] 2281 	inc	dptr
      002AA5 E0               [24] 2282 	movx	a,@dptr
      002AA6 F9               [12] 2283 	mov	r1,a
      002AA7 7F 00            [12] 2284 	mov	r7,#0x00
      002AA9 8E 82            [24] 2285 	mov	dpl,r6
      002AAB 89 83            [24] 2286 	mov	dph,r1
      002AAD 8F F0            [24] 2287 	mov	b,r7
      002AAF 12 30 90         [24] 2288 	lcall	_free
                                   2289 ;	main.c:325: printf_tiny("\n\rBuffer 1 is free\n\r");
      002AB2 74 B1            [12] 2290 	mov	a,#___str_39
      002AB4 C0 E0            [24] 2291 	push	acc
      002AB6 74 45            [12] 2292 	mov	a,#(___str_39 >> 8)
      002AB8 C0 E0            [24] 2293 	push	acc
      002ABA 12 31 E7         [24] 2294 	lcall	_printf_tiny
      002ABD 15 81            [12] 2295 	dec	sp
      002ABF 15 81            [12] 2296 	dec	sp
      002AC1 D0 02            [24] 2297 	pop	ar2
      002AC3 D0 03            [24] 2298 	pop	ar3
      002AC5 D0 04            [24] 2299 	pop	ar4
      002AC7 D0 05            [24] 2300 	pop	ar5
                                   2301 ;	main.c:327: for(total_buffer=2; (total_buffer)<(i); (total_buffer)++)
      002AC9 85 0C 13         [24] 2302 	mov	_main_sloc6_1_0,_main_sloc2_1_0
      002ACC 85 0D 14         [24] 2303 	mov	(_main_sloc6_1_0 + 1),(_main_sloc2_1_0 + 1)
      002ACF 78 02            [12] 2304 	mov	r0,#0x02
      002AD1 79 00            [12] 2305 	mov	r1,#0x00
      002AD3                       2306 00178$:
      002AD3 C3               [12] 2307 	clr	c
      002AD4 E8               [12] 2308 	mov	a,r0
      002AD5 95 13            [12] 2309 	subb	a,_main_sloc6_1_0
      002AD7 E9               [12] 2310 	mov	a,r1
      002AD8 95 14            [12] 2311 	subb	a,(_main_sloc6_1_0 + 1)
      002ADA 40 03            [24] 2312 	jc	00393$
      002ADC 02 2B 69         [24] 2313 	ljmp	00134$
      002ADF                       2314 00393$:
                                   2315 ;	main.c:329: printf_tiny("\n\rDeleting buffer_%d \n\r",total_buffer);
      002ADF C0 02            [24] 2316 	push	ar2
      002AE1 C0 03            [24] 2317 	push	ar3
      002AE3 C0 05            [24] 2318 	push	ar5
      002AE5 C0 04            [24] 2319 	push	ar4
      002AE7 C0 03            [24] 2320 	push	ar3
      002AE9 C0 02            [24] 2321 	push	ar2
      002AEB C0 01            [24] 2322 	push	ar1
      002AED C0 00            [24] 2323 	push	ar0
      002AEF C0 00            [24] 2324 	push	ar0
      002AF1 C0 01            [24] 2325 	push	ar1
      002AF3 74 C6            [12] 2326 	mov	a,#___str_40
      002AF5 C0 E0            [24] 2327 	push	acc
      002AF7 74 45            [12] 2328 	mov	a,#(___str_40 >> 8)
      002AF9 C0 E0            [24] 2329 	push	acc
      002AFB 12 31 E7         [24] 2330 	lcall	_printf_tiny
      002AFE E5 81            [12] 2331 	mov	a,sp
      002B00 24 FC            [12] 2332 	add	a,#0xfc
      002B02 F5 81            [12] 2333 	mov	sp,a
      002B04 D0 00            [24] 2334 	pop	ar0
      002B06 D0 01            [24] 2335 	pop	ar1
      002B08 D0 02            [24] 2336 	pop	ar2
      002B0A D0 03            [24] 2337 	pop	ar3
                                   2338 ;	main.c:330: free(buffern[total_buffer]);
      002B0C E8               [12] 2339 	mov	a,r0
      002B0D 28               [12] 2340 	add	a,r0
      002B0E FA               [12] 2341 	mov	r2,a
      002B0F E9               [12] 2342 	mov	a,r1
      002B10 33               [12] 2343 	rlc	a
      002B11 FB               [12] 2344 	mov	r3,a
      002B12 EA               [12] 2345 	mov	a,r2
      002B13 24 01            [12] 2346 	add	a,#_main_buffern_65536_69
      002B15 F5 82            [12] 2347 	mov	dpl,a
      002B17 EB               [12] 2348 	mov	a,r3
      002B18 34 16            [12] 2349 	addc	a,#(_main_buffern_65536_69 >> 8)
      002B1A F5 83            [12] 2350 	mov	dph,a
      002B1C E0               [24] 2351 	movx	a,@dptr
      002B1D FA               [12] 2352 	mov	r2,a
      002B1E A3               [24] 2353 	inc	dptr
      002B1F E0               [24] 2354 	movx	a,@dptr
      002B20 FB               [12] 2355 	mov	r3,a
      002B21 7F 00            [12] 2356 	mov	r7,#0x00
      002B23 8A 82            [24] 2357 	mov	dpl,r2
      002B25 8B 83            [24] 2358 	mov	dph,r3
      002B27 8F F0            [24] 2359 	mov	b,r7
      002B29 C0 03            [24] 2360 	push	ar3
      002B2B C0 02            [24] 2361 	push	ar2
      002B2D C0 01            [24] 2362 	push	ar1
      002B2F C0 00            [24] 2363 	push	ar0
      002B31 12 30 90         [24] 2364 	lcall	_free
      002B34 D0 00            [24] 2365 	pop	ar0
      002B36 D0 01            [24] 2366 	pop	ar1
                                   2367 ;	main.c:331: printf_tiny("\n\rBuffer %d is free \n\r",total_buffer);
      002B38 C0 01            [24] 2368 	push	ar1
      002B3A C0 00            [24] 2369 	push	ar0
      002B3C C0 00            [24] 2370 	push	ar0
      002B3E C0 01            [24] 2371 	push	ar1
      002B40 74 DE            [12] 2372 	mov	a,#___str_41
      002B42 C0 E0            [24] 2373 	push	acc
      002B44 74 45            [12] 2374 	mov	a,#(___str_41 >> 8)
      002B46 C0 E0            [24] 2375 	push	acc
      002B48 12 31 E7         [24] 2376 	lcall	_printf_tiny
      002B4B E5 81            [12] 2377 	mov	a,sp
      002B4D 24 FC            [12] 2378 	add	a,#0xfc
      002B4F F5 81            [12] 2379 	mov	sp,a
      002B51 D0 00            [24] 2380 	pop	ar0
      002B53 D0 01            [24] 2381 	pop	ar1
      002B55 D0 02            [24] 2382 	pop	ar2
      002B57 D0 03            [24] 2383 	pop	ar3
      002B59 D0 04            [24] 2384 	pop	ar4
      002B5B D0 05            [24] 2385 	pop	ar5
                                   2386 ;	main.c:327: for(total_buffer=2; (total_buffer)<(i); (total_buffer)++)
      002B5D 08               [12] 2387 	inc	r0
      002B5E B8 00 01         [24] 2388 	cjne	r0,#0x00,00394$
      002B61 09               [12] 2389 	inc	r1
      002B62                       2390 00394$:
      002B62 D0 03            [24] 2391 	pop	ar3
      002B64 D0 02            [24] 2392 	pop	ar2
      002B66 02 2A D3         [24] 2393 	ljmp	00178$
      002B69                       2394 00134$:
                                   2395 ;	main.c:333: main();
      002B69 C0 05            [24] 2396 	push	ar5
      002B6B C0 04            [24] 2397 	push	ar4
      002B6D C0 03            [24] 2398 	push	ar3
      002B6F C0 02            [24] 2399 	push	ar2
      002B71 12 22 AE         [24] 2400 	lcall	_main
      002B74 D0 02            [24] 2401 	pop	ar2
      002B76 D0 03            [24] 2402 	pop	ar3
      002B78 D0 04            [24] 2403 	pop	ar4
      002B7A D0 05            [24] 2404 	pop	ar5
      002B7C 02 24 56         [24] 2405 	ljmp	00172$
      002B7F                       2406 00147$:
                                   2407 ;	main.c:336: else if(input_symbol == '?')
      002B7F 74 3F            [12] 2408 	mov	a,#0x3f
      002B81 B5 0E 02         [24] 2409 	cjne	a,_main_sloc3_1_0,00395$
      002B84 80 03            [24] 2410 	sjmp	00396$
      002B86                       2411 00395$:
      002B86 02 24 56         [24] 2412 	ljmp	00172$
      002B89                       2413 00396$:
                                   2414 ;	main.c:338: DEBUGPORT(3);
      002B89 75 82 03         [24] 2415 	mov	dpl,#0x03
      002B8C C0 05            [24] 2416 	push	ar5
      002B8E C0 04            [24] 2417 	push	ar4
      002B90 C0 03            [24] 2418 	push	ar3
      002B92 C0 02            [24] 2419 	push	ar2
      002B94 12 20 69         [24] 2420 	lcall	_dataout
                                   2421 ;	main.c:339: printf_tiny("******************** REPORT OF HEAP *********************");
      002B97 74 F5            [12] 2422 	mov	a,#___str_42
      002B99 C0 E0            [24] 2423 	push	acc
      002B9B 74 45            [12] 2424 	mov	a,#(___str_42 >> 8)
      002B9D C0 E0            [24] 2425 	push	acc
      002B9F 12 31 E7         [24] 2426 	lcall	_printf_tiny
      002BA2 15 81            [12] 2427 	dec	sp
      002BA4 15 81            [12] 2428 	dec	sp
                                   2429 ;	main.c:341: printf_tiny("\n\rBuffer 0\n\r");
      002BA6 74 2F            [12] 2430 	mov	a,#___str_43
      002BA8 C0 E0            [24] 2431 	push	acc
      002BAA 74 46            [12] 2432 	mov	a,#(___str_43 >> 8)
      002BAC C0 E0            [24] 2433 	push	acc
      002BAE 12 31 E7         [24] 2434 	lcall	_printf_tiny
      002BB1 15 81            [12] 2435 	dec	sp
      002BB3 15 81            [12] 2436 	dec	sp
                                   2437 ;	main.c:342: printf_tiny("\n\rIts Start Address  = 0x%x\n\r",buffer0_temper);
      002BB5 C0 15            [24] 2438 	push	_main_sloc7_1_0
      002BB7 C0 16            [24] 2439 	push	(_main_sloc7_1_0 + 1)
      002BB9 74 3C            [12] 2440 	mov	a,#___str_44
      002BBB C0 E0            [24] 2441 	push	acc
      002BBD 74 46            [12] 2442 	mov	a,#(___str_44 >> 8)
      002BBF C0 E0            [24] 2443 	push	acc
      002BC1 12 31 E7         [24] 2444 	lcall	_printf_tiny
      002BC4 E5 81            [12] 2445 	mov	a,sp
      002BC6 24 FC            [12] 2446 	add	a,#0xfc
      002BC8 F5 81            [12] 2447 	mov	sp,a
                                   2448 ;	main.c:343: printf_tiny("\n\rIts Ending Address = 0x%x\n\r",(buffer0_temper)+(num1));
      002BCA A8 15            [24] 2449 	mov	r0,_main_sloc7_1_0
      002BCC A9 16            [24] 2450 	mov	r1,(_main_sloc7_1_0 + 1)
      002BCE E5 11            [12] 2451 	mov	a,_main_sloc5_1_0
      002BD0 28               [12] 2452 	add	a,r0
      002BD1 F8               [12] 2453 	mov	r0,a
      002BD2 E5 12            [12] 2454 	mov	a,(_main_sloc5_1_0 + 1)
      002BD4 39               [12] 2455 	addc	a,r1
      002BD5 F9               [12] 2456 	mov	r1,a
      002BD6 C0 00            [24] 2457 	push	ar0
      002BD8 C0 01            [24] 2458 	push	ar1
      002BDA 74 5A            [12] 2459 	mov	a,#___str_45
      002BDC C0 E0            [24] 2460 	push	acc
      002BDE 74 46            [12] 2461 	mov	a,#(___str_45 >> 8)
      002BE0 C0 E0            [24] 2462 	push	acc
      002BE2 12 31 E7         [24] 2463 	lcall	_printf_tiny
      002BE5 E5 81            [12] 2464 	mov	a,sp
      002BE7 24 FC            [12] 2465 	add	a,#0xfc
      002BE9 F5 81            [12] 2466 	mov	sp,a
                                   2467 ;	main.c:344: printf_tiny("\n\rIts Size = %d\n\r",num1);
      002BEB C0 17            [24] 2468 	push	_main_sloc8_1_0
      002BED C0 18            [24] 2469 	push	(_main_sloc8_1_0 + 1)
      002BEF 74 78            [12] 2470 	mov	a,#___str_46
      002BF1 C0 E0            [24] 2471 	push	acc
      002BF3 74 46            [12] 2472 	mov	a,#(___str_46 >> 8)
      002BF5 C0 E0            [24] 2473 	push	acc
      002BF7 12 31 E7         [24] 2474 	lcall	_printf_tiny
      002BFA E5 81            [12] 2475 	mov	a,sp
      002BFC 24 FC            [12] 2476 	add	a,#0xfc
      002BFE F5 81            [12] 2477 	mov	sp,a
      002C00 D0 02            [24] 2478 	pop	ar2
      002C02 D0 03            [24] 2479 	pop	ar3
      002C04 D0 04            [24] 2480 	pop	ar4
      002C06 D0 05            [24] 2481 	pop	ar5
                                   2482 ;	main.c:345: printf_tiny("\n\rCurrent Storage characters in buffer 0 = %d\n\r",symbol_stored);
      002C08 90 15 FB         [24] 2483 	mov	dptr,#_main_symbol_stored_65536_69
      002C0B E0               [24] 2484 	movx	a,@dptr
      002C0C FE               [12] 2485 	mov	r6,a
      002C0D A3               [24] 2486 	inc	dptr
      002C0E E0               [24] 2487 	movx	a,@dptr
      002C0F FF               [12] 2488 	mov	r7,a
      002C10 C0 07            [24] 2489 	push	ar7
      002C12 C0 06            [24] 2490 	push	ar6
      002C14 C0 05            [24] 2491 	push	ar5
      002C16 C0 04            [24] 2492 	push	ar4
      002C18 C0 03            [24] 2493 	push	ar3
      002C1A C0 02            [24] 2494 	push	ar2
      002C1C C0 06            [24] 2495 	push	ar6
      002C1E C0 07            [24] 2496 	push	ar7
      002C20 74 8A            [12] 2497 	mov	a,#___str_47
      002C22 C0 E0            [24] 2498 	push	acc
      002C24 74 46            [12] 2499 	mov	a,#(___str_47 >> 8)
      002C26 C0 E0            [24] 2500 	push	acc
      002C28 12 31 E7         [24] 2501 	lcall	_printf_tiny
      002C2B E5 81            [12] 2502 	mov	a,sp
      002C2D 24 FC            [12] 2503 	add	a,#0xfc
      002C2F F5 81            [12] 2504 	mov	sp,a
      002C31 D0 02            [24] 2505 	pop	ar2
      002C33 D0 03            [24] 2506 	pop	ar3
      002C35 D0 04            [24] 2507 	pop	ar4
      002C37 D0 05            [24] 2508 	pop	ar5
      002C39 D0 06            [24] 2509 	pop	ar6
      002C3B D0 07            [24] 2510 	pop	ar7
                                   2511 ;	main.c:346: printf_tiny("\n\rCurrent Free Spaces in buffer = %d\n\r",(num1-symbol_stored));
      002C3D E5 11            [12] 2512 	mov	a,_main_sloc5_1_0
      002C3F C3               [12] 2513 	clr	c
      002C40 9E               [12] 2514 	subb	a,r6
      002C41 FE               [12] 2515 	mov	r6,a
      002C42 E5 12            [12] 2516 	mov	a,(_main_sloc5_1_0 + 1)
      002C44 9F               [12] 2517 	subb	a,r7
      002C45 FF               [12] 2518 	mov	r7,a
      002C46 C0 05            [24] 2519 	push	ar5
      002C48 C0 04            [24] 2520 	push	ar4
      002C4A C0 03            [24] 2521 	push	ar3
      002C4C C0 02            [24] 2522 	push	ar2
      002C4E C0 06            [24] 2523 	push	ar6
      002C50 C0 07            [24] 2524 	push	ar7
      002C52 74 BA            [12] 2525 	mov	a,#___str_48
      002C54 C0 E0            [24] 2526 	push	acc
      002C56 74 46            [12] 2527 	mov	a,#(___str_48 >> 8)
      002C58 C0 E0            [24] 2528 	push	acc
      002C5A 12 31 E7         [24] 2529 	lcall	_printf_tiny
      002C5D E5 81            [12] 2530 	mov	a,sp
      002C5F 24 FC            [12] 2531 	add	a,#0xfc
      002C61 F5 81            [12] 2532 	mov	sp,a
                                   2533 ;	main.c:347: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
      002C63 74 E1            [12] 2534 	mov	a,#___str_49
      002C65 C0 E0            [24] 2535 	push	acc
      002C67 74 46            [12] 2536 	mov	a,#(___str_49 >> 8)
      002C69 C0 E0            [24] 2537 	push	acc
      002C6B 12 31 E7         [24] 2538 	lcall	_printf_tiny
      002C6E 15 81            [12] 2539 	dec	sp
      002C70 15 81            [12] 2540 	dec	sp
      002C72 D0 02            [24] 2541 	pop	ar2
      002C74 D0 03            [24] 2542 	pop	ar3
      002C76 D0 04            [24] 2543 	pop	ar4
      002C78 D0 05            [24] 2544 	pop	ar5
                                   2545 ;	main.c:349: if(buffer1 != 0)
      002C7A 90 15 FF         [24] 2546 	mov	dptr,#_main_buffer1_65536_69
      002C7D E0               [24] 2547 	movx	a,@dptr
      002C7E F5 F0            [12] 2548 	mov	b,a
      002C80 A3               [24] 2549 	inc	dptr
      002C81 E0               [24] 2550 	movx	a,@dptr
      002C82 45 F0            [12] 2551 	orl	a,b
      002C84 70 03            [24] 2552 	jnz	00397$
      002C86 02 2D 36         [24] 2553 	ljmp	00224$
      002C89                       2554 00397$:
                                   2555 ;	main.c:351: printf_tiny("\n\rBuffer 1\n\r");
      002C89 C0 05            [24] 2556 	push	ar5
      002C8B C0 04            [24] 2557 	push	ar4
      002C8D C0 03            [24] 2558 	push	ar3
      002C8F C0 02            [24] 2559 	push	ar2
      002C91 74 2D            [12] 2560 	mov	a,#___str_50
      002C93 C0 E0            [24] 2561 	push	acc
      002C95 74 47            [12] 2562 	mov	a,#(___str_50 >> 8)
      002C97 C0 E0            [24] 2563 	push	acc
      002C99 12 31 E7         [24] 2564 	lcall	_printf_tiny
      002C9C 15 81            [12] 2565 	dec	sp
      002C9E 15 81            [12] 2566 	dec	sp
      002CA0 D0 02            [24] 2567 	pop	ar2
      002CA2 D0 03            [24] 2568 	pop	ar3
                                   2569 ;	main.c:352: printf_tiny("\n\rIts Start Address = 0x%x\n\r",buffer1_temper);
      002CA4 C0 03            [24] 2570 	push	ar3
      002CA6 C0 02            [24] 2571 	push	ar2
      002CA8 C0 02            [24] 2572 	push	ar2
      002CAA C0 03            [24] 2573 	push	ar3
      002CAC 74 3A            [12] 2574 	mov	a,#___str_51
      002CAE C0 E0            [24] 2575 	push	acc
      002CB0 74 47            [12] 2576 	mov	a,#(___str_51 >> 8)
      002CB2 C0 E0            [24] 2577 	push	acc
      002CB4 12 31 E7         [24] 2578 	lcall	_printf_tiny
      002CB7 E5 81            [12] 2579 	mov	a,sp
      002CB9 24 FC            [12] 2580 	add	a,#0xfc
      002CBB F5 81            [12] 2581 	mov	sp,a
      002CBD D0 02            [24] 2582 	pop	ar2
      002CBF D0 03            [24] 2583 	pop	ar3
                                   2584 ;	main.c:353: printf_tiny("\n\rIts Ending Address = 0x%x\n\r",buffer1_temper+num1);
      002CC1 8A 06            [24] 2585 	mov	ar6,r2
      002CC3 8B 07            [24] 2586 	mov	ar7,r3
      002CC5 E5 11            [12] 2587 	mov	a,_main_sloc5_1_0
      002CC7 2E               [12] 2588 	add	a,r6
      002CC8 FE               [12] 2589 	mov	r6,a
      002CC9 E5 12            [12] 2590 	mov	a,(_main_sloc5_1_0 + 1)
      002CCB 3F               [12] 2591 	addc	a,r7
      002CCC FF               [12] 2592 	mov	r7,a
      002CCD C0 03            [24] 2593 	push	ar3
      002CCF C0 02            [24] 2594 	push	ar2
      002CD1 C0 06            [24] 2595 	push	ar6
      002CD3 C0 07            [24] 2596 	push	ar7
      002CD5 74 5A            [12] 2597 	mov	a,#___str_45
      002CD7 C0 E0            [24] 2598 	push	acc
      002CD9 74 46            [12] 2599 	mov	a,#(___str_45 >> 8)
      002CDB C0 E0            [24] 2600 	push	acc
      002CDD 12 31 E7         [24] 2601 	lcall	_printf_tiny
      002CE0 E5 81            [12] 2602 	mov	a,sp
      002CE2 24 FC            [12] 2603 	add	a,#0xfc
      002CE4 F5 81            [12] 2604 	mov	sp,a
                                   2605 ;	main.c:354: printf_tiny("\n\rIts Size = %d\n\r",num1);
      002CE6 C0 17            [24] 2606 	push	_main_sloc8_1_0
      002CE8 C0 18            [24] 2607 	push	(_main_sloc8_1_0 + 1)
      002CEA 74 78            [12] 2608 	mov	a,#___str_46
      002CEC C0 E0            [24] 2609 	push	acc
      002CEE 74 46            [12] 2610 	mov	a,#(___str_46 >> 8)
      002CF0 C0 E0            [24] 2611 	push	acc
      002CF2 12 31 E7         [24] 2612 	lcall	_printf_tiny
      002CF5 E5 81            [12] 2613 	mov	a,sp
      002CF7 24 FC            [12] 2614 	add	a,#0xfc
      002CF9 F5 81            [12] 2615 	mov	sp,a
                                   2616 ;	main.c:355: printf_tiny("\n\rStorage characters in buffer =0, because storage characters are @ buffer 0\n\r");
      002CFB 74 57            [12] 2617 	mov	a,#___str_52
      002CFD C0 E0            [24] 2618 	push	acc
      002CFF 74 47            [12] 2619 	mov	a,#(___str_52 >> 8)
      002D01 C0 E0            [24] 2620 	push	acc
      002D03 12 31 E7         [24] 2621 	lcall	_printf_tiny
      002D06 15 81            [12] 2622 	dec	sp
      002D08 15 81            [12] 2623 	dec	sp
                                   2624 ;	main.c:356: printf_tiny("\n\rCurrent Free Spaces in buffer = %d\n\r",(num1));
      002D0A C0 17            [24] 2625 	push	_main_sloc8_1_0
      002D0C C0 18            [24] 2626 	push	(_main_sloc8_1_0 + 1)
      002D0E 74 BA            [12] 2627 	mov	a,#___str_48
      002D10 C0 E0            [24] 2628 	push	acc
      002D12 74 46            [12] 2629 	mov	a,#(___str_48 >> 8)
      002D14 C0 E0            [24] 2630 	push	acc
      002D16 12 31 E7         [24] 2631 	lcall	_printf_tiny
      002D19 E5 81            [12] 2632 	mov	a,sp
      002D1B 24 FC            [12] 2633 	add	a,#0xfc
      002D1D F5 81            [12] 2634 	mov	sp,a
                                   2635 ;	main.c:357: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
      002D1F 74 E1            [12] 2636 	mov	a,#___str_49
      002D21 C0 E0            [24] 2637 	push	acc
      002D23 74 46            [12] 2638 	mov	a,#(___str_49 >> 8)
      002D25 C0 E0            [24] 2639 	push	acc
      002D27 12 31 E7         [24] 2640 	lcall	_printf_tiny
      002D2A 15 81            [12] 2641 	dec	sp
      002D2C 15 81            [12] 2642 	dec	sp
      002D2E D0 02            [24] 2643 	pop	ar2
      002D30 D0 03            [24] 2644 	pop	ar3
      002D32 D0 04            [24] 2645 	pop	ar4
      002D34 D0 05            [24] 2646 	pop	ar5
                                   2647 ;	main.c:360: for(n=2; n<=(i+2); n++)
      002D36                       2648 00224$:
      002D36 74 02            [12] 2649 	mov	a,#0x02
      002D38 25 0C            [12] 2650 	add	a,_main_sloc2_1_0
      002D3A F5 11            [12] 2651 	mov	_main_sloc5_1_0,a
      002D3C E4               [12] 2652 	clr	a
      002D3D 35 0D            [12] 2653 	addc	a,(_main_sloc2_1_0 + 1)
      002D3F F5 12            [12] 2654 	mov	(_main_sloc5_1_0 + 1),a
      002D41 78 02            [12] 2655 	mov	r0,#0x02
      002D43 79 00            [12] 2656 	mov	r1,#0x00
      002D45                       2657 00181$:
      002D45 C0 02            [24] 2658 	push	ar2
      002D47 C0 03            [24] 2659 	push	ar3
      002D49 88 02            [24] 2660 	mov	ar2,r0
      002D4B 89 03            [24] 2661 	mov	ar3,r1
      002D4D C3               [12] 2662 	clr	c
      002D4E E5 11            [12] 2663 	mov	a,_main_sloc5_1_0
      002D50 9A               [12] 2664 	subb	a,r2
      002D51 E5 12            [12] 2665 	mov	a,(_main_sloc5_1_0 + 1)
      002D53 9B               [12] 2666 	subb	a,r3
      002D54 D0 03            [24] 2667 	pop	ar3
      002D56 D0 02            [24] 2668 	pop	ar2
      002D58 50 03            [24] 2669 	jnc	00398$
      002D5A 02 2F 28         [24] 2670 	ljmp	00139$
      002D5D                       2671 00398$:
                                   2672 ;	main.c:362: if(buffern[n-2] != NULL)
      002D5D C0 02            [24] 2673 	push	ar2
      002D5F C0 03            [24] 2674 	push	ar3
      002D61 E8               [12] 2675 	mov	a,r0
      002D62 F5 13            [12] 2676 	mov	_main_sloc6_1_0,a
      002D64 24 FE            [12] 2677 	add	a,#0xfe
      002D66 FB               [12] 2678 	mov	r3,a
      002D67 C2 D5            [12] 2679 	clr	F0
      002D69 75 F0 02         [24] 2680 	mov	b,#0x02
      002D6C EB               [12] 2681 	mov	a,r3
      002D6D 30 E7 04         [24] 2682 	jnb	acc.7,00399$
      002D70 B2 D5            [12] 2683 	cpl	F0
      002D72 F4               [12] 2684 	cpl	a
      002D73 04               [12] 2685 	inc	a
      002D74                       2686 00399$:
      002D74 A4               [48] 2687 	mul	ab
      002D75 30 D5 0A         [24] 2688 	jnb	F0,00400$
      002D78 F4               [12] 2689 	cpl	a
      002D79 24 01            [12] 2690 	add	a,#0x01
      002D7B C5 F0            [12] 2691 	xch	a,b
      002D7D F4               [12] 2692 	cpl	a
      002D7E 34 00            [12] 2693 	addc	a,#0x00
      002D80 C5 F0            [12] 2694 	xch	a,b
      002D82                       2695 00400$:
      002D82 24 01            [12] 2696 	add	a,#_main_buffern_65536_69
      002D84 F5 82            [12] 2697 	mov	dpl,a
      002D86 74 16            [12] 2698 	mov	a,#(_main_buffern_65536_69 >> 8)
      002D88 35 F0            [12] 2699 	addc	a,b
      002D8A F5 83            [12] 2700 	mov	dph,a
      002D8C E0               [24] 2701 	movx	a,@dptr
      002D8D FA               [12] 2702 	mov	r2,a
      002D8E A3               [24] 2703 	inc	dptr
      002D8F E0               [24] 2704 	movx	a,@dptr
      002D90 4A               [12] 2705 	orl	a,r2
      002D91 D0 03            [24] 2706 	pop	ar3
      002D93 D0 02            [24] 2707 	pop	ar2
      002D95 70 03            [24] 2708 	jnz	00401$
      002D97 02 2F 20         [24] 2709 	ljmp	00182$
      002D9A                       2710 00401$:
                                   2711 ;	main.c:364: printf_tiny("\n\rBuffer %d\n\r",n);
      002D9A C0 02            [24] 2712 	push	ar2
      002D9C C0 03            [24] 2713 	push	ar3
      002D9E C0 05            [24] 2714 	push	ar5
      002DA0 C0 04            [24] 2715 	push	ar4
      002DA2 C0 03            [24] 2716 	push	ar3
      002DA4 C0 02            [24] 2717 	push	ar2
      002DA6 C0 01            [24] 2718 	push	ar1
      002DA8 C0 00            [24] 2719 	push	ar0
      002DAA C0 00            [24] 2720 	push	ar0
      002DAC C0 01            [24] 2721 	push	ar1
      002DAE 74 A6            [12] 2722 	mov	a,#___str_53
      002DB0 C0 E0            [24] 2723 	push	acc
      002DB2 74 47            [12] 2724 	mov	a,#(___str_53 >> 8)
      002DB4 C0 E0            [24] 2725 	push	acc
      002DB6 12 31 E7         [24] 2726 	lcall	_printf_tiny
      002DB9 E5 81            [12] 2727 	mov	a,sp
      002DBB 24 FC            [12] 2728 	add	a,#0xfc
      002DBD F5 81            [12] 2729 	mov	sp,a
      002DBF D0 00            [24] 2730 	pop	ar0
      002DC1 D0 01            [24] 2731 	pop	ar1
      002DC3 D0 02            [24] 2732 	pop	ar2
      002DC5 D0 03            [24] 2733 	pop	ar3
      002DC7 D0 04            [24] 2734 	pop	ar4
      002DC9 D0 05            [24] 2735 	pop	ar5
                                   2736 ;	main.c:365: printf_tiny("\n\rStart Address = 0x%x\n\r",(uint16_t)buffern[n-2]);
      002DCB E5 13            [12] 2737 	mov	a,_main_sloc6_1_0
      002DCD 24 FE            [12] 2738 	add	a,#0xfe
      002DCF FB               [12] 2739 	mov	r3,a
      002DD0 C2 D5            [12] 2740 	clr	F0
      002DD2 75 F0 02         [24] 2741 	mov	b,#0x02
      002DD5 EB               [12] 2742 	mov	a,r3
      002DD6 30 E7 04         [24] 2743 	jnb	acc.7,00402$
      002DD9 B2 D5            [12] 2744 	cpl	F0
      002DDB F4               [12] 2745 	cpl	a
      002DDC 04               [12] 2746 	inc	a
      002DDD                       2747 00402$:
      002DDD A4               [48] 2748 	mul	ab
      002DDE 30 D5 0A         [24] 2749 	jnb	F0,00403$
      002DE1 F4               [12] 2750 	cpl	a
      002DE2 24 01            [12] 2751 	add	a,#0x01
      002DE4 C5 F0            [12] 2752 	xch	a,b
      002DE6 F4               [12] 2753 	cpl	a
      002DE7 34 00            [12] 2754 	addc	a,#0x00
      002DE9 C5 F0            [12] 2755 	xch	a,b
      002DEB                       2756 00403$:
      002DEB 24 01            [12] 2757 	add	a,#_main_buffern_65536_69
      002DED FA               [12] 2758 	mov	r2,a
      002DEE 74 16            [12] 2759 	mov	a,#(_main_buffern_65536_69 >> 8)
      002DF0 35 F0            [12] 2760 	addc	a,b
      002DF2 FB               [12] 2761 	mov	r3,a
      002DF3 8A 82            [24] 2762 	mov	dpl,r2
      002DF5 8B 83            [24] 2763 	mov	dph,r3
      002DF7 E0               [24] 2764 	movx	a,@dptr
      002DF8 FE               [12] 2765 	mov	r6,a
      002DF9 A3               [24] 2766 	inc	dptr
      002DFA E0               [24] 2767 	movx	a,@dptr
      002DFB FF               [12] 2768 	mov	r7,a
      002DFC C0 05            [24] 2769 	push	ar5
      002DFE C0 04            [24] 2770 	push	ar4
      002E00 C0 03            [24] 2771 	push	ar3
      002E02 C0 02            [24] 2772 	push	ar2
      002E04 C0 01            [24] 2773 	push	ar1
      002E06 C0 00            [24] 2774 	push	ar0
      002E08 C0 06            [24] 2775 	push	ar6
      002E0A C0 07            [24] 2776 	push	ar7
      002E0C 74 B4            [12] 2777 	mov	a,#___str_54
      002E0E C0 E0            [24] 2778 	push	acc
      002E10 74 47            [12] 2779 	mov	a,#(___str_54 >> 8)
      002E12 C0 E0            [24] 2780 	push	acc
      002E14 12 31 E7         [24] 2781 	lcall	_printf_tiny
      002E17 E5 81            [12] 2782 	mov	a,sp
      002E19 24 FC            [12] 2783 	add	a,#0xfc
      002E1B F5 81            [12] 2784 	mov	sp,a
      002E1D D0 00            [24] 2785 	pop	ar0
      002E1F D0 01            [24] 2786 	pop	ar1
      002E21 D0 02            [24] 2787 	pop	ar2
      002E23 D0 03            [24] 2788 	pop	ar3
      002E25 D0 04            [24] 2789 	pop	ar4
      002E27 D0 05            [24] 2790 	pop	ar5
                                   2791 ;	main.c:366: printf_tiny("\n\rEnding Address = 0x%x\n\r",(uint16_t)(buffern[n-2])+(uint16_t)(buffer_size[n]));
      002E29 8A 82            [24] 2792 	mov	dpl,r2
      002E2B 8B 83            [24] 2793 	mov	dph,r3
      002E2D E0               [24] 2794 	movx	a,@dptr
      002E2E FA               [12] 2795 	mov	r2,a
      002E2F A3               [24] 2796 	inc	dptr
      002E30 E0               [24] 2797 	movx	a,@dptr
      002E31 FB               [12] 2798 	mov	r3,a
      002E32 8A 13            [24] 2799 	mov	_main_sloc6_1_0,r2
      002E34 8B 14            [24] 2800 	mov	(_main_sloc6_1_0 + 1),r3
      002E36 E8               [12] 2801 	mov	a,r0
      002E37 28               [12] 2802 	add	a,r0
      002E38 FE               [12] 2803 	mov	r6,a
      002E39 E9               [12] 2804 	mov	a,r1
      002E3A 33               [12] 2805 	rlc	a
      002E3B FF               [12] 2806 	mov	r7,a
      002E3C EE               [12] 2807 	mov	a,r6
      002E3D 24 5B            [12] 2808 	add	a,#_main_buffer_size_65536_69
      002E3F FE               [12] 2809 	mov	r6,a
      002E40 EF               [12] 2810 	mov	a,r7
      002E41 34 16            [12] 2811 	addc	a,#(_main_buffer_size_65536_69 >> 8)
      002E43 FF               [12] 2812 	mov	r7,a
      002E44 8E 82            [24] 2813 	mov	dpl,r6
      002E46 8F 83            [24] 2814 	mov	dph,r7
      002E48 E0               [24] 2815 	movx	a,@dptr
      002E49 FA               [12] 2816 	mov	r2,a
      002E4A A3               [24] 2817 	inc	dptr
      002E4B E0               [24] 2818 	movx	a,@dptr
      002E4C FB               [12] 2819 	mov	r3,a
      002E4D EA               [12] 2820 	mov	a,r2
      002E4E 25 13            [12] 2821 	add	a,_main_sloc6_1_0
      002E50 FA               [12] 2822 	mov	r2,a
      002E51 EB               [12] 2823 	mov	a,r3
      002E52 35 14            [12] 2824 	addc	a,(_main_sloc6_1_0 + 1)
      002E54 FB               [12] 2825 	mov	r3,a
      002E55 C0 07            [24] 2826 	push	ar7
      002E57 C0 06            [24] 2827 	push	ar6
      002E59 C0 05            [24] 2828 	push	ar5
      002E5B C0 04            [24] 2829 	push	ar4
      002E5D C0 03            [24] 2830 	push	ar3
      002E5F C0 02            [24] 2831 	push	ar2
      002E61 C0 01            [24] 2832 	push	ar1
      002E63 C0 00            [24] 2833 	push	ar0
      002E65 C0 02            [24] 2834 	push	ar2
      002E67 C0 03            [24] 2835 	push	ar3
      002E69 74 CD            [12] 2836 	mov	a,#___str_55
      002E6B C0 E0            [24] 2837 	push	acc
      002E6D 74 47            [12] 2838 	mov	a,#(___str_55 >> 8)
      002E6F C0 E0            [24] 2839 	push	acc
      002E71 12 31 E7         [24] 2840 	lcall	_printf_tiny
      002E74 E5 81            [12] 2841 	mov	a,sp
      002E76 24 FC            [12] 2842 	add	a,#0xfc
      002E78 F5 81            [12] 2843 	mov	sp,a
      002E7A D0 00            [24] 2844 	pop	ar0
      002E7C D0 01            [24] 2845 	pop	ar1
      002E7E D0 02            [24] 2846 	pop	ar2
      002E80 D0 03            [24] 2847 	pop	ar3
      002E82 D0 04            [24] 2848 	pop	ar4
      002E84 D0 05            [24] 2849 	pop	ar5
      002E86 D0 06            [24] 2850 	pop	ar6
      002E88 D0 07            [24] 2851 	pop	ar7
                                   2852 ;	main.c:367: printf_tiny("\n\rBuffer Size = %d\n\r",buffer_size[n]);
      002E8A 8E 82            [24] 2853 	mov	dpl,r6
      002E8C 8F 83            [24] 2854 	mov	dph,r7
      002E8E E0               [24] 2855 	movx	a,@dptr
      002E8F FA               [12] 2856 	mov	r2,a
      002E90 A3               [24] 2857 	inc	dptr
      002E91 E0               [24] 2858 	movx	a,@dptr
      002E92 FB               [12] 2859 	mov	r3,a
      002E93 C0 07            [24] 2860 	push	ar7
      002E95 C0 06            [24] 2861 	push	ar6
      002E97 C0 05            [24] 2862 	push	ar5
      002E99 C0 04            [24] 2863 	push	ar4
      002E9B C0 03            [24] 2864 	push	ar3
      002E9D C0 02            [24] 2865 	push	ar2
      002E9F C0 01            [24] 2866 	push	ar1
      002EA1 C0 00            [24] 2867 	push	ar0
      002EA3 C0 02            [24] 2868 	push	ar2
      002EA5 C0 03            [24] 2869 	push	ar3
      002EA7 74 E7            [12] 2870 	mov	a,#___str_56
      002EA9 C0 E0            [24] 2871 	push	acc
      002EAB 74 47            [12] 2872 	mov	a,#(___str_56 >> 8)
      002EAD C0 E0            [24] 2873 	push	acc
      002EAF 12 31 E7         [24] 2874 	lcall	_printf_tiny
      002EB2 E5 81            [12] 2875 	mov	a,sp
      002EB4 24 FC            [12] 2876 	add	a,#0xfc
      002EB6 F5 81            [12] 2877 	mov	sp,a
                                   2878 ;	main.c:368: printf_tiny("\n\rStorage characters in buffer = 0\n\r");
      002EB8 74 FC            [12] 2879 	mov	a,#___str_57
      002EBA C0 E0            [24] 2880 	push	acc
      002EBC 74 47            [12] 2881 	mov	a,#(___str_57 >> 8)
      002EBE C0 E0            [24] 2882 	push	acc
      002EC0 12 31 E7         [24] 2883 	lcall	_printf_tiny
      002EC3 15 81            [12] 2884 	dec	sp
      002EC5 15 81            [12] 2885 	dec	sp
      002EC7 D0 00            [24] 2886 	pop	ar0
      002EC9 D0 01            [24] 2887 	pop	ar1
      002ECB D0 02            [24] 2888 	pop	ar2
      002ECD D0 03            [24] 2889 	pop	ar3
      002ECF D0 04            [24] 2890 	pop	ar4
      002ED1 D0 05            [24] 2891 	pop	ar5
      002ED3 D0 06            [24] 2892 	pop	ar6
      002ED5 D0 07            [24] 2893 	pop	ar7
                                   2894 ;	main.c:369: printf_tiny("\n\rFree Spaces in buffer = %d\n\r",(buffer_size[n]));
      002ED7 8E 82            [24] 2895 	mov	dpl,r6
      002ED9 8F 83            [24] 2896 	mov	dph,r7
      002EDB E0               [24] 2897 	movx	a,@dptr
      002EDC FE               [12] 2898 	mov	r6,a
      002EDD A3               [24] 2899 	inc	dptr
      002EDE E0               [24] 2900 	movx	a,@dptr
      002EDF FF               [12] 2901 	mov	r7,a
      002EE0 C0 05            [24] 2902 	push	ar5
      002EE2 C0 04            [24] 2903 	push	ar4
      002EE4 C0 03            [24] 2904 	push	ar3
      002EE6 C0 02            [24] 2905 	push	ar2
      002EE8 C0 01            [24] 2906 	push	ar1
      002EEA C0 00            [24] 2907 	push	ar0
      002EEC C0 06            [24] 2908 	push	ar6
      002EEE C0 07            [24] 2909 	push	ar7
      002EF0 74 21            [12] 2910 	mov	a,#___str_58
      002EF2 C0 E0            [24] 2911 	push	acc
      002EF4 74 48            [12] 2912 	mov	a,#(___str_58 >> 8)
      002EF6 C0 E0            [24] 2913 	push	acc
      002EF8 12 31 E7         [24] 2914 	lcall	_printf_tiny
      002EFB E5 81            [12] 2915 	mov	a,sp
      002EFD 24 FC            [12] 2916 	add	a,#0xfc
      002EFF F5 81            [12] 2917 	mov	sp,a
                                   2918 ;	main.c:370: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
      002F01 74 E1            [12] 2919 	mov	a,#___str_49
      002F03 C0 E0            [24] 2920 	push	acc
      002F05 74 46            [12] 2921 	mov	a,#(___str_49 >> 8)
      002F07 C0 E0            [24] 2922 	push	acc
      002F09 12 31 E7         [24] 2923 	lcall	_printf_tiny
      002F0C 15 81            [12] 2924 	dec	sp
      002F0E 15 81            [12] 2925 	dec	sp
      002F10 D0 00            [24] 2926 	pop	ar0
      002F12 D0 01            [24] 2927 	pop	ar1
      002F14 D0 02            [24] 2928 	pop	ar2
      002F16 D0 03            [24] 2929 	pop	ar3
      002F18 D0 04            [24] 2930 	pop	ar4
      002F1A D0 05            [24] 2931 	pop	ar5
                                   2932 ;	main.c:399: counter=0;
      002F1C D0 03            [24] 2933 	pop	ar3
      002F1E D0 02            [24] 2934 	pop	ar2
                                   2935 ;	main.c:370: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
      002F20                       2936 00182$:
                                   2937 ;	main.c:360: for(n=2; n<=(i+2); n++)
      002F20 08               [12] 2938 	inc	r0
      002F21 B8 00 01         [24] 2939 	cjne	r0,#0x00,00404$
      002F24 09               [12] 2940 	inc	r1
      002F25                       2941 00404$:
      002F25 02 2D 45         [24] 2942 	ljmp	00181$
      002F28                       2943 00139$:
                                   2944 ;	main.c:376: printf_tiny("\n\rNumber of storage characters = %d\n\r",symbol_stored);
      002F28 90 15 FB         [24] 2945 	mov	dptr,#_main_symbol_stored_65536_69
      002F2B E0               [24] 2946 	movx	a,@dptr
      002F2C FE               [12] 2947 	mov	r6,a
      002F2D A3               [24] 2948 	inc	dptr
      002F2E E0               [24] 2949 	movx	a,@dptr
      002F2F FF               [12] 2950 	mov	r7,a
      002F30 C0 07            [24] 2951 	push	ar7
      002F32 C0 06            [24] 2952 	push	ar6
      002F34 C0 05            [24] 2953 	push	ar5
      002F36 C0 04            [24] 2954 	push	ar4
      002F38 C0 03            [24] 2955 	push	ar3
      002F3A C0 02            [24] 2956 	push	ar2
      002F3C C0 06            [24] 2957 	push	ar6
      002F3E C0 07            [24] 2958 	push	ar7
      002F40 74 40            [12] 2959 	mov	a,#___str_59
      002F42 C0 E0            [24] 2960 	push	acc
      002F44 74 48            [12] 2961 	mov	a,#(___str_59 >> 8)
      002F46 C0 E0            [24] 2962 	push	acc
      002F48 12 31 E7         [24] 2963 	lcall	_printf_tiny
      002F4B E5 81            [12] 2964 	mov	a,sp
      002F4D 24 FC            [12] 2965 	add	a,#0xfc
      002F4F F5 81            [12] 2966 	mov	sp,a
                                   2967 ;	main.c:377: printf_tiny("\n\rTotal number of characters received = %d\n\r",total_symbol);
      002F51 C0 08            [24] 2968 	push	_main_sloc0_1_0
      002F53 C0 09            [24] 2969 	push	(_main_sloc0_1_0 + 1)
      002F55 74 66            [12] 2970 	mov	a,#___str_60
      002F57 C0 E0            [24] 2971 	push	acc
      002F59 74 48            [12] 2972 	mov	a,#(___str_60 >> 8)
      002F5B C0 E0            [24] 2973 	push	acc
      002F5D 12 31 E7         [24] 2974 	lcall	_printf_tiny
      002F60 E5 81            [12] 2975 	mov	a,sp
      002F62 24 FC            [12] 2976 	add	a,#0xfc
      002F64 F5 81            [12] 2977 	mov	sp,a
                                   2978 ;	main.c:378: printf_tiny("\n\rTotal number of buffers that were allocated since the start of the program = %d\n\r",(j));
      002F66 C0 0A            [24] 2979 	push	_main_sloc1_1_0
      002F68 C0 0B            [24] 2980 	push	(_main_sloc1_1_0 + 1)
      002F6A 74 93            [12] 2981 	mov	a,#___str_61
      002F6C C0 E0            [24] 2982 	push	acc
      002F6E 74 48            [12] 2983 	mov	a,#(___str_61 >> 8)
      002F70 C0 E0            [24] 2984 	push	acc
      002F72 12 31 E7         [24] 2985 	lcall	_printf_tiny
      002F75 E5 81            [12] 2986 	mov	a,sp
      002F77 24 FC            [12] 2987 	add	a,#0xfc
      002F79 F5 81            [12] 2988 	mov	sp,a
      002F7B D0 02            [24] 2989 	pop	ar2
      002F7D D0 03            [24] 2990 	pop	ar3
      002F7F D0 04            [24] 2991 	pop	ar4
      002F81 D0 05            [24] 2992 	pop	ar5
      002F83 D0 06            [24] 2993 	pop	ar6
      002F85 D0 07            [24] 2994 	pop	ar7
                                   2995 ;	main.c:379: printf_tiny("\n\rTotal storage characters stored since last '?' = %d\n\r",symbol_stored);
      002F87 C0 07            [24] 2996 	push	ar7
      002F89 C0 06            [24] 2997 	push	ar6
      002F8B C0 05            [24] 2998 	push	ar5
      002F8D C0 04            [24] 2999 	push	ar4
      002F8F C0 03            [24] 3000 	push	ar3
      002F91 C0 02            [24] 3001 	push	ar2
      002F93 C0 06            [24] 3002 	push	ar6
      002F95 C0 07            [24] 3003 	push	ar7
      002F97 74 E7            [12] 3004 	mov	a,#___str_62
      002F99 C0 E0            [24] 3005 	push	acc
      002F9B 74 48            [12] 3006 	mov	a,#(___str_62 >> 8)
      002F9D C0 E0            [24] 3007 	push	acc
      002F9F 12 31 E7         [24] 3008 	lcall	_printf_tiny
      002FA2 E5 81            [12] 3009 	mov	a,sp
      002FA4 24 FC            [12] 3010 	add	a,#0xfc
      002FA6 F5 81            [12] 3011 	mov	sp,a
                                   3012 ;	main.c:380: printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
      002FA8 74 E1            [12] 3013 	mov	a,#___str_49
      002FAA C0 E0            [24] 3014 	push	acc
      002FAC 74 46            [12] 3015 	mov	a,#(___str_49 >> 8)
      002FAE C0 E0            [24] 3016 	push	acc
      002FB0 12 31 E7         [24] 3017 	lcall	_printf_tiny
      002FB3 15 81            [12] 3018 	dec	sp
      002FB5 15 81            [12] 3019 	dec	sp
      002FB7 D0 02            [24] 3020 	pop	ar2
      002FB9 D0 03            [24] 3021 	pop	ar3
      002FBB D0 04            [24] 3022 	pop	ar4
      002FBD D0 05            [24] 3023 	pop	ar5
      002FBF D0 06            [24] 3024 	pop	ar6
      002FC1 D0 07            [24] 3025 	pop	ar7
                                   3026 ;	main.c:382: for(int index=0; index<symbol_stored;index++)
      002FC3 8E 13            [24] 3027 	mov	_main_sloc6_1_0,r6
      002FC5 8F 14            [24] 3028 	mov	(_main_sloc6_1_0 + 1),r7
      002FC7 78 00            [12] 3029 	mov	r0,#0x00
      002FC9 79 00            [12] 3030 	mov	r1,#0x00
      002FCB                       3031 00184$:
      002FCB C0 02            [24] 3032 	push	ar2
      002FCD C0 03            [24] 3033 	push	ar3
      002FCF 88 02            [24] 3034 	mov	ar2,r0
      002FD1 89 03            [24] 3035 	mov	ar3,r1
      002FD3 C3               [12] 3036 	clr	c
      002FD4 EA               [12] 3037 	mov	a,r2
      002FD5 95 13            [12] 3038 	subb	a,_main_sloc6_1_0
      002FD7 EB               [12] 3039 	mov	a,r3
      002FD8 95 14            [12] 3040 	subb	a,(_main_sloc6_1_0 + 1)
      002FDA D0 03            [24] 3041 	pop	ar3
      002FDC D0 02            [24] 3042 	pop	ar2
      002FDE 40 03            [24] 3043 	jc	00405$
      002FE0 02 30 80         [24] 3044 	ljmp	00143$
      002FE3                       3045 00405$:
                                   3046 ;	main.c:385: if(index%32!=0)
      002FE3 90 16 CE         [24] 3047 	mov	dptr,#__modsint_PARM_2
      002FE6 74 20            [12] 3048 	mov	a,#0x20
      002FE8 F0               [24] 3049 	movx	@dptr,a
      002FE9 E4               [12] 3050 	clr	a
      002FEA A3               [24] 3051 	inc	dptr
      002FEB F0               [24] 3052 	movx	@dptr,a
      002FEC 88 82            [24] 3053 	mov	dpl,r0
      002FEE 89 83            [24] 3054 	mov	dph,r1
      002FF0 C0 05            [24] 3055 	push	ar5
      002FF2 C0 04            [24] 3056 	push	ar4
      002FF4 C0 03            [24] 3057 	push	ar3
      002FF6 C0 02            [24] 3058 	push	ar2
      002FF8 C0 01            [24] 3059 	push	ar1
      002FFA C0 00            [24] 3060 	push	ar0
      002FFC 12 34 B5         [24] 3061 	lcall	__modsint
      002FFF E5 82            [12] 3062 	mov	a,dpl
      003001 85 83 F0         [24] 3063 	mov	b,dph
      003004 D0 00            [24] 3064 	pop	ar0
      003006 D0 01            [24] 3065 	pop	ar1
      003008 D0 02            [24] 3066 	pop	ar2
      00300A D0 03            [24] 3067 	pop	ar3
      00300C D0 04            [24] 3068 	pop	ar4
      00300E D0 05            [24] 3069 	pop	ar5
      003010 45 F0            [12] 3070 	orl	a,b
      003012 60 3D            [24] 3071 	jz	00141$
                                   3072 ;	main.c:387: char a=*((buffer0)+index);
      003014 C0 02            [24] 3073 	push	ar2
      003016 C0 03            [24] 3074 	push	ar3
      003018 E8               [12] 3075 	mov	a,r0
      003019 2C               [12] 3076 	add	a,r4
      00301A FA               [12] 3077 	mov	r2,a
      00301B E9               [12] 3078 	mov	a,r1
      00301C 3D               [12] 3079 	addc	a,r5
      00301D FB               [12] 3080 	mov	r3,a
      00301E 8A 82            [24] 3081 	mov	dpl,r2
      003020 8B 83            [24] 3082 	mov	dph,r3
      003022 E0               [24] 3083 	movx	a,@dptr
      003023 FF               [12] 3084 	mov	r7,a
                                   3085 ;	main.c:388: putchar(a);
      003024 7E 00            [12] 3086 	mov	r6,#0x00
      003026 8F 82            [24] 3087 	mov	dpl,r7
      003028 8E 83            [24] 3088 	mov	dph,r6
      00302A C0 05            [24] 3089 	push	ar5
      00302C C0 04            [24] 3090 	push	ar4
      00302E C0 03            [24] 3091 	push	ar3
      003030 C0 02            [24] 3092 	push	ar2
      003032 C0 01            [24] 3093 	push	ar1
      003034 C0 00            [24] 3094 	push	ar0
      003036 12 20 7C         [24] 3095 	lcall	_putchar
      003039 D0 00            [24] 3096 	pop	ar0
      00303B D0 01            [24] 3097 	pop	ar1
      00303D D0 02            [24] 3098 	pop	ar2
      00303F D0 03            [24] 3099 	pop	ar3
      003041 D0 04            [24] 3100 	pop	ar4
      003043 D0 05            [24] 3101 	pop	ar5
                                   3102 ;	main.c:389: *((buffer0)+index) = '\0';
      003045 8A 82            [24] 3103 	mov	dpl,r2
      003047 8B 83            [24] 3104 	mov	dph,r3
      003049 E4               [12] 3105 	clr	a
      00304A F0               [24] 3106 	movx	@dptr,a
      00304B D0 03            [24] 3107 	pop	ar3
      00304D D0 02            [24] 3108 	pop	ar2
      00304F 80 27            [24] 3109 	sjmp	00185$
      003051                       3110 00141$:
                                   3111 ;	main.c:393: printf_tiny("\n\r");
      003051 C0 05            [24] 3112 	push	ar5
      003053 C0 04            [24] 3113 	push	ar4
      003055 C0 03            [24] 3114 	push	ar3
      003057 C0 02            [24] 3115 	push	ar2
      003059 C0 01            [24] 3116 	push	ar1
      00305B C0 00            [24] 3117 	push	ar0
      00305D 74 28            [12] 3118 	mov	a,#___str_17
      00305F C0 E0            [24] 3119 	push	acc
      003061 74 43            [12] 3120 	mov	a,#(___str_17 >> 8)
      003063 C0 E0            [24] 3121 	push	acc
      003065 12 31 E7         [24] 3122 	lcall	_printf_tiny
      003068 15 81            [12] 3123 	dec	sp
      00306A 15 81            [12] 3124 	dec	sp
      00306C D0 00            [24] 3125 	pop	ar0
      00306E D0 01            [24] 3126 	pop	ar1
      003070 D0 02            [24] 3127 	pop	ar2
      003072 D0 03            [24] 3128 	pop	ar3
      003074 D0 04            [24] 3129 	pop	ar4
      003076 D0 05            [24] 3130 	pop	ar5
      003078                       3131 00185$:
                                   3132 ;	main.c:382: for(int index=0; index<symbol_stored;index++)
      003078 08               [12] 3133 	inc	r0
      003079 B8 00 01         [24] 3134 	cjne	r0,#0x00,00407$
      00307C 09               [12] 3135 	inc	r1
      00307D                       3136 00407$:
      00307D 02 2F CB         [24] 3137 	ljmp	00184$
      003080                       3138 00143$:
                                   3139 ;	main.c:398: symbol_stored=0;
      003080 90 15 FB         [24] 3140 	mov	dptr,#_main_symbol_stored_65536_69
      003083 E4               [12] 3141 	clr	a
      003084 F0               [24] 3142 	movx	@dptr,a
      003085 A3               [24] 3143 	inc	dptr
      003086 F0               [24] 3144 	movx	@dptr,a
                                   3145 ;	main.c:399: counter=0;
      003087 90 15 FD         [24] 3146 	mov	dptr,#_main_counter_65536_69
      00308A F0               [24] 3147 	movx	@dptr,a
      00308B A3               [24] 3148 	inc	dptr
      00308C F0               [24] 3149 	movx	@dptr,a
                                   3150 ;	main.c:403: }
      00308D 02 24 56         [24] 3151 	ljmp	00172$
                                   3152 	.area CSEG    (CODE)
                                   3153 	.area CONST   (CODE)
                                   3154 	.area CONST   (CODE)
      004061                       3155 ___str_0:
      004061 0A                    3156 	.db 0x0a
      004062 20                    3157 	.ascii " "
      004063 0D                    3158 	.db 0x0d
      004064 20 54 68 65 20 69 6E  3159 	.ascii " The input number is:%d "
             70 75 74 20 6E 75 6D
             62 65 72 20 69 73 3A
             25 64 20
      00407C 0A                    3160 	.db 0x0a
      00407D 20                    3161 	.ascii " "
      00407E 0D                    3162 	.db 0x0d
      00407F 00                    3163 	.db 0x00
                                   3164 	.area CSEG    (CODE)
                                   3165 	.area CONST   (CODE)
      004080                       3166 ___str_1:
      004080 49 6E 76 61 6C 69 64  3167 	.ascii "Invalid number! Please try again."
             20 6E 75 6D 62 65 72
             21 20 50 6C 65 61 73
             65 20 74 72 79 20 61
             67 61 69 6E 2E
      0040A1 0A                    3168 	.db 0x0a
      0040A2 20                    3169 	.ascii " "
      0040A3 0D                    3170 	.db 0x0d
      0040A4 00                    3171 	.db 0x00
                                   3172 	.area CSEG    (CODE)
                                   3173 	.area CONST   (CODE)
      0040A5                       3174 ___str_2:
      0040A5 0A                    3175 	.db 0x0a
      0040A6 0D                    3176 	.db 0x0d
      0040A7 2A 2A 2A 2A 2A 2A 2A  3177 	.ascii "********* HELLO :) ********"
             2A 2A 20 48 45 4C 4C
             4F 20 3A 29 20 2A 2A
             2A 2A 2A 2A 2A 2A
      0040C2 0A                    3178 	.db 0x0a
      0040C3 0D                    3179 	.db 0x0d
      0040C4 00                    3180 	.db 0x00
                                   3181 	.area CSEG    (CODE)
                                   3182 	.area CONST   (CODE)
      0040C5                       3183 ___str_3:
      0040C5 0A                    3184 	.db 0x0a
      0040C6 0D                    3185 	.db 0x0d
      0040C7 45 6E 74 65 72 20 61  3186 	.ascii "Enter a number between 32 & 4800 for buffer size"
             20 6E 75 6D 62 65 72
             20 62 65 74 77 65 65
             6E 20 33 32 20 26 20
             34 38 30 30 20 66 6F
             72 20 62 75 66 66 65
             72 20 73 69 7A 65
      0040F7 0A                    3187 	.db 0x0a
      0040F8 0D                    3188 	.db 0x0d
      0040F9 00                    3189 	.db 0x00
                                   3190 	.area CSEG    (CODE)
                                   3191 	.area CONST   (CODE)
      0040FA                       3192 ___str_4:
      0040FA 62 75 66 66 65 72 20  3193 	.ascii "buffer 0 creation is failed"
             30 20 63 72 65 61 74
             69 6F 6E 20 69 73 20
             66 61 69 6C 65 64
      004115 0A                    3194 	.db 0x0a
      004116 0D                    3195 	.db 0x0d
      004117 00                    3196 	.db 0x00
                                   3197 	.area CSEG    (CODE)
                                   3198 	.area CONST   (CODE)
      004118                       3199 ___str_5:
      004118 62 75 66 66 65 72 20  3200 	.ascii "buffer 1 creation is failed"
             31 20 63 72 65 61 74
             69 6F 6E 20 69 73 20
             66 61 69 6C 65 64
      004133 0A                    3201 	.db 0x0a
      004134 0D                    3202 	.db 0x0d
      004135 00                    3203 	.db 0x00
                                   3204 	.area CSEG    (CODE)
                                   3205 	.area CONST   (CODE)
      004136                       3206 ___str_6:
      004136 53 74 61 72 74 20 41  3207 	.ascii "Start Address of buffer0 = 0x%x"
             64 64 72 65 73 73 20
             6F 66 20 62 75 66 66
             65 72 30 20 3D 20 30
             78 25 78
      004155 0A                    3208 	.db 0x0a
      004156 0D                    3209 	.db 0x0d
      004157 00                    3210 	.db 0x00
                                   3211 	.area CSEG    (CODE)
                                   3212 	.area CONST   (CODE)
      004158                       3213 ___str_7:
      004158 53 74 61 72 74 20 41  3214 	.ascii "Start Address of buffer1 = 0x%x"
             64 64 72 65 73 73 20
             6F 66 20 62 75 66 66
             65 72 31 20 3D 20 30
             78 25 78
      004177 0A                    3215 	.db 0x0a
      004178 0D                    3216 	.db 0x0d
      004179 00                    3217 	.db 0x00
                                   3218 	.area CSEG    (CODE)
                                   3219 	.area CONST   (CODE)
      00417A                       3220 ___str_8:
      00417A 42 75 66 66 65 72 5F  3221 	.ascii "Buffer_0 and Buffer_1 successfully created"
             30 20 61 6E 64 20 42
             75 66 66 65 72 5F 31
             20 73 75 63 63 65 73
             73 66 75 6C 6C 79 20
             63 72 65 61 74 65 64
      0041A4 0A                    3222 	.db 0x0a
      0041A5 0D                    3223 	.db 0x0d
      0041A6 00                    3224 	.db 0x00
                                   3225 	.area CSEG    (CODE)
                                   3226 	.area CONST   (CODE)
      0041A7                       3227 ___str_9:
      0041A7 0A                    3228 	.db 0x0a
      0041A8 0D                    3229 	.db 0x0d
      0041A9 20 4F 50 54 49 4F 4E  3230 	.ascii " OPTIONS TO CHOOSE "
             53 20 54 4F 20 43 48
             4F 4F 53 45 20
      0041BC 0A                    3231 	.db 0x0a
      0041BD 0D                    3232 	.db 0x0d
      0041BE 00                    3233 	.db 0x00
                                   3234 	.area CSEG    (CODE)
                                   3235 	.area CONST   (CODE)
      0041BF                       3236 ___str_10:
      0041BF 59 6F 75 20 63 61 6E  3237 	.ascii "You can enter characters to be stored in buffer 0"
             20 65 6E 74 65 72 20
             63 68 61 72 61 63 74
             65 72 73 20 74 6F 20
             62 65 20 73 74 6F 72
             65 64 20 69 6E 20 62
             75 66 66 65 72 20 30
      0041F0 0A                    3238 	.db 0x0a
      0041F1 0D                    3239 	.db 0x0d
      0041F2 00                    3240 	.db 0x00
                                   3241 	.area CSEG    (CODE)
                                   3242 	.area CONST   (CODE)
      0041F3                       3243 ___str_11:
      0041F3 45 6E 74 65 72 20 2B  3244 	.ascii "Enter + to create a new buffer of size between 20 and 400 by"
             20 74 6F 20 63 72 65
             61 74 65 20 61 20 6E
             65 77 20 62 75 66 66
             65 72 20 6F 66 20 73
             69 7A 65 20 62 65 74
             77 65 65 6E 20 32 30
             20 61 6E 64 20 34 30
             30 20 62 79
      00422F 74 65 73              3245 	.ascii "tes"
      004232 0A                    3246 	.db 0x0a
      004233 0D                    3247 	.db 0x0d
      004234 00                    3248 	.db 0x00
                                   3249 	.area CSEG    (CODE)
                                   3250 	.area CONST   (CODE)
      004235                       3251 ___str_12:
      004235 45 6E 74 65 72 20 2D  3252 	.ascii "Enter - to delete a buffer."
             20 74 6F 20 64 65 6C
             65 74 65 20 61 20 62
             75 66 66 65 72 2E
      004250 0A                    3253 	.db 0x0a
      004251 0D                    3254 	.db 0x0d
      004252 00                    3255 	.db 0x00
                                   3256 	.area CSEG    (CODE)
                                   3257 	.area CONST   (CODE)
      004253                       3258 ___str_13:
      004253 45 6E 74 65 72 20 3F  3259 	.ascii "Enter ? to generate a heap report."
             20 74 6F 20 67 65 6E
             65 72 61 74 65 20 61
             20 68 65 61 70 20 72
             65 70 6F 72 74 2E
      004275 0A                    3260 	.db 0x0a
      004276 0D                    3261 	.db 0x0d
      004277 00                    3262 	.db 0x00
                                   3263 	.area CSEG    (CODE)
                                   3264 	.area CONST   (CODE)
      004278                       3265 ___str_14:
      004278 45 6E 74 65 72 20 3D  3266 	.ascii "Enter = to display current contents of buffer 0."
             20 74 6F 20 64 69 73
             70 6C 61 79 20 63 75
             72 72 65 6E 74 20 63
             6F 6E 74 65 6E 74 73
             20 6F 66 20 62 75 66
             66 65 72 20 30 2E
      0042A8 0A                    3267 	.db 0x0a
      0042A9 0D                    3268 	.db 0x0d
      0042AA 00                    3269 	.db 0x00
                                   3270 	.area CSEG    (CODE)
                                   3271 	.area CONST   (CODE)
      0042AB                       3272 ___str_15:
      0042AB 45 6E 74 65 72 20 40  3273 	.ascii "Enter @ to free all buffers and start program again."
             20 74 6F 20 66 72 65
             65 20 61 6C 6C 20 62
             75 66 66 65 72 73 20
             61 6E 64 20 73 74 61
             72 74 20 70 72 6F 67
             72 61 6D 20 61 67 61
             69 6E 2E
      0042DF 0A                    3274 	.db 0x0a
      0042E0 0D                    3275 	.db 0x0d
      0042E1 00                    3276 	.db 0x00
                                   3277 	.area CSEG    (CODE)
                                   3278 	.area CONST   (CODE)
      0042E2                       3279 ___str_16:
      0042E2 0A                    3280 	.db 0x0a
      0042E3 0D                    3281 	.db 0x0d
      0042E4 2A 2A 2A 2A 2A 2A 2A  3282 	.ascii "****************************THANK YOU***********************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             54 48 41 4E 4B 20 59
             4F 55 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      004320 2A 2A 2A 2A 2A        3283 	.ascii "*****"
      004325 0A                    3284 	.db 0x0a
      004326 0D                    3285 	.db 0x0d
      004327 00                    3286 	.db 0x00
                                   3287 	.area CSEG    (CODE)
                                   3288 	.area CONST   (CODE)
      004328                       3289 ___str_17:
      004328 0A                    3290 	.db 0x0a
      004329 0D                    3291 	.db 0x0d
      00432A 00                    3292 	.db 0x00
                                   3293 	.area CSEG    (CODE)
                                   3294 	.area CONST   (CODE)
      00432B                       3295 ___str_18:
      00432B 0A                    3296 	.db 0x0a
      00432C 0D                    3297 	.db 0x0d
      00432D 62 75 66 66 65 72 20  3298 	.ascii "buffer 0 is full."
             30 20 69 73 20 66 75
             6C 6C 2E
      00433E 0A                    3299 	.db 0x0a
      00433F 0D                    3300 	.db 0x0d
      004340 00                    3301 	.db 0x00
                                   3302 	.area CSEG    (CODE)
                                   3303 	.area CONST   (CODE)
      004341                       3304 ___str_19:
      004341 0A                    3305 	.db 0x0a
      004342 0D                    3306 	.db 0x0d
      004343 20 43 72 65 61 74 65  3307 	.ascii " Creates a new buffer "
             73 20 61 20 6E 65 77
             20 62 75 66 66 65 72
             20
      004359 0A                    3308 	.db 0x0a
      00435A 0D                    3309 	.db 0x0d
      00435B 00                    3310 	.db 0x00
                                   3311 	.area CSEG    (CODE)
                                   3312 	.area CONST   (CODE)
      00435C                       3313 ___str_20:
      00435C 0A                    3314 	.db 0x0a
      00435D 0D                    3315 	.db 0x0d
      00435E 45 6E 74 65 72 20 74  3316 	.ascii "Enter the new buffer size between 20 and 400"
             68 65 20 6E 65 77 20
             62 75 66 66 65 72 20
             73 69 7A 65 20 62 65
             74 77 65 65 6E 20 32
             30 20 61 6E 64 20 34
             30 30
      00438A 0A                    3317 	.db 0x0a
      00438B 0D                    3318 	.db 0x0d
      00438C 00                    3319 	.db 0x00
                                   3320 	.area CSEG    (CODE)
                                   3321 	.area CONST   (CODE)
      00438D                       3322 ___str_21:
      00438D 0A                    3323 	.db 0x0a
      00438E 0D                    3324 	.db 0x0d
      00438F 4D 65 6D 6F 72 79 20  3325 	.ascii "Memory Allocation for Buffer_%d Failed"
             41 6C 6C 6F 63 61 74
             69 6F 6E 20 66 6F 72
             20 42 75 66 66 65 72
             5F 25 64 20 46 61 69
             6C 65 64
      0043B5 0A                    3326 	.db 0x0a
      0043B6 0D                    3327 	.db 0x0d
      0043B7 50 72 65 73 73 20 27  3328 	.ascii "Press '+' to Try again"
             2B 27 20 74 6F 20 54
             72 79 20 61 67 61 69
             6E
      0043CD 0A                    3329 	.db 0x0a
      0043CE 0D                    3330 	.db 0x0d
      0043CF 00                    3331 	.db 0x00
                                   3332 	.area CSEG    (CODE)
                                   3333 	.area CONST   (CODE)
      0043D0                       3334 ___str_22:
      0043D0 0A                    3335 	.db 0x0a
      0043D1 0D                    3336 	.db 0x0d
      0043D2 20 53 75 63 63 65 73  3337 	.ascii " Successful allocated memory for Buffer_%d"
             73 66 75 6C 20 61 6C
             6C 6F 63 61 74 65 64
             20 6D 65 6D 6F 72 79
             20 66 6F 72 20 42 75
             66 66 65 72 5F 25 64
      0043FC 0A                    3338 	.db 0x0a
      0043FD 0D                    3339 	.db 0x0d
      0043FE 00                    3340 	.db 0x00
                                   3341 	.area CSEG    (CODE)
                                   3342 	.area CONST   (CODE)
      0043FF                       3343 ___str_23:
      0043FF 0A                    3344 	.db 0x0a
      004400 0D                    3345 	.db 0x0d
      004401 42 75 66 66 65 72 5F  3346 	.ascii "Buffer_%d has allocated a size of %d"
             25 64 20 68 61 73 20
             61 6C 6C 6F 63 61 74
             65 64 20 61 20 73 69
             7A 65 20 6F 66 20 25
             64
      004425 0A                    3347 	.db 0x0a
      004426 0D                    3348 	.db 0x0d
      004427 00                    3349 	.db 0x00
                                   3350 	.area CSEG    (CODE)
                                   3351 	.area CONST   (CODE)
      004428                       3352 ___str_24:
      004428 0A                    3353 	.db 0x0a
      004429 0D                    3354 	.db 0x0d
      00442A 53 74 61 72 74 20 41  3355 	.ascii "Start Address of buffer_%d = 0x%x"
             64 64 72 65 73 73 20
             6F 66 20 62 75 66 66
             65 72 5F 25 64 20 3D
             20 30 78 25 78
      00444B 0A                    3356 	.db 0x0a
      00444C 0D                    3357 	.db 0x0d
      00444D 00                    3358 	.db 0x00
                                   3359 	.area CSEG    (CODE)
                                   3360 	.area CONST   (CODE)
      00444E                       3361 ___str_25:
      00444E 0A                    3362 	.db 0x0a
      00444F 0D                    3363 	.db 0x0d
      004450 45 6E 74 65 72 20 61  3364 	.ascii "Enter a valid buffer number"
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             6E 75 6D 62 65 72
      00446B 0A                    3365 	.db 0x0a
      00446C 0D                    3366 	.db 0x0d
      00446D 00                    3367 	.db 0x00
                                   3368 	.area CSEG    (CODE)
                                   3369 	.area CONST   (CODE)
      00446E                       3370 ___str_26:
      00446E 0A                    3371 	.db 0x0a
      00446F 0D                    3372 	.db 0x0d
      004470 42 75 66 66 65 72 20  3373 	.ascii "Buffer 0 cannot be deleted!"
             30 20 63 61 6E 6E 6F
             74 20 62 65 20 64 65
             6C 65 74 65 64 21
      00448B 0A                    3374 	.db 0x0a
      00448C 0D                    3375 	.db 0x0d
      00448D 00                    3376 	.db 0x00
                                   3377 	.area CSEG    (CODE)
                                   3378 	.area CONST   (CODE)
      00448E                       3379 ___str_27:
      00448E 0A                    3380 	.db 0x0a
      00448F 0D                    3381 	.db 0x0d
      004490 44 65 6C 65 74 69 6E  3382 	.ascii "Deleting buffer 1"
             67 20 62 75 66 66 65
             72 20 31
      0044A1 0A                    3383 	.db 0x0a
      0044A2 0D                    3384 	.db 0x0d
      0044A3 00                    3385 	.db 0x00
                                   3386 	.area CSEG    (CODE)
                                   3387 	.area CONST   (CODE)
      0044A4                       3388 ___str_28:
      0044A4 42 75 66 66 65 72 20  3389 	.ascii "Buffer 1 is free"
             31 20 69 73 20 66 72
             65 65
      0044B4 00                    3390 	.db 0x00
                                   3391 	.area CSEG    (CODE)
                                   3392 	.area CONST   (CODE)
      0044B5                       3393 ___str_29:
      0044B5 0A                    3394 	.db 0x0a
      0044B6 0D                    3395 	.db 0x0d
      0044B7 44 65 6C 65 74 69 6E  3396 	.ascii "Deleting buffer %d "
             67 20 62 75 66 66 65
             72 20 25 64 20
      0044CA 0A                    3397 	.db 0x0a
      0044CB 0D                    3398 	.db 0x0d
      0044CC 00                    3399 	.db 0x00
                                   3400 	.area CSEG    (CODE)
                                   3401 	.area CONST   (CODE)
      0044CD                       3402 ___str_30:
      0044CD 0A                    3403 	.db 0x0a
      0044CE 0D                    3404 	.db 0x0d
      0044CF 42 75 66 66 65 72 20  3405 	.ascii "Buffer %d is Free"
             25 64 20 69 73 20 46
             72 65 65
      0044E0 0A                    3406 	.db 0x0a
      0044E1 0D                    3407 	.db 0x0d
      0044E2 00                    3408 	.db 0x00
                                   3409 	.area CSEG    (CODE)
                                   3410 	.area CONST   (CODE)
      0044E3                       3411 ___str_31:
      0044E3 0A                    3412 	.db 0x0a
      0044E4 0D                    3413 	.db 0x0d
      0044E5 45 6E 74 65 72 20 61  3414 	.ascii "Enter a valid buffer number"
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             6E 75 6D 62 65 72
      004500 0A                    3415 	.db 0x0a
      004501 0D                    3416 	.db 0x0d
      004502 50 72 65 73 73 20 27  3417 	.ascii "Press '-' to delete any valid buffer"
             2D 27 20 74 6F 20 64
             65 6C 65 74 65 20 61
             6E 79 20 76 61 6C 69
             64 20 62 75 66 66 65
             72
      004526 0A                    3418 	.db 0x0a
      004527 0D                    3419 	.db 0x0d
      004528 00                    3420 	.db 0x00
                                   3421 	.area CSEG    (CODE)
                                   3422 	.area CONST   (CODE)
      004529                       3423 ___str_32:
      004529 0A                    3424 	.db 0x0a
      00452A 0D                    3425 	.db 0x0d
      00452B 54 68 65 20 53 74 6F  3426 	.ascii "The Stored Characters in Buffer 0 are"
             72 65 64 20 43 68 61
             72 61 63 74 65 72 73
             20 69 6E 20 42 75 66
             66 65 72 20 30 20 61
             72 65
      004550 0A                    3427 	.db 0x0a
      004551 0D                    3428 	.db 0x0d
      004552 00                    3429 	.db 0x00
                                   3430 	.area CSEG    (CODE)
                                   3431 	.area CONST   (CODE)
      004553                       3432 ___str_33:
      004553 30 78 25 78 20 3E 3E  3433 	.ascii "0x%x >> %x"
             20 25 78
      00455D 00                    3434 	.db 0x00
                                   3435 	.area CSEG    (CODE)
                                   3436 	.area CONST   (CODE)
      00455E                       3437 ___str_34:
      00455E 20 25 78              3438 	.ascii " %x"
      004561 00                    3439 	.db 0x00
                                   3440 	.area CSEG    (CODE)
                                   3441 	.area CONST   (CODE)
      004562                       3442 ___str_35:
      004562 0A                    3443 	.db 0x0a
      004563 0D                    3444 	.db 0x0d
      004564 30 78 25 78 3E 3E 20  3445 	.ascii "0x%x>> %x"
             25 78
      00456D 00                    3446 	.db 0x00
                                   3447 	.area CSEG    (CODE)
                                   3448 	.area CONST   (CODE)
      00456E                       3449 ___str_36:
      00456E 0A                    3450 	.db 0x0a
      00456F 0D                    3451 	.db 0x0d
      004570 44 65 6C 65 74 69 6E  3452 	.ascii "Deleting Buffer 0 "
             67 20 42 75 66 66 65
             72 20 30 20
      004582 0A                    3453 	.db 0x0a
      004583 0D                    3454 	.db 0x0d
      004584 00                    3455 	.db 0x00
                                   3456 	.area CSEG    (CODE)
                                   3457 	.area CONST   (CODE)
      004585                       3458 ___str_37:
      004585 0A                    3459 	.db 0x0a
      004586 0D                    3460 	.db 0x0d
      004587 42 75 66 66 65 72 20  3461 	.ascii "Buffer 0 is free"
             30 20 69 73 20 66 72
             65 65
      004597 0A                    3462 	.db 0x0a
      004598 0D                    3463 	.db 0x0d
      004599 00                    3464 	.db 0x00
                                   3465 	.area CSEG    (CODE)
                                   3466 	.area CONST   (CODE)
      00459A                       3467 ___str_38:
      00459A 0A                    3468 	.db 0x0a
      00459B 0D                    3469 	.db 0x0d
      00459C 44 65 6C 65 74 69 6E  3470 	.ascii "Deleting Buffer 1 "
             67 20 42 75 66 66 65
             72 20 31 20
      0045AE 0A                    3471 	.db 0x0a
      0045AF 0D                    3472 	.db 0x0d
      0045B0 00                    3473 	.db 0x00
                                   3474 	.area CSEG    (CODE)
                                   3475 	.area CONST   (CODE)
      0045B1                       3476 ___str_39:
      0045B1 0A                    3477 	.db 0x0a
      0045B2 0D                    3478 	.db 0x0d
      0045B3 42 75 66 66 65 72 20  3479 	.ascii "Buffer 1 is free"
             31 20 69 73 20 66 72
             65 65
      0045C3 0A                    3480 	.db 0x0a
      0045C4 0D                    3481 	.db 0x0d
      0045C5 00                    3482 	.db 0x00
                                   3483 	.area CSEG    (CODE)
                                   3484 	.area CONST   (CODE)
      0045C6                       3485 ___str_40:
      0045C6 0A                    3486 	.db 0x0a
      0045C7 0D                    3487 	.db 0x0d
      0045C8 44 65 6C 65 74 69 6E  3488 	.ascii "Deleting buffer_%d "
             67 20 62 75 66 66 65
             72 5F 25 64 20
      0045DB 0A                    3489 	.db 0x0a
      0045DC 0D                    3490 	.db 0x0d
      0045DD 00                    3491 	.db 0x00
                                   3492 	.area CSEG    (CODE)
                                   3493 	.area CONST   (CODE)
      0045DE                       3494 ___str_41:
      0045DE 0A                    3495 	.db 0x0a
      0045DF 0D                    3496 	.db 0x0d
      0045E0 42 75 66 66 65 72 20  3497 	.ascii "Buffer %d is free "
             25 64 20 69 73 20 66
             72 65 65 20
      0045F2 0A                    3498 	.db 0x0a
      0045F3 0D                    3499 	.db 0x0d
      0045F4 00                    3500 	.db 0x00
                                   3501 	.area CSEG    (CODE)
                                   3502 	.area CONST   (CODE)
      0045F5                       3503 ___str_42:
      0045F5 2A 2A 2A 2A 2A 2A 2A  3504 	.ascii "******************** REPORT OF HEAP *********************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 20
             52 45 50 4F 52 54 20
             4F 46 20 48 45 41 50
             20 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A
      00462E 00                    3505 	.db 0x00
                                   3506 	.area CSEG    (CODE)
                                   3507 	.area CONST   (CODE)
      00462F                       3508 ___str_43:
      00462F 0A                    3509 	.db 0x0a
      004630 0D                    3510 	.db 0x0d
      004631 42 75 66 66 65 72 20  3511 	.ascii "Buffer 0"
             30
      004639 0A                    3512 	.db 0x0a
      00463A 0D                    3513 	.db 0x0d
      00463B 00                    3514 	.db 0x00
                                   3515 	.area CSEG    (CODE)
                                   3516 	.area CONST   (CODE)
      00463C                       3517 ___str_44:
      00463C 0A                    3518 	.db 0x0a
      00463D 0D                    3519 	.db 0x0d
      00463E 49 74 73 20 53 74 61  3520 	.ascii "Its Start Address  = 0x%x"
             72 74 20 41 64 64 72
             65 73 73 20 20 3D 20
             30 78 25 78
      004657 0A                    3521 	.db 0x0a
      004658 0D                    3522 	.db 0x0d
      004659 00                    3523 	.db 0x00
                                   3524 	.area CSEG    (CODE)
                                   3525 	.area CONST   (CODE)
      00465A                       3526 ___str_45:
      00465A 0A                    3527 	.db 0x0a
      00465B 0D                    3528 	.db 0x0d
      00465C 49 74 73 20 45 6E 64  3529 	.ascii "Its Ending Address = 0x%x"
             69 6E 67 20 41 64 64
             72 65 73 73 20 3D 20
             30 78 25 78
      004675 0A                    3530 	.db 0x0a
      004676 0D                    3531 	.db 0x0d
      004677 00                    3532 	.db 0x00
                                   3533 	.area CSEG    (CODE)
                                   3534 	.area CONST   (CODE)
      004678                       3535 ___str_46:
      004678 0A                    3536 	.db 0x0a
      004679 0D                    3537 	.db 0x0d
      00467A 49 74 73 20 53 69 7A  3538 	.ascii "Its Size = %d"
             65 20 3D 20 25 64
      004687 0A                    3539 	.db 0x0a
      004688 0D                    3540 	.db 0x0d
      004689 00                    3541 	.db 0x00
                                   3542 	.area CSEG    (CODE)
                                   3543 	.area CONST   (CODE)
      00468A                       3544 ___str_47:
      00468A 0A                    3545 	.db 0x0a
      00468B 0D                    3546 	.db 0x0d
      00468C 43 75 72 72 65 6E 74  3547 	.ascii "Current Storage characters in buffer 0 = %d"
             20 53 74 6F 72 61 67
             65 20 63 68 61 72 61
             63 74 65 72 73 20 69
             6E 20 62 75 66 66 65
             72 20 30 20 3D 20 25
             64
      0046B7 0A                    3548 	.db 0x0a
      0046B8 0D                    3549 	.db 0x0d
      0046B9 00                    3550 	.db 0x00
                                   3551 	.area CSEG    (CODE)
                                   3552 	.area CONST   (CODE)
      0046BA                       3553 ___str_48:
      0046BA 0A                    3554 	.db 0x0a
      0046BB 0D                    3555 	.db 0x0d
      0046BC 43 75 72 72 65 6E 74  3556 	.ascii "Current Free Spaces in buffer = %d"
             20 46 72 65 65 20 53
             70 61 63 65 73 20 69
             6E 20 62 75 66 66 65
             72 20 3D 20 25 64
      0046DE 0A                    3557 	.db 0x0a
      0046DF 0D                    3558 	.db 0x0d
      0046E0 00                    3559 	.db 0x00
                                   3560 	.area CSEG    (CODE)
                                   3561 	.area CONST   (CODE)
      0046E1                       3562 ___str_49:
      0046E1 0A                    3563 	.db 0x0a
      0046E2 0D                    3564 	.db 0x0d
      0046E3 2D 2D 2D 2D 2D 2D 2D  3565 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      00471F 2D 2D 2D 2D 2D 2D 2D  3566 	.ascii "-----------"
             2D 2D 2D 2D
      00472A 0A                    3567 	.db 0x0a
      00472B 0D                    3568 	.db 0x0d
      00472C 00                    3569 	.db 0x00
                                   3570 	.area CSEG    (CODE)
                                   3571 	.area CONST   (CODE)
      00472D                       3572 ___str_50:
      00472D 0A                    3573 	.db 0x0a
      00472E 0D                    3574 	.db 0x0d
      00472F 42 75 66 66 65 72 20  3575 	.ascii "Buffer 1"
             31
      004737 0A                    3576 	.db 0x0a
      004738 0D                    3577 	.db 0x0d
      004739 00                    3578 	.db 0x00
                                   3579 	.area CSEG    (CODE)
                                   3580 	.area CONST   (CODE)
      00473A                       3581 ___str_51:
      00473A 0A                    3582 	.db 0x0a
      00473B 0D                    3583 	.db 0x0d
      00473C 49 74 73 20 53 74 61  3584 	.ascii "Its Start Address = 0x%x"
             72 74 20 41 64 64 72
             65 73 73 20 3D 20 30
             78 25 78
      004754 0A                    3585 	.db 0x0a
      004755 0D                    3586 	.db 0x0d
      004756 00                    3587 	.db 0x00
                                   3588 	.area CSEG    (CODE)
                                   3589 	.area CONST   (CODE)
      004757                       3590 ___str_52:
      004757 0A                    3591 	.db 0x0a
      004758 0D                    3592 	.db 0x0d
      004759 53 74 6F 72 61 67 65  3593 	.ascii "Storage characters in buffer =0, because storage characters "
             20 63 68 61 72 61 63
             74 65 72 73 20 69 6E
             20 62 75 66 66 65 72
             20 3D 30 2C 20 62 65
             63 61 75 73 65 20 73
             74 6F 72 61 67 65 20
             63 68 61 72 61 63 74
             65 72 73 20
      004795 61 72 65 20 40 20 62  3594 	.ascii "are @ buffer 0"
             75 66 66 65 72 20 30
      0047A3 0A                    3595 	.db 0x0a
      0047A4 0D                    3596 	.db 0x0d
      0047A5 00                    3597 	.db 0x00
                                   3598 	.area CSEG    (CODE)
                                   3599 	.area CONST   (CODE)
      0047A6                       3600 ___str_53:
      0047A6 0A                    3601 	.db 0x0a
      0047A7 0D                    3602 	.db 0x0d
      0047A8 42 75 66 66 65 72 20  3603 	.ascii "Buffer %d"
             25 64
      0047B1 0A                    3604 	.db 0x0a
      0047B2 0D                    3605 	.db 0x0d
      0047B3 00                    3606 	.db 0x00
                                   3607 	.area CSEG    (CODE)
                                   3608 	.area CONST   (CODE)
      0047B4                       3609 ___str_54:
      0047B4 0A                    3610 	.db 0x0a
      0047B5 0D                    3611 	.db 0x0d
      0047B6 53 74 61 72 74 20 41  3612 	.ascii "Start Address = 0x%x"
             64 64 72 65 73 73 20
             3D 20 30 78 25 78
      0047CA 0A                    3613 	.db 0x0a
      0047CB 0D                    3614 	.db 0x0d
      0047CC 00                    3615 	.db 0x00
                                   3616 	.area CSEG    (CODE)
                                   3617 	.area CONST   (CODE)
      0047CD                       3618 ___str_55:
      0047CD 0A                    3619 	.db 0x0a
      0047CE 0D                    3620 	.db 0x0d
      0047CF 45 6E 64 69 6E 67 20  3621 	.ascii "Ending Address = 0x%x"
             41 64 64 72 65 73 73
             20 3D 20 30 78 25 78
      0047E4 0A                    3622 	.db 0x0a
      0047E5 0D                    3623 	.db 0x0d
      0047E6 00                    3624 	.db 0x00
                                   3625 	.area CSEG    (CODE)
                                   3626 	.area CONST   (CODE)
      0047E7                       3627 ___str_56:
      0047E7 0A                    3628 	.db 0x0a
      0047E8 0D                    3629 	.db 0x0d
      0047E9 42 75 66 66 65 72 20  3630 	.ascii "Buffer Size = %d"
             53 69 7A 65 20 3D 20
             25 64
      0047F9 0A                    3631 	.db 0x0a
      0047FA 0D                    3632 	.db 0x0d
      0047FB 00                    3633 	.db 0x00
                                   3634 	.area CSEG    (CODE)
                                   3635 	.area CONST   (CODE)
      0047FC                       3636 ___str_57:
      0047FC 0A                    3637 	.db 0x0a
      0047FD 0D                    3638 	.db 0x0d
      0047FE 53 74 6F 72 61 67 65  3639 	.ascii "Storage characters in buffer = 0"
             20 63 68 61 72 61 63
             74 65 72 73 20 69 6E
             20 62 75 66 66 65 72
             20 3D 20 30
      00481E 0A                    3640 	.db 0x0a
      00481F 0D                    3641 	.db 0x0d
      004820 00                    3642 	.db 0x00
                                   3643 	.area CSEG    (CODE)
                                   3644 	.area CONST   (CODE)
      004821                       3645 ___str_58:
      004821 0A                    3646 	.db 0x0a
      004822 0D                    3647 	.db 0x0d
      004823 46 72 65 65 20 53 70  3648 	.ascii "Free Spaces in buffer = %d"
             61 63 65 73 20 69 6E
             20 62 75 66 66 65 72
             20 3D 20 25 64
      00483D 0A                    3649 	.db 0x0a
      00483E 0D                    3650 	.db 0x0d
      00483F 00                    3651 	.db 0x00
                                   3652 	.area CSEG    (CODE)
                                   3653 	.area CONST   (CODE)
      004840                       3654 ___str_59:
      004840 0A                    3655 	.db 0x0a
      004841 0D                    3656 	.db 0x0d
      004842 4E 75 6D 62 65 72 20  3657 	.ascii "Number of storage characters = %d"
             6F 66 20 73 74 6F 72
             61 67 65 20 63 68 61
             72 61 63 74 65 72 73
             20 3D 20 25 64
      004863 0A                    3658 	.db 0x0a
      004864 0D                    3659 	.db 0x0d
      004865 00                    3660 	.db 0x00
                                   3661 	.area CSEG    (CODE)
                                   3662 	.area CONST   (CODE)
      004866                       3663 ___str_60:
      004866 0A                    3664 	.db 0x0a
      004867 0D                    3665 	.db 0x0d
      004868 54 6F 74 61 6C 20 6E  3666 	.ascii "Total number of characters received = %d"
             75 6D 62 65 72 20 6F
             66 20 63 68 61 72 61
             63 74 65 72 73 20 72
             65 63 65 69 76 65 64
             20 3D 20 25 64
      004890 0A                    3667 	.db 0x0a
      004891 0D                    3668 	.db 0x0d
      004892 00                    3669 	.db 0x00
                                   3670 	.area CSEG    (CODE)
                                   3671 	.area CONST   (CODE)
      004893                       3672 ___str_61:
      004893 0A                    3673 	.db 0x0a
      004894 0D                    3674 	.db 0x0d
      004895 54 6F 74 61 6C 20 6E  3675 	.ascii "Total number of buffers that were allocated since the start "
             75 6D 62 65 72 20 6F
             66 20 62 75 66 66 65
             72 73 20 74 68 61 74
             20 77 65 72 65 20 61
             6C 6C 6F 63 61 74 65
             64 20 73 69 6E 63 65
             20 74 68 65 20 73 74
             61 72 74 20
      0048D1 6F 66 20 74 68 65 20  3676 	.ascii "of the program = %d"
             70 72 6F 67 72 61 6D
             20 3D 20 25 64
      0048E4 0A                    3677 	.db 0x0a
      0048E5 0D                    3678 	.db 0x0d
      0048E6 00                    3679 	.db 0x00
                                   3680 	.area CSEG    (CODE)
                                   3681 	.area CONST   (CODE)
      0048E7                       3682 ___str_62:
      0048E7 0A                    3683 	.db 0x0a
      0048E8 0D                    3684 	.db 0x0d
      0048E9 54 6F 74 61 6C 20 73  3685 	.ascii "Total storage characters stored since last '?' = %d"
             74 6F 72 61 67 65 20
             63 68 61 72 61 63 74
             65 72 73 20 73 74 6F
             72 65 64 20 73 69 6E
             63 65 20 6C 61 73 74
             20 27 3F 27 20 3D 20
             25 64
      00491C 0A                    3686 	.db 0x0a
      00491D 0D                    3687 	.db 0x0d
      00491E 00                    3688 	.db 0x00
                                   3689 	.area CSEG    (CODE)
                                   3690 	.area XINIT   (CODE)
                                   3691 	.area CABS    (ABS,CODE)
