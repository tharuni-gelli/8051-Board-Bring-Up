                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
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
                                    207 	.globl _delay_us
                                    208 ;--------------------------------------------------------
                                    209 ; special function registers
                                    210 ;--------------------------------------------------------
                                    211 	.area RSEG    (ABS,DATA)
      000000                        212 	.org 0x0000
                           000080   213 _P0	=	0x0080
                           000081   214 _SP	=	0x0081
                           000082   215 _DPL	=	0x0082
                           000083   216 _DPH	=	0x0083
                           000087   217 _PCON	=	0x0087
                           000088   218 _TCON	=	0x0088
                           000089   219 _TMOD	=	0x0089
                           00008A   220 _TL0	=	0x008a
                           00008B   221 _TL1	=	0x008b
                           00008C   222 _TH0	=	0x008c
                           00008D   223 _TH1	=	0x008d
                           000090   224 _P1	=	0x0090
                           000098   225 _SCON	=	0x0098
                           000099   226 _SBUF	=	0x0099
                           0000A0   227 _P2	=	0x00a0
                           0000A8   228 _IE	=	0x00a8
                           0000B0   229 _P3	=	0x00b0
                           0000B8   230 _IP	=	0x00b8
                           0000D0   231 _PSW	=	0x00d0
                           0000E0   232 _ACC	=	0x00e0
                           0000F0   233 _B	=	0x00f0
                           0000C8   234 _T2CON	=	0x00c8
                           0000CA   235 _RCAP2L	=	0x00ca
                           0000CB   236 _RCAP2H	=	0x00cb
                           0000CC   237 _TL2	=	0x00cc
                           0000CD   238 _TH2	=	0x00cd
                           00008E   239 _AUXR	=	0x008e
                           0000A2   240 _AUXR1	=	0x00a2
                           000097   241 _CKRL	=	0x0097
                           00008F   242 _CKCON0	=	0x008f
                           0000AF   243 _CKCON1	=	0x00af
                           0000FA   244 _CCAP0H	=	0x00fa
                           0000FB   245 _CCAP1H	=	0x00fb
                           0000FC   246 _CCAP2H	=	0x00fc
                           0000FD   247 _CCAP3H	=	0x00fd
                           0000FE   248 _CCAP4H	=	0x00fe
                           0000EA   249 _CCAP0L	=	0x00ea
                           0000EB   250 _CCAP1L	=	0x00eb
                           0000EC   251 _CCAP2L	=	0x00ec
                           0000ED   252 _CCAP3L	=	0x00ed
                           0000EE   253 _CCAP4L	=	0x00ee
                           0000DA   254 _CCAPM0	=	0x00da
                           0000DB   255 _CCAPM1	=	0x00db
                           0000DC   256 _CCAPM2	=	0x00dc
                           0000DD   257 _CCAPM3	=	0x00dd
                           0000DE   258 _CCAPM4	=	0x00de
                           0000D8   259 _CCON	=	0x00d8
                           0000F9   260 _CH	=	0x00f9
                           0000E9   261 _CL	=	0x00e9
                           0000D9   262 _CMOD	=	0x00d9
                           0000A8   263 _IEN0	=	0x00a8
                           0000B1   264 _IEN1	=	0x00b1
                           0000B8   265 _IPL0	=	0x00b8
                           0000B7   266 _IPH0	=	0x00b7
                           0000B2   267 _IPL1	=	0x00b2
                           0000B3   268 _IPH1	=	0x00b3
                           0000C0   269 _P4	=	0x00c0
                           0000E8   270 _P5	=	0x00e8
                           0000A6   271 _WDTRST	=	0x00a6
                           0000A7   272 _WDTPRG	=	0x00a7
                           0000A9   273 _SADDR	=	0x00a9
                           0000B9   274 _SADEN	=	0x00b9
                           0000C3   275 _SPCON	=	0x00c3
                           0000C4   276 _SPSTA	=	0x00c4
                           0000C5   277 _SPDAT	=	0x00c5
                           0000C9   278 _T2MOD	=	0x00c9
                           00009B   279 _BDRCON	=	0x009b
                           00009A   280 _BRL	=	0x009a
                           00009C   281 _KBLS	=	0x009c
                           00009D   282 _KBE	=	0x009d
                           00009E   283 _KBF	=	0x009e
                           0000D2   284 _EECON	=	0x00d2
                                    285 ;--------------------------------------------------------
                                    286 ; special function bits
                                    287 ;--------------------------------------------------------
                                    288 	.area RSEG    (ABS,DATA)
      000000                        289 	.org 0x0000
                           000080   290 _P0_0	=	0x0080
                           000081   291 _P0_1	=	0x0081
                           000082   292 _P0_2	=	0x0082
                           000083   293 _P0_3	=	0x0083
                           000084   294 _P0_4	=	0x0084
                           000085   295 _P0_5	=	0x0085
                           000086   296 _P0_6	=	0x0086
                           000087   297 _P0_7	=	0x0087
                           000088   298 _IT0	=	0x0088
                           000089   299 _IE0	=	0x0089
                           00008A   300 _IT1	=	0x008a
                           00008B   301 _IE1	=	0x008b
                           00008C   302 _TR0	=	0x008c
                           00008D   303 _TF0	=	0x008d
                           00008E   304 _TR1	=	0x008e
                           00008F   305 _TF1	=	0x008f
                           000090   306 _P1_0	=	0x0090
                           000091   307 _P1_1	=	0x0091
                           000092   308 _P1_2	=	0x0092
                           000093   309 _P1_3	=	0x0093
                           000094   310 _P1_4	=	0x0094
                           000095   311 _P1_5	=	0x0095
                           000096   312 _P1_6	=	0x0096
                           000097   313 _P1_7	=	0x0097
                           000098   314 _RI	=	0x0098
                           000099   315 _TI	=	0x0099
                           00009A   316 _RB8	=	0x009a
                           00009B   317 _TB8	=	0x009b
                           00009C   318 _REN	=	0x009c
                           00009D   319 _SM2	=	0x009d
                           00009E   320 _SM1	=	0x009e
                           00009F   321 _SM0	=	0x009f
                           0000A0   322 _P2_0	=	0x00a0
                           0000A1   323 _P2_1	=	0x00a1
                           0000A2   324 _P2_2	=	0x00a2
                           0000A3   325 _P2_3	=	0x00a3
                           0000A4   326 _P2_4	=	0x00a4
                           0000A5   327 _P2_5	=	0x00a5
                           0000A6   328 _P2_6	=	0x00a6
                           0000A7   329 _P2_7	=	0x00a7
                           0000A8   330 _EX0	=	0x00a8
                           0000A9   331 _ET0	=	0x00a9
                           0000AA   332 _EX1	=	0x00aa
                           0000AB   333 _ET1	=	0x00ab
                           0000AC   334 _ES	=	0x00ac
                           0000AF   335 _EA	=	0x00af
                           0000B0   336 _P3_0	=	0x00b0
                           0000B1   337 _P3_1	=	0x00b1
                           0000B2   338 _P3_2	=	0x00b2
                           0000B3   339 _P3_3	=	0x00b3
                           0000B4   340 _P3_4	=	0x00b4
                           0000B5   341 _P3_5	=	0x00b5
                           0000B6   342 _P3_6	=	0x00b6
                           0000B7   343 _P3_7	=	0x00b7
                           0000B0   344 _RXD	=	0x00b0
                           0000B1   345 _TXD	=	0x00b1
                           0000B2   346 _INT0	=	0x00b2
                           0000B3   347 _INT1	=	0x00b3
                           0000B4   348 _T0	=	0x00b4
                           0000B5   349 _T1	=	0x00b5
                           0000B6   350 _WR	=	0x00b6
                           0000B7   351 _RD	=	0x00b7
                           0000B8   352 _PX0	=	0x00b8
                           0000B9   353 _PT0	=	0x00b9
                           0000BA   354 _PX1	=	0x00ba
                           0000BB   355 _PT1	=	0x00bb
                           0000BC   356 _PS	=	0x00bc
                           0000D0   357 _P	=	0x00d0
                           0000D1   358 _F1	=	0x00d1
                           0000D2   359 _OV	=	0x00d2
                           0000D3   360 _RS0	=	0x00d3
                           0000D4   361 _RS1	=	0x00d4
                           0000D5   362 _F0	=	0x00d5
                           0000D6   363 _AC	=	0x00d6
                           0000D7   364 _CY	=	0x00d7
                           0000AD   365 _ET2	=	0x00ad
                           0000BD   366 _PT2	=	0x00bd
                           0000C8   367 _T2CON_0	=	0x00c8
                           0000C9   368 _T2CON_1	=	0x00c9
                           0000CA   369 _T2CON_2	=	0x00ca
                           0000CB   370 _T2CON_3	=	0x00cb
                           0000CC   371 _T2CON_4	=	0x00cc
                           0000CD   372 _T2CON_5	=	0x00cd
                           0000CE   373 _T2CON_6	=	0x00ce
                           0000CF   374 _T2CON_7	=	0x00cf
                           0000C8   375 _CP_RL2	=	0x00c8
                           0000C9   376 _C_T2	=	0x00c9
                           0000CA   377 _TR2	=	0x00ca
                           0000CB   378 _EXEN2	=	0x00cb
                           0000CC   379 _TCLK	=	0x00cc
                           0000CD   380 _RCLK	=	0x00cd
                           0000CE   381 _EXF2	=	0x00ce
                           0000CF   382 _TF2	=	0x00cf
                           0000DF   383 _CF	=	0x00df
                           0000DE   384 _CR	=	0x00de
                           0000DC   385 _CCF4	=	0x00dc
                           0000DB   386 _CCF3	=	0x00db
                           0000DA   387 _CCF2	=	0x00da
                           0000D9   388 _CCF1	=	0x00d9
                           0000D8   389 _CCF0	=	0x00d8
                           0000AE   390 _EC	=	0x00ae
                           0000BE   391 _PPCL	=	0x00be
                           0000BD   392 _PT2L	=	0x00bd
                           0000BC   393 _PSL	=	0x00bc
                           0000BB   394 _PT1L	=	0x00bb
                           0000BA   395 _PX1L	=	0x00ba
                           0000B9   396 _PT0L	=	0x00b9
                           0000B8   397 _PX0L	=	0x00b8
                           0000C0   398 _P4_0	=	0x00c0
                           0000C1   399 _P4_1	=	0x00c1
                           0000C2   400 _P4_2	=	0x00c2
                           0000C3   401 _P4_3	=	0x00c3
                           0000C4   402 _P4_4	=	0x00c4
                           0000C5   403 _P4_5	=	0x00c5
                           0000C6   404 _P4_6	=	0x00c6
                           0000C7   405 _P4_7	=	0x00c7
                           0000E8   406 _P5_0	=	0x00e8
                           0000E9   407 _P5_1	=	0x00e9
                           0000EA   408 _P5_2	=	0x00ea
                           0000EB   409 _P5_3	=	0x00eb
                           0000EC   410 _P5_4	=	0x00ec
                           0000ED   411 _P5_5	=	0x00ed
                           0000EE   412 _P5_6	=	0x00ee
                           0000EF   413 _P5_7	=	0x00ef
                                    414 ;--------------------------------------------------------
                                    415 ; overlayable register banks
                                    416 ;--------------------------------------------------------
                                    417 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        418 	.ds 8
                                    419 ;--------------------------------------------------------
                                    420 ; internal ram data
                                    421 ;--------------------------------------------------------
                                    422 	.area DSEG    (DATA)
                                    423 ;--------------------------------------------------------
                                    424 ; overlayable items in internal ram
                                    425 ;--------------------------------------------------------
                                    426 ;--------------------------------------------------------
                                    427 ; indirectly addressable internal ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area ISEG    (DATA)
                                    430 ;--------------------------------------------------------
                                    431 ; absolute internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area IABS    (ABS,DATA)
                                    434 	.area IABS    (ABS,DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; bit data
                                    437 ;--------------------------------------------------------
                                    438 	.area BSEG    (BIT)
                                    439 ;--------------------------------------------------------
                                    440 ; paged external ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area PSEG    (PAG,XDATA)
                                    443 ;--------------------------------------------------------
                                    444 ; external ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area XSEG    (XDATA)
      000001                        447 _delay_us_microseconds_65536_2:
      000001                        448 	.ds 2
                                    449 ;--------------------------------------------------------
                                    450 ; absolute external ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area XABS    (ABS,XDATA)
                                    453 ;--------------------------------------------------------
                                    454 ; external initialized ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area XISEG   (XDATA)
                                    457 	.area HOME    (CODE)
                                    458 	.area GSINIT0 (CODE)
                                    459 	.area GSINIT1 (CODE)
                                    460 	.area GSINIT2 (CODE)
                                    461 	.area GSINIT3 (CODE)
                                    462 	.area GSINIT4 (CODE)
                                    463 	.area GSINIT5 (CODE)
                                    464 	.area GSINIT  (CODE)
                                    465 	.area GSFINAL (CODE)
                                    466 	.area CSEG    (CODE)
                                    467 ;--------------------------------------------------------
                                    468 ; global & static initialisations
                                    469 ;--------------------------------------------------------
                                    470 	.area HOME    (CODE)
                                    471 	.area GSINIT  (CODE)
                                    472 	.area GSFINAL (CODE)
                                    473 	.area GSINIT  (CODE)
                                    474 ;--------------------------------------------------------
                                    475 ; Home
                                    476 ;--------------------------------------------------------
                                    477 	.area HOME    (CODE)
                                    478 	.area HOME    (CODE)
                                    479 ;--------------------------------------------------------
                                    480 ; code
                                    481 ;--------------------------------------------------------
                                    482 	.area CSEG    (CODE)
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'delay_us'
                                    485 ;------------------------------------------------------------
                                    486 ;microseconds              Allocated with name '_delay_us_microseconds_65536_2'
                                    487 ;i                         Allocated with name '_delay_us_i_65536_3'
                                    488 ;limit                     Allocated with name '_delay_us_limit_65536_3'
                                    489 ;------------------------------------------------------------
                                    490 ;	delay.c:7: void delay_us(unsigned int microseconds) // Which is calculated by considering the 0.25usecs tsu and 0.25usecs thu. ( 250nsecs+250nsecs/2) = 250nsecs
                                    491 ;	-----------------------------------------
                                    492 ;	 function delay_us
                                    493 ;	-----------------------------------------
      002062                        494 _delay_us:
                           000007   495 	ar7 = 0x07
                           000006   496 	ar6 = 0x06
                           000005   497 	ar5 = 0x05
                           000004   498 	ar4 = 0x04
                           000003   499 	ar3 = 0x03
                           000002   500 	ar2 = 0x02
                           000001   501 	ar1 = 0x01
                           000000   502 	ar0 = 0x00
      002062 AF 83            [24]  503 	mov	r7,dph
      002064 E5 82            [12]  504 	mov	a,dpl
      002066 90 00 01         [24]  505 	mov	dptr,#_delay_us_microseconds_65536_2
      002069 F0               [24]  506 	movx	@dptr,a
      00206A EF               [12]  507 	mov	a,r7
      00206B A3               [24]  508 	inc	dptr
      00206C F0               [24]  509 	movx	@dptr,a
                                    510 ;	delay.c:10: limit = microseconds/15;
      00206D 90 00 01         [24]  511 	mov	dptr,#_delay_us_microseconds_65536_2
      002070 E0               [24]  512 	movx	a,@dptr
      002071 FE               [12]  513 	mov	r6,a
      002072 A3               [24]  514 	inc	dptr
      002073 E0               [24]  515 	movx	a,@dptr
      002074 FF               [12]  516 	mov	r7,a
      002075 90 00 4E         [24]  517 	mov	dptr,#__divuint_PARM_2
      002078 74 0F            [12]  518 	mov	a,#0x0f
      00207A F0               [24]  519 	movx	@dptr,a
      00207B E4               [12]  520 	clr	a
      00207C A3               [24]  521 	inc	dptr
      00207D F0               [24]  522 	movx	@dptr,a
                                    523 ;	delay.c:12: for (i = 0; i < limit; i++)
      00207E 8E 82            [24]  524 	mov	dpl,r6
      002080 8F 83            [24]  525 	mov	dph,r7
      002082 12 35 7B         [24]  526 	lcall	__divuint
      002085 AE 82            [24]  527 	mov	r6,dpl
      002087 AF 83            [24]  528 	mov	r7,dph
      002089 7C 00            [12]  529 	mov	r4,#0x00
      00208B 7D 00            [12]  530 	mov	r5,#0x00
      00208D                        531 00103$:
      00208D C3               [12]  532 	clr	c
      00208E EC               [12]  533 	mov	a,r4
      00208F 9E               [12]  534 	subb	a,r6
      002090 ED               [12]  535 	mov	a,r5
      002091 9F               [12]  536 	subb	a,r7
      002092 50 07            [24]  537 	jnc	00105$
      002094 0C               [12]  538 	inc	r4
      002095 BC 00 F5         [24]  539 	cjne	r4,#0x00,00103$
      002098 0D               [12]  540 	inc	r5
      002099 80 F2            [24]  541 	sjmp	00103$
      00209B                        542 00105$:
                                    543 ;	delay.c:16: }
      00209B 22               [24]  544 	ret
                                    545 	.area CSEG    (CODE)
                                    546 	.area CONST   (CODE)
                                    547 	.area XINIT   (CODE)
                                    548 	.area CABS    (ABS,CODE)
