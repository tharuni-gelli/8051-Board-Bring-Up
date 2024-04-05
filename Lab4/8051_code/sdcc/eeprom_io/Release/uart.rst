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
                                     11 	.globl _P5_7
                                     12 	.globl _P5_6
                                     13 	.globl _P5_5
                                     14 	.globl _P5_4
                                     15 	.globl _P5_3
                                     16 	.globl _P5_2
                                     17 	.globl _P5_1
                                     18 	.globl _P5_0
                                     19 	.globl _P4_7
                                     20 	.globl _P4_6
                                     21 	.globl _P4_5
                                     22 	.globl _P4_4
                                     23 	.globl _P4_3
                                     24 	.globl _P4_2
                                     25 	.globl _P4_1
                                     26 	.globl _P4_0
                                     27 	.globl _PX0L
                                     28 	.globl _PT0L
                                     29 	.globl _PX1L
                                     30 	.globl _PT1L
                                     31 	.globl _PSL
                                     32 	.globl _PT2L
                                     33 	.globl _PPCL
                                     34 	.globl _EC
                                     35 	.globl _CCF0
                                     36 	.globl _CCF1
                                     37 	.globl _CCF2
                                     38 	.globl _CCF3
                                     39 	.globl _CCF4
                                     40 	.globl _CR
                                     41 	.globl _CF
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _ET2
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _PS
                                     69 	.globl _PT1
                                     70 	.globl _PX1
                                     71 	.globl _PT0
                                     72 	.globl _PX0
                                     73 	.globl _RD
                                     74 	.globl _WR
                                     75 	.globl _T1
                                     76 	.globl _T0
                                     77 	.globl _INT1
                                     78 	.globl _INT0
                                     79 	.globl _TXD
                                     80 	.globl _RXD
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _TF1
                                    120 	.globl _TR1
                                    121 	.globl _TF0
                                    122 	.globl _TR0
                                    123 	.globl _IE1
                                    124 	.globl _IT1
                                    125 	.globl _IE0
                                    126 	.globl _IT0
                                    127 	.globl _P0_7
                                    128 	.globl _P0_6
                                    129 	.globl _P0_5
                                    130 	.globl _P0_4
                                    131 	.globl _P0_3
                                    132 	.globl _P0_2
                                    133 	.globl _P0_1
                                    134 	.globl _P0_0
                                    135 	.globl _EECON
                                    136 	.globl _KBF
                                    137 	.globl _KBE
                                    138 	.globl _KBLS
                                    139 	.globl _BRL
                                    140 	.globl _BDRCON
                                    141 	.globl _T2MOD
                                    142 	.globl _SPDAT
                                    143 	.globl _SPSTA
                                    144 	.globl _SPCON
                                    145 	.globl _SADEN
                                    146 	.globl _SADDR
                                    147 	.globl _WDTPRG
                                    148 	.globl _WDTRST
                                    149 	.globl _P5
                                    150 	.globl _P4
                                    151 	.globl _IPH1
                                    152 	.globl _IPL1
                                    153 	.globl _IPH0
                                    154 	.globl _IPL0
                                    155 	.globl _IEN1
                                    156 	.globl _IEN0
                                    157 	.globl _CMOD
                                    158 	.globl _CL
                                    159 	.globl _CH
                                    160 	.globl _CCON
                                    161 	.globl _CCAPM4
                                    162 	.globl _CCAPM3
                                    163 	.globl _CCAPM2
                                    164 	.globl _CCAPM1
                                    165 	.globl _CCAPM0
                                    166 	.globl _CCAP4L
                                    167 	.globl _CCAP3L
                                    168 	.globl _CCAP2L
                                    169 	.globl _CCAP1L
                                    170 	.globl _CCAP0L
                                    171 	.globl _CCAP4H
                                    172 	.globl _CCAP3H
                                    173 	.globl _CCAP2H
                                    174 	.globl _CCAP1H
                                    175 	.globl _CCAP0H
                                    176 	.globl _CKCON1
                                    177 	.globl _CKCON0
                                    178 	.globl _CKRL
                                    179 	.globl _AUXR1
                                    180 	.globl _AUXR
                                    181 	.globl _TH2
                                    182 	.globl _TL2
                                    183 	.globl _RCAP2H
                                    184 	.globl _RCAP2L
                                    185 	.globl _T2CON
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _PSW
                                    189 	.globl _IP
                                    190 	.globl _P3
                                    191 	.globl _IE
                                    192 	.globl _P2
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _P1
                                    196 	.globl _TH1
                                    197 	.globl _TH0
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TMOD
                                    201 	.globl _TCON
                                    202 	.globl _PCON
                                    203 	.globl _DPH
                                    204 	.globl _DPL
                                    205 	.globl _SP
                                    206 	.globl _P0
                                    207 	.globl _putchar
                                    208 	.globl _getchar
                                    209 	.globl _get_input
                                    210 ;--------------------------------------------------------
                                    211 ; special function registers
                                    212 ;--------------------------------------------------------
                                    213 	.area RSEG    (ABS,DATA)
      000000                        214 	.org 0x0000
                           000080   215 _P0	=	0x0080
                           000081   216 _SP	=	0x0081
                           000082   217 _DPL	=	0x0082
                           000083   218 _DPH	=	0x0083
                           000087   219 _PCON	=	0x0087
                           000088   220 _TCON	=	0x0088
                           000089   221 _TMOD	=	0x0089
                           00008A   222 _TL0	=	0x008a
                           00008B   223 _TL1	=	0x008b
                           00008C   224 _TH0	=	0x008c
                           00008D   225 _TH1	=	0x008d
                           000090   226 _P1	=	0x0090
                           000098   227 _SCON	=	0x0098
                           000099   228 _SBUF	=	0x0099
                           0000A0   229 _P2	=	0x00a0
                           0000A8   230 _IE	=	0x00a8
                           0000B0   231 _P3	=	0x00b0
                           0000B8   232 _IP	=	0x00b8
                           0000D0   233 _PSW	=	0x00d0
                           0000E0   234 _ACC	=	0x00e0
                           0000F0   235 _B	=	0x00f0
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
                                    287 ;--------------------------------------------------------
                                    288 ; special function bits
                                    289 ;--------------------------------------------------------
                                    290 	.area RSEG    (ABS,DATA)
      000000                        291 	.org 0x0000
                           000080   292 _P0_0	=	0x0080
                           000081   293 _P0_1	=	0x0081
                           000082   294 _P0_2	=	0x0082
                           000083   295 _P0_3	=	0x0083
                           000084   296 _P0_4	=	0x0084
                           000085   297 _P0_5	=	0x0085
                           000086   298 _P0_6	=	0x0086
                           000087   299 _P0_7	=	0x0087
                           000088   300 _IT0	=	0x0088
                           000089   301 _IE0	=	0x0089
                           00008A   302 _IT1	=	0x008a
                           00008B   303 _IE1	=	0x008b
                           00008C   304 _TR0	=	0x008c
                           00008D   305 _TF0	=	0x008d
                           00008E   306 _TR1	=	0x008e
                           00008F   307 _TF1	=	0x008f
                           000090   308 _P1_0	=	0x0090
                           000091   309 _P1_1	=	0x0091
                           000092   310 _P1_2	=	0x0092
                           000093   311 _P1_3	=	0x0093
                           000094   312 _P1_4	=	0x0094
                           000095   313 _P1_5	=	0x0095
                           000096   314 _P1_6	=	0x0096
                           000097   315 _P1_7	=	0x0097
                           000098   316 _RI	=	0x0098
                           000099   317 _TI	=	0x0099
                           00009A   318 _RB8	=	0x009a
                           00009B   319 _TB8	=	0x009b
                           00009C   320 _REN	=	0x009c
                           00009D   321 _SM2	=	0x009d
                           00009E   322 _SM1	=	0x009e
                           00009F   323 _SM0	=	0x009f
                           0000A0   324 _P2_0	=	0x00a0
                           0000A1   325 _P2_1	=	0x00a1
                           0000A2   326 _P2_2	=	0x00a2
                           0000A3   327 _P2_3	=	0x00a3
                           0000A4   328 _P2_4	=	0x00a4
                           0000A5   329 _P2_5	=	0x00a5
                           0000A6   330 _P2_6	=	0x00a6
                           0000A7   331 _P2_7	=	0x00a7
                           0000A8   332 _EX0	=	0x00a8
                           0000A9   333 _ET0	=	0x00a9
                           0000AA   334 _EX1	=	0x00aa
                           0000AB   335 _ET1	=	0x00ab
                           0000AC   336 _ES	=	0x00ac
                           0000AF   337 _EA	=	0x00af
                           0000B0   338 _P3_0	=	0x00b0
                           0000B1   339 _P3_1	=	0x00b1
                           0000B2   340 _P3_2	=	0x00b2
                           0000B3   341 _P3_3	=	0x00b3
                           0000B4   342 _P3_4	=	0x00b4
                           0000B5   343 _P3_5	=	0x00b5
                           0000B6   344 _P3_6	=	0x00b6
                           0000B7   345 _P3_7	=	0x00b7
                           0000B0   346 _RXD	=	0x00b0
                           0000B1   347 _TXD	=	0x00b1
                           0000B2   348 _INT0	=	0x00b2
                           0000B3   349 _INT1	=	0x00b3
                           0000B4   350 _T0	=	0x00b4
                           0000B5   351 _T1	=	0x00b5
                           0000B6   352 _WR	=	0x00b6
                           0000B7   353 _RD	=	0x00b7
                           0000B8   354 _PX0	=	0x00b8
                           0000B9   355 _PT0	=	0x00b9
                           0000BA   356 _PX1	=	0x00ba
                           0000BB   357 _PT1	=	0x00bb
                           0000BC   358 _PS	=	0x00bc
                           0000D0   359 _P	=	0x00d0
                           0000D1   360 _F1	=	0x00d1
                           0000D2   361 _OV	=	0x00d2
                           0000D3   362 _RS0	=	0x00d3
                           0000D4   363 _RS1	=	0x00d4
                           0000D5   364 _F0	=	0x00d5
                           0000D6   365 _AC	=	0x00d6
                           0000D7   366 _CY	=	0x00d7
                           0000AD   367 _ET2	=	0x00ad
                           0000BD   368 _PT2	=	0x00bd
                           0000C8   369 _T2CON_0	=	0x00c8
                           0000C9   370 _T2CON_1	=	0x00c9
                           0000CA   371 _T2CON_2	=	0x00ca
                           0000CB   372 _T2CON_3	=	0x00cb
                           0000CC   373 _T2CON_4	=	0x00cc
                           0000CD   374 _T2CON_5	=	0x00cd
                           0000CE   375 _T2CON_6	=	0x00ce
                           0000CF   376 _T2CON_7	=	0x00cf
                           0000C8   377 _CP_RL2	=	0x00c8
                           0000C9   378 _C_T2	=	0x00c9
                           0000CA   379 _TR2	=	0x00ca
                           0000CB   380 _EXEN2	=	0x00cb
                           0000CC   381 _TCLK	=	0x00cc
                           0000CD   382 _RCLK	=	0x00cd
                           0000CE   383 _EXF2	=	0x00ce
                           0000CF   384 _TF2	=	0x00cf
                           0000DF   385 _CF	=	0x00df
                           0000DE   386 _CR	=	0x00de
                           0000DC   387 _CCF4	=	0x00dc
                           0000DB   388 _CCF3	=	0x00db
                           0000DA   389 _CCF2	=	0x00da
                           0000D9   390 _CCF1	=	0x00d9
                           0000D8   391 _CCF0	=	0x00d8
                           0000AE   392 _EC	=	0x00ae
                           0000BE   393 _PPCL	=	0x00be
                           0000BD   394 _PT2L	=	0x00bd
                           0000BC   395 _PSL	=	0x00bc
                           0000BB   396 _PT1L	=	0x00bb
                           0000BA   397 _PX1L	=	0x00ba
                           0000B9   398 _PT0L	=	0x00b9
                           0000B8   399 _PX0L	=	0x00b8
                           0000C0   400 _P4_0	=	0x00c0
                           0000C1   401 _P4_1	=	0x00c1
                           0000C2   402 _P4_2	=	0x00c2
                           0000C3   403 _P4_3	=	0x00c3
                           0000C4   404 _P4_4	=	0x00c4
                           0000C5   405 _P4_5	=	0x00c5
                           0000C6   406 _P4_6	=	0x00c6
                           0000C7   407 _P4_7	=	0x00c7
                           0000E8   408 _P5_0	=	0x00e8
                           0000E9   409 _P5_1	=	0x00e9
                           0000EA   410 _P5_2	=	0x00ea
                           0000EB   411 _P5_3	=	0x00eb
                           0000EC   412 _P5_4	=	0x00ec
                           0000ED   413 _P5_5	=	0x00ed
                           0000EE   414 _P5_6	=	0x00ee
                           0000EF   415 _P5_7	=	0x00ef
                                    416 ;--------------------------------------------------------
                                    417 ; overlayable register banks
                                    418 ;--------------------------------------------------------
                                    419 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        420 	.ds 8
                                    421 ;--------------------------------------------------------
                                    422 ; internal ram data
                                    423 ;--------------------------------------------------------
                                    424 	.area DSEG    (DATA)
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable items in internal ram
                                    427 ;--------------------------------------------------------
                                    428 ;--------------------------------------------------------
                                    429 ; indirectly addressable internal ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area ISEG    (DATA)
                                    432 ;--------------------------------------------------------
                                    433 ; absolute internal ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area IABS    (ABS,DATA)
                                    436 	.area IABS    (ABS,DATA)
                                    437 ;--------------------------------------------------------
                                    438 ; bit data
                                    439 ;--------------------------------------------------------
                                    440 	.area BSEG    (BIT)
                                    441 ;--------------------------------------------------------
                                    442 ; paged external ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area PSEG    (PAG,XDATA)
                                    445 ;--------------------------------------------------------
                                    446 ; external ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area XSEG    (XDATA)
      000039                        449 _putchar_ch_65536_4:
      000039                        450 	.ds 2
      00003B                        451 _get_input_num_65536_11:
      00003B                        452 	.ds 2
      00003D                        453 _get_input_count_65536_11:
      00003D                        454 	.ds 1
      00003E                        455 _get_input_input_arr_65536_11:
      00003E                        456 	.ds 16
                                    457 ;--------------------------------------------------------
                                    458 ; absolute external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area XABS    (ABS,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external initialized ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XISEG   (XDATA)
                                    465 	.area HOME    (CODE)
                                    466 	.area GSINIT0 (CODE)
                                    467 	.area GSINIT1 (CODE)
                                    468 	.area GSINIT2 (CODE)
                                    469 	.area GSINIT3 (CODE)
                                    470 	.area GSINIT4 (CODE)
                                    471 	.area GSINIT5 (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.area GSFINAL (CODE)
                                    474 	.area CSEG    (CODE)
                                    475 ;--------------------------------------------------------
                                    476 ; global & static initialisations
                                    477 ;--------------------------------------------------------
                                    478 	.area HOME    (CODE)
                                    479 	.area GSINIT  (CODE)
                                    480 	.area GSFINAL (CODE)
                                    481 	.area GSINIT  (CODE)
                                    482 ;--------------------------------------------------------
                                    483 ; Home
                                    484 ;--------------------------------------------------------
                                    485 	.area HOME    (CODE)
                                    486 	.area HOME    (CODE)
                                    487 ;--------------------------------------------------------
                                    488 ; code
                                    489 ;--------------------------------------------------------
                                    490 	.area CSEG    (CODE)
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'putchar'
                                    493 ;------------------------------------------------------------
                                    494 ;ch                        Allocated with name '_putchar_ch_65536_4'
                                    495 ;------------------------------------------------------------
                                    496 ;	uart.c:7: int putchar (int ch)
                                    497 ;	-----------------------------------------
                                    498 ;	 function putchar
                                    499 ;	-----------------------------------------
      003420                        500 _putchar:
                           000007   501 	ar7 = 0x07
                           000006   502 	ar6 = 0x06
                           000005   503 	ar5 = 0x05
                           000004   504 	ar4 = 0x04
                           000003   505 	ar3 = 0x03
                           000002   506 	ar2 = 0x02
                           000001   507 	ar1 = 0x01
                           000000   508 	ar0 = 0x00
      003420 AF 83            [24]  509 	mov	r7,dph
      003422 E5 82            [12]  510 	mov	a,dpl
      003424 90 00 39         [24]  511 	mov	dptr,#_putchar_ch_65536_4
      003427 F0               [24]  512 	movx	@dptr,a
      003428 EF               [12]  513 	mov	a,r7
      003429 A3               [24]  514 	inc	dptr
      00342A F0               [24]  515 	movx	@dptr,a
                                    516 ;	uart.c:9: while (TI==0)
      00342B                        517 00101$:
      00342B 30 99 FD         [24]  518 	jnb	_TI,00101$
                                    519 ;	uart.c:14: SBUF = ch;
      00342E 90 00 39         [24]  520 	mov	dptr,#_putchar_ch_65536_4
      003431 E0               [24]  521 	movx	a,@dptr
      003432 FE               [12]  522 	mov	r6,a
      003433 A3               [24]  523 	inc	dptr
      003434 E0               [24]  524 	movx	a,@dptr
      003435 FF               [12]  525 	mov	r7,a
      003436 8E 99            [24]  526 	mov	_SBUF,r6
                                    527 ;	uart.c:15: TI = 0;
                                    528 ;	assignBit
      003438 C2 99            [12]  529 	clr	_TI
                                    530 ;	uart.c:17: return ch;
      00343A 8E 82            [24]  531 	mov	dpl,r6
      00343C 8F 83            [24]  532 	mov	dph,r7
                                    533 ;	uart.c:18: }
      00343E 22               [24]  534 	ret
                                    535 ;------------------------------------------------------------
                                    536 ;Allocation info for local variables in function 'getchar'
                                    537 ;------------------------------------------------------------
                                    538 ;	uart.c:20: int getchar (void)
                                    539 ;	-----------------------------------------
                                    540 ;	 function getchar
                                    541 ;	-----------------------------------------
      00343F                        542 _getchar:
                                    543 ;	uart.c:22: while (RI==0)
      00343F                        544 00101$:
                                    545 ;	uart.c:27: RI = 0;
                                    546 ;	assignBit
      00343F 10 98 02         [24]  547 	jbc	_RI,00114$
      003442 80 FB            [24]  548 	sjmp	00101$
      003444                        549 00114$:
                                    550 ;	uart.c:28: return SBUF;
      003444 AE 99            [24]  551 	mov	r6,_SBUF
      003446 7F 00            [12]  552 	mov	r7,#0x00
      003448 8E 82            [24]  553 	mov	dpl,r6
      00344A 8F 83            [24]  554 	mov	dph,r7
                                    555 ;	uart.c:29: }
      00344C 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'get_input'
                                    559 ;------------------------------------------------------------
                                    560 ;num                       Allocated with name '_get_input_num_65536_11'
                                    561 ;count                     Allocated with name '_get_input_count_65536_11'
                                    562 ;input_arr                 Allocated with name '_get_input_input_arr_65536_11'
                                    563 ;i                         Allocated with name '_get_input_i_131072_16'
                                    564 ;------------------------------------------------------------
                                    565 ;	uart.c:31: uint16_t get_input(void)
                                    566 ;	-----------------------------------------
                                    567 ;	 function get_input
                                    568 ;	-----------------------------------------
      00344D                        569 _get_input:
                                    570 ;	uart.c:33: __xdata uint16_t num = 0;
      00344D 90 00 3B         [24]  571 	mov	dptr,#_get_input_num_65536_11
      003450 E4               [12]  572 	clr	a
      003451 F0               [24]  573 	movx	@dptr,a
      003452 A3               [24]  574 	inc	dptr
      003453 F0               [24]  575 	movx	@dptr,a
                                    576 ;	uart.c:34: __xdata uint8_t count = 0;
      003454 90 00 3D         [24]  577 	mov	dptr,#_get_input_count_65536_11
      003457 F0               [24]  578 	movx	@dptr,a
                                    579 ;	uart.c:37: while (input_arr[count] = getchar())
      003458                        580 00108$:
      003458 90 00 3D         [24]  581 	mov	dptr,#_get_input_count_65536_11
      00345B E0               [24]  582 	movx	a,@dptr
      00345C FF               [12]  583 	mov	r7,a
      00345D 24 3E            [12]  584 	add	a,#_get_input_input_arr_65536_11
      00345F FD               [12]  585 	mov	r5,a
      003460 E4               [12]  586 	clr	a
      003461 34 00            [12]  587 	addc	a,#(_get_input_input_arr_65536_11 >> 8)
      003463 FE               [12]  588 	mov	r6,a
      003464 C0 07            [24]  589 	push	ar7
      003466 C0 06            [24]  590 	push	ar6
      003468 C0 05            [24]  591 	push	ar5
      00346A 12 34 3F         [24]  592 	lcall	_getchar
      00346D AB 82            [24]  593 	mov	r3,dpl
      00346F AC 83            [24]  594 	mov	r4,dph
      003471 D0 05            [24]  595 	pop	ar5
      003473 D0 06            [24]  596 	pop	ar6
      003475 D0 07            [24]  597 	pop	ar7
      003477 8D 82            [24]  598 	mov	dpl,r5
      003479 8E 83            [24]  599 	mov	dph,r6
      00347B EB               [12]  600 	mov	a,r3
      00347C F0               [24]  601 	movx	@dptr,a
      00347D EB               [12]  602 	mov	a,r3
      00347E 70 03            [24]  603 	jnz	00150$
      003480 02 34 FA         [24]  604 	ljmp	00124$
      003483                        605 00150$:
                                    606 ;	uart.c:40: if (input_arr[count] == 13)
      003483 8D 82            [24]  607 	mov	dpl,r5
      003485 8E 83            [24]  608 	mov	dph,r6
      003487 E0               [24]  609 	movx	a,@dptr
      003488 FC               [12]  610 	mov	r4,a
      003489 BC 0D 02         [24]  611 	cjne	r4,#0x0d,00151$
      00348C 80 6C            [24]  612 	sjmp	00124$
      00348E                        613 00151$:
                                    614 ;	uart.c:45: if (input_arr[count] == 8)
      00348E 8D 82            [24]  615 	mov	dpl,r5
      003490 8E 83            [24]  616 	mov	dph,r6
      003492 E0               [24]  617 	movx	a,@dptr
      003493 FD               [12]  618 	mov	r5,a
      003494 BD 08 1C         [24]  619 	cjne	r5,#0x08,00104$
                                    620 ;	uart.c:48: putchar(8);     // Backspace
      003497 90 00 08         [24]  621 	mov	dptr,#0x0008
      00349A C0 07            [24]  622 	push	ar7
      00349C 12 34 20         [24]  623 	lcall	_putchar
                                    624 ;	uart.c:49: putchar(32);    // Space
      00349F 90 00 20         [24]  625 	mov	dptr,#0x0020
      0034A2 12 34 20         [24]  626 	lcall	_putchar
                                    627 ;	uart.c:50: putchar(8);     // Backspace
      0034A5 90 00 08         [24]  628 	mov	dptr,#0x0008
      0034A8 12 34 20         [24]  629 	lcall	_putchar
      0034AB D0 07            [24]  630 	pop	ar7
                                    631 ;	uart.c:51: count--;
      0034AD EF               [12]  632 	mov	a,r7
      0034AE 14               [12]  633 	dec	a
      0034AF 90 00 3D         [24]  634 	mov	dptr,#_get_input_count_65536_11
      0034B2 F0               [24]  635 	movx	@dptr,a
      0034B3                        636 00104$:
                                    637 ;	uart.c:54: if ((input_arr[count] >= '0') && (input_arr[count] <= '9'))
      0034B3 90 00 3D         [24]  638 	mov	dptr,#_get_input_count_65536_11
      0034B6 E0               [24]  639 	movx	a,@dptr
      0034B7 FF               [12]  640 	mov	r7,a
      0034B8 24 3E            [12]  641 	add	a,#_get_input_input_arr_65536_11
      0034BA FD               [12]  642 	mov	r5,a
      0034BB E4               [12]  643 	clr	a
      0034BC 34 00            [12]  644 	addc	a,#(_get_input_input_arr_65536_11 >> 8)
      0034BE FE               [12]  645 	mov	r6,a
      0034BF 8D 82            [24]  646 	mov	dpl,r5
      0034C1 8E 83            [24]  647 	mov	dph,r6
      0034C3 E0               [24]  648 	movx	a,@dptr
      0034C4 FC               [12]  649 	mov	r4,a
      0034C5 BC 30 00         [24]  650 	cjne	r4,#0x30,00154$
      0034C8                        651 00154$:
      0034C8 40 8E            [24]  652 	jc	00108$
      0034CA EC               [12]  653 	mov	a,r4
      0034CB 24 C6            [12]  654 	add	a,#0xff - 0x39
      0034CD 40 89            [24]  655 	jc	00108$
                                    656 ;	uart.c:56: putchar(input_arr[count]);  // Echo the input character
      0034CF 7B 00            [12]  657 	mov	r3,#0x00
      0034D1 8C 82            [24]  658 	mov	dpl,r4
      0034D3 8B 83            [24]  659 	mov	dph,r3
      0034D5 C0 07            [24]  660 	push	ar7
      0034D7 C0 06            [24]  661 	push	ar6
      0034D9 C0 05            [24]  662 	push	ar5
      0034DB 12 34 20         [24]  663 	lcall	_putchar
      0034DE D0 05            [24]  664 	pop	ar5
      0034E0 D0 06            [24]  665 	pop	ar6
      0034E2 D0 07            [24]  666 	pop	ar7
                                    667 ;	uart.c:57: input_arr[count] = input_arr[count] - '0';  // Convert ASCII digit to integer
      0034E4 8D 82            [24]  668 	mov	dpl,r5
      0034E6 8E 83            [24]  669 	mov	dph,r6
      0034E8 E0               [24]  670 	movx	a,@dptr
      0034E9 24 D0            [12]  671 	add	a,#0xd0
      0034EB FC               [12]  672 	mov	r4,a
      0034EC 8D 82            [24]  673 	mov	dpl,r5
      0034EE 8E 83            [24]  674 	mov	dph,r6
      0034F0 F0               [24]  675 	movx	@dptr,a
                                    676 ;	uart.c:58: count++;
      0034F1 90 00 3D         [24]  677 	mov	dptr,#_get_input_count_65536_11
      0034F4 EF               [12]  678 	mov	a,r7
      0034F5 04               [12]  679 	inc	a
      0034F6 F0               [24]  680 	movx	@dptr,a
      0034F7 02 34 58         [24]  681 	ljmp	00108$
                                    682 ;	uart.c:62: for (int i = 0; i < count; i++)
      0034FA                        683 00124$:
      0034FA 90 00 3D         [24]  684 	mov	dptr,#_get_input_count_65536_11
      0034FD E0               [24]  685 	movx	a,@dptr
      0034FE FF               [12]  686 	mov	r7,a
      0034FF 7D 00            [12]  687 	mov	r5,#0x00
      003501 7E 00            [12]  688 	mov	r6,#0x00
      003503                        689 00113$:
      003503 8F 03            [24]  690 	mov	ar3,r7
      003505 7C 00            [12]  691 	mov	r4,#0x00
      003507 C3               [12]  692 	clr	c
      003508 ED               [12]  693 	mov	a,r5
      003509 9B               [12]  694 	subb	a,r3
      00350A EE               [12]  695 	mov	a,r6
      00350B 64 80            [12]  696 	xrl	a,#0x80
      00350D 8C F0            [24]  697 	mov	b,r4
      00350F 63 F0 80         [24]  698 	xrl	b,#0x80
      003512 95 F0            [12]  699 	subb	a,b
      003514 50 59            [24]  700 	jnc	00111$
                                    701 ;	uart.c:64: num = num * 10;   // Build a number from digits
      003516 90 00 3B         [24]  702 	mov	dptr,#_get_input_num_65536_11
      003519 E0               [24]  703 	movx	a,@dptr
      00351A FB               [12]  704 	mov	r3,a
      00351B A3               [24]  705 	inc	dptr
      00351C E0               [24]  706 	movx	a,@dptr
      00351D FC               [12]  707 	mov	r4,a
      00351E 90 00 55         [24]  708 	mov	dptr,#__mulint_PARM_2
      003521 EB               [12]  709 	mov	a,r3
      003522 F0               [24]  710 	movx	@dptr,a
      003523 EC               [12]  711 	mov	a,r4
      003524 A3               [24]  712 	inc	dptr
      003525 F0               [24]  713 	movx	@dptr,a
      003526 90 00 0A         [24]  714 	mov	dptr,#0x000a
      003529 C0 07            [24]  715 	push	ar7
      00352B C0 06            [24]  716 	push	ar6
      00352D C0 05            [24]  717 	push	ar5
      00352F 12 38 15         [24]  718 	lcall	__mulint
      003532 AB 82            [24]  719 	mov	r3,dpl
      003534 AC 83            [24]  720 	mov	r4,dph
      003536 D0 05            [24]  721 	pop	ar5
      003538 D0 06            [24]  722 	pop	ar6
      00353A D0 07            [24]  723 	pop	ar7
      00353C 90 00 3B         [24]  724 	mov	dptr,#_get_input_num_65536_11
      00353F EB               [12]  725 	mov	a,r3
      003540 F0               [24]  726 	movx	@dptr,a
      003541 EC               [12]  727 	mov	a,r4
      003542 A3               [24]  728 	inc	dptr
      003543 F0               [24]  729 	movx	@dptr,a
                                    730 ;	uart.c:65: num = num + input_arr[i];
      003544 ED               [12]  731 	mov	a,r5
      003545 24 3E            [12]  732 	add	a,#_get_input_input_arr_65536_11
      003547 F5 82            [12]  733 	mov	dpl,a
      003549 EE               [12]  734 	mov	a,r6
      00354A 34 00            [12]  735 	addc	a,#(_get_input_input_arr_65536_11 >> 8)
      00354C F5 83            [12]  736 	mov	dph,a
      00354E E0               [24]  737 	movx	a,@dptr
      00354F FC               [12]  738 	mov	r4,a
      003550 7B 00            [12]  739 	mov	r3,#0x00
      003552 90 00 3B         [24]  740 	mov	dptr,#_get_input_num_65536_11
      003555 E0               [24]  741 	movx	a,@dptr
      003556 F9               [12]  742 	mov	r1,a
      003557 A3               [24]  743 	inc	dptr
      003558 E0               [24]  744 	movx	a,@dptr
      003559 FA               [12]  745 	mov	r2,a
      00355A EC               [12]  746 	mov	a,r4
      00355B 29               [12]  747 	add	a,r1
      00355C F9               [12]  748 	mov	r1,a
      00355D EB               [12]  749 	mov	a,r3
      00355E 3A               [12]  750 	addc	a,r2
      00355F FA               [12]  751 	mov	r2,a
      003560 90 00 3B         [24]  752 	mov	dptr,#_get_input_num_65536_11
      003563 E9               [12]  753 	mov	a,r1
      003564 F0               [24]  754 	movx	@dptr,a
      003565 EA               [12]  755 	mov	a,r2
      003566 A3               [24]  756 	inc	dptr
      003567 F0               [24]  757 	movx	@dptr,a
                                    758 ;	uart.c:62: for (int i = 0; i < count; i++)
      003568 0D               [12]  759 	inc	r5
      003569 BD 00 97         [24]  760 	cjne	r5,#0x00,00113$
      00356C 0E               [12]  761 	inc	r6
      00356D 80 94            [24]  762 	sjmp	00113$
      00356F                        763 00111$:
                                    764 ;	uart.c:68: return num;  // Return the input number
      00356F 90 00 3B         [24]  765 	mov	dptr,#_get_input_num_65536_11
      003572 E0               [24]  766 	movx	a,@dptr
      003573 FE               [12]  767 	mov	r6,a
      003574 A3               [24]  768 	inc	dptr
      003575 E0               [24]  769 	movx	a,@dptr
                                    770 ;	uart.c:69: }
      003576 8E 82            [24]  771 	mov	dpl,r6
      003578 F5 83            [12]  772 	mov	dph,a
      00357A 22               [24]  773 	ret
                                    774 	.area CSEG    (CODE)
                                    775 	.area CONST   (CODE)
                                    776 	.area XINIT   (CODE)
                                    777 	.area CABS    (ABS,CODE)
