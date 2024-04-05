                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _char_to_int
                                     12 	.globl _TF1
                                     13 	.globl _TR1
                                     14 	.globl _TF0
                                     15 	.globl _TR0
                                     16 	.globl _IE1
                                     17 	.globl _IT1
                                     18 	.globl _IE0
                                     19 	.globl _IT0
                                     20 	.globl _SM0
                                     21 	.globl _SM1
                                     22 	.globl _SM2
                                     23 	.globl _REN
                                     24 	.globl _TB8
                                     25 	.globl _RB8
                                     26 	.globl _TI
                                     27 	.globl _RI
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD0
                                     43 	.globl _TXD
                                     44 	.globl _RXD0
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _P0_7
                                     71 	.globl _P0_6
                                     72 	.globl _P0_5
                                     73 	.globl _P0_4
                                     74 	.globl _P0_3
                                     75 	.globl _P0_2
                                     76 	.globl _P0_1
                                     77 	.globl _P0_0
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _BREG_F7
                                     90 	.globl _BREG_F6
                                     91 	.globl _BREG_F5
                                     92 	.globl _BREG_F4
                                     93 	.globl _BREG_F3
                                     94 	.globl _BREG_F2
                                     95 	.globl _BREG_F1
                                     96 	.globl _BREG_F0
                                     97 	.globl _P5_7
                                     98 	.globl _P5_6
                                     99 	.globl _P5_5
                                    100 	.globl _P5_4
                                    101 	.globl _P5_3
                                    102 	.globl _P5_2
                                    103 	.globl _P5_1
                                    104 	.globl _P5_0
                                    105 	.globl _P4_7
                                    106 	.globl _P4_6
                                    107 	.globl _P4_5
                                    108 	.globl _P4_4
                                    109 	.globl _P4_3
                                    110 	.globl _P4_2
                                    111 	.globl _P4_1
                                    112 	.globl _P4_0
                                    113 	.globl _PX0L
                                    114 	.globl _PT0L
                                    115 	.globl _PX1L
                                    116 	.globl _PT1L
                                    117 	.globl _PSL
                                    118 	.globl _PT2L
                                    119 	.globl _PPCL
                                    120 	.globl _EC
                                    121 	.globl _CCF0
                                    122 	.globl _CCF1
                                    123 	.globl _CCF2
                                    124 	.globl _CCF3
                                    125 	.globl _CCF4
                                    126 	.globl _CR
                                    127 	.globl _CF
                                    128 	.globl _TF2
                                    129 	.globl _EXF2
                                    130 	.globl _RCLK
                                    131 	.globl _TCLK
                                    132 	.globl _EXEN2
                                    133 	.globl _TR2
                                    134 	.globl _C_T2
                                    135 	.globl _CP_RL2
                                    136 	.globl _T2CON_7
                                    137 	.globl _T2CON_6
                                    138 	.globl _T2CON_5
                                    139 	.globl _T2CON_4
                                    140 	.globl _T2CON_3
                                    141 	.globl _T2CON_2
                                    142 	.globl _T2CON_1
                                    143 	.globl _T2CON_0
                                    144 	.globl _PT2
                                    145 	.globl _ET2
                                    146 	.globl _TMOD
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TCON
                                    152 	.globl _SP
                                    153 	.globl _SCON
                                    154 	.globl _SBUF0
                                    155 	.globl _SBUF
                                    156 	.globl _PSW
                                    157 	.globl _PCON
                                    158 	.globl _P3
                                    159 	.globl _P2
                                    160 	.globl _P1
                                    161 	.globl _P0
                                    162 	.globl _IP
                                    163 	.globl _IE
                                    164 	.globl _DP0L
                                    165 	.globl _DPL
                                    166 	.globl _DP0H
                                    167 	.globl _DPH
                                    168 	.globl _B
                                    169 	.globl _ACC
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 	.globl _print_number_hex_PARM_2
                                    222 	.globl _putchar
                                    223 	.globl _getchar
                                    224 	.globl _int_to_char
                                    225 	.globl _print_number_hex
                                    226 	.globl _my_printf
                                    227 	.globl _print_number
                                    228 	.globl _fetch_number
                                    229 	.globl _ms_delay
                                    230 	.globl _us_delay
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
      000008                        459 _print_number_hex_sloc3_1_0:
      000008                        460 	.ds 2
      00000A                        461 _print_number_hex_sloc4_1_0:
      00000A                        462 	.ds 4
      00000E                        463 _print_number_sloc0_1_0:
      00000E                        464 	.ds 2
      000010                        465 _print_number_sloc1_1_0:
      000010                        466 	.ds 4
      000014                        467 _us_delay_sloc0_1_0:
      000014                        468 	.ds 4
      000018                        469 _us_delay_sloc1_1_0:
      000018                        470 	.ds 4
                                    471 ;--------------------------------------------------------
                                    472 ; overlayable items in internal ram
                                    473 ;--------------------------------------------------------
                                    474 	.area	OSEG    (OVR,DATA)
      000027                        475 _ms_delay_sloc0_1_0:
      000027                        476 	.ds 4
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area IABS    (ABS,DATA)
                                    485 	.area IABS    (ABS,DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; bit data
                                    488 ;--------------------------------------------------------
                                    489 	.area BSEG    (BIT)
      000000                        490 _print_number_hex_sloc0_1_0:
      000000                        491 	.ds 1
      000001                        492 _print_number_hex_sloc1_1_0:
      000001                        493 	.ds 1
      000002                        494 _print_number_hex_sloc2_1_0:
      000002                        495 	.ds 1
                                    496 ;--------------------------------------------------------
                                    497 ; paged external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area PSEG    (PAG,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XSEG    (XDATA)
      00056E                        504 _putchar_ch_65536_12:
      00056E                        505 	.ds 2
      000570                        506 _int_to_char_temp_65536_18:
      000570                        507 	.ds 2
      000572                        508 _char_to_int_temp_65536_21:
      000572                        509 	.ds 1
      000573                        510 _print_number_hex_PARM_2:
      000573                        511 	.ds 1
      000574                        512 _print_number_hex_number_65536_26:
      000574                        513 	.ds 4
      000578                        514 _print_number_hex_temp_ascii_store_65536_27:
      000578                        515 	.ds 10
      000582                        516 _print_number_hex_counter_65536_27:
      000582                        517 	.ds 1
      000583                        518 _my_printf_text_ptr_65536_40:
      000583                        519 	.ds 2
      000585                        520 _print_number_number_65536_43:
      000585                        521 	.ds 4
      000589                        522 _print_number_temp_ascii_store_65536_44:
      000589                        523 	.ds 10
      000593                        524 _print_number_counter_65536_44:
      000593                        525 	.ds 1
      000594                        526 _fetch_number_base_65536_49:
      000594                        527 	.ds 1
      000595                        528 _fetch_number_scanned_digit_65536_50:
      000595                        529 	.ds 1
      000596                        530 _fetch_number_digit_array_65536_50:
      000596                        531 	.ds 20
      0005AA                        532 _fetch_number_digit_counter_65536_50:
      0005AA                        533 	.ds 1
      0005AB                        534 _fetch_number_number_65536_50:
      0005AB                        535 	.ds 2
      0005AD                        536 _ms_delay_time_65536_56:
      0005AD                        537 	.ds 4
      0005B1                        538 _us_delay_time_65536_61:
      0005B1                        539 	.ds 4
                                    540 ;--------------------------------------------------------
                                    541 ; absolute external ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XABS    (ABS,XDATA)
                                    544 ;--------------------------------------------------------
                                    545 ; external initialized ram data
                                    546 ;--------------------------------------------------------
                                    547 	.area XISEG   (XDATA)
                                    548 	.area HOME    (CODE)
                                    549 	.area GSINIT0 (CODE)
                                    550 	.area GSINIT1 (CODE)
                                    551 	.area GSINIT2 (CODE)
                                    552 	.area GSINIT3 (CODE)
                                    553 	.area GSINIT4 (CODE)
                                    554 	.area GSINIT5 (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.area GSFINAL (CODE)
                                    557 	.area CSEG    (CODE)
                                    558 ;--------------------------------------------------------
                                    559 ; global & static initialisations
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
                                    562 	.area GSINIT  (CODE)
                                    563 	.area GSFINAL (CODE)
                                    564 	.area GSINIT  (CODE)
                                    565 ;--------------------------------------------------------
                                    566 ; Home
                                    567 ;--------------------------------------------------------
                                    568 	.area HOME    (CODE)
                                    569 	.area HOME    (CODE)
                                    570 ;--------------------------------------------------------
                                    571 ; code
                                    572 ;--------------------------------------------------------
                                    573 	.area CSEG    (CODE)
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'putchar'
                                    576 ;------------------------------------------------------------
                                    577 ;ch                        Allocated with name '_putchar_ch_65536_12'
                                    578 ;------------------------------------------------------------
                                    579 ;	uart.c:7: int putchar (int ch)
                                    580 ;	-----------------------------------------
                                    581 ;	 function putchar
                                    582 ;	-----------------------------------------
      003FBE                        583 _putchar:
                           000007   584 	ar7 = 0x07
                           000006   585 	ar6 = 0x06
                           000005   586 	ar5 = 0x05
                           000004   587 	ar4 = 0x04
                           000003   588 	ar3 = 0x03
                           000002   589 	ar2 = 0x02
                           000001   590 	ar1 = 0x01
                           000000   591 	ar0 = 0x00
      003FBE AF 83            [24]  592 	mov	r7,dph
      003FC0 E5 82            [12]  593 	mov	a,dpl
      003FC2 90 05 6E         [24]  594 	mov	dptr,#_putchar_ch_65536_12
      003FC5 F0               [24]  595 	movx	@dptr,a
      003FC6 EF               [12]  596 	mov	a,r7
      003FC7 A3               [24]  597 	inc	dptr
      003FC8 F0               [24]  598 	movx	@dptr,a
                                    599 ;	uart.c:9: while (TI==0)
      003FC9                        600 00101$:
      003FC9 30 99 FD         [24]  601 	jnb	_TI,00101$
                                    602 ;	uart.c:14: SBUF = ch;
      003FCC 90 05 6E         [24]  603 	mov	dptr,#_putchar_ch_65536_12
      003FCF E0               [24]  604 	movx	a,@dptr
      003FD0 FE               [12]  605 	mov	r6,a
      003FD1 A3               [24]  606 	inc	dptr
      003FD2 E0               [24]  607 	movx	a,@dptr
      003FD3 FF               [12]  608 	mov	r7,a
      003FD4 8E 99            [24]  609 	mov	_SBUF,r6
                                    610 ;	uart.c:15: TI = 0;
                                    611 ;	assignBit
      003FD6 C2 99            [12]  612 	clr	_TI
                                    613 ;	uart.c:17: return ch;
      003FD8 8E 82            [24]  614 	mov	dpl,r6
      003FDA 8F 83            [24]  615 	mov	dph,r7
                                    616 ;	uart.c:18: }
      003FDC 22               [24]  617 	ret
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'getchar'
                                    620 ;------------------------------------------------------------
                                    621 ;	uart.c:20: int getchar (void)
                                    622 ;	-----------------------------------------
                                    623 ;	 function getchar
                                    624 ;	-----------------------------------------
      003FDD                        625 _getchar:
                                    626 ;	uart.c:22: while (RI==0)
      003FDD                        627 00101$:
                                    628 ;	uart.c:27: RI = 0;
                                    629 ;	assignBit
      003FDD 10 98 02         [24]  630 	jbc	_RI,00114$
      003FE0 80 FB            [24]  631 	sjmp	00101$
      003FE2                        632 00114$:
                                    633 ;	uart.c:28: return SBUF;
      003FE2 AE 99            [24]  634 	mov	r6,_SBUF
      003FE4 7F 00            [12]  635 	mov	r7,#0x00
      003FE6 8E 82            [24]  636 	mov	dpl,r6
      003FE8 8F 83            [24]  637 	mov	dph,r7
                                    638 ;	uart.c:29: }
      003FEA 22               [24]  639 	ret
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'int_to_char'
                                    642 ;------------------------------------------------------------
                                    643 ;temp                      Allocated with name '_int_to_char_temp_65536_18'
                                    644 ;------------------------------------------------------------
                                    645 ;	uart.c:31: int8_t int_to_char(int temp)           /*Function that includes switch statement for hex definition*/
                                    646 ;	-----------------------------------------
                                    647 ;	 function int_to_char
                                    648 ;	-----------------------------------------
      003FEB                        649 _int_to_char:
      003FEB AF 83            [24]  650 	mov	r7,dph
      003FED E5 82            [12]  651 	mov	a,dpl
      003FEF 90 05 70         [24]  652 	mov	dptr,#_int_to_char_temp_65536_18
      003FF2 F0               [24]  653 	movx	@dptr,a
      003FF3 EF               [12]  654 	mov	a,r7
      003FF4 A3               [24]  655 	inc	dptr
      003FF5 F0               [24]  656 	movx	@dptr,a
                                    657 ;	uart.c:33: switch(temp)            /*switch case for defining hex characters above 9 i.e. 'A' to 'F'*/
      003FF6 90 05 70         [24]  658 	mov	dptr,#_int_to_char_temp_65536_18
      003FF9 E0               [24]  659 	movx	a,@dptr
      003FFA FE               [12]  660 	mov	r6,a
      003FFB A3               [24]  661 	inc	dptr
      003FFC E0               [24]  662 	movx	a,@dptr
      003FFD FF               [12]  663 	mov	r7,a
      003FFE 30 E7 03         [24]  664 	jnb	acc.7,00128$
      004001 02 40 84         [24]  665 	ljmp	00117$
      004004                        666 00128$:
      004004 C3               [12]  667 	clr	c
      004005 74 0F            [12]  668 	mov	a,#0x0f
      004007 9E               [12]  669 	subb	a,r6
      004008 74 80            [12]  670 	mov	a,#(0x00 ^ 0x80)
      00400A 8F F0            [24]  671 	mov	b,r7
      00400C 63 F0 80         [24]  672 	xrl	b,#0x80
      00400F 95 F0            [12]  673 	subb	a,b
      004011 50 03            [24]  674 	jnc	00129$
      004013 02 40 84         [24]  675 	ljmp	00117$
      004016                        676 00129$:
      004016 EE               [12]  677 	mov	a,r6
      004017 24 0A            [12]  678 	add	a,#(00130$-3-.)
      004019 83               [24]  679 	movc	a,@a+pc
      00401A F5 82            [12]  680 	mov	dpl,a
      00401C EE               [12]  681 	mov	a,r6
      00401D 24 14            [12]  682 	add	a,#(00131$-3-.)
      00401F 83               [24]  683 	movc	a,@a+pc
      004020 F5 83            [12]  684 	mov	dph,a
      004022 E4               [12]  685 	clr	a
      004023 73               [24]  686 	jmp	@a+dptr
      004024                        687 00130$:
      004024 48                     688 	.db	00102$
      004025 44                     689 	.db	00101$
      004026 4C                     690 	.db	00103$
      004027 50                     691 	.db	00104$
      004028 54                     692 	.db	00105$
      004029 58                     693 	.db	00106$
      00402A 5C                     694 	.db	00107$
      00402B 60                     695 	.db	00108$
      00402C 64                     696 	.db	00109$
      00402D 68                     697 	.db	00110$
      00402E 6C                     698 	.db	00111$
      00402F 70                     699 	.db	00112$
      004030 74                     700 	.db	00113$
      004031 78                     701 	.db	00114$
      004032 7C                     702 	.db	00115$
      004033 80                     703 	.db	00116$
      004034                        704 00131$:
      004034 40                     705 	.db	00102$>>8
      004035 40                     706 	.db	00101$>>8
      004036 40                     707 	.db	00103$>>8
      004037 40                     708 	.db	00104$>>8
      004038 40                     709 	.db	00105$>>8
      004039 40                     710 	.db	00106$>>8
      00403A 40                     711 	.db	00107$>>8
      00403B 40                     712 	.db	00108$>>8
      00403C 40                     713 	.db	00109$>>8
      00403D 40                     714 	.db	00110$>>8
      00403E 40                     715 	.db	00111$>>8
      00403F 40                     716 	.db	00112$>>8
      004040 40                     717 	.db	00113$>>8
      004041 40                     718 	.db	00114$>>8
      004042 40                     719 	.db	00115$>>8
      004043 40                     720 	.db	00116$>>8
                                    721 ;	uart.c:34: {		case 1:
      004044                        722 00101$:
                                    723 ;	uart.c:35: return '1';
      004044 75 82 31         [24]  724 	mov	dpl,#0x31
                                    725 ;	uart.c:37: case 0:
      004047 22               [24]  726 	ret
      004048                        727 00102$:
                                    728 ;	uart.c:38: return '0';
      004048 75 82 30         [24]  729 	mov	dpl,#0x30
                                    730 ;	uart.c:40: case 2:
      00404B 22               [24]  731 	ret
      00404C                        732 00103$:
                                    733 ;	uart.c:41: return '2';
      00404C 75 82 32         [24]  734 	mov	dpl,#0x32
                                    735 ;	uart.c:43: case 3:
      00404F 22               [24]  736 	ret
      004050                        737 00104$:
                                    738 ;	uart.c:44: return '3';
      004050 75 82 33         [24]  739 	mov	dpl,#0x33
                                    740 ;	uart.c:46: case 4:
      004053 22               [24]  741 	ret
      004054                        742 00105$:
                                    743 ;	uart.c:47: return '4';
      004054 75 82 34         [24]  744 	mov	dpl,#0x34
                                    745 ;	uart.c:49: case 5:
      004057 22               [24]  746 	ret
      004058                        747 00106$:
                                    748 ;	uart.c:50: return '5';
      004058 75 82 35         [24]  749 	mov	dpl,#0x35
                                    750 ;	uart.c:52: case 6:
      00405B 22               [24]  751 	ret
      00405C                        752 00107$:
                                    753 ;	uart.c:53: return '6';
      00405C 75 82 36         [24]  754 	mov	dpl,#0x36
                                    755 ;	uart.c:55: case 7:
      00405F 22               [24]  756 	ret
      004060                        757 00108$:
                                    758 ;	uart.c:56: return '7';
      004060 75 82 37         [24]  759 	mov	dpl,#0x37
                                    760 ;	uart.c:58: case 8:
      004063 22               [24]  761 	ret
      004064                        762 00109$:
                                    763 ;	uart.c:59: return '8';
      004064 75 82 38         [24]  764 	mov	dpl,#0x38
                                    765 ;	uart.c:61: case 9:
      004067 22               [24]  766 	ret
      004068                        767 00110$:
                                    768 ;	uart.c:62: return '9';
      004068 75 82 39         [24]  769 	mov	dpl,#0x39
                                    770 ;	uart.c:64: case 10:
      00406B 22               [24]  771 	ret
      00406C                        772 00111$:
                                    773 ;	uart.c:65: return 'A';
      00406C 75 82 41         [24]  774 	mov	dpl,#0x41
                                    775 ;	uart.c:67: case 11:
      00406F 22               [24]  776 	ret
      004070                        777 00112$:
                                    778 ;	uart.c:69: return 'B';
      004070 75 82 42         [24]  779 	mov	dpl,#0x42
                                    780 ;	uart.c:71: case 12:
      004073 22               [24]  781 	ret
      004074                        782 00113$:
                                    783 ;	uart.c:72: return 'C';
      004074 75 82 43         [24]  784 	mov	dpl,#0x43
                                    785 ;	uart.c:74: case 13:
      004077 22               [24]  786 	ret
      004078                        787 00114$:
                                    788 ;	uart.c:75: return 'D';
      004078 75 82 44         [24]  789 	mov	dpl,#0x44
                                    790 ;	uart.c:77: case 14:
      00407B 22               [24]  791 	ret
      00407C                        792 00115$:
                                    793 ;	uart.c:78: return 'E';
      00407C 75 82 45         [24]  794 	mov	dpl,#0x45
                                    795 ;	uart.c:80: case 15:
      00407F 22               [24]  796 	ret
      004080                        797 00116$:
                                    798 ;	uart.c:81: return 'F';
      004080 75 82 46         [24]  799 	mov	dpl,#0x46
                                    800 ;	uart.c:83: }
      004083 22               [24]  801 	ret
      004084                        802 00117$:
                                    803 ;	uart.c:84: return '0';
      004084 75 82 30         [24]  804 	mov	dpl,#0x30
                                    805 ;	uart.c:85: }
      004087 22               [24]  806 	ret
                                    807 ;------------------------------------------------------------
                                    808 ;Allocation info for local variables in function 'char_to_int'
                                    809 ;------------------------------------------------------------
                                    810 ;temp                      Allocated with name '_char_to_int_temp_65536_21'
                                    811 ;------------------------------------------------------------
                                    812 ;	uart.c:87: uint8_t char_to_int(uint8_t temp)
                                    813 ;	-----------------------------------------
                                    814 ;	 function char_to_int
                                    815 ;	-----------------------------------------
      004088                        816 _char_to_int:
      004088 E5 82            [12]  817 	mov	a,dpl
      00408A 90 05 72         [24]  818 	mov	dptr,#_char_to_int_temp_65536_21
      00408D F0               [24]  819 	movx	@dptr,a
                                    820 ;	uart.c:89: if((temp>='0')&&(temp<='9'))
      00408E E0               [24]  821 	movx	a,@dptr
      00408F FF               [12]  822 	mov	r7,a
      004090 BF 30 00         [24]  823 	cjne	r7,#0x30,00138$
      004093                        824 00138$:
      004093 40 0E            [24]  825 	jc	00109$
      004095 EF               [12]  826 	mov	a,r7
      004096 24 C6            [12]  827 	add	a,#0xff - 0x39
      004098 40 09            [24]  828 	jc	00109$
                                    829 ;	uart.c:91: temp-='0';
      00409A EF               [12]  830 	mov	a,r7
      00409B 24 D0            [12]  831 	add	a,#0xd0
      00409D 90 05 72         [24]  832 	mov	dptr,#_char_to_int_temp_65536_21
      0040A0 F0               [24]  833 	movx	@dptr,a
      0040A1 80 38            [24]  834 	sjmp	00110$
      0040A3                        835 00109$:
                                    836 ;	uart.c:93: else if((temp>='a')&&(temp<='f'))
      0040A3 90 05 72         [24]  837 	mov	dptr,#_char_to_int_temp_65536_21
      0040A6 E0               [24]  838 	movx	a,@dptr
      0040A7 FF               [12]  839 	mov	r7,a
      0040A8 BF 61 00         [24]  840 	cjne	r7,#0x61,00141$
      0040AB                        841 00141$:
      0040AB 40 13            [24]  842 	jc	00105$
      0040AD EF               [12]  843 	mov	a,r7
      0040AE 24 99            [12]  844 	add	a,#0xff - 0x66
      0040B0 40 0E            [24]  845 	jc	00105$
                                    846 ;	uart.c:95: temp-='a';
      0040B2 EF               [12]  847 	mov	a,r7
      0040B3 24 9F            [12]  848 	add	a,#0x9f
      0040B5 90 05 72         [24]  849 	mov	dptr,#_char_to_int_temp_65536_21
      0040B8 F0               [24]  850 	movx	@dptr,a
                                    851 ;	uart.c:96: temp+=10;
      0040B9 E0               [24]  852 	movx	a,@dptr
      0040BA FF               [12]  853 	mov	r7,a
      0040BB 24 0A            [12]  854 	add	a,#0x0a
      0040BD F0               [24]  855 	movx	@dptr,a
      0040BE 80 1B            [24]  856 	sjmp	00110$
      0040C0                        857 00105$:
                                    858 ;	uart.c:98: else if((temp>='A')&&(temp<='f'))
      0040C0 90 05 72         [24]  859 	mov	dptr,#_char_to_int_temp_65536_21
      0040C3 E0               [24]  860 	movx	a,@dptr
      0040C4 FF               [12]  861 	mov	r7,a
      0040C5 BF 41 00         [24]  862 	cjne	r7,#0x41,00144$
      0040C8                        863 00144$:
      0040C8 40 11            [24]  864 	jc	00110$
      0040CA EF               [12]  865 	mov	a,r7
      0040CB 24 99            [12]  866 	add	a,#0xff - 0x66
      0040CD 40 0C            [24]  867 	jc	00110$
                                    868 ;	uart.c:100: temp-='A';
      0040CF EF               [12]  869 	mov	a,r7
      0040D0 24 BF            [12]  870 	add	a,#0xbf
      0040D2 90 05 72         [24]  871 	mov	dptr,#_char_to_int_temp_65536_21
      0040D5 F0               [24]  872 	movx	@dptr,a
                                    873 ;	uart.c:101: temp+=10;
      0040D6 E0               [24]  874 	movx	a,@dptr
      0040D7 FF               [12]  875 	mov	r7,a
      0040D8 24 0A            [12]  876 	add	a,#0x0a
      0040DA F0               [24]  877 	movx	@dptr,a
      0040DB                        878 00110$:
                                    879 ;	uart.c:103: return temp;
      0040DB 90 05 72         [24]  880 	mov	dptr,#_char_to_int_temp_65536_21
      0040DE E0               [24]  881 	movx	a,@dptr
                                    882 ;	uart.c:104: }
      0040DF F5 82            [12]  883 	mov	dpl,a
      0040E1 22               [24]  884 	ret
                                    885 ;------------------------------------------------------------
                                    886 ;Allocation info for local variables in function 'print_number_hex'
                                    887 ;------------------------------------------------------------
                                    888 ;sloc3                     Allocated with name '_print_number_hex_sloc3_1_0'
                                    889 ;sloc4                     Allocated with name '_print_number_hex_sloc4_1_0'
                                    890 ;display_width             Allocated with name '_print_number_hex_PARM_2'
                                    891 ;number                    Allocated with name '_print_number_hex_number_65536_26'
                                    892 ;temp_ascii_store          Allocated with name '_print_number_hex_temp_ascii_store_65536_27'
                                    893 ;temp_value                Allocated with name '_print_number_hex_temp_value_65536_27'
                                    894 ;counter                   Allocated with name '_print_number_hex_counter_65536_27'
                                    895 ;value_check               Allocated with name '_print_number_hex_value_check_65536_27'
                                    896 ;------------------------------------------------------------
                                    897 ;	uart.c:106: void print_number_hex(__xdata uint32_t number,__xdata uint8_t display_width)
                                    898 ;	-----------------------------------------
                                    899 ;	 function print_number_hex
                                    900 ;	-----------------------------------------
      0040E2                        901 _print_number_hex:
      0040E2 AF 82            [24]  902 	mov	r7,dpl
      0040E4 AE 83            [24]  903 	mov	r6,dph
      0040E6 AD F0            [24]  904 	mov	r5,b
      0040E8 FC               [12]  905 	mov	r4,a
      0040E9 90 05 74         [24]  906 	mov	dptr,#_print_number_hex_number_65536_26
      0040EC EF               [12]  907 	mov	a,r7
      0040ED F0               [24]  908 	movx	@dptr,a
      0040EE EE               [12]  909 	mov	a,r6
      0040EF A3               [24]  910 	inc	dptr
      0040F0 F0               [24]  911 	movx	@dptr,a
      0040F1 ED               [12]  912 	mov	a,r5
      0040F2 A3               [24]  913 	inc	dptr
      0040F3 F0               [24]  914 	movx	@dptr,a
      0040F4 EC               [12]  915 	mov	a,r4
      0040F5 A3               [24]  916 	inc	dptr
      0040F6 F0               [24]  917 	movx	@dptr,a
                                    918 ;	uart.c:111: for(counter=display_width;counter>1;counter--)
      0040F7 90 05 73         [24]  919 	mov	dptr,#_print_number_hex_PARM_2
      0040FA E0               [24]  920 	movx	a,@dptr
      0040FB FF               [12]  921 	mov	r7,a
      0040FC 90 05 74         [24]  922 	mov	dptr,#_print_number_hex_number_65536_26
      0040FF E0               [24]  923 	movx	a,@dptr
      004100 FB               [12]  924 	mov	r3,a
      004101 A3               [24]  925 	inc	dptr
      004102 E0               [24]  926 	movx	a,@dptr
      004103 FC               [12]  927 	mov	r4,a
      004104 A3               [24]  928 	inc	dptr
      004105 E0               [24]  929 	movx	a,@dptr
      004106 FD               [12]  930 	mov	r5,a
      004107 A3               [24]  931 	inc	dptr
      004108 E0               [24]  932 	movx	a,@dptr
      004109 FE               [12]  933 	mov	r6,a
      00410A C3               [12]  934 	clr	c
      00410B 74 0F            [12]  935 	mov	a,#0x0f
      00410D 9B               [12]  936 	subb	a,r3
      00410E E4               [12]  937 	clr	a
      00410F 9C               [12]  938 	subb	a,r4
      004110 E4               [12]  939 	clr	a
      004111 9D               [12]  940 	subb	a,r5
      004112 E4               [12]  941 	clr	a
      004113 9E               [12]  942 	subb	a,r6
      004114 92 00            [24]  943 	mov	_print_number_hex_sloc0_1_0,c
      004116 C3               [12]  944 	clr	c
      004117 74 FF            [12]  945 	mov	a,#0xff
      004119 9B               [12]  946 	subb	a,r3
      00411A E4               [12]  947 	clr	a
      00411B 9C               [12]  948 	subb	a,r4
      00411C E4               [12]  949 	clr	a
      00411D 9D               [12]  950 	subb	a,r5
      00411E E4               [12]  951 	clr	a
      00411F 9E               [12]  952 	subb	a,r6
      004120 92 01            [24]  953 	mov	_print_number_hex_sloc1_1_0,c
      004122 C3               [12]  954 	clr	c
      004123 74 FF            [12]  955 	mov	a,#0xff
      004125 9B               [12]  956 	subb	a,r3
      004126 74 0F            [12]  957 	mov	a,#0x0f
      004128 9C               [12]  958 	subb	a,r4
      004129 E4               [12]  959 	clr	a
      00412A 9D               [12]  960 	subb	a,r5
      00412B E4               [12]  961 	clr	a
      00412C 9E               [12]  962 	subb	a,r6
      00412D 92 02            [24]  963 	mov	_print_number_hex_sloc2_1_0,c
      00412F                        964 00117$:
      00412F C3               [12]  965 	clr	c
      004130 74 81            [12]  966 	mov	a,#(0x01 ^ 0x80)
      004132 8F F0            [24]  967 	mov	b,r7
      004134 63 F0 80         [24]  968 	xrl	b,#0x80
      004137 95 F0            [12]  969 	subb	a,b
      004139 50 3B            [24]  970 	jnc	00132$
                                    971 ;	uart.c:113: switch(counter)
      00413B BF 02 02         [24]  972 	cjne	r7,#0x02,00176$
      00413E 80 26            [24]  973 	sjmp	00107$
      004140                        974 00176$:
      004140 BF 03 02         [24]  975 	cjne	r7,#0x03,00177$
      004143 80 12            [24]  976 	sjmp	00104$
      004145                        977 00177$:
      004145 BF 04 2B         [24]  978 	cjne	r7,#0x04,00118$
                                    979 ;	uart.c:118: if(number<=value_check)
      004148 20 02 28         [24]  980 	jb	_print_number_hex_sloc2_1_0,00118$
                                    981 ;	uart.c:120: putchar('0');
      00414B 90 00 30         [24]  982 	mov	dptr,#0x0030
      00414E C0 07            [24]  983 	push	ar7
      004150 12 3F BE         [24]  984 	lcall	_putchar
      004153 D0 07            [24]  985 	pop	ar7
                                    986 ;	uart.c:122: break;
                                    987 ;	uart.c:125: case 3:
      004155 80 1C            [24]  988 	sjmp	00118$
      004157                        989 00104$:
                                    990 ;	uart.c:128: if(number<=value_check)
      004157 20 01 19         [24]  991 	jb	_print_number_hex_sloc1_1_0,00118$
                                    992 ;	uart.c:130: putchar('0');
      00415A 90 00 30         [24]  993 	mov	dptr,#0x0030
      00415D C0 07            [24]  994 	push	ar7
      00415F 12 3F BE         [24]  995 	lcall	_putchar
      004162 D0 07            [24]  996 	pop	ar7
                                    997 ;	uart.c:132: break;
                                    998 ;	uart.c:135: case 2:
      004164 80 0D            [24]  999 	sjmp	00118$
      004166                       1000 00107$:
                                   1001 ;	uart.c:138: if(number<=value_check)
      004166 20 00 0A         [24] 1002 	jb	_print_number_hex_sloc0_1_0,00118$
                                   1003 ;	uart.c:140: putchar('0');
      004169 90 00 30         [24] 1004 	mov	dptr,#0x0030
      00416C C0 07            [24] 1005 	push	ar7
      00416E 12 3F BE         [24] 1006 	lcall	_putchar
      004171 D0 07            [24] 1007 	pop	ar7
                                   1008 ;	uart.c:144: }
      004173                       1009 00118$:
                                   1010 ;	uart.c:111: for(counter=display_width;counter>1;counter--)
      004173 1F               [12] 1011 	dec	r7
                                   1012 ;	uart.c:146: do
      004174 80 B9            [24] 1013 	sjmp	00117$
      004176                       1014 00132$:
      004176                       1015 00112$:
                                   1016 ;	uart.c:148: temp_ascii_store[counter]=int_to_char(number%16);
      004176 EF               [12] 1017 	mov	a,r7
      004177 FD               [12] 1018 	mov	r5,a
      004178 33               [12] 1019 	rlc	a
      004179 95 E0            [12] 1020 	subb	a,acc
      00417B FE               [12] 1021 	mov	r6,a
      00417C ED               [12] 1022 	mov	a,r5
      00417D 24 78            [12] 1023 	add	a,#_print_number_hex_temp_ascii_store_65536_27
      00417F F5 08            [12] 1024 	mov	_print_number_hex_sloc3_1_0,a
      004181 EE               [12] 1025 	mov	a,r6
      004182 34 05            [12] 1026 	addc	a,#(_print_number_hex_temp_ascii_store_65536_27 >> 8)
      004184 F5 09            [12] 1027 	mov	(_print_number_hex_sloc3_1_0 + 1),a
      004186 90 05 74         [24] 1028 	mov	dptr,#_print_number_hex_number_65536_26
      004189 E0               [24] 1029 	movx	a,@dptr
      00418A F5 0A            [12] 1030 	mov	_print_number_hex_sloc4_1_0,a
      00418C A3               [24] 1031 	inc	dptr
      00418D E0               [24] 1032 	movx	a,@dptr
      00418E F5 0B            [12] 1033 	mov	(_print_number_hex_sloc4_1_0 + 1),a
      004190 A3               [24] 1034 	inc	dptr
      004191 E0               [24] 1035 	movx	a,@dptr
      004192 F5 0C            [12] 1036 	mov	(_print_number_hex_sloc4_1_0 + 2),a
      004194 A3               [24] 1037 	inc	dptr
      004195 E0               [24] 1038 	movx	a,@dptr
      004196 F5 0D            [12] 1039 	mov	(_print_number_hex_sloc4_1_0 + 3),a
      004198 74 0F            [12] 1040 	mov	a,#0x0f
      00419A 55 0A            [12] 1041 	anl	a,_print_number_hex_sloc4_1_0
      00419C F8               [12] 1042 	mov	r0,a
      00419D 7C 00            [12] 1043 	mov	r4,#0x00
      00419F 88 82            [24] 1044 	mov	dpl,r0
      0041A1 8C 83            [24] 1045 	mov	dph,r4
      0041A3 C0 07            [24] 1046 	push	ar7
      0041A5 12 3F EB         [24] 1047 	lcall	_int_to_char
      0041A8 AE 82            [24] 1048 	mov	r6,dpl
      0041AA D0 07            [24] 1049 	pop	ar7
      0041AC 85 08 82         [24] 1050 	mov	dpl,_print_number_hex_sloc3_1_0
      0041AF 85 09 83         [24] 1051 	mov	dph,(_print_number_hex_sloc3_1_0 + 1)
      0041B2 EE               [12] 1052 	mov	a,r6
      0041B3 F0               [24] 1053 	movx	@dptr,a
                                   1054 ;	uart.c:149: number/=16;
      0041B4 AB 0A            [24] 1055 	mov	r3,_print_number_hex_sloc4_1_0
      0041B6 E5 0B            [12] 1056 	mov	a,(_print_number_hex_sloc4_1_0 + 1)
      0041B8 C4               [12] 1057 	swap	a
      0041B9 CB               [12] 1058 	xch	a,r3
      0041BA C4               [12] 1059 	swap	a
      0041BB 54 0F            [12] 1060 	anl	a,#0x0f
      0041BD 6B               [12] 1061 	xrl	a,r3
      0041BE CB               [12] 1062 	xch	a,r3
      0041BF 54 0F            [12] 1063 	anl	a,#0x0f
      0041C1 CB               [12] 1064 	xch	a,r3
      0041C2 6B               [12] 1065 	xrl	a,r3
      0041C3 CB               [12] 1066 	xch	a,r3
      0041C4 FC               [12] 1067 	mov	r4,a
      0041C5 E5 0C            [12] 1068 	mov	a,(_print_number_hex_sloc4_1_0 + 2)
      0041C7 C4               [12] 1069 	swap	a
      0041C8 54 F0            [12] 1070 	anl	a,#0xf0
      0041CA 4C               [12] 1071 	orl	a,r4
      0041CB FC               [12] 1072 	mov	r4,a
      0041CC AD 0C            [24] 1073 	mov	r5,(_print_number_hex_sloc4_1_0 + 2)
      0041CE E5 0D            [12] 1074 	mov	a,(_print_number_hex_sloc4_1_0 + 3)
      0041D0 C4               [12] 1075 	swap	a
      0041D1 CD               [12] 1076 	xch	a,r5
      0041D2 C4               [12] 1077 	swap	a
      0041D3 54 0F            [12] 1078 	anl	a,#0x0f
      0041D5 6D               [12] 1079 	xrl	a,r5
      0041D6 CD               [12] 1080 	xch	a,r5
      0041D7 54 0F            [12] 1081 	anl	a,#0x0f
      0041D9 CD               [12] 1082 	xch	a,r5
      0041DA 6D               [12] 1083 	xrl	a,r5
      0041DB CD               [12] 1084 	xch	a,r5
      0041DC FE               [12] 1085 	mov	r6,a
      0041DD 90 05 74         [24] 1086 	mov	dptr,#_print_number_hex_number_65536_26
      0041E0 EB               [12] 1087 	mov	a,r3
      0041E1 F0               [24] 1088 	movx	@dptr,a
      0041E2 EC               [12] 1089 	mov	a,r4
      0041E3 A3               [24] 1090 	inc	dptr
      0041E4 F0               [24] 1091 	movx	@dptr,a
      0041E5 ED               [12] 1092 	mov	a,r5
      0041E6 A3               [24] 1093 	inc	dptr
      0041E7 F0               [24] 1094 	movx	@dptr,a
      0041E8 EE               [12] 1095 	mov	a,r6
      0041E9 A3               [24] 1096 	inc	dptr
      0041EA F0               [24] 1097 	movx	@dptr,a
                                   1098 ;	uart.c:150: counter++;
      0041EB 0F               [12] 1099 	inc	r7
                                   1100 ;	uart.c:151: }while(number>0);
      0041EC 90 05 74         [24] 1101 	mov	dptr,#_print_number_hex_number_65536_26
      0041EF E0               [24] 1102 	movx	a,@dptr
      0041F0 F5 F0            [12] 1103 	mov	b,a
      0041F2 A3               [24] 1104 	inc	dptr
      0041F3 E0               [24] 1105 	movx	a,@dptr
      0041F4 42 F0            [12] 1106 	orl	b,a
      0041F6 A3               [24] 1107 	inc	dptr
      0041F7 E0               [24] 1108 	movx	a,@dptr
      0041F8 42 F0            [12] 1109 	orl	b,a
      0041FA A3               [24] 1110 	inc	dptr
      0041FB E0               [24] 1111 	movx	a,@dptr
      0041FC 45 F0            [12] 1112 	orl	a,b
      0041FE 60 03            [24] 1113 	jz	00183$
      004200 02 41 76         [24] 1114 	ljmp	00112$
      004203                       1115 00183$:
                                   1116 ;	uart.c:152: for(counter-=1;counter>=0;counter--)
      004203 EF               [12] 1117 	mov	a,r7
      004204 14               [12] 1118 	dec	a
      004205 90 05 82         [24] 1119 	mov	dptr,#_print_number_hex_counter_65536_27
      004208 F0               [24] 1120 	movx	@dptr,a
      004209 E0               [24] 1121 	movx	a,@dptr
      00420A FF               [12] 1122 	mov	r7,a
      00420B                       1123 00120$:
      00420B EF               [12] 1124 	mov	a,r7
      00420C 20 E7 22         [24] 1125 	jb	acc.7,00115$
                                   1126 ;	uart.c:154: putchar(temp_ascii_store[counter]);
      00420F EF               [12] 1127 	mov	a,r7
      004210 FD               [12] 1128 	mov	r5,a
      004211 33               [12] 1129 	rlc	a
      004212 95 E0            [12] 1130 	subb	a,acc
      004214 FE               [12] 1131 	mov	r6,a
      004215 ED               [12] 1132 	mov	a,r5
      004216 24 78            [12] 1133 	add	a,#_print_number_hex_temp_ascii_store_65536_27
      004218 F5 82            [12] 1134 	mov	dpl,a
      00421A EE               [12] 1135 	mov	a,r6
      00421B 34 05            [12] 1136 	addc	a,#(_print_number_hex_temp_ascii_store_65536_27 >> 8)
      00421D F5 83            [12] 1137 	mov	dph,a
      00421F E0               [24] 1138 	movx	a,@dptr
      004220 FE               [12] 1139 	mov	r6,a
      004221 7D 00            [12] 1140 	mov	r5,#0x00
      004223 8E 82            [24] 1141 	mov	dpl,r6
      004225 8D 83            [24] 1142 	mov	dph,r5
      004227 C0 07            [24] 1143 	push	ar7
      004229 12 3F BE         [24] 1144 	lcall	_putchar
      00422C D0 07            [24] 1145 	pop	ar7
                                   1146 ;	uart.c:152: for(counter-=1;counter>=0;counter--)
      00422E 1F               [12] 1147 	dec	r7
      00422F 80 DA            [24] 1148 	sjmp	00120$
      004231                       1149 00115$:
                                   1150 ;	uart.c:156: return;
                                   1151 ;	uart.c:157: }
      004231 22               [24] 1152 	ret
                                   1153 ;------------------------------------------------------------
                                   1154 ;Allocation info for local variables in function 'my_printf'
                                   1155 ;------------------------------------------------------------
                                   1156 ;text_ptr                  Allocated with name '_my_printf_text_ptr_65536_40'
                                   1157 ;------------------------------------------------------------
                                   1158 ;	uart.c:160: void my_printf(__xdata uint8_t* text_ptr)
                                   1159 ;	-----------------------------------------
                                   1160 ;	 function my_printf
                                   1161 ;	-----------------------------------------
      004232                       1162 _my_printf:
      004232 AF 83            [24] 1163 	mov	r7,dph
      004234 E5 82            [12] 1164 	mov	a,dpl
      004236 90 05 83         [24] 1165 	mov	dptr,#_my_printf_text_ptr_65536_40
      004239 F0               [24] 1166 	movx	@dptr,a
      00423A EF               [12] 1167 	mov	a,r7
      00423B A3               [24] 1168 	inc	dptr
      00423C F0               [24] 1169 	movx	@dptr,a
                                   1170 ;	uart.c:162: while(*text_ptr!='\0')
      00423D 90 05 83         [24] 1171 	mov	dptr,#_my_printf_text_ptr_65536_40
      004240 E0               [24] 1172 	movx	a,@dptr
      004241 FE               [12] 1173 	mov	r6,a
      004242 A3               [24] 1174 	inc	dptr
      004243 E0               [24] 1175 	movx	a,@dptr
      004244 FF               [12] 1176 	mov	r7,a
      004245                       1177 00101$:
      004245 8E 82            [24] 1178 	mov	dpl,r6
      004247 8F 83            [24] 1179 	mov	dph,r7
      004249 E0               [24] 1180 	movx	a,@dptr
      00424A FD               [12] 1181 	mov	r5,a
      00424B 60 20            [24] 1182 	jz	00108$
                                   1183 ;	uart.c:164: putchar(*text_ptr);
      00424D 7C 00            [12] 1184 	mov	r4,#0x00
      00424F 8D 82            [24] 1185 	mov	dpl,r5
      004251 8C 83            [24] 1186 	mov	dph,r4
      004253 C0 07            [24] 1187 	push	ar7
      004255 C0 06            [24] 1188 	push	ar6
      004257 12 3F BE         [24] 1189 	lcall	_putchar
      00425A D0 06            [24] 1190 	pop	ar6
      00425C D0 07            [24] 1191 	pop	ar7
                                   1192 ;	uart.c:165: text_ptr++;
      00425E 0E               [12] 1193 	inc	r6
      00425F BE 00 01         [24] 1194 	cjne	r6,#0x00,00116$
      004262 0F               [12] 1195 	inc	r7
      004263                       1196 00116$:
      004263 90 05 83         [24] 1197 	mov	dptr,#_my_printf_text_ptr_65536_40
      004266 EE               [12] 1198 	mov	a,r6
      004267 F0               [24] 1199 	movx	@dptr,a
      004268 EF               [12] 1200 	mov	a,r7
      004269 A3               [24] 1201 	inc	dptr
      00426A F0               [24] 1202 	movx	@dptr,a
      00426B 80 D8            [24] 1203 	sjmp	00101$
      00426D                       1204 00108$:
      00426D 90 05 83         [24] 1205 	mov	dptr,#_my_printf_text_ptr_65536_40
      004270 EE               [12] 1206 	mov	a,r6
      004271 F0               [24] 1207 	movx	@dptr,a
      004272 EF               [12] 1208 	mov	a,r7
      004273 A3               [24] 1209 	inc	dptr
      004274 F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	uart.c:167: return;
                                   1212 ;	uart.c:168: }
      004275 22               [24] 1213 	ret
                                   1214 ;------------------------------------------------------------
                                   1215 ;Allocation info for local variables in function 'print_number'
                                   1216 ;------------------------------------------------------------
                                   1217 ;sloc0                     Allocated with name '_print_number_sloc0_1_0'
                                   1218 ;sloc1                     Allocated with name '_print_number_sloc1_1_0'
                                   1219 ;number                    Allocated with name '_print_number_number_65536_43'
                                   1220 ;temp_ascii_store          Allocated with name '_print_number_temp_ascii_store_65536_44'
                                   1221 ;counter                   Allocated with name '_print_number_counter_65536_44'
                                   1222 ;------------------------------------------------------------
                                   1223 ;	uart.c:170: void print_number(__xdata int32_t number)
                                   1224 ;	-----------------------------------------
                                   1225 ;	 function print_number
                                   1226 ;	-----------------------------------------
      004276                       1227 _print_number:
      004276 AF 82            [24] 1228 	mov	r7,dpl
      004278 AE 83            [24] 1229 	mov	r6,dph
      00427A AD F0            [24] 1230 	mov	r5,b
      00427C FC               [12] 1231 	mov	r4,a
      00427D 90 05 85         [24] 1232 	mov	dptr,#_print_number_number_65536_43
      004280 EF               [12] 1233 	mov	a,r7
      004281 F0               [24] 1234 	movx	@dptr,a
      004282 EE               [12] 1235 	mov	a,r6
      004283 A3               [24] 1236 	inc	dptr
      004284 F0               [24] 1237 	movx	@dptr,a
      004285 ED               [12] 1238 	mov	a,r5
      004286 A3               [24] 1239 	inc	dptr
      004287 F0               [24] 1240 	movx	@dptr,a
      004288 EC               [12] 1241 	mov	a,r4
      004289 A3               [24] 1242 	inc	dptr
      00428A F0               [24] 1243 	movx	@dptr,a
                                   1244 ;	uart.c:174: if(number<0)
      00428B 90 05 85         [24] 1245 	mov	dptr,#_print_number_number_65536_43
      00428E E0               [24] 1246 	movx	a,@dptr
      00428F FC               [12] 1247 	mov	r4,a
      004290 A3               [24] 1248 	inc	dptr
      004291 E0               [24] 1249 	movx	a,@dptr
      004292 FD               [12] 1250 	mov	r5,a
      004293 A3               [24] 1251 	inc	dptr
      004294 E0               [24] 1252 	movx	a,@dptr
      004295 FE               [12] 1253 	mov	r6,a
      004296 A3               [24] 1254 	inc	dptr
      004297 E0               [24] 1255 	movx	a,@dptr
      004298 FF               [12] 1256 	mov	r7,a
      004299 30 E7 29         [24] 1257 	jnb	acc.7,00113$
                                   1258 ;	uart.c:176: putchar('-');
      00429C 90 00 2D         [24] 1259 	mov	dptr,#0x002d
      00429F C0 07            [24] 1260 	push	ar7
      0042A1 C0 06            [24] 1261 	push	ar6
      0042A3 C0 05            [24] 1262 	push	ar5
      0042A5 C0 04            [24] 1263 	push	ar4
      0042A7 12 3F BE         [24] 1264 	lcall	_putchar
      0042AA D0 04            [24] 1265 	pop	ar4
      0042AC D0 05            [24] 1266 	pop	ar5
      0042AE D0 06            [24] 1267 	pop	ar6
      0042B0 D0 07            [24] 1268 	pop	ar7
                                   1269 ;	uart.c:177: number *= -1;
      0042B2 90 05 85         [24] 1270 	mov	dptr,#_print_number_number_65536_43
      0042B5 C3               [12] 1271 	clr	c
      0042B6 E4               [12] 1272 	clr	a
      0042B7 9C               [12] 1273 	subb	a,r4
      0042B8 F0               [24] 1274 	movx	@dptr,a
      0042B9 E4               [12] 1275 	clr	a
      0042BA 9D               [12] 1276 	subb	a,r5
      0042BB A3               [24] 1277 	inc	dptr
      0042BC F0               [24] 1278 	movx	@dptr,a
      0042BD E4               [12] 1279 	clr	a
      0042BE 9E               [12] 1280 	subb	a,r6
      0042BF A3               [24] 1281 	inc	dptr
      0042C0 F0               [24] 1282 	movx	@dptr,a
      0042C1 E4               [12] 1283 	clr	a
      0042C2 9F               [12] 1284 	subb	a,r7
      0042C3 A3               [24] 1285 	inc	dptr
      0042C4 F0               [24] 1286 	movx	@dptr,a
                                   1287 ;	uart.c:179: do
      0042C5                       1288 00113$:
      0042C5 7F 00            [12] 1289 	mov	r7,#0x00
      0042C7                       1290 00103$:
                                   1291 ;	uart.c:181: temp_ascii_store[counter]='0'+number%10;
      0042C7 EF               [12] 1292 	mov	a,r7
      0042C8 FD               [12] 1293 	mov	r5,a
      0042C9 33               [12] 1294 	rlc	a
      0042CA 95 E0            [12] 1295 	subb	a,acc
      0042CC FE               [12] 1296 	mov	r6,a
      0042CD ED               [12] 1297 	mov	a,r5
      0042CE 24 89            [12] 1298 	add	a,#_print_number_temp_ascii_store_65536_44
      0042D0 F5 0E            [12] 1299 	mov	_print_number_sloc0_1_0,a
      0042D2 EE               [12] 1300 	mov	a,r6
      0042D3 34 05            [12] 1301 	addc	a,#(_print_number_temp_ascii_store_65536_44 >> 8)
      0042D5 F5 0F            [12] 1302 	mov	(_print_number_sloc0_1_0 + 1),a
      0042D7 90 05 85         [24] 1303 	mov	dptr,#_print_number_number_65536_43
      0042DA E0               [24] 1304 	movx	a,@dptr
      0042DB F5 10            [12] 1305 	mov	_print_number_sloc1_1_0,a
      0042DD A3               [24] 1306 	inc	dptr
      0042DE E0               [24] 1307 	movx	a,@dptr
      0042DF F5 11            [12] 1308 	mov	(_print_number_sloc1_1_0 + 1),a
      0042E1 A3               [24] 1309 	inc	dptr
      0042E2 E0               [24] 1310 	movx	a,@dptr
      0042E3 F5 12            [12] 1311 	mov	(_print_number_sloc1_1_0 + 2),a
      0042E5 A3               [24] 1312 	inc	dptr
      0042E6 E0               [24] 1313 	movx	a,@dptr
      0042E7 F5 13            [12] 1314 	mov	(_print_number_sloc1_1_0 + 3),a
      0042E9 90 05 B5         [24] 1315 	mov	dptr,#__modslong_PARM_2
      0042EC 74 0A            [12] 1316 	mov	a,#0x0a
      0042EE F0               [24] 1317 	movx	@dptr,a
      0042EF E4               [12] 1318 	clr	a
      0042F0 A3               [24] 1319 	inc	dptr
      0042F1 F0               [24] 1320 	movx	@dptr,a
      0042F2 A3               [24] 1321 	inc	dptr
      0042F3 F0               [24] 1322 	movx	@dptr,a
      0042F4 A3               [24] 1323 	inc	dptr
      0042F5 F0               [24] 1324 	movx	@dptr,a
      0042F6 85 10 82         [24] 1325 	mov	dpl,_print_number_sloc1_1_0
      0042F9 85 11 83         [24] 1326 	mov	dph,(_print_number_sloc1_1_0 + 1)
      0042FC 85 12 F0         [24] 1327 	mov	b,(_print_number_sloc1_1_0 + 2)
      0042FF E5 13            [12] 1328 	mov	a,(_print_number_sloc1_1_0 + 3)
      004301 C0 07            [24] 1329 	push	ar7
      004303 12 45 E9         [24] 1330 	lcall	__modslong
      004306 A8 82            [24] 1331 	mov	r0,dpl
      004308 74 30            [12] 1332 	mov	a,#0x30
      00430A 28               [12] 1333 	add	a,r0
      00430B 85 0E 82         [24] 1334 	mov	dpl,_print_number_sloc0_1_0
      00430E 85 0F 83         [24] 1335 	mov	dph,(_print_number_sloc0_1_0 + 1)
      004311 F0               [24] 1336 	movx	@dptr,a
                                   1337 ;	uart.c:182: number/=10;
      004312 90 05 C6         [24] 1338 	mov	dptr,#__divslong_PARM_2
      004315 74 0A            [12] 1339 	mov	a,#0x0a
      004317 F0               [24] 1340 	movx	@dptr,a
      004318 E4               [12] 1341 	clr	a
      004319 A3               [24] 1342 	inc	dptr
      00431A F0               [24] 1343 	movx	@dptr,a
      00431B A3               [24] 1344 	inc	dptr
      00431C F0               [24] 1345 	movx	@dptr,a
      00431D A3               [24] 1346 	inc	dptr
      00431E F0               [24] 1347 	movx	@dptr,a
      00431F 85 10 82         [24] 1348 	mov	dpl,_print_number_sloc1_1_0
      004322 85 11 83         [24] 1349 	mov	dph,(_print_number_sloc1_1_0 + 1)
      004325 85 12 F0         [24] 1350 	mov	b,(_print_number_sloc1_1_0 + 2)
      004328 E5 13            [12] 1351 	mov	a,(_print_number_sloc1_1_0 + 3)
      00432A 12 47 DD         [24] 1352 	lcall	__divslong
      00432D AB 82            [24] 1353 	mov	r3,dpl
      00432F AC 83            [24] 1354 	mov	r4,dph
      004331 AD F0            [24] 1355 	mov	r5,b
      004333 FE               [12] 1356 	mov	r6,a
      004334 D0 07            [24] 1357 	pop	ar7
      004336 90 05 85         [24] 1358 	mov	dptr,#_print_number_number_65536_43
      004339 EB               [12] 1359 	mov	a,r3
      00433A F0               [24] 1360 	movx	@dptr,a
      00433B EC               [12] 1361 	mov	a,r4
      00433C A3               [24] 1362 	inc	dptr
      00433D F0               [24] 1363 	movx	@dptr,a
      00433E ED               [12] 1364 	mov	a,r5
      00433F A3               [24] 1365 	inc	dptr
      004340 F0               [24] 1366 	movx	@dptr,a
      004341 EE               [12] 1367 	mov	a,r6
      004342 A3               [24] 1368 	inc	dptr
      004343 F0               [24] 1369 	movx	@dptr,a
                                   1370 ;	uart.c:183: counter++;
      004344 0F               [12] 1371 	inc	r7
                                   1372 ;	uart.c:184: }while(number>0);
      004345 90 05 85         [24] 1373 	mov	dptr,#_print_number_number_65536_43
      004348 E0               [24] 1374 	movx	a,@dptr
      004349 FB               [12] 1375 	mov	r3,a
      00434A A3               [24] 1376 	inc	dptr
      00434B E0               [24] 1377 	movx	a,@dptr
      00434C FC               [12] 1378 	mov	r4,a
      00434D A3               [24] 1379 	inc	dptr
      00434E E0               [24] 1380 	movx	a,@dptr
      00434F FD               [12] 1381 	mov	r5,a
      004350 A3               [24] 1382 	inc	dptr
      004351 E0               [24] 1383 	movx	a,@dptr
      004352 FE               [12] 1384 	mov	r6,a
      004353 C3               [12] 1385 	clr	c
      004354 E4               [12] 1386 	clr	a
      004355 9B               [12] 1387 	subb	a,r3
      004356 E4               [12] 1388 	clr	a
      004357 9C               [12] 1389 	subb	a,r4
      004358 E4               [12] 1390 	clr	a
      004359 9D               [12] 1391 	subb	a,r5
      00435A 74 80            [12] 1392 	mov	a,#(0x00 ^ 0x80)
      00435C 8E F0            [24] 1393 	mov	b,r6
      00435E 63 F0 80         [24] 1394 	xrl	b,#0x80
      004361 95 F0            [12] 1395 	subb	a,b
      004363 50 03            [24] 1396 	jnc	00135$
      004365 02 42 C7         [24] 1397 	ljmp	00103$
      004368                       1398 00135$:
                                   1399 ;	uart.c:185: for(counter-=1;counter>=0;counter--)
      004368 EF               [12] 1400 	mov	a,r7
      004369 14               [12] 1401 	dec	a
      00436A 90 05 93         [24] 1402 	mov	dptr,#_print_number_counter_65536_44
      00436D F0               [24] 1403 	movx	@dptr,a
      00436E E0               [24] 1404 	movx	a,@dptr
      00436F FF               [12] 1405 	mov	r7,a
      004370                       1406 00108$:
      004370 EF               [12] 1407 	mov	a,r7
      004371 20 E7 22         [24] 1408 	jb	acc.7,00106$
                                   1409 ;	uart.c:187: putchar(temp_ascii_store[counter]);
      004374 EF               [12] 1410 	mov	a,r7
      004375 FD               [12] 1411 	mov	r5,a
      004376 33               [12] 1412 	rlc	a
      004377 95 E0            [12] 1413 	subb	a,acc
      004379 FE               [12] 1414 	mov	r6,a
      00437A ED               [12] 1415 	mov	a,r5
      00437B 24 89            [12] 1416 	add	a,#_print_number_temp_ascii_store_65536_44
      00437D F5 82            [12] 1417 	mov	dpl,a
      00437F EE               [12] 1418 	mov	a,r6
      004380 34 05            [12] 1419 	addc	a,#(_print_number_temp_ascii_store_65536_44 >> 8)
      004382 F5 83            [12] 1420 	mov	dph,a
      004384 E0               [24] 1421 	movx	a,@dptr
      004385 FE               [12] 1422 	mov	r6,a
      004386 7D 00            [12] 1423 	mov	r5,#0x00
      004388 8E 82            [24] 1424 	mov	dpl,r6
      00438A 8D 83            [24] 1425 	mov	dph,r5
      00438C C0 07            [24] 1426 	push	ar7
      00438E 12 3F BE         [24] 1427 	lcall	_putchar
      004391 D0 07            [24] 1428 	pop	ar7
                                   1429 ;	uart.c:185: for(counter-=1;counter>=0;counter--)
      004393 1F               [12] 1430 	dec	r7
      004394 80 DA            [24] 1431 	sjmp	00108$
      004396                       1432 00106$:
                                   1433 ;	uart.c:189: return;
                                   1434 ;	uart.c:190: }
      004396 22               [24] 1435 	ret
                                   1436 ;------------------------------------------------------------
                                   1437 ;Allocation info for local variables in function 'fetch_number'
                                   1438 ;------------------------------------------------------------
                                   1439 ;base                      Allocated with name '_fetch_number_base_65536_49'
                                   1440 ;scanned_digit             Allocated with name '_fetch_number_scanned_digit_65536_50'
                                   1441 ;digit_array               Allocated with name '_fetch_number_digit_array_65536_50'
                                   1442 ;digit_counter             Allocated with name '_fetch_number_digit_counter_65536_50'
                                   1443 ;i                         Allocated with name '_fetch_number_i_65536_50'
                                   1444 ;number                    Allocated with name '_fetch_number_number_65536_50'
                                   1445 ;------------------------------------------------------------
                                   1446 ;	uart.c:193: uint16_t fetch_number(uint8_t base)
                                   1447 ;	-----------------------------------------
                                   1448 ;	 function fetch_number
                                   1449 ;	-----------------------------------------
      004397                       1450 _fetch_number:
      004397 E5 82            [12] 1451 	mov	a,dpl
      004399 90 05 94         [24] 1452 	mov	dptr,#_fetch_number_base_65536_49
      00439C F0               [24] 1453 	movx	@dptr,a
                                   1454 ;	uart.c:195: __xdata uint8_t scanned_digit=0,digit_array[20],digit_counter=0,i=0;
      00439D 90 05 95         [24] 1455 	mov	dptr,#_fetch_number_scanned_digit_65536_50
      0043A0 E4               [12] 1456 	clr	a
      0043A1 F0               [24] 1457 	movx	@dptr,a
      0043A2 90 05 AA         [24] 1458 	mov	dptr,#_fetch_number_digit_counter_65536_50
      0043A5 F0               [24] 1459 	movx	@dptr,a
                                   1460 ;	uart.c:196: __xdata uint16_t number=0;
      0043A6 90 05 AB         [24] 1461 	mov	dptr,#_fetch_number_number_65536_50
      0043A9 F0               [24] 1462 	movx	@dptr,a
      0043AA A3               [24] 1463 	inc	dptr
      0043AB F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	uart.c:197: while(scanned_digit!=13)
      0043AC                       1466 00111$:
      0043AC 90 05 95         [24] 1467 	mov	dptr,#_fetch_number_scanned_digit_65536_50
      0043AF E0               [24] 1468 	movx	a,@dptr
      0043B0 FF               [12] 1469 	mov	r7,a
      0043B1 BF 0D 03         [24] 1470 	cjne	r7,#0x0d,00153$
      0043B4 02 44 40         [24] 1471 	ljmp	00127$
      0043B7                       1472 00153$:
                                   1473 ;	uart.c:199: scanned_digit=getchar();
      0043B7 12 3F DD         [24] 1474 	lcall	_getchar
      0043BA AE 82            [24] 1475 	mov	r6,dpl
      0043BC AF 83            [24] 1476 	mov	r7,dph
      0043BE 90 05 95         [24] 1477 	mov	dptr,#_fetch_number_scanned_digit_65536_50
      0043C1 EE               [12] 1478 	mov	a,r6
      0043C2 F0               [24] 1479 	movx	@dptr,a
                                   1480 ;	uart.c:200: if(((scanned_digit >= '0') && (scanned_digit <= '9'))||
      0043C3 BE 30 00         [24] 1481 	cjne	r6,#0x30,00154$
      0043C6                       1482 00154$:
      0043C6 40 05            [24] 1483 	jc	00108$
      0043C8 EE               [12] 1484 	mov	a,r6
      0043C9 24 C6            [12] 1485 	add	a,#0xff - 0x39
      0043CB 50 14            [24] 1486 	jnc	00103$
      0043CD                       1487 00108$:
                                   1488 ;	uart.c:201: ((scanned_digit >= 'a') && (scanned_digit <= 'f'))||
      0043CD BE 61 00         [24] 1489 	cjne	r6,#0x61,00157$
      0043D0                       1490 00157$:
      0043D0 40 05            [24] 1491 	jc	00110$
      0043D2 EE               [12] 1492 	mov	a,r6
      0043D3 24 99            [12] 1493 	add	a,#0xff - 0x66
      0043D5 50 0A            [24] 1494 	jnc	00103$
      0043D7                       1495 00110$:
                                   1496 ;	uart.c:202: ((scanned_digit >= 'A') && (scanned_digit <= 'F')))
      0043D7 BE 41 00         [24] 1497 	cjne	r6,#0x41,00160$
      0043DA                       1498 00160$:
      0043DA 40 41            [24] 1499 	jc	00104$
      0043DC EE               [12] 1500 	mov	a,r6
      0043DD 24 B9            [12] 1501 	add	a,#0xff - 0x46
      0043DF 40 3C            [24] 1502 	jc	00104$
      0043E1                       1503 00103$:
                                   1504 ;	uart.c:204: putchar(scanned_digit);
      0043E1 8E 05            [24] 1505 	mov	ar5,r6
      0043E3 7F 00            [12] 1506 	mov	r7,#0x00
      0043E5 8D 82            [24] 1507 	mov	dpl,r5
      0043E7 8F 83            [24] 1508 	mov	dph,r7
      0043E9 C0 06            [24] 1509 	push	ar6
      0043EB 12 3F BE         [24] 1510 	lcall	_putchar
      0043EE D0 06            [24] 1511 	pop	ar6
                                   1512 ;	uart.c:205: digit_array[digit_counter]=char_to_int(scanned_digit);
      0043F0 90 05 AA         [24] 1513 	mov	dptr,#_fetch_number_digit_counter_65536_50
      0043F3 E0               [24] 1514 	movx	a,@dptr
      0043F4 FF               [12] 1515 	mov	r7,a
      0043F5 24 96            [12] 1516 	add	a,#_fetch_number_digit_array_65536_50
      0043F7 FC               [12] 1517 	mov	r4,a
      0043F8 E4               [12] 1518 	clr	a
      0043F9 34 05            [12] 1519 	addc	a,#(_fetch_number_digit_array_65536_50 >> 8)
      0043FB FD               [12] 1520 	mov	r5,a
      0043FC 8E 82            [24] 1521 	mov	dpl,r6
      0043FE C0 07            [24] 1522 	push	ar7
      004400 C0 05            [24] 1523 	push	ar5
      004402 C0 04            [24] 1524 	push	ar4
      004404 12 40 88         [24] 1525 	lcall	_char_to_int
      004407 AB 82            [24] 1526 	mov	r3,dpl
      004409 D0 04            [24] 1527 	pop	ar4
      00440B D0 05            [24] 1528 	pop	ar5
      00440D D0 07            [24] 1529 	pop	ar7
      00440F 8C 82            [24] 1530 	mov	dpl,r4
      004411 8D 83            [24] 1531 	mov	dph,r5
      004413 EB               [12] 1532 	mov	a,r3
      004414 F0               [24] 1533 	movx	@dptr,a
                                   1534 ;	uart.c:206: digit_counter++;
      004415 90 05 AA         [24] 1535 	mov	dptr,#_fetch_number_digit_counter_65536_50
      004418 EF               [12] 1536 	mov	a,r7
      004419 04               [12] 1537 	inc	a
      00441A F0               [24] 1538 	movx	@dptr,a
      00441B 80 8F            [24] 1539 	sjmp	00111$
      00441D                       1540 00104$:
                                   1541 ;	uart.c:208: else if(scanned_digit==8) //check for backspace
      00441D BE 08 02         [24] 1542 	cjne	r6,#0x08,00163$
      004420 80 03            [24] 1543 	sjmp	00164$
      004422                       1544 00163$:
      004422 02 43 AC         [24] 1545 	ljmp	00111$
      004425                       1546 00164$:
                                   1547 ;	uart.c:210: putchar(8); //print backspace
      004425 90 00 08         [24] 1548 	mov	dptr,#0x0008
      004428 12 3F BE         [24] 1549 	lcall	_putchar
                                   1550 ;	uart.c:211: putchar(32); //print space
      00442B 90 00 20         [24] 1551 	mov	dptr,#0x0020
      00442E 12 3F BE         [24] 1552 	lcall	_putchar
                                   1553 ;	uart.c:212: putchar(8); //print backspace
      004431 90 00 08         [24] 1554 	mov	dptr,#0x0008
      004434 12 3F BE         [24] 1555 	lcall	_putchar
                                   1556 ;	uart.c:213: digit_counter--;
      004437 90 05 AA         [24] 1557 	mov	dptr,#_fetch_number_digit_counter_65536_50
      00443A E0               [24] 1558 	movx	a,@dptr
      00443B 14               [12] 1559 	dec	a
      00443C F0               [24] 1560 	movx	@dptr,a
      00443D 02 43 AC         [24] 1561 	ljmp	00111$
                                   1562 ;	uart.c:216: for(i=0;i<digit_counter;i++)
      004440                       1563 00127$:
      004440 90 05 94         [24] 1564 	mov	dptr,#_fetch_number_base_65536_49
      004443 E0               [24] 1565 	movx	a,@dptr
      004444 FF               [12] 1566 	mov	r7,a
      004445 90 05 AA         [24] 1567 	mov	dptr,#_fetch_number_digit_counter_65536_50
      004448 E0               [24] 1568 	movx	a,@dptr
      004449 FE               [12] 1569 	mov	r6,a
      00444A 7D 00            [12] 1570 	mov	r5,#0x00
      00444C                       1571 00116$:
      00444C C3               [12] 1572 	clr	c
      00444D ED               [12] 1573 	mov	a,r5
      00444E 9E               [12] 1574 	subb	a,r6
      00444F 50 57            [24] 1575 	jnc	00114$
                                   1576 ;	uart.c:218: number*= base;
      004451 90 05 AB         [24] 1577 	mov	dptr,#_fetch_number_number_65536_50
      004454 E0               [24] 1578 	movx	a,@dptr
      004455 FB               [12] 1579 	mov	r3,a
      004456 A3               [24] 1580 	inc	dptr
      004457 E0               [24] 1581 	movx	a,@dptr
      004458 FC               [12] 1582 	mov	r4,a
      004459 90 05 DB         [24] 1583 	mov	dptr,#__mulint_PARM_2
      00445C EF               [12] 1584 	mov	a,r7
      00445D F0               [24] 1585 	movx	@dptr,a
      00445E E4               [12] 1586 	clr	a
      00445F A3               [24] 1587 	inc	dptr
      004460 F0               [24] 1588 	movx	@dptr,a
      004461 8B 82            [24] 1589 	mov	dpl,r3
      004463 8C 83            [24] 1590 	mov	dph,r4
      004465 C0 07            [24] 1591 	push	ar7
      004467 C0 06            [24] 1592 	push	ar6
      004469 C0 05            [24] 1593 	push	ar5
      00446B 12 4A D4         [24] 1594 	lcall	__mulint
      00446E E5 82            [12] 1595 	mov	a,dpl
      004470 85 83 F0         [24] 1596 	mov	b,dph
      004473 D0 05            [24] 1597 	pop	ar5
      004475 D0 06            [24] 1598 	pop	ar6
      004477 D0 07            [24] 1599 	pop	ar7
      004479 90 05 AB         [24] 1600 	mov	dptr,#_fetch_number_number_65536_50
      00447C F0               [24] 1601 	movx	@dptr,a
      00447D E5 F0            [12] 1602 	mov	a,b
      00447F A3               [24] 1603 	inc	dptr
      004480 F0               [24] 1604 	movx	@dptr,a
                                   1605 ;	uart.c:219: number+= digit_array[i];
      004481 ED               [12] 1606 	mov	a,r5
      004482 24 96            [12] 1607 	add	a,#_fetch_number_digit_array_65536_50
      004484 F5 82            [12] 1608 	mov	dpl,a
      004486 E4               [12] 1609 	clr	a
      004487 34 05            [12] 1610 	addc	a,#(_fetch_number_digit_array_65536_50 >> 8)
      004489 F5 83            [12] 1611 	mov	dph,a
      00448B E0               [24] 1612 	movx	a,@dptr
      00448C FC               [12] 1613 	mov	r4,a
      00448D 7B 00            [12] 1614 	mov	r3,#0x00
      00448F 90 05 AB         [24] 1615 	mov	dptr,#_fetch_number_number_65536_50
      004492 E0               [24] 1616 	movx	a,@dptr
      004493 F9               [12] 1617 	mov	r1,a
      004494 A3               [24] 1618 	inc	dptr
      004495 E0               [24] 1619 	movx	a,@dptr
      004496 FA               [12] 1620 	mov	r2,a
      004497 EC               [12] 1621 	mov	a,r4
      004498 29               [12] 1622 	add	a,r1
      004499 F9               [12] 1623 	mov	r1,a
      00449A EB               [12] 1624 	mov	a,r3
      00449B 3A               [12] 1625 	addc	a,r2
      00449C FA               [12] 1626 	mov	r2,a
      00449D 90 05 AB         [24] 1627 	mov	dptr,#_fetch_number_number_65536_50
      0044A0 E9               [12] 1628 	mov	a,r1
      0044A1 F0               [24] 1629 	movx	@dptr,a
      0044A2 EA               [12] 1630 	mov	a,r2
      0044A3 A3               [24] 1631 	inc	dptr
      0044A4 F0               [24] 1632 	movx	@dptr,a
                                   1633 ;	uart.c:216: for(i=0;i<digit_counter;i++)
      0044A5 0D               [12] 1634 	inc	r5
      0044A6 80 A4            [24] 1635 	sjmp	00116$
      0044A8                       1636 00114$:
                                   1637 ;	uart.c:221: return number;
      0044A8 90 05 AB         [24] 1638 	mov	dptr,#_fetch_number_number_65536_50
      0044AB E0               [24] 1639 	movx	a,@dptr
      0044AC FE               [12] 1640 	mov	r6,a
      0044AD A3               [24] 1641 	inc	dptr
      0044AE E0               [24] 1642 	movx	a,@dptr
                                   1643 ;	uart.c:222: }
      0044AF 8E 82            [24] 1644 	mov	dpl,r6
      0044B1 F5 83            [12] 1645 	mov	dph,a
      0044B3 22               [24] 1646 	ret
                                   1647 ;------------------------------------------------------------
                                   1648 ;Allocation info for local variables in function 'ms_delay'
                                   1649 ;------------------------------------------------------------
                                   1650 ;time                      Allocated with name '_ms_delay_time_65536_56'
                                   1651 ;i                         Allocated with name '_ms_delay_i_65536_57'
                                   1652 ;j                         Allocated with name '_ms_delay_j_65536_57'
                                   1653 ;sloc0                     Allocated with name '_ms_delay_sloc0_1_0'
                                   1654 ;------------------------------------------------------------
                                   1655 ;	uart.c:224: void ms_delay(uint32_t time)
                                   1656 ;	-----------------------------------------
                                   1657 ;	 function ms_delay
                                   1658 ;	-----------------------------------------
      0044B4                       1659 _ms_delay:
      0044B4 AF 82            [24] 1660 	mov	r7,dpl
      0044B6 AE 83            [24] 1661 	mov	r6,dph
      0044B8 AD F0            [24] 1662 	mov	r5,b
      0044BA FC               [12] 1663 	mov	r4,a
      0044BB 90 05 AD         [24] 1664 	mov	dptr,#_ms_delay_time_65536_56
      0044BE EF               [12] 1665 	mov	a,r7
      0044BF F0               [24] 1666 	movx	@dptr,a
      0044C0 EE               [12] 1667 	mov	a,r6
      0044C1 A3               [24] 1668 	inc	dptr
      0044C2 F0               [24] 1669 	movx	@dptr,a
      0044C3 ED               [12] 1670 	mov	a,r5
      0044C4 A3               [24] 1671 	inc	dptr
      0044C5 F0               [24] 1672 	movx	@dptr,a
      0044C6 EC               [12] 1673 	mov	a,r4
      0044C7 A3               [24] 1674 	inc	dptr
      0044C8 F0               [24] 1675 	movx	@dptr,a
                                   1676 ;	uart.c:227: for(j=0;j<time;j++)
      0044C9 90 05 AD         [24] 1677 	mov	dptr,#_ms_delay_time_65536_56
      0044CC E0               [24] 1678 	movx	a,@dptr
      0044CD FC               [12] 1679 	mov	r4,a
      0044CE A3               [24] 1680 	inc	dptr
      0044CF E0               [24] 1681 	movx	a,@dptr
      0044D0 FD               [12] 1682 	mov	r5,a
      0044D1 A3               [24] 1683 	inc	dptr
      0044D2 E0               [24] 1684 	movx	a,@dptr
      0044D3 FE               [12] 1685 	mov	r6,a
      0044D4 A3               [24] 1686 	inc	dptr
      0044D5 E0               [24] 1687 	movx	a,@dptr
      0044D6 FF               [12] 1688 	mov	r7,a
      0044D7 78 00            [12] 1689 	mov	r0,#0x00
      0044D9 79 00            [12] 1690 	mov	r1,#0x00
      0044DB 7A 00            [12] 1691 	mov	r2,#0x00
      0044DD 7B 00            [12] 1692 	mov	r3,#0x00
      0044DF                       1693 00107$:
      0044DF C3               [12] 1694 	clr	c
      0044E0 E8               [12] 1695 	mov	a,r0
      0044E1 9C               [12] 1696 	subb	a,r4
      0044E2 E9               [12] 1697 	mov	a,r1
      0044E3 9D               [12] 1698 	subb	a,r5
      0044E4 EA               [12] 1699 	mov	a,r2
      0044E5 9E               [12] 1700 	subb	a,r6
      0044E6 EB               [12] 1701 	mov	a,r3
      0044E7 9F               [12] 1702 	subb	a,r7
      0044E8 50 37            [24] 1703 	jnc	00102$
                                   1704 ;	uart.c:229: for(i=0;i<1120;i++); //1 ms
      0044EA 75 27 60         [24] 1705 	mov	_ms_delay_sloc0_1_0,#0x60
      0044ED 75 28 04         [24] 1706 	mov	(_ms_delay_sloc0_1_0 + 1),#0x04
      0044F0 E4               [12] 1707 	clr	a
      0044F1 F5 29            [12] 1708 	mov	(_ms_delay_sloc0_1_0 + 2),a
      0044F3 F5 2A            [12] 1709 	mov	(_ms_delay_sloc0_1_0 + 3),a
      0044F5                       1710 00105$:
      0044F5 15 27            [12] 1711 	dec	_ms_delay_sloc0_1_0
      0044F7 74 FF            [12] 1712 	mov	a,#0xff
      0044F9 B5 27 0C         [24] 1713 	cjne	a,_ms_delay_sloc0_1_0,00130$
      0044FC 15 28            [12] 1714 	dec	(_ms_delay_sloc0_1_0 + 1)
      0044FE B5 28 07         [24] 1715 	cjne	a,(_ms_delay_sloc0_1_0 + 1),00130$
      004501 15 29            [12] 1716 	dec	(_ms_delay_sloc0_1_0 + 2)
      004503 B5 29 02         [24] 1717 	cjne	a,(_ms_delay_sloc0_1_0 + 2),00130$
      004506 15 2A            [12] 1718 	dec	(_ms_delay_sloc0_1_0 + 3)
      004508                       1719 00130$:
      004508 E5 27            [12] 1720 	mov	a,_ms_delay_sloc0_1_0
      00450A 45 28            [12] 1721 	orl	a,(_ms_delay_sloc0_1_0 + 1)
      00450C 45 29            [12] 1722 	orl	a,(_ms_delay_sloc0_1_0 + 2)
      00450E 45 2A            [12] 1723 	orl	a,(_ms_delay_sloc0_1_0 + 3)
      004510 70 E3            [24] 1724 	jnz	00105$
                                   1725 ;	uart.c:227: for(j=0;j<time;j++)
      004512 08               [12] 1726 	inc	r0
      004513 B8 00 09         [24] 1727 	cjne	r0,#0x00,00132$
      004516 09               [12] 1728 	inc	r1
      004517 B9 00 05         [24] 1729 	cjne	r1,#0x00,00132$
      00451A 0A               [12] 1730 	inc	r2
      00451B BA 00 C1         [24] 1731 	cjne	r2,#0x00,00107$
      00451E 0B               [12] 1732 	inc	r3
      00451F                       1733 00132$:
      00451F 80 BE            [24] 1734 	sjmp	00107$
      004521                       1735 00102$:
                                   1736 ;	uart.c:231: return;
                                   1737 ;	uart.c:232: }
      004521 22               [24] 1738 	ret
                                   1739 ;------------------------------------------------------------
                                   1740 ;Allocation info for local variables in function 'us_delay'
                                   1741 ;------------------------------------------------------------
                                   1742 ;sloc0                     Allocated with name '_us_delay_sloc0_1_0'
                                   1743 ;sloc1                     Allocated with name '_us_delay_sloc1_1_0'
                                   1744 ;time                      Allocated with name '_us_delay_time_65536_61'
                                   1745 ;i                         Allocated with name '_us_delay_i_65536_62'
                                   1746 ;------------------------------------------------------------
                                   1747 ;	uart.c:234: void us_delay(uint32_t time)
                                   1748 ;	-----------------------------------------
                                   1749 ;	 function us_delay
                                   1750 ;	-----------------------------------------
      004522                       1751 _us_delay:
      004522 AF 82            [24] 1752 	mov	r7,dpl
      004524 AE 83            [24] 1753 	mov	r6,dph
      004526 AD F0            [24] 1754 	mov	r5,b
      004528 FC               [12] 1755 	mov	r4,a
      004529 90 05 B1         [24] 1756 	mov	dptr,#_us_delay_time_65536_61
      00452C EF               [12] 1757 	mov	a,r7
      00452D F0               [24] 1758 	movx	@dptr,a
      00452E EE               [12] 1759 	mov	a,r6
      00452F A3               [24] 1760 	inc	dptr
      004530 F0               [24] 1761 	movx	@dptr,a
      004531 ED               [12] 1762 	mov	a,r5
      004532 A3               [24] 1763 	inc	dptr
      004533 F0               [24] 1764 	movx	@dptr,a
      004534 EC               [12] 1765 	mov	a,r4
      004535 A3               [24] 1766 	inc	dptr
      004536 F0               [24] 1767 	movx	@dptr,a
                                   1768 ;	uart.c:237: for(i=0;i<(1.12*time);i++); //1 tick 1 us
      004537 90 05 B1         [24] 1769 	mov	dptr,#_us_delay_time_65536_61
      00453A E0               [24] 1770 	movx	a,@dptr
      00453B F5 14            [12] 1771 	mov	_us_delay_sloc0_1_0,a
      00453D A3               [24] 1772 	inc	dptr
      00453E E0               [24] 1773 	movx	a,@dptr
      00453F F5 15            [12] 1774 	mov	(_us_delay_sloc0_1_0 + 1),a
      004541 A3               [24] 1775 	inc	dptr
      004542 E0               [24] 1776 	movx	a,@dptr
      004543 F5 16            [12] 1777 	mov	(_us_delay_sloc0_1_0 + 2),a
      004545 A3               [24] 1778 	inc	dptr
      004546 E0               [24] 1779 	movx	a,@dptr
      004547 F5 17            [12] 1780 	mov	(_us_delay_sloc0_1_0 + 3),a
      004549 78 00            [12] 1781 	mov	r0,#0x00
      00454B 79 00            [12] 1782 	mov	r1,#0x00
      00454D 7A 00            [12] 1783 	mov	r2,#0x00
      00454F 7B 00            [12] 1784 	mov	r3,#0x00
      004551                       1785 00103$:
      004551 85 14 82         [24] 1786 	mov	dpl,_us_delay_sloc0_1_0
      004554 85 15 83         [24] 1787 	mov	dph,(_us_delay_sloc0_1_0 + 1)
      004557 85 16 F0         [24] 1788 	mov	b,(_us_delay_sloc0_1_0 + 2)
      00455A E5 17            [12] 1789 	mov	a,(_us_delay_sloc0_1_0 + 3)
      00455C C0 03            [24] 1790 	push	ar3
      00455E C0 02            [24] 1791 	push	ar2
      004560 C0 01            [24] 1792 	push	ar1
      004562 C0 00            [24] 1793 	push	ar0
      004564 12 4A 91         [24] 1794 	lcall	___ulong2fs
      004567 AC 82            [24] 1795 	mov	r4,dpl
      004569 AD 83            [24] 1796 	mov	r5,dph
      00456B AE F0            [24] 1797 	mov	r6,b
      00456D FF               [12] 1798 	mov	r7,a
      00456E C0 04            [24] 1799 	push	ar4
      004570 C0 05            [24] 1800 	push	ar5
      004572 C0 06            [24] 1801 	push	ar6
      004574 C0 07            [24] 1802 	push	ar7
      004576 90 5C 29         [24] 1803 	mov	dptr,#0x5c29
      004579 75 F0 8F         [24] 1804 	mov	b,#0x8f
      00457C 74 3F            [12] 1805 	mov	a,#0x3f
      00457E 12 48 99         [24] 1806 	lcall	___fsmul
      004581 85 82 18         [24] 1807 	mov	_us_delay_sloc1_1_0,dpl
      004584 85 83 19         [24] 1808 	mov	(_us_delay_sloc1_1_0 + 1),dph
      004587 85 F0 1A         [24] 1809 	mov	(_us_delay_sloc1_1_0 + 2),b
      00458A F5 1B            [12] 1810 	mov	(_us_delay_sloc1_1_0 + 3),a
      00458C E5 81            [12] 1811 	mov	a,sp
      00458E 24 FC            [12] 1812 	add	a,#0xfc
      004590 F5 81            [12] 1813 	mov	sp,a
      004592 D0 00            [24] 1814 	pop	ar0
      004594 D0 01            [24] 1815 	pop	ar1
      004596 D0 02            [24] 1816 	pop	ar2
      004598 D0 03            [24] 1817 	pop	ar3
      00459A 88 82            [24] 1818 	mov	dpl,r0
      00459C 89 83            [24] 1819 	mov	dph,r1
      00459E 8A F0            [24] 1820 	mov	b,r2
      0045A0 EB               [12] 1821 	mov	a,r3
      0045A1 C0 03            [24] 1822 	push	ar3
      0045A3 C0 02            [24] 1823 	push	ar2
      0045A5 C0 01            [24] 1824 	push	ar1
      0045A7 C0 00            [24] 1825 	push	ar0
      0045A9 12 4A 91         [24] 1826 	lcall	___ulong2fs
      0045AC AC 82            [24] 1827 	mov	r4,dpl
      0045AE AD 83            [24] 1828 	mov	r5,dph
      0045B0 AE F0            [24] 1829 	mov	r6,b
      0045B2 FF               [12] 1830 	mov	r7,a
      0045B3 C0 18            [24] 1831 	push	_us_delay_sloc1_1_0
      0045B5 C0 19            [24] 1832 	push	(_us_delay_sloc1_1_0 + 1)
      0045B7 C0 1A            [24] 1833 	push	(_us_delay_sloc1_1_0 + 2)
      0045B9 C0 1B            [24] 1834 	push	(_us_delay_sloc1_1_0 + 3)
      0045BB 8C 82            [24] 1835 	mov	dpl,r4
      0045BD 8D 83            [24] 1836 	mov	dph,r5
      0045BF 8E F0            [24] 1837 	mov	b,r6
      0045C1 EF               [12] 1838 	mov	a,r7
      0045C2 12 4A A4         [24] 1839 	lcall	___fslt
      0045C5 AF 82            [24] 1840 	mov	r7,dpl
      0045C7 E5 81            [12] 1841 	mov	a,sp
      0045C9 24 FC            [12] 1842 	add	a,#0xfc
      0045CB F5 81            [12] 1843 	mov	sp,a
      0045CD D0 00            [24] 1844 	pop	ar0
      0045CF D0 01            [24] 1845 	pop	ar1
      0045D1 D0 02            [24] 1846 	pop	ar2
      0045D3 D0 03            [24] 1847 	pop	ar3
      0045D5 EF               [12] 1848 	mov	a,r7
      0045D6 60 10            [24] 1849 	jz	00101$
      0045D8 08               [12] 1850 	inc	r0
      0045D9 B8 00 09         [24] 1851 	cjne	r0,#0x00,00117$
      0045DC 09               [12] 1852 	inc	r1
      0045DD B9 00 05         [24] 1853 	cjne	r1,#0x00,00117$
      0045E0 0A               [12] 1854 	inc	r2
      0045E1 BA 00 01         [24] 1855 	cjne	r2,#0x00,00117$
      0045E4 0B               [12] 1856 	inc	r3
      0045E5                       1857 00117$:
      0045E5 02 45 51         [24] 1858 	ljmp	00103$
      0045E8                       1859 00101$:
                                   1860 ;	uart.c:238: return;
                                   1861 ;	uart.c:239: }
      0045E8 22               [24] 1862 	ret
                                   1863 	.area CSEG    (CODE)
                                   1864 	.area CONST   (CODE)
                                   1865 	.area XINIT   (CODE)
                                   1866 	.area CABS    (ABS,CODE)
