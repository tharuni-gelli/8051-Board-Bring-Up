                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TF1
                                     12 	.globl _TR1
                                     13 	.globl _TF0
                                     14 	.globl _TR0
                                     15 	.globl _IE1
                                     16 	.globl _IT1
                                     17 	.globl _IE0
                                     18 	.globl _IT0
                                     19 	.globl _SM0
                                     20 	.globl _SM1
                                     21 	.globl _SM2
                                     22 	.globl _REN
                                     23 	.globl _TB8
                                     24 	.globl _RB8
                                     25 	.globl _TI
                                     26 	.globl _RI
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD0
                                     42 	.globl _TXD
                                     43 	.globl _RXD0
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _P1_7
                                     62 	.globl _P1_6
                                     63 	.globl _P1_5
                                     64 	.globl _P1_4
                                     65 	.globl _P1_3
                                     66 	.globl _P1_2
                                     67 	.globl _P1_1
                                     68 	.globl _P1_0
                                     69 	.globl _P0_7
                                     70 	.globl _P0_6
                                     71 	.globl _P0_5
                                     72 	.globl _P0_4
                                     73 	.globl _P0_3
                                     74 	.globl _P0_2
                                     75 	.globl _P0_1
                                     76 	.globl _P0_0
                                     77 	.globl _PS
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _EA
                                     83 	.globl _ES
                                     84 	.globl _ET1
                                     85 	.globl _EX1
                                     86 	.globl _ET0
                                     87 	.globl _EX0
                                     88 	.globl _BREG_F7
                                     89 	.globl _BREG_F6
                                     90 	.globl _BREG_F5
                                     91 	.globl _BREG_F4
                                     92 	.globl _BREG_F3
                                     93 	.globl _BREG_F2
                                     94 	.globl _BREG_F1
                                     95 	.globl _BREG_F0
                                     96 	.globl _P5_7
                                     97 	.globl _P5_6
                                     98 	.globl _P5_5
                                     99 	.globl _P5_4
                                    100 	.globl _P5_3
                                    101 	.globl _P5_2
                                    102 	.globl _P5_1
                                    103 	.globl _P5_0
                                    104 	.globl _P4_7
                                    105 	.globl _P4_6
                                    106 	.globl _P4_5
                                    107 	.globl _P4_4
                                    108 	.globl _P4_3
                                    109 	.globl _P4_2
                                    110 	.globl _P4_1
                                    111 	.globl _P4_0
                                    112 	.globl _PX0L
                                    113 	.globl _PT0L
                                    114 	.globl _PX1L
                                    115 	.globl _PT1L
                                    116 	.globl _PSL
                                    117 	.globl _PT2L
                                    118 	.globl _PPCL
                                    119 	.globl _EC
                                    120 	.globl _CCF0
                                    121 	.globl _CCF1
                                    122 	.globl _CCF2
                                    123 	.globl _CCF3
                                    124 	.globl _CCF4
                                    125 	.globl _CR
                                    126 	.globl _CF
                                    127 	.globl _TF2
                                    128 	.globl _EXF2
                                    129 	.globl _RCLK
                                    130 	.globl _TCLK
                                    131 	.globl _EXEN2
                                    132 	.globl _TR2
                                    133 	.globl _C_T2
                                    134 	.globl _CP_RL2
                                    135 	.globl _T2CON_7
                                    136 	.globl _T2CON_6
                                    137 	.globl _T2CON_5
                                    138 	.globl _T2CON_4
                                    139 	.globl _T2CON_3
                                    140 	.globl _T2CON_2
                                    141 	.globl _T2CON_1
                                    142 	.globl _T2CON_0
                                    143 	.globl _PT2
                                    144 	.globl _ET2
                                    145 	.globl _TMOD
                                    146 	.globl _TL1
                                    147 	.globl _TL0
                                    148 	.globl _TH1
                                    149 	.globl _TH0
                                    150 	.globl _TCON
                                    151 	.globl _SP
                                    152 	.globl _SCON
                                    153 	.globl _SBUF0
                                    154 	.globl _SBUF
                                    155 	.globl _PSW
                                    156 	.globl _PCON
                                    157 	.globl _P3
                                    158 	.globl _P2
                                    159 	.globl _P1
                                    160 	.globl _P0
                                    161 	.globl _IP
                                    162 	.globl _IE
                                    163 	.globl _DP0L
                                    164 	.globl _DPL
                                    165 	.globl _DP0H
                                    166 	.globl _DPH
                                    167 	.globl _B
                                    168 	.globl _ACC
                                    169 	.globl _EECON
                                    170 	.globl _KBF
                                    171 	.globl _KBE
                                    172 	.globl _KBLS
                                    173 	.globl _BRL
                                    174 	.globl _BDRCON
                                    175 	.globl _T2MOD
                                    176 	.globl _SPDAT
                                    177 	.globl _SPSTA
                                    178 	.globl _SPCON
                                    179 	.globl _SADEN
                                    180 	.globl _SADDR
                                    181 	.globl _WDTPRG
                                    182 	.globl _WDTRST
                                    183 	.globl _P5
                                    184 	.globl _P4
                                    185 	.globl _IPH1
                                    186 	.globl _IPL1
                                    187 	.globl _IPH0
                                    188 	.globl _IPL0
                                    189 	.globl _IEN1
                                    190 	.globl _IEN0
                                    191 	.globl _CMOD
                                    192 	.globl _CL
                                    193 	.globl _CH
                                    194 	.globl _CCON
                                    195 	.globl _CCAPM4
                                    196 	.globl _CCAPM3
                                    197 	.globl _CCAPM2
                                    198 	.globl _CCAPM1
                                    199 	.globl _CCAPM0
                                    200 	.globl _CCAP4L
                                    201 	.globl _CCAP3L
                                    202 	.globl _CCAP2L
                                    203 	.globl _CCAP1L
                                    204 	.globl _CCAP0L
                                    205 	.globl _CCAP4H
                                    206 	.globl _CCAP3H
                                    207 	.globl _CCAP2H
                                    208 	.globl _CCAP1H
                                    209 	.globl _CCAP0H
                                    210 	.globl _CKCON1
                                    211 	.globl _CKCON0
                                    212 	.globl _CKRL
                                    213 	.globl _AUXR1
                                    214 	.globl _AUXR
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _T2CON
                                    220 	.globl _mode
                                    221 	.globl _gain
                                    222 	.globl _wave
                                    223 	.globl _spi_clock_tick
                                    224 	.globl _spi_write_word
                                    225 	.globl _dac_update_output
                                    226 	.globl _dac_start_output
                                    227 	.globl _dac_stop_output
                                    228 	.globl _dac_set
                                    229 	.globl _dac_output_control_change
                                    230 	.globl _dac_next_wave
                                    231 	.globl _dac_increase_voltage
                                    232 	.globl _dac_decrease_voltage
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
                           0000E0   289 _ACC	=	0x00e0
                           0000F0   290 _B	=	0x00f0
                           000083   291 _DPH	=	0x0083
                           000083   292 _DP0H	=	0x0083
                           000082   293 _DPL	=	0x0082
                           000082   294 _DP0L	=	0x0082
                           0000A8   295 _IE	=	0x00a8
                           0000B8   296 _IP	=	0x00b8
                           000080   297 _P0	=	0x0080
                           000090   298 _P1	=	0x0090
                           0000A0   299 _P2	=	0x00a0
                           0000B0   300 _P3	=	0x00b0
                           000087   301 _PCON	=	0x0087
                           0000D0   302 _PSW	=	0x00d0
                           000099   303 _SBUF	=	0x0099
                           000099   304 _SBUF0	=	0x0099
                           000098   305 _SCON	=	0x0098
                           000081   306 _SP	=	0x0081
                           000088   307 _TCON	=	0x0088
                           00008C   308 _TH0	=	0x008c
                           00008D   309 _TH1	=	0x008d
                           00008A   310 _TL0	=	0x008a
                           00008B   311 _TL1	=	0x008b
                           000089   312 _TMOD	=	0x0089
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
                           0000A8   375 _EX0	=	0x00a8
                           0000A9   376 _ET0	=	0x00a9
                           0000AA   377 _EX1	=	0x00aa
                           0000AB   378 _ET1	=	0x00ab
                           0000AC   379 _ES	=	0x00ac
                           0000AF   380 _EA	=	0x00af
                           0000B8   381 _PX0	=	0x00b8
                           0000B9   382 _PT0	=	0x00b9
                           0000BA   383 _PX1	=	0x00ba
                           0000BB   384 _PT1	=	0x00bb
                           0000BC   385 _PS	=	0x00bc
                           000080   386 _P0_0	=	0x0080
                           000081   387 _P0_1	=	0x0081
                           000082   388 _P0_2	=	0x0082
                           000083   389 _P0_3	=	0x0083
                           000084   390 _P0_4	=	0x0084
                           000085   391 _P0_5	=	0x0085
                           000086   392 _P0_6	=	0x0086
                           000087   393 _P0_7	=	0x0087
                           000090   394 _P1_0	=	0x0090
                           000091   395 _P1_1	=	0x0091
                           000092   396 _P1_2	=	0x0092
                           000093   397 _P1_3	=	0x0093
                           000094   398 _P1_4	=	0x0094
                           000095   399 _P1_5	=	0x0095
                           000096   400 _P1_6	=	0x0096
                           000097   401 _P1_7	=	0x0097
                           0000A0   402 _P2_0	=	0x00a0
                           0000A1   403 _P2_1	=	0x00a1
                           0000A2   404 _P2_2	=	0x00a2
                           0000A3   405 _P2_3	=	0x00a3
                           0000A4   406 _P2_4	=	0x00a4
                           0000A5   407 _P2_5	=	0x00a5
                           0000A6   408 _P2_6	=	0x00a6
                           0000A7   409 _P2_7	=	0x00a7
                           0000B0   410 _P3_0	=	0x00b0
                           0000B1   411 _P3_1	=	0x00b1
                           0000B2   412 _P3_2	=	0x00b2
                           0000B3   413 _P3_3	=	0x00b3
                           0000B4   414 _P3_4	=	0x00b4
                           0000B5   415 _P3_5	=	0x00b5
                           0000B6   416 _P3_6	=	0x00b6
                           0000B7   417 _P3_7	=	0x00b7
                           0000B0   418 _RXD	=	0x00b0
                           0000B0   419 _RXD0	=	0x00b0
                           0000B1   420 _TXD	=	0x00b1
                           0000B1   421 _TXD0	=	0x00b1
                           0000B2   422 _INT0	=	0x00b2
                           0000B3   423 _INT1	=	0x00b3
                           0000B4   424 _T0	=	0x00b4
                           0000B5   425 _T1	=	0x00b5
                           0000B6   426 _WR	=	0x00b6
                           0000B7   427 _RD	=	0x00b7
                           0000D0   428 _P	=	0x00d0
                           0000D1   429 _F1	=	0x00d1
                           0000D2   430 _OV	=	0x00d2
                           0000D3   431 _RS0	=	0x00d3
                           0000D4   432 _RS1	=	0x00d4
                           0000D5   433 _F0	=	0x00d5
                           0000D6   434 _AC	=	0x00d6
                           0000D7   435 _CY	=	0x00d7
                           000098   436 _RI	=	0x0098
                           000099   437 _TI	=	0x0099
                           00009A   438 _RB8	=	0x009a
                           00009B   439 _TB8	=	0x009b
                           00009C   440 _REN	=	0x009c
                           00009D   441 _SM2	=	0x009d
                           00009E   442 _SM1	=	0x009e
                           00009F   443 _SM0	=	0x009f
                           000088   444 _IT0	=	0x0088
                           000089   445 _IE0	=	0x0089
                           00008A   446 _IT1	=	0x008a
                           00008B   447 _IE1	=	0x008b
                           00008C   448 _TR0	=	0x008c
                           00008D   449 _TF0	=	0x008d
                           00008E   450 _TR1	=	0x008e
                           00008F   451 _TF1	=	0x008f
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
                                    465 ; indirectly addressable internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area ISEG    (DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; absolute internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area IABS    (ABS,DATA)
                                    472 	.area IABS    (ABS,DATA)
                                    473 ;--------------------------------------------------------
                                    474 ; bit data
                                    475 ;--------------------------------------------------------
                                    476 	.area BSEG    (BIT)
                                    477 ;--------------------------------------------------------
                                    478 ; paged external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area PSEG    (PAG,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XSEG    (XDATA)
      000159                        485 _wave::
      000159                        486 	.ds 1
      00015A                        487 _gain::
      00015A                        488 	.ds 1
      00015B                        489 _mode::
      00015B                        490 	.ds 1
      00015C                        491 _spi_write_word_data_word_65536_25:
      00015C                        492 	.ds 2
      00015E                        493 _dac_update_output_counter_65536_32:
      00015E                        494 	.ds 2
      000160                        495 _dac_update_output_sine_wave_65536_32:
      000160                        496 	.ds 256
      000260                        497 _dac_update_output_square_wave_65536_32:
      000260                        498 	.ds 256
      000360                        499 _dac_update_output_triangular_value_wave_65536_32:
      000360                        500 	.ds 256
      000460                        501 _dac_update_output_saw_wave_65536_32:
      000460                        502 	.ds 256
      000560                        503 _dac_update_output_array_ptr_65536_32:
      000560                        504 	.ds 8
      000568                        505 _dac_update_output_command_word_a_65536_32:
      000568                        506 	.ds 2
      00056A                        507 _dac_update_output_command_word_b_65536_32:
      00056A                        508 	.ds 2
      00056C                        509 _dac_set_data_word_65536_42:
      00056C                        510 	.ds 2
                                    511 ;--------------------------------------------------------
                                    512 ; absolute external ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area XABS    (ABS,XDATA)
                                    515 ;--------------------------------------------------------
                                    516 ; external initialized ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area XISEG   (XDATA)
                                    519 	.area HOME    (CODE)
                                    520 	.area GSINIT0 (CODE)
                                    521 	.area GSINIT1 (CODE)
                                    522 	.area GSINIT2 (CODE)
                                    523 	.area GSINIT3 (CODE)
                                    524 	.area GSINIT4 (CODE)
                                    525 	.area GSINIT5 (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.area GSFINAL (CODE)
                                    528 	.area CSEG    (CODE)
                                    529 ;--------------------------------------------------------
                                    530 ; global & static initialisations
                                    531 ;--------------------------------------------------------
                                    532 	.area HOME    (CODE)
                                    533 	.area GSINIT  (CODE)
                                    534 	.area GSFINAL (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'dac_update_output'
                                    538 ;------------------------------------------------------------
                                    539 ;counter                   Allocated with name '_dac_update_output_counter_65536_32'
                                    540 ;sine_wave                 Allocated with name '_dac_update_output_sine_wave_65536_32'
                                    541 ;square_wave               Allocated with name '_dac_update_output_square_wave_65536_32'
                                    542 ;triangular_value_wave     Allocated with name '_dac_update_output_triangular_value_wave_65536_32'
                                    543 ;saw_wave                  Allocated with name '_dac_update_output_saw_wave_65536_32'
                                    544 ;array_ptr                 Allocated with name '_dac_update_output_array_ptr_65536_32'
                                    545 ;command_word_a            Allocated with name '_dac_update_output_command_word_a_65536_32'
                                    546 ;command_word_b            Allocated with name '_dac_update_output_command_word_b_65536_32'
                                    547 ;data_ptr                  Allocated with name '_dac_update_output_data_ptr_65536_32'
                                    548 ;------------------------------------------------------------
                                    549 ;	spi.c:59: __xdata static uint16_t counter = 0;
      00206A 90 01 5E         [24]  550 	mov	dptr,#_dac_update_output_counter_65536_32
      00206D E4               [12]  551 	clr	a
      00206E F0               [24]  552 	movx	@dptr,a
      00206F A3               [24]  553 	inc	dptr
      002070 F0               [24]  554 	movx	@dptr,a
                                    555 ;	spi.c:60: __xdata uint8_t static sine_wave[256]={128	,
      002071 90 01 60         [24]  556 	mov	dptr,#_dac_update_output_sine_wave_65536_32
      002074 74 80            [12]  557 	mov	a,#0x80
      002076 F0               [24]  558 	movx	@dptr,a
      002077 90 01 61         [24]  559 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0001)
      00207A 74 83            [12]  560 	mov	a,#0x83
      00207C F0               [24]  561 	movx	@dptr,a
      00207D 90 01 62         [24]  562 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0002)
      002080 74 86            [12]  563 	mov	a,#0x86
      002082 F0               [24]  564 	movx	@dptr,a
      002083 90 01 63         [24]  565 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0003)
      002086 74 89            [12]  566 	mov	a,#0x89
      002088 F0               [24]  567 	movx	@dptr,a
      002089 90 01 64         [24]  568 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0004)
      00208C 74 8C            [12]  569 	mov	a,#0x8c
      00208E F0               [24]  570 	movx	@dptr,a
      00208F 90 01 65         [24]  571 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0005)
      002092 74 90            [12]  572 	mov	a,#0x90
      002094 F0               [24]  573 	movx	@dptr,a
      002095 90 01 66         [24]  574 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0006)
      002098 74 93            [12]  575 	mov	a,#0x93
      00209A F0               [24]  576 	movx	@dptr,a
      00209B 90 01 67         [24]  577 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0007)
      00209E 74 96            [12]  578 	mov	a,#0x96
      0020A0 F0               [24]  579 	movx	@dptr,a
      0020A1 90 01 68         [24]  580 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0008)
      0020A4 74 99            [12]  581 	mov	a,#0x99
      0020A6 F0               [24]  582 	movx	@dptr,a
      0020A7 90 01 69         [24]  583 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0009)
      0020AA 74 9C            [12]  584 	mov	a,#0x9c
      0020AC F0               [24]  585 	movx	@dptr,a
      0020AD 90 01 6A         [24]  586 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000a)
      0020B0 74 9F            [12]  587 	mov	a,#0x9f
      0020B2 F0               [24]  588 	movx	@dptr,a
      0020B3 90 01 6B         [24]  589 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000b)
      0020B6 74 A2            [12]  590 	mov	a,#0xa2
      0020B8 F0               [24]  591 	movx	@dptr,a
      0020B9 90 01 6C         [24]  592 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000c)
      0020BC 74 A5            [12]  593 	mov	a,#0xa5
      0020BE F0               [24]  594 	movx	@dptr,a
      0020BF 90 01 6D         [24]  595 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000d)
      0020C2 74 A8            [12]  596 	mov	a,#0xa8
      0020C4 F0               [24]  597 	movx	@dptr,a
      0020C5 90 01 6E         [24]  598 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000e)
      0020C8 74 AB            [12]  599 	mov	a,#0xab
      0020CA F0               [24]  600 	movx	@dptr,a
      0020CB 90 01 6F         [24]  601 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x000f)
      0020CE 74 AE            [12]  602 	mov	a,#0xae
      0020D0 F0               [24]  603 	movx	@dptr,a
      0020D1 90 01 70         [24]  604 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0010)
      0020D4 74 B1            [12]  605 	mov	a,#0xb1
      0020D6 F0               [24]  606 	movx	@dptr,a
      0020D7 90 01 71         [24]  607 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0011)
      0020DA 74 B4            [12]  608 	mov	a,#0xb4
      0020DC F0               [24]  609 	movx	@dptr,a
      0020DD 90 01 72         [24]  610 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0012)
      0020E0 74 B6            [12]  611 	mov	a,#0xb6
      0020E2 F0               [24]  612 	movx	@dptr,a
      0020E3 90 01 73         [24]  613 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0013)
      0020E6 74 B9            [12]  614 	mov	a,#0xb9
      0020E8 F0               [24]  615 	movx	@dptr,a
      0020E9 90 01 74         [24]  616 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0014)
      0020EC 74 BC            [12]  617 	mov	a,#0xbc
      0020EE F0               [24]  618 	movx	@dptr,a
      0020EF 90 01 75         [24]  619 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0015)
      0020F2 74 BF            [12]  620 	mov	a,#0xbf
      0020F4 F0               [24]  621 	movx	@dptr,a
      0020F5 90 01 76         [24]  622 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0016)
      0020F8 74 C2            [12]  623 	mov	a,#0xc2
      0020FA F0               [24]  624 	movx	@dptr,a
      0020FB 90 01 77         [24]  625 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0017)
      0020FE 74 C4            [12]  626 	mov	a,#0xc4
      002100 F0               [24]  627 	movx	@dptr,a
      002101 90 01 78         [24]  628 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0018)
      002104 74 C7            [12]  629 	mov	a,#0xc7
      002106 F0               [24]  630 	movx	@dptr,a
      002107 90 01 79         [24]  631 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0019)
      00210A 74 C9            [12]  632 	mov	a,#0xc9
      00210C F0               [24]  633 	movx	@dptr,a
      00210D 90 01 7A         [24]  634 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001a)
      002110 74 CC            [12]  635 	mov	a,#0xcc
      002112 F0               [24]  636 	movx	@dptr,a
      002113 90 01 7B         [24]  637 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001b)
      002116 74 CE            [12]  638 	mov	a,#0xce
      002118 F0               [24]  639 	movx	@dptr,a
      002119 90 01 7C         [24]  640 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001c)
      00211C 74 D1            [12]  641 	mov	a,#0xd1
      00211E F0               [24]  642 	movx	@dptr,a
      00211F 90 01 7D         [24]  643 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001d)
      002122 74 D3            [12]  644 	mov	a,#0xd3
      002124 F0               [24]  645 	movx	@dptr,a
      002125 90 01 7E         [24]  646 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001e)
      002128 74 D6            [12]  647 	mov	a,#0xd6
      00212A F0               [24]  648 	movx	@dptr,a
      00212B 90 01 7F         [24]  649 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x001f)
      00212E 74 D8            [12]  650 	mov	a,#0xd8
      002130 F0               [24]  651 	movx	@dptr,a
      002131 90 01 80         [24]  652 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0020)
      002134 74 DA            [12]  653 	mov	a,#0xda
      002136 F0               [24]  654 	movx	@dptr,a
      002137 90 01 81         [24]  655 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0021)
      00213A 74 DC            [12]  656 	mov	a,#0xdc
      00213C F0               [24]  657 	movx	@dptr,a
      00213D 90 01 82         [24]  658 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0022)
      002140 74 DE            [12]  659 	mov	a,#0xde
      002142 F0               [24]  660 	movx	@dptr,a
      002143 90 01 83         [24]  661 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0023)
      002146 74 E0            [12]  662 	mov	a,#0xe0
      002148 F0               [24]  663 	movx	@dptr,a
      002149 90 01 84         [24]  664 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0024)
      00214C 74 E2            [12]  665 	mov	a,#0xe2
      00214E F0               [24]  666 	movx	@dptr,a
      00214F 90 01 85         [24]  667 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0025)
      002152 74 E4            [12]  668 	mov	a,#0xe4
      002154 F0               [24]  669 	movx	@dptr,a
      002155 90 01 86         [24]  670 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0026)
      002158 74 E6            [12]  671 	mov	a,#0xe6
      00215A F0               [24]  672 	movx	@dptr,a
      00215B 90 01 87         [24]  673 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0027)
      00215E 74 E8            [12]  674 	mov	a,#0xe8
      002160 F0               [24]  675 	movx	@dptr,a
      002161 90 01 88         [24]  676 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0028)
      002164 74 EA            [12]  677 	mov	a,#0xea
      002166 F0               [24]  678 	movx	@dptr,a
      002167 90 01 89         [24]  679 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0029)
      00216A 74 EC            [12]  680 	mov	a,#0xec
      00216C F0               [24]  681 	movx	@dptr,a
      00216D 90 01 8A         [24]  682 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002a)
      002170 04               [12]  683 	inc	a
      002171 F0               [24]  684 	movx	@dptr,a
      002172 90 01 8B         [24]  685 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002b)
      002175 74 EF            [12]  686 	mov	a,#0xef
      002177 F0               [24]  687 	movx	@dptr,a
      002178 90 01 8C         [24]  688 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002c)
      00217B 04               [12]  689 	inc	a
      00217C F0               [24]  690 	movx	@dptr,a
      00217D 90 01 8D         [24]  691 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002d)
      002180 74 F2            [12]  692 	mov	a,#0xf2
      002182 F0               [24]  693 	movx	@dptr,a
      002183 90 01 8E         [24]  694 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002e)
      002186 04               [12]  695 	inc	a
      002187 F0               [24]  696 	movx	@dptr,a
      002188 90 01 8F         [24]  697 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x002f)
      00218B 04               [12]  698 	inc	a
      00218C F0               [24]  699 	movx	@dptr,a
      00218D 90 01 90         [24]  700 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0030)
      002190 74 F6            [12]  701 	mov	a,#0xf6
      002192 F0               [24]  702 	movx	@dptr,a
      002193 90 01 91         [24]  703 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0031)
      002196 04               [12]  704 	inc	a
      002197 F0               [24]  705 	movx	@dptr,a
      002198 90 01 92         [24]  706 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0032)
      00219B 04               [12]  707 	inc	a
      00219C F0               [24]  708 	movx	@dptr,a
      00219D 90 01 93         [24]  709 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0033)
      0021A0 04               [12]  710 	inc	a
      0021A1 F0               [24]  711 	movx	@dptr,a
      0021A2 90 01 94         [24]  712 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0034)
      0021A5 04               [12]  713 	inc	a
      0021A6 F0               [24]  714 	movx	@dptr,a
      0021A7 90 01 95         [24]  715 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0035)
      0021AA 04               [12]  716 	inc	a
      0021AB F0               [24]  717 	movx	@dptr,a
      0021AC 90 01 96         [24]  718 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0036)
      0021AF F0               [24]  719 	movx	@dptr,a
      0021B0 90 01 97         [24]  720 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0037)
      0021B3 04               [12]  721 	inc	a
      0021B4 F0               [24]  722 	movx	@dptr,a
      0021B5 90 01 98         [24]  723 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0038)
      0021B8 04               [12]  724 	inc	a
      0021B9 F0               [24]  725 	movx	@dptr,a
      0021BA 90 01 99         [24]  726 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0039)
      0021BD F0               [24]  727 	movx	@dptr,a
      0021BE 90 01 9A         [24]  728 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003a)
      0021C1 04               [12]  729 	inc	a
      0021C2 F0               [24]  730 	movx	@dptr,a
      0021C3 90 01 9B         [24]  731 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003b)
      0021C6 F0               [24]  732 	movx	@dptr,a
      0021C7 90 01 9C         [24]  733 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003c)
      0021CA F0               [24]  734 	movx	@dptr,a
      0021CB 90 01 9D         [24]  735 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003d)
      0021CE 04               [12]  736 	inc	a
      0021CF F0               [24]  737 	movx	@dptr,a
      0021D0 90 01 9E         [24]  738 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003e)
      0021D3 F0               [24]  739 	movx	@dptr,a
      0021D4 90 01 9F         [24]  740 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x003f)
      0021D7 F0               [24]  741 	movx	@dptr,a
      0021D8 90 01 A0         [24]  742 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0040)
      0021DB F0               [24]  743 	movx	@dptr,a
      0021DC 90 01 A1         [24]  744 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0041)
      0021DF F0               [24]  745 	movx	@dptr,a
      0021E0 90 01 A2         [24]  746 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0042)
      0021E3 F0               [24]  747 	movx	@dptr,a
      0021E4 90 01 A3         [24]  748 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0043)
      0021E7 F0               [24]  749 	movx	@dptr,a
      0021E8 90 01 A4         [24]  750 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0044)
      0021EB 14               [12]  751 	dec	a
      0021EC F0               [24]  752 	movx	@dptr,a
      0021ED 90 01 A5         [24]  753 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0045)
      0021F0 F0               [24]  754 	movx	@dptr,a
      0021F1 90 01 A6         [24]  755 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0046)
      0021F4 14               [12]  756 	dec	a
      0021F5 F0               [24]  757 	movx	@dptr,a
      0021F6 90 01 A7         [24]  758 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0047)
      0021F9 F0               [24]  759 	movx	@dptr,a
      0021FA 90 01 A8         [24]  760 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0048)
      0021FD 14               [12]  761 	dec	a
      0021FE F0               [24]  762 	movx	@dptr,a
      0021FF 90 01 A9         [24]  763 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0049)
      002202 F0               [24]  764 	movx	@dptr,a
      002203 90 01 AA         [24]  765 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004a)
      002206 14               [12]  766 	dec	a
      002207 F0               [24]  767 	movx	@dptr,a
      002208 90 01 AB         [24]  768 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004b)
      00220B 14               [12]  769 	dec	a
      00220C F0               [24]  770 	movx	@dptr,a
      00220D 90 01 AC         [24]  771 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004c)
      002210 14               [12]  772 	dec	a
      002211 F0               [24]  773 	movx	@dptr,a
      002212 90 01 AD         [24]  774 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004d)
      002215 14               [12]  775 	dec	a
      002216 F0               [24]  776 	movx	@dptr,a
      002217 90 01 AE         [24]  777 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004e)
      00221A 14               [12]  778 	dec	a
      00221B F0               [24]  779 	movx	@dptr,a
      00221C 90 01 AF         [24]  780 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x004f)
      00221F 14               [12]  781 	dec	a
      002220 F0               [24]  782 	movx	@dptr,a
      002221 90 01 B0         [24]  783 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0050)
      002224 14               [12]  784 	dec	a
      002225 F0               [24]  785 	movx	@dptr,a
      002226 90 01 B1         [24]  786 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0051)
      002229 14               [12]  787 	dec	a
      00222A F0               [24]  788 	movx	@dptr,a
      00222B 90 01 B2         [24]  789 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0052)
      00222E 74 F2            [12]  790 	mov	a,#0xf2
      002230 F0               [24]  791 	movx	@dptr,a
      002231 90 01 B3         [24]  792 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0053)
      002234 14               [12]  793 	dec	a
      002235 F0               [24]  794 	movx	@dptr,a
      002236 90 01 B4         [24]  795 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0054)
      002239 14               [12]  796 	dec	a
      00223A F0               [24]  797 	movx	@dptr,a
      00223B 90 01 B5         [24]  798 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0055)
      00223E 74 EE            [12]  799 	mov	a,#0xee
      002240 F0               [24]  800 	movx	@dptr,a
      002241 90 01 B6         [24]  801 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0056)
      002244 74 EC            [12]  802 	mov	a,#0xec
      002246 F0               [24]  803 	movx	@dptr,a
      002247 90 01 B7         [24]  804 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0057)
      00224A 14               [12]  805 	dec	a
      00224B F0               [24]  806 	movx	@dptr,a
      00224C 90 01 B8         [24]  807 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0058)
      00224F 74 E9            [12]  808 	mov	a,#0xe9
      002251 F0               [24]  809 	movx	@dptr,a
      002252 90 01 B9         [24]  810 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0059)
      002255 74 E7            [12]  811 	mov	a,#0xe7
      002257 F0               [24]  812 	movx	@dptr,a
      002258 90 01 BA         [24]  813 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005a)
      00225B 74 E5            [12]  814 	mov	a,#0xe5
      00225D F0               [24]  815 	movx	@dptr,a
      00225E 90 01 BB         [24]  816 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005b)
      002261 74 E3            [12]  817 	mov	a,#0xe3
      002263 F0               [24]  818 	movx	@dptr,a
      002264 90 01 BC         [24]  819 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005c)
      002267 74 E1            [12]  820 	mov	a,#0xe1
      002269 F0               [24]  821 	movx	@dptr,a
      00226A 90 01 BD         [24]  822 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005d)
      00226D 74 DF            [12]  823 	mov	a,#0xdf
      00226F F0               [24]  824 	movx	@dptr,a
      002270 90 01 BE         [24]  825 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005e)
      002273 74 DD            [12]  826 	mov	a,#0xdd
      002275 F0               [24]  827 	movx	@dptr,a
      002276 90 01 BF         [24]  828 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x005f)
      002279 74 DB            [12]  829 	mov	a,#0xdb
      00227B F0               [24]  830 	movx	@dptr,a
      00227C 90 01 C0         [24]  831 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0060)
      00227F 74 D9            [12]  832 	mov	a,#0xd9
      002281 F0               [24]  833 	movx	@dptr,a
      002282 90 01 C1         [24]  834 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0061)
      002285 74 D7            [12]  835 	mov	a,#0xd7
      002287 F0               [24]  836 	movx	@dptr,a
      002288 90 01 C2         [24]  837 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0062)
      00228B 74 D4            [12]  838 	mov	a,#0xd4
      00228D F0               [24]  839 	movx	@dptr,a
      00228E 90 01 C3         [24]  840 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0063)
      002291 74 D2            [12]  841 	mov	a,#0xd2
      002293 F0               [24]  842 	movx	@dptr,a
      002294 90 01 C4         [24]  843 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0064)
      002297 74 D0            [12]  844 	mov	a,#0xd0
      002299 F0               [24]  845 	movx	@dptr,a
      00229A 90 01 C5         [24]  846 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0065)
      00229D 74 CD            [12]  847 	mov	a,#0xcd
      00229F F0               [24]  848 	movx	@dptr,a
      0022A0 90 01 C6         [24]  849 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0066)
      0022A3 74 CB            [12]  850 	mov	a,#0xcb
      0022A5 F0               [24]  851 	movx	@dptr,a
      0022A6 90 01 C7         [24]  852 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0067)
      0022A9 74 C8            [12]  853 	mov	a,#0xc8
      0022AB F0               [24]  854 	movx	@dptr,a
      0022AC 90 01 C8         [24]  855 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0068)
      0022AF 74 C5            [12]  856 	mov	a,#0xc5
      0022B1 F0               [24]  857 	movx	@dptr,a
      0022B2 90 01 C9         [24]  858 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0069)
      0022B5 74 C3            [12]  859 	mov	a,#0xc3
      0022B7 F0               [24]  860 	movx	@dptr,a
      0022B8 90 01 CA         [24]  861 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006a)
      0022BB 74 C0            [12]  862 	mov	a,#0xc0
      0022BD F0               [24]  863 	movx	@dptr,a
      0022BE 90 01 CB         [24]  864 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006b)
      0022C1 74 BD            [12]  865 	mov	a,#0xbd
      0022C3 F0               [24]  866 	movx	@dptr,a
      0022C4 90 01 CC         [24]  867 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006c)
      0022C7 74 BB            [12]  868 	mov	a,#0xbb
      0022C9 F0               [24]  869 	movx	@dptr,a
      0022CA 90 01 CD         [24]  870 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006d)
      0022CD 74 B8            [12]  871 	mov	a,#0xb8
      0022CF F0               [24]  872 	movx	@dptr,a
      0022D0 90 01 CE         [24]  873 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006e)
      0022D3 74 B5            [12]  874 	mov	a,#0xb5
      0022D5 F0               [24]  875 	movx	@dptr,a
      0022D6 90 01 CF         [24]  876 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x006f)
      0022D9 74 B2            [12]  877 	mov	a,#0xb2
      0022DB F0               [24]  878 	movx	@dptr,a
      0022DC 90 01 D0         [24]  879 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0070)
      0022DF 74 AF            [12]  880 	mov	a,#0xaf
      0022E1 F0               [24]  881 	movx	@dptr,a
      0022E2 90 01 D1         [24]  882 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0071)
      0022E5 74 AC            [12]  883 	mov	a,#0xac
      0022E7 F0               [24]  884 	movx	@dptr,a
      0022E8 90 01 D2         [24]  885 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0072)
      0022EB 74 A9            [12]  886 	mov	a,#0xa9
      0022ED F0               [24]  887 	movx	@dptr,a
      0022EE 90 01 D3         [24]  888 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0073)
      0022F1 74 A7            [12]  889 	mov	a,#0xa7
      0022F3 F0               [24]  890 	movx	@dptr,a
      0022F4 90 01 D4         [24]  891 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0074)
      0022F7 74 A4            [12]  892 	mov	a,#0xa4
      0022F9 F0               [24]  893 	movx	@dptr,a
      0022FA 90 01 D5         [24]  894 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0075)
      0022FD 74 A0            [12]  895 	mov	a,#0xa0
      0022FF F0               [24]  896 	movx	@dptr,a
      002300 90 01 D6         [24]  897 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0076)
      002303 74 9D            [12]  898 	mov	a,#0x9d
      002305 F0               [24]  899 	movx	@dptr,a
      002306 90 01 D7         [24]  900 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0077)
      002309 74 9A            [12]  901 	mov	a,#0x9a
      00230B F0               [24]  902 	movx	@dptr,a
      00230C 90 01 D8         [24]  903 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0078)
      00230F 74 97            [12]  904 	mov	a,#0x97
      002311 F0               [24]  905 	movx	@dptr,a
      002312 90 01 D9         [24]  906 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0079)
      002315 74 94            [12]  907 	mov	a,#0x94
      002317 F0               [24]  908 	movx	@dptr,a
      002318 90 01 DA         [24]  909 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007a)
      00231B 74 91            [12]  910 	mov	a,#0x91
      00231D F0               [24]  911 	movx	@dptr,a
      00231E 90 01 DB         [24]  912 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007b)
      002321 74 8E            [12]  913 	mov	a,#0x8e
      002323 F0               [24]  914 	movx	@dptr,a
      002324 90 01 DC         [24]  915 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007c)
      002327 74 8B            [12]  916 	mov	a,#0x8b
      002329 F0               [24]  917 	movx	@dptr,a
      00232A 90 01 DD         [24]  918 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007d)
      00232D 74 88            [12]  919 	mov	a,#0x88
      00232F F0               [24]  920 	movx	@dptr,a
      002330 90 01 DE         [24]  921 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007e)
      002333 74 85            [12]  922 	mov	a,#0x85
      002335 F0               [24]  923 	movx	@dptr,a
      002336 90 01 DF         [24]  924 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x007f)
      002339 74 82            [12]  925 	mov	a,#0x82
      00233B F0               [24]  926 	movx	@dptr,a
      00233C 90 01 E0         [24]  927 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0080)
      00233F 74 7E            [12]  928 	mov	a,#0x7e
      002341 F0               [24]  929 	movx	@dptr,a
      002342 90 01 E1         [24]  930 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0081)
      002345 74 7B            [12]  931 	mov	a,#0x7b
      002347 F0               [24]  932 	movx	@dptr,a
      002348 90 01 E2         [24]  933 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0082)
      00234B 74 78            [12]  934 	mov	a,#0x78
      00234D F0               [24]  935 	movx	@dptr,a
      00234E 90 01 E3         [24]  936 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0083)
      002351 74 75            [12]  937 	mov	a,#0x75
      002353 F0               [24]  938 	movx	@dptr,a
      002354 90 01 E4         [24]  939 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0084)
      002357 74 72            [12]  940 	mov	a,#0x72
      002359 F0               [24]  941 	movx	@dptr,a
      00235A 90 01 E5         [24]  942 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0085)
      00235D 74 6F            [12]  943 	mov	a,#0x6f
      00235F F0               [24]  944 	movx	@dptr,a
      002360 90 01 E6         [24]  945 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0086)
      002363 74 6C            [12]  946 	mov	a,#0x6c
      002365 F0               [24]  947 	movx	@dptr,a
      002366 90 01 E7         [24]  948 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0087)
      002369 74 69            [12]  949 	mov	a,#0x69
      00236B F0               [24]  950 	movx	@dptr,a
      00236C 90 01 E8         [24]  951 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0088)
      00236F 74 66            [12]  952 	mov	a,#0x66
      002371 F0               [24]  953 	movx	@dptr,a
      002372 90 01 E9         [24]  954 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0089)
      002375 74 63            [12]  955 	mov	a,#0x63
      002377 F0               [24]  956 	movx	@dptr,a
      002378 90 01 EA         [24]  957 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008a)
      00237B 74 60            [12]  958 	mov	a,#0x60
      00237D F0               [24]  959 	movx	@dptr,a
      00237E 90 01 EB         [24]  960 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008b)
      002381 74 5C            [12]  961 	mov	a,#0x5c
      002383 F0               [24]  962 	movx	@dptr,a
      002384 90 01 EC         [24]  963 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008c)
      002387 74 59            [12]  964 	mov	a,#0x59
      002389 F0               [24]  965 	movx	@dptr,a
      00238A 90 01 ED         [24]  966 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008d)
      00238D 74 57            [12]  967 	mov	a,#0x57
      00238F F0               [24]  968 	movx	@dptr,a
      002390 90 01 EE         [24]  969 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008e)
      002393 74 54            [12]  970 	mov	a,#0x54
      002395 F0               [24]  971 	movx	@dptr,a
      002396 90 01 EF         [24]  972 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x008f)
      002399 74 51            [12]  973 	mov	a,#0x51
      00239B F0               [24]  974 	movx	@dptr,a
      00239C 90 01 F0         [24]  975 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0090)
      00239F 74 4E            [12]  976 	mov	a,#0x4e
      0023A1 F0               [24]  977 	movx	@dptr,a
      0023A2 90 01 F1         [24]  978 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0091)
      0023A5 74 4B            [12]  979 	mov	a,#0x4b
      0023A7 F0               [24]  980 	movx	@dptr,a
      0023A8 90 01 F2         [24]  981 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0092)
      0023AB 74 48            [12]  982 	mov	a,#0x48
      0023AD F0               [24]  983 	movx	@dptr,a
      0023AE 90 01 F3         [24]  984 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0093)
      0023B1 74 45            [12]  985 	mov	a,#0x45
      0023B3 F0               [24]  986 	movx	@dptr,a
      0023B4 90 01 F4         [24]  987 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0094)
      0023B7 74 43            [12]  988 	mov	a,#0x43
      0023B9 F0               [24]  989 	movx	@dptr,a
      0023BA 90 01 F5         [24]  990 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0095)
      0023BD 74 40            [12]  991 	mov	a,#0x40
      0023BF F0               [24]  992 	movx	@dptr,a
      0023C0 90 01 F6         [24]  993 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0096)
      0023C3 74 3D            [12]  994 	mov	a,#0x3d
      0023C5 F0               [24]  995 	movx	@dptr,a
      0023C6 90 01 F7         [24]  996 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0097)
      0023C9 74 3B            [12]  997 	mov	a,#0x3b
      0023CB F0               [24]  998 	movx	@dptr,a
      0023CC 90 01 F8         [24]  999 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0098)
      0023CF 74 38            [12] 1000 	mov	a,#0x38
      0023D1 F0               [24] 1001 	movx	@dptr,a
      0023D2 90 01 F9         [24] 1002 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x0099)
      0023D5 74 35            [12] 1003 	mov	a,#0x35
      0023D7 F0               [24] 1004 	movx	@dptr,a
      0023D8 90 01 FA         [24] 1005 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009a)
      0023DB 74 33            [12] 1006 	mov	a,#0x33
      0023DD F0               [24] 1007 	movx	@dptr,a
      0023DE 90 01 FB         [24] 1008 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009b)
      0023E1 74 30            [12] 1009 	mov	a,#0x30
      0023E3 F0               [24] 1010 	movx	@dptr,a
      0023E4 90 01 FC         [24] 1011 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009c)
      0023E7 74 2E            [12] 1012 	mov	a,#0x2e
      0023E9 F0               [24] 1013 	movx	@dptr,a
      0023EA 90 01 FD         [24] 1014 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009d)
      0023ED 74 2C            [12] 1015 	mov	a,#0x2c
      0023EF F0               [24] 1016 	movx	@dptr,a
      0023F0 90 01 FE         [24] 1017 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009e)
      0023F3 74 29            [12] 1018 	mov	a,#0x29
      0023F5 F0               [24] 1019 	movx	@dptr,a
      0023F6 90 01 FF         [24] 1020 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x009f)
      0023F9 74 27            [12] 1021 	mov	a,#0x27
      0023FB F0               [24] 1022 	movx	@dptr,a
      0023FC 90 02 00         [24] 1023 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a0)
      0023FF 74 25            [12] 1024 	mov	a,#0x25
      002401 F0               [24] 1025 	movx	@dptr,a
      002402 90 02 01         [24] 1026 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a1)
      002405 74 23            [12] 1027 	mov	a,#0x23
      002407 F0               [24] 1028 	movx	@dptr,a
      002408 90 02 02         [24] 1029 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a2)
      00240B 74 21            [12] 1030 	mov	a,#0x21
      00240D F0               [24] 1031 	movx	@dptr,a
      00240E 90 02 03         [24] 1032 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a3)
      002411 74 1F            [12] 1033 	mov	a,#0x1f
      002413 F0               [24] 1034 	movx	@dptr,a
      002414 90 02 04         [24] 1035 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a4)
      002417 74 1D            [12] 1036 	mov	a,#0x1d
      002419 F0               [24] 1037 	movx	@dptr,a
      00241A 90 02 05         [24] 1038 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a5)
      00241D 74 1B            [12] 1039 	mov	a,#0x1b
      00241F F0               [24] 1040 	movx	@dptr,a
      002420 90 02 06         [24] 1041 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a6)
      002423 74 19            [12] 1042 	mov	a,#0x19
      002425 F0               [24] 1043 	movx	@dptr,a
      002426 90 02 07         [24] 1044 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a7)
      002429 74 17            [12] 1045 	mov	a,#0x17
      00242B F0               [24] 1046 	movx	@dptr,a
      00242C 90 02 08         [24] 1047 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a8)
      00242F 74 15            [12] 1048 	mov	a,#0x15
      002431 F0               [24] 1049 	movx	@dptr,a
      002432 90 02 09         [24] 1050 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00a9)
      002435 14               [12] 1051 	dec	a
      002436 F0               [24] 1052 	movx	@dptr,a
      002437 90 02 0A         [24] 1053 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00aa)
      00243A 74 12            [12] 1054 	mov	a,#0x12
      00243C F0               [24] 1055 	movx	@dptr,a
      00243D 90 02 0B         [24] 1056 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ab)
      002440 74 10            [12] 1057 	mov	a,#0x10
      002442 F0               [24] 1058 	movx	@dptr,a
      002443 90 02 0C         [24] 1059 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ac)
      002446 14               [12] 1060 	dec	a
      002447 F0               [24] 1061 	movx	@dptr,a
      002448 90 02 0D         [24] 1062 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ad)
      00244B 14               [12] 1063 	dec	a
      00244C F0               [24] 1064 	movx	@dptr,a
      00244D 90 02 0E         [24] 1065 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ae)
      002450 74 0C            [12] 1066 	mov	a,#0x0c
      002452 F0               [24] 1067 	movx	@dptr,a
      002453 90 02 0F         [24] 1068 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00af)
      002456 14               [12] 1069 	dec	a
      002457 F0               [24] 1070 	movx	@dptr,a
      002458 90 02 10         [24] 1071 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b0)
      00245B 14               [12] 1072 	dec	a
      00245C F0               [24] 1073 	movx	@dptr,a
      00245D 90 02 11         [24] 1074 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b1)
      002460 14               [12] 1075 	dec	a
      002461 F0               [24] 1076 	movx	@dptr,a
      002462 90 02 12         [24] 1077 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b2)
      002465 14               [12] 1078 	dec	a
      002466 F0               [24] 1079 	movx	@dptr,a
      002467 90 02 13         [24] 1080 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b3)
      00246A 14               [12] 1081 	dec	a
      00246B F0               [24] 1082 	movx	@dptr,a
      00246C 90 02 14         [24] 1083 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b4)
      00246F 14               [12] 1084 	dec	a
      002470 F0               [24] 1085 	movx	@dptr,a
      002471 90 02 15         [24] 1086 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b5)
      002474 14               [12] 1087 	dec	a
      002475 F0               [24] 1088 	movx	@dptr,a
      002476 90 02 16         [24] 1089 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b6)
      002479 14               [12] 1090 	dec	a
      00247A F0               [24] 1091 	movx	@dptr,a
      00247B 90 02 17         [24] 1092 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b7)
      00247E F0               [24] 1093 	movx	@dptr,a
      00247F 90 02 18         [24] 1094 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b8)
      002482 14               [12] 1095 	dec	a
      002483 F0               [24] 1096 	movx	@dptr,a
      002484 90 02 19         [24] 1097 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00b9)
      002487 F0               [24] 1098 	movx	@dptr,a
      002488 90 02 1A         [24] 1099 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ba)
      00248B 14               [12] 1100 	dec	a
      00248C F0               [24] 1101 	movx	@dptr,a
      00248D 90 02 1B         [24] 1102 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00bb)
      002490 F0               [24] 1103 	movx	@dptr,a
      002491 90 02 1C         [24] 1104 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00bc)
      002494 14               [12] 1105 	dec	a
      002495 F0               [24] 1106 	movx	@dptr,a
      002496 90 02 1D         [24] 1107 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00bd)
      002499 F0               [24] 1108 	movx	@dptr,a
      00249A 90 02 1E         [24] 1109 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00be)
      00249D F0               [24] 1110 	movx	@dptr,a
      00249E 90 02 1F         [24] 1111 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00bf)
      0024A1 F0               [24] 1112 	movx	@dptr,a
      0024A2 90 02 20         [24] 1113 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c0)
      0024A5 F0               [24] 1114 	movx	@dptr,a
      0024A6 90 02 21         [24] 1115 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c1)
      0024A9 F0               [24] 1116 	movx	@dptr,a
      0024AA 90 02 22         [24] 1117 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c2)
      0024AD F0               [24] 1118 	movx	@dptr,a
      0024AE 90 02 23         [24] 1119 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c3)
      0024B1 04               [12] 1120 	inc	a
      0024B2 F0               [24] 1121 	movx	@dptr,a
      0024B3 90 02 24         [24] 1122 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c4)
      0024B6 F0               [24] 1123 	movx	@dptr,a
      0024B7 90 02 25         [24] 1124 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c5)
      0024BA F0               [24] 1125 	movx	@dptr,a
      0024BB 90 02 26         [24] 1126 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c6)
      0024BE 04               [12] 1127 	inc	a
      0024BF F0               [24] 1128 	movx	@dptr,a
      0024C0 90 02 27         [24] 1129 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c7)
      0024C3 F0               [24] 1130 	movx	@dptr,a
      0024C4 90 02 28         [24] 1131 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c8)
      0024C7 04               [12] 1132 	inc	a
      0024C8 F0               [24] 1133 	movx	@dptr,a
      0024C9 90 02 29         [24] 1134 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00c9)
      0024CC 04               [12] 1135 	inc	a
      0024CD F0               [24] 1136 	movx	@dptr,a
      0024CE 90 02 2A         [24] 1137 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ca)
      0024D1 F0               [24] 1138 	movx	@dptr,a
      0024D2 90 02 2B         [24] 1139 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00cb)
      0024D5 04               [12] 1140 	inc	a
      0024D6 F0               [24] 1141 	movx	@dptr,a
      0024D7 90 02 2C         [24] 1142 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00cc)
      0024DA 04               [12] 1143 	inc	a
      0024DB F0               [24] 1144 	movx	@dptr,a
      0024DC 90 02 2D         [24] 1145 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00cd)
      0024DF 04               [12] 1146 	inc	a
      0024E0 F0               [24] 1147 	movx	@dptr,a
      0024E1 90 02 2E         [24] 1148 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ce)
      0024E4 04               [12] 1149 	inc	a
      0024E5 F0               [24] 1150 	movx	@dptr,a
      0024E6 90 02 2F         [24] 1151 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00cf)
      0024E9 04               [12] 1152 	inc	a
      0024EA F0               [24] 1153 	movx	@dptr,a
      0024EB 90 02 30         [24] 1154 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d0)
      0024EE 74 0C            [12] 1155 	mov	a,#0x0c
      0024F0 F0               [24] 1156 	movx	@dptr,a
      0024F1 90 02 31         [24] 1157 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d1)
      0024F4 04               [12] 1158 	inc	a
      0024F5 F0               [24] 1159 	movx	@dptr,a
      0024F6 90 02 32         [24] 1160 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d2)
      0024F9 04               [12] 1161 	inc	a
      0024FA F0               [24] 1162 	movx	@dptr,a
      0024FB 90 02 33         [24] 1163 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d3)
      0024FE 74 10            [12] 1164 	mov	a,#0x10
      002500 F0               [24] 1165 	movx	@dptr,a
      002501 90 02 34         [24] 1166 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d4)
      002504 04               [12] 1167 	inc	a
      002505 F0               [24] 1168 	movx	@dptr,a
      002506 90 02 35         [24] 1169 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d5)
      002509 74 13            [12] 1170 	mov	a,#0x13
      00250B F0               [24] 1171 	movx	@dptr,a
      00250C 90 02 36         [24] 1172 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d6)
      00250F 04               [12] 1173 	inc	a
      002510 F0               [24] 1174 	movx	@dptr,a
      002511 90 02 37         [24] 1175 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d7)
      002514 74 16            [12] 1176 	mov	a,#0x16
      002516 F0               [24] 1177 	movx	@dptr,a
      002517 90 02 38         [24] 1178 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d8)
      00251A 74 18            [12] 1179 	mov	a,#0x18
      00251C F0               [24] 1180 	movx	@dptr,a
      00251D 90 02 39         [24] 1181 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00d9)
      002520 74 1A            [12] 1182 	mov	a,#0x1a
      002522 F0               [24] 1183 	movx	@dptr,a
      002523 90 02 3A         [24] 1184 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00da)
      002526 74 1C            [12] 1185 	mov	a,#0x1c
      002528 F0               [24] 1186 	movx	@dptr,a
      002529 90 02 3B         [24] 1187 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00db)
      00252C 74 1E            [12] 1188 	mov	a,#0x1e
      00252E F0               [24] 1189 	movx	@dptr,a
      00252F 90 02 3C         [24] 1190 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00dc)
      002532 74 20            [12] 1191 	mov	a,#0x20
      002534 F0               [24] 1192 	movx	@dptr,a
      002535 90 02 3D         [24] 1193 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00dd)
      002538 74 22            [12] 1194 	mov	a,#0x22
      00253A F0               [24] 1195 	movx	@dptr,a
      00253B 90 02 3E         [24] 1196 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00de)
      00253E 74 24            [12] 1197 	mov	a,#0x24
      002540 F0               [24] 1198 	movx	@dptr,a
      002541 90 02 3F         [24] 1199 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00df)
      002544 74 26            [12] 1200 	mov	a,#0x26
      002546 F0               [24] 1201 	movx	@dptr,a
      002547 90 02 40         [24] 1202 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e0)
      00254A 74 28            [12] 1203 	mov	a,#0x28
      00254C F0               [24] 1204 	movx	@dptr,a
      00254D 90 02 41         [24] 1205 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e1)
      002550 74 2A            [12] 1206 	mov	a,#0x2a
      002552 F0               [24] 1207 	movx	@dptr,a
      002553 90 02 42         [24] 1208 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e2)
      002556 74 2D            [12] 1209 	mov	a,#0x2d
      002558 F0               [24] 1210 	movx	@dptr,a
      002559 90 02 43         [24] 1211 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e3)
      00255C 74 2F            [12] 1212 	mov	a,#0x2f
      00255E F0               [24] 1213 	movx	@dptr,a
      00255F 90 02 44         [24] 1214 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e4)
      002562 74 32            [12] 1215 	mov	a,#0x32
      002564 F0               [24] 1216 	movx	@dptr,a
      002565 90 02 45         [24] 1217 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e5)
      002568 74 34            [12] 1218 	mov	a,#0x34
      00256A F0               [24] 1219 	movx	@dptr,a
      00256B 90 02 46         [24] 1220 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e6)
      00256E 74 37            [12] 1221 	mov	a,#0x37
      002570 F0               [24] 1222 	movx	@dptr,a
      002571 90 02 47         [24] 1223 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e7)
      002574 74 39            [12] 1224 	mov	a,#0x39
      002576 F0               [24] 1225 	movx	@dptr,a
      002577 90 02 48         [24] 1226 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e8)
      00257A 74 3C            [12] 1227 	mov	a,#0x3c
      00257C F0               [24] 1228 	movx	@dptr,a
      00257D 90 02 49         [24] 1229 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00e9)
      002580 74 3E            [12] 1230 	mov	a,#0x3e
      002582 F0               [24] 1231 	movx	@dptr,a
      002583 90 02 4A         [24] 1232 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ea)
      002586 74 41            [12] 1233 	mov	a,#0x41
      002588 F0               [24] 1234 	movx	@dptr,a
      002589 90 02 4B         [24] 1235 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00eb)
      00258C 74 44            [12] 1236 	mov	a,#0x44
      00258E F0               [24] 1237 	movx	@dptr,a
      00258F 90 02 4C         [24] 1238 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ec)
      002592 74 47            [12] 1239 	mov	a,#0x47
      002594 F0               [24] 1240 	movx	@dptr,a
      002595 90 02 4D         [24] 1241 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ed)
      002598 74 4A            [12] 1242 	mov	a,#0x4a
      00259A F0               [24] 1243 	movx	@dptr,a
      00259B 90 02 4E         [24] 1244 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ee)
      00259E 74 4C            [12] 1245 	mov	a,#0x4c
      0025A0 F0               [24] 1246 	movx	@dptr,a
      0025A1 90 02 4F         [24] 1247 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ef)
      0025A4 74 4F            [12] 1248 	mov	a,#0x4f
      0025A6 F0               [24] 1249 	movx	@dptr,a
      0025A7 90 02 50         [24] 1250 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f0)
      0025AA 74 52            [12] 1251 	mov	a,#0x52
      0025AC F0               [24] 1252 	movx	@dptr,a
      0025AD 90 02 51         [24] 1253 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f1)
      0025B0 74 55            [12] 1254 	mov	a,#0x55
      0025B2 F0               [24] 1255 	movx	@dptr,a
      0025B3 90 02 52         [24] 1256 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f2)
      0025B6 74 58            [12] 1257 	mov	a,#0x58
      0025B8 F0               [24] 1258 	movx	@dptr,a
      0025B9 90 02 53         [24] 1259 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f3)
      0025BC 74 5B            [12] 1260 	mov	a,#0x5b
      0025BE F0               [24] 1261 	movx	@dptr,a
      0025BF 90 02 54         [24] 1262 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f4)
      0025C2 74 5E            [12] 1263 	mov	a,#0x5e
      0025C4 F0               [24] 1264 	movx	@dptr,a
      0025C5 90 02 55         [24] 1265 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f5)
      0025C8 74 61            [12] 1266 	mov	a,#0x61
      0025CA F0               [24] 1267 	movx	@dptr,a
      0025CB 90 02 56         [24] 1268 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f6)
      0025CE 74 64            [12] 1269 	mov	a,#0x64
      0025D0 F0               [24] 1270 	movx	@dptr,a
      0025D1 90 02 57         [24] 1271 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f7)
      0025D4 74 67            [12] 1272 	mov	a,#0x67
      0025D6 F0               [24] 1273 	movx	@dptr,a
      0025D7 90 02 58         [24] 1274 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f8)
      0025DA 74 6A            [12] 1275 	mov	a,#0x6a
      0025DC F0               [24] 1276 	movx	@dptr,a
      0025DD 90 02 59         [24] 1277 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00f9)
      0025E0 74 6D            [12] 1278 	mov	a,#0x6d
      0025E2 F0               [24] 1279 	movx	@dptr,a
      0025E3 90 02 5A         [24] 1280 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fa)
      0025E6 74 70            [12] 1281 	mov	a,#0x70
      0025E8 F0               [24] 1282 	movx	@dptr,a
      0025E9 90 02 5B         [24] 1283 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fb)
      0025EC 74 74            [12] 1284 	mov	a,#0x74
      0025EE F0               [24] 1285 	movx	@dptr,a
      0025EF 90 02 5C         [24] 1286 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fc)
      0025F2 74 77            [12] 1287 	mov	a,#0x77
      0025F4 F0               [24] 1288 	movx	@dptr,a
      0025F5 90 02 5D         [24] 1289 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fd)
      0025F8 74 7A            [12] 1290 	mov	a,#0x7a
      0025FA F0               [24] 1291 	movx	@dptr,a
      0025FB 90 02 5E         [24] 1292 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00fe)
      0025FE 74 7D            [12] 1293 	mov	a,#0x7d
      002600 F0               [24] 1294 	movx	@dptr,a
      002601 90 02 5F         [24] 1295 	mov	dptr,#(_dac_update_output_sine_wave_65536_32 + 0x00ff)
      002604 74 80            [12] 1296 	mov	a,#0x80
      002606 F0               [24] 1297 	movx	@dptr,a
                                   1298 ;	spi.c:318: __xdata uint8_t static square_wave[256]={0	,
      002607 90 02 60         [24] 1299 	mov	dptr,#_dac_update_output_square_wave_65536_32
      00260A E4               [12] 1300 	clr	a
      00260B F0               [24] 1301 	movx	@dptr,a
      00260C 90 02 61         [24] 1302 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0001)
      00260F F0               [24] 1303 	movx	@dptr,a
      002610 90 02 62         [24] 1304 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0002)
      002613 F0               [24] 1305 	movx	@dptr,a
      002614 90 02 63         [24] 1306 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0003)
      002617 F0               [24] 1307 	movx	@dptr,a
      002618 90 02 64         [24] 1308 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0004)
      00261B F0               [24] 1309 	movx	@dptr,a
      00261C 90 02 65         [24] 1310 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0005)
      00261F F0               [24] 1311 	movx	@dptr,a
      002620 90 02 66         [24] 1312 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0006)
      002623 F0               [24] 1313 	movx	@dptr,a
      002624 90 02 67         [24] 1314 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0007)
      002627 F0               [24] 1315 	movx	@dptr,a
      002628 90 02 68         [24] 1316 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0008)
      00262B F0               [24] 1317 	movx	@dptr,a
      00262C 90 02 69         [24] 1318 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0009)
      00262F F0               [24] 1319 	movx	@dptr,a
      002630 90 02 6A         [24] 1320 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000a)
      002633 F0               [24] 1321 	movx	@dptr,a
      002634 90 02 6B         [24] 1322 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000b)
      002637 F0               [24] 1323 	movx	@dptr,a
      002638 90 02 6C         [24] 1324 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000c)
      00263B F0               [24] 1325 	movx	@dptr,a
      00263C 90 02 6D         [24] 1326 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000d)
      00263F F0               [24] 1327 	movx	@dptr,a
      002640 90 02 6E         [24] 1328 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000e)
      002643 F0               [24] 1329 	movx	@dptr,a
      002644 90 02 6F         [24] 1330 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x000f)
      002647 F0               [24] 1331 	movx	@dptr,a
      002648 90 02 70         [24] 1332 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0010)
      00264B F0               [24] 1333 	movx	@dptr,a
      00264C 90 02 71         [24] 1334 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0011)
      00264F F0               [24] 1335 	movx	@dptr,a
      002650 90 02 72         [24] 1336 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0012)
      002653 F0               [24] 1337 	movx	@dptr,a
      002654 90 02 73         [24] 1338 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0013)
      002657 F0               [24] 1339 	movx	@dptr,a
      002658 90 02 74         [24] 1340 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0014)
      00265B F0               [24] 1341 	movx	@dptr,a
      00265C 90 02 75         [24] 1342 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0015)
      00265F F0               [24] 1343 	movx	@dptr,a
      002660 90 02 76         [24] 1344 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0016)
      002663 F0               [24] 1345 	movx	@dptr,a
      002664 90 02 77         [24] 1346 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0017)
      002667 F0               [24] 1347 	movx	@dptr,a
      002668 90 02 78         [24] 1348 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0018)
      00266B F0               [24] 1349 	movx	@dptr,a
      00266C 90 02 79         [24] 1350 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0019)
      00266F F0               [24] 1351 	movx	@dptr,a
      002670 90 02 7A         [24] 1352 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001a)
      002673 F0               [24] 1353 	movx	@dptr,a
      002674 90 02 7B         [24] 1354 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001b)
      002677 F0               [24] 1355 	movx	@dptr,a
      002678 90 02 7C         [24] 1356 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001c)
      00267B F0               [24] 1357 	movx	@dptr,a
      00267C 90 02 7D         [24] 1358 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001d)
      00267F F0               [24] 1359 	movx	@dptr,a
      002680 90 02 7E         [24] 1360 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001e)
      002683 F0               [24] 1361 	movx	@dptr,a
      002684 90 02 7F         [24] 1362 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x001f)
      002687 F0               [24] 1363 	movx	@dptr,a
      002688 90 02 80         [24] 1364 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0020)
      00268B F0               [24] 1365 	movx	@dptr,a
      00268C 90 02 81         [24] 1366 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0021)
      00268F F0               [24] 1367 	movx	@dptr,a
      002690 90 02 82         [24] 1368 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0022)
      002693 F0               [24] 1369 	movx	@dptr,a
      002694 90 02 83         [24] 1370 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0023)
      002697 F0               [24] 1371 	movx	@dptr,a
      002698 90 02 84         [24] 1372 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0024)
      00269B F0               [24] 1373 	movx	@dptr,a
      00269C 90 02 85         [24] 1374 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0025)
      00269F F0               [24] 1375 	movx	@dptr,a
      0026A0 90 02 86         [24] 1376 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0026)
      0026A3 F0               [24] 1377 	movx	@dptr,a
      0026A4 90 02 87         [24] 1378 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0027)
      0026A7 F0               [24] 1379 	movx	@dptr,a
      0026A8 90 02 88         [24] 1380 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0028)
      0026AB F0               [24] 1381 	movx	@dptr,a
      0026AC 90 02 89         [24] 1382 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0029)
      0026AF F0               [24] 1383 	movx	@dptr,a
      0026B0 90 02 8A         [24] 1384 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002a)
      0026B3 F0               [24] 1385 	movx	@dptr,a
      0026B4 90 02 8B         [24] 1386 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002b)
      0026B7 F0               [24] 1387 	movx	@dptr,a
      0026B8 90 02 8C         [24] 1388 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002c)
      0026BB F0               [24] 1389 	movx	@dptr,a
      0026BC 90 02 8D         [24] 1390 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002d)
      0026BF F0               [24] 1391 	movx	@dptr,a
      0026C0 90 02 8E         [24] 1392 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002e)
      0026C3 F0               [24] 1393 	movx	@dptr,a
      0026C4 90 02 8F         [24] 1394 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x002f)
      0026C7 F0               [24] 1395 	movx	@dptr,a
      0026C8 90 02 90         [24] 1396 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0030)
      0026CB F0               [24] 1397 	movx	@dptr,a
      0026CC 90 02 91         [24] 1398 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0031)
      0026CF F0               [24] 1399 	movx	@dptr,a
      0026D0 90 02 92         [24] 1400 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0032)
      0026D3 F0               [24] 1401 	movx	@dptr,a
      0026D4 90 02 93         [24] 1402 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0033)
      0026D7 F0               [24] 1403 	movx	@dptr,a
      0026D8 90 02 94         [24] 1404 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0034)
      0026DB F0               [24] 1405 	movx	@dptr,a
      0026DC 90 02 95         [24] 1406 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0035)
      0026DF F0               [24] 1407 	movx	@dptr,a
      0026E0 90 02 96         [24] 1408 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0036)
      0026E3 F0               [24] 1409 	movx	@dptr,a
      0026E4 90 02 97         [24] 1410 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0037)
      0026E7 F0               [24] 1411 	movx	@dptr,a
      0026E8 90 02 98         [24] 1412 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0038)
      0026EB F0               [24] 1413 	movx	@dptr,a
      0026EC 90 02 99         [24] 1414 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0039)
      0026EF F0               [24] 1415 	movx	@dptr,a
      0026F0 90 02 9A         [24] 1416 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003a)
      0026F3 F0               [24] 1417 	movx	@dptr,a
      0026F4 90 02 9B         [24] 1418 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003b)
      0026F7 F0               [24] 1419 	movx	@dptr,a
      0026F8 90 02 9C         [24] 1420 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003c)
      0026FB F0               [24] 1421 	movx	@dptr,a
      0026FC 90 02 9D         [24] 1422 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003d)
      0026FF F0               [24] 1423 	movx	@dptr,a
      002700 90 02 9E         [24] 1424 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003e)
      002703 F0               [24] 1425 	movx	@dptr,a
      002704 90 02 9F         [24] 1426 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x003f)
      002707 F0               [24] 1427 	movx	@dptr,a
      002708 90 02 A0         [24] 1428 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0040)
      00270B F0               [24] 1429 	movx	@dptr,a
      00270C 90 02 A1         [24] 1430 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0041)
      00270F F0               [24] 1431 	movx	@dptr,a
      002710 90 02 A2         [24] 1432 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0042)
      002713 F0               [24] 1433 	movx	@dptr,a
      002714 90 02 A3         [24] 1434 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0043)
      002717 F0               [24] 1435 	movx	@dptr,a
      002718 90 02 A4         [24] 1436 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0044)
      00271B F0               [24] 1437 	movx	@dptr,a
      00271C 90 02 A5         [24] 1438 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0045)
      00271F F0               [24] 1439 	movx	@dptr,a
      002720 90 02 A6         [24] 1440 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0046)
      002723 F0               [24] 1441 	movx	@dptr,a
      002724 90 02 A7         [24] 1442 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0047)
      002727 F0               [24] 1443 	movx	@dptr,a
      002728 90 02 A8         [24] 1444 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0048)
      00272B F0               [24] 1445 	movx	@dptr,a
      00272C 90 02 A9         [24] 1446 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0049)
      00272F F0               [24] 1447 	movx	@dptr,a
      002730 90 02 AA         [24] 1448 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004a)
      002733 F0               [24] 1449 	movx	@dptr,a
      002734 90 02 AB         [24] 1450 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004b)
      002737 F0               [24] 1451 	movx	@dptr,a
      002738 90 02 AC         [24] 1452 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004c)
      00273B F0               [24] 1453 	movx	@dptr,a
      00273C 90 02 AD         [24] 1454 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004d)
      00273F F0               [24] 1455 	movx	@dptr,a
      002740 90 02 AE         [24] 1456 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004e)
      002743 F0               [24] 1457 	movx	@dptr,a
      002744 90 02 AF         [24] 1458 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x004f)
      002747 F0               [24] 1459 	movx	@dptr,a
      002748 90 02 B0         [24] 1460 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0050)
      00274B F0               [24] 1461 	movx	@dptr,a
      00274C 90 02 B1         [24] 1462 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0051)
      00274F F0               [24] 1463 	movx	@dptr,a
      002750 90 02 B2         [24] 1464 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0052)
      002753 F0               [24] 1465 	movx	@dptr,a
      002754 90 02 B3         [24] 1466 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0053)
      002757 F0               [24] 1467 	movx	@dptr,a
      002758 90 02 B4         [24] 1468 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0054)
      00275B F0               [24] 1469 	movx	@dptr,a
      00275C 90 02 B5         [24] 1470 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0055)
      00275F F0               [24] 1471 	movx	@dptr,a
      002760 90 02 B6         [24] 1472 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0056)
      002763 F0               [24] 1473 	movx	@dptr,a
      002764 90 02 B7         [24] 1474 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0057)
      002767 F0               [24] 1475 	movx	@dptr,a
      002768 90 02 B8         [24] 1476 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0058)
      00276B F0               [24] 1477 	movx	@dptr,a
      00276C 90 02 B9         [24] 1478 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0059)
      00276F F0               [24] 1479 	movx	@dptr,a
      002770 90 02 BA         [24] 1480 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005a)
      002773 F0               [24] 1481 	movx	@dptr,a
      002774 90 02 BB         [24] 1482 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005b)
      002777 F0               [24] 1483 	movx	@dptr,a
      002778 90 02 BC         [24] 1484 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005c)
      00277B F0               [24] 1485 	movx	@dptr,a
      00277C 90 02 BD         [24] 1486 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005d)
      00277F F0               [24] 1487 	movx	@dptr,a
      002780 90 02 BE         [24] 1488 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005e)
      002783 F0               [24] 1489 	movx	@dptr,a
      002784 90 02 BF         [24] 1490 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x005f)
      002787 F0               [24] 1491 	movx	@dptr,a
      002788 90 02 C0         [24] 1492 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0060)
      00278B F0               [24] 1493 	movx	@dptr,a
      00278C 90 02 C1         [24] 1494 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0061)
      00278F F0               [24] 1495 	movx	@dptr,a
      002790 90 02 C2         [24] 1496 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0062)
      002793 F0               [24] 1497 	movx	@dptr,a
      002794 90 02 C3         [24] 1498 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0063)
      002797 F0               [24] 1499 	movx	@dptr,a
      002798 90 02 C4         [24] 1500 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0064)
      00279B F0               [24] 1501 	movx	@dptr,a
      00279C 90 02 C5         [24] 1502 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0065)
      00279F F0               [24] 1503 	movx	@dptr,a
      0027A0 90 02 C6         [24] 1504 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0066)
      0027A3 F0               [24] 1505 	movx	@dptr,a
      0027A4 90 02 C7         [24] 1506 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0067)
      0027A7 F0               [24] 1507 	movx	@dptr,a
      0027A8 90 02 C8         [24] 1508 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0068)
      0027AB F0               [24] 1509 	movx	@dptr,a
      0027AC 90 02 C9         [24] 1510 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0069)
      0027AF F0               [24] 1511 	movx	@dptr,a
      0027B0 90 02 CA         [24] 1512 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006a)
      0027B3 F0               [24] 1513 	movx	@dptr,a
      0027B4 90 02 CB         [24] 1514 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006b)
      0027B7 F0               [24] 1515 	movx	@dptr,a
      0027B8 90 02 CC         [24] 1516 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006c)
      0027BB F0               [24] 1517 	movx	@dptr,a
      0027BC 90 02 CD         [24] 1518 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006d)
      0027BF F0               [24] 1519 	movx	@dptr,a
      0027C0 90 02 CE         [24] 1520 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006e)
      0027C3 F0               [24] 1521 	movx	@dptr,a
      0027C4 90 02 CF         [24] 1522 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x006f)
      0027C7 F0               [24] 1523 	movx	@dptr,a
      0027C8 90 02 D0         [24] 1524 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0070)
      0027CB F0               [24] 1525 	movx	@dptr,a
      0027CC 90 02 D1         [24] 1526 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0071)
      0027CF F0               [24] 1527 	movx	@dptr,a
      0027D0 90 02 D2         [24] 1528 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0072)
      0027D3 F0               [24] 1529 	movx	@dptr,a
      0027D4 90 02 D3         [24] 1530 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0073)
      0027D7 F0               [24] 1531 	movx	@dptr,a
      0027D8 90 02 D4         [24] 1532 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0074)
      0027DB F0               [24] 1533 	movx	@dptr,a
      0027DC 90 02 D5         [24] 1534 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0075)
      0027DF F0               [24] 1535 	movx	@dptr,a
      0027E0 90 02 D6         [24] 1536 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0076)
      0027E3 F0               [24] 1537 	movx	@dptr,a
      0027E4 90 02 D7         [24] 1538 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0077)
      0027E7 F0               [24] 1539 	movx	@dptr,a
      0027E8 90 02 D8         [24] 1540 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0078)
      0027EB F0               [24] 1541 	movx	@dptr,a
      0027EC 90 02 D9         [24] 1542 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0079)
      0027EF F0               [24] 1543 	movx	@dptr,a
      0027F0 90 02 DA         [24] 1544 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007a)
      0027F3 F0               [24] 1545 	movx	@dptr,a
      0027F4 90 02 DB         [24] 1546 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007b)
      0027F7 F0               [24] 1547 	movx	@dptr,a
      0027F8 90 02 DC         [24] 1548 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007c)
      0027FB F0               [24] 1549 	movx	@dptr,a
      0027FC 90 02 DD         [24] 1550 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007d)
      0027FF F0               [24] 1551 	movx	@dptr,a
      002800 90 02 DE         [24] 1552 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007e)
      002803 F0               [24] 1553 	movx	@dptr,a
      002804 90 02 DF         [24] 1554 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x007f)
      002807 F0               [24] 1555 	movx	@dptr,a
      002808 90 02 E0         [24] 1556 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0080)
      00280B F0               [24] 1557 	movx	@dptr,a
      00280C 90 02 E1         [24] 1558 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0081)
      00280F F0               [24] 1559 	movx	@dptr,a
      002810 90 02 E2         [24] 1560 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0082)
      002813 14               [12] 1561 	dec	a
      002814 F0               [24] 1562 	movx	@dptr,a
      002815 90 02 E3         [24] 1563 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0083)
      002818 F0               [24] 1564 	movx	@dptr,a
      002819 90 02 E4         [24] 1565 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0084)
      00281C F0               [24] 1566 	movx	@dptr,a
      00281D 90 02 E5         [24] 1567 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0085)
      002820 F0               [24] 1568 	movx	@dptr,a
      002821 90 02 E6         [24] 1569 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0086)
      002824 F0               [24] 1570 	movx	@dptr,a
      002825 90 02 E7         [24] 1571 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0087)
      002828 F0               [24] 1572 	movx	@dptr,a
      002829 90 02 E8         [24] 1573 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0088)
      00282C F0               [24] 1574 	movx	@dptr,a
      00282D 90 02 E9         [24] 1575 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0089)
      002830 F0               [24] 1576 	movx	@dptr,a
      002831 90 02 EA         [24] 1577 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008a)
      002834 F0               [24] 1578 	movx	@dptr,a
      002835 90 02 EB         [24] 1579 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008b)
      002838 F0               [24] 1580 	movx	@dptr,a
      002839 90 02 EC         [24] 1581 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008c)
      00283C F0               [24] 1582 	movx	@dptr,a
      00283D 90 02 ED         [24] 1583 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008d)
      002840 F0               [24] 1584 	movx	@dptr,a
      002841 90 02 EE         [24] 1585 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008e)
      002844 F0               [24] 1586 	movx	@dptr,a
      002845 90 02 EF         [24] 1587 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x008f)
      002848 F0               [24] 1588 	movx	@dptr,a
      002849 90 02 F0         [24] 1589 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0090)
      00284C F0               [24] 1590 	movx	@dptr,a
      00284D 90 02 F1         [24] 1591 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0091)
      002850 F0               [24] 1592 	movx	@dptr,a
      002851 90 02 F2         [24] 1593 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0092)
      002854 F0               [24] 1594 	movx	@dptr,a
      002855 90 02 F3         [24] 1595 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0093)
      002858 F0               [24] 1596 	movx	@dptr,a
      002859 90 02 F4         [24] 1597 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0094)
      00285C F0               [24] 1598 	movx	@dptr,a
      00285D 90 02 F5         [24] 1599 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0095)
      002860 F0               [24] 1600 	movx	@dptr,a
      002861 90 02 F6         [24] 1601 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0096)
      002864 F0               [24] 1602 	movx	@dptr,a
      002865 90 02 F7         [24] 1603 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0097)
      002868 F0               [24] 1604 	movx	@dptr,a
      002869 90 02 F8         [24] 1605 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0098)
      00286C F0               [24] 1606 	movx	@dptr,a
      00286D 90 02 F9         [24] 1607 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x0099)
      002870 F0               [24] 1608 	movx	@dptr,a
      002871 90 02 FA         [24] 1609 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009a)
      002874 F0               [24] 1610 	movx	@dptr,a
      002875 90 02 FB         [24] 1611 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009b)
      002878 F0               [24] 1612 	movx	@dptr,a
      002879 90 02 FC         [24] 1613 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009c)
      00287C F0               [24] 1614 	movx	@dptr,a
      00287D 90 02 FD         [24] 1615 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009d)
      002880 F0               [24] 1616 	movx	@dptr,a
      002881 90 02 FE         [24] 1617 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009e)
      002884 F0               [24] 1618 	movx	@dptr,a
      002885 90 02 FF         [24] 1619 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x009f)
      002888 F0               [24] 1620 	movx	@dptr,a
      002889 90 03 00         [24] 1621 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a0)
      00288C F0               [24] 1622 	movx	@dptr,a
      00288D 90 03 01         [24] 1623 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a1)
      002890 F0               [24] 1624 	movx	@dptr,a
      002891 90 03 02         [24] 1625 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a2)
      002894 F0               [24] 1626 	movx	@dptr,a
      002895 90 03 03         [24] 1627 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a3)
      002898 F0               [24] 1628 	movx	@dptr,a
      002899 90 03 04         [24] 1629 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a4)
      00289C F0               [24] 1630 	movx	@dptr,a
      00289D 90 03 05         [24] 1631 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a5)
      0028A0 F0               [24] 1632 	movx	@dptr,a
      0028A1 90 03 06         [24] 1633 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a6)
      0028A4 F0               [24] 1634 	movx	@dptr,a
      0028A5 90 03 07         [24] 1635 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a7)
      0028A8 F0               [24] 1636 	movx	@dptr,a
      0028A9 90 03 08         [24] 1637 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a8)
      0028AC F0               [24] 1638 	movx	@dptr,a
      0028AD 90 03 09         [24] 1639 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00a9)
      0028B0 F0               [24] 1640 	movx	@dptr,a
      0028B1 90 03 0A         [24] 1641 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00aa)
      0028B4 F0               [24] 1642 	movx	@dptr,a
      0028B5 90 03 0B         [24] 1643 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ab)
      0028B8 F0               [24] 1644 	movx	@dptr,a
      0028B9 90 03 0C         [24] 1645 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ac)
      0028BC F0               [24] 1646 	movx	@dptr,a
      0028BD 90 03 0D         [24] 1647 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ad)
      0028C0 F0               [24] 1648 	movx	@dptr,a
      0028C1 90 03 0E         [24] 1649 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ae)
      0028C4 F0               [24] 1650 	movx	@dptr,a
      0028C5 90 03 0F         [24] 1651 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00af)
      0028C8 F0               [24] 1652 	movx	@dptr,a
      0028C9 90 03 10         [24] 1653 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b0)
      0028CC F0               [24] 1654 	movx	@dptr,a
      0028CD 90 03 11         [24] 1655 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b1)
      0028D0 F0               [24] 1656 	movx	@dptr,a
      0028D1 90 03 12         [24] 1657 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b2)
      0028D4 F0               [24] 1658 	movx	@dptr,a
      0028D5 90 03 13         [24] 1659 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b3)
      0028D8 F0               [24] 1660 	movx	@dptr,a
      0028D9 90 03 14         [24] 1661 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b4)
      0028DC F0               [24] 1662 	movx	@dptr,a
      0028DD 90 03 15         [24] 1663 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b5)
      0028E0 F0               [24] 1664 	movx	@dptr,a
      0028E1 90 03 16         [24] 1665 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b6)
      0028E4 F0               [24] 1666 	movx	@dptr,a
      0028E5 90 03 17         [24] 1667 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b7)
      0028E8 F0               [24] 1668 	movx	@dptr,a
      0028E9 90 03 18         [24] 1669 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b8)
      0028EC F0               [24] 1670 	movx	@dptr,a
      0028ED 90 03 19         [24] 1671 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00b9)
      0028F0 F0               [24] 1672 	movx	@dptr,a
      0028F1 90 03 1A         [24] 1673 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ba)
      0028F4 F0               [24] 1674 	movx	@dptr,a
      0028F5 90 03 1B         [24] 1675 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00bb)
      0028F8 F0               [24] 1676 	movx	@dptr,a
      0028F9 90 03 1C         [24] 1677 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00bc)
      0028FC F0               [24] 1678 	movx	@dptr,a
      0028FD 90 03 1D         [24] 1679 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00bd)
      002900 F0               [24] 1680 	movx	@dptr,a
      002901 90 03 1E         [24] 1681 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00be)
      002904 F0               [24] 1682 	movx	@dptr,a
      002905 90 03 1F         [24] 1683 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00bf)
      002908 F0               [24] 1684 	movx	@dptr,a
      002909 90 03 20         [24] 1685 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c0)
      00290C F0               [24] 1686 	movx	@dptr,a
      00290D 90 03 21         [24] 1687 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c1)
      002910 F0               [24] 1688 	movx	@dptr,a
      002911 90 03 22         [24] 1689 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c2)
      002914 F0               [24] 1690 	movx	@dptr,a
      002915 90 03 23         [24] 1691 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c3)
      002918 F0               [24] 1692 	movx	@dptr,a
      002919 90 03 24         [24] 1693 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c4)
      00291C F0               [24] 1694 	movx	@dptr,a
      00291D 90 03 25         [24] 1695 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c5)
      002920 F0               [24] 1696 	movx	@dptr,a
      002921 90 03 26         [24] 1697 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c6)
      002924 F0               [24] 1698 	movx	@dptr,a
      002925 90 03 27         [24] 1699 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c7)
      002928 F0               [24] 1700 	movx	@dptr,a
      002929 90 03 28         [24] 1701 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c8)
      00292C F0               [24] 1702 	movx	@dptr,a
      00292D 90 03 29         [24] 1703 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00c9)
      002930 F0               [24] 1704 	movx	@dptr,a
      002931 90 03 2A         [24] 1705 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ca)
      002934 F0               [24] 1706 	movx	@dptr,a
      002935 90 03 2B         [24] 1707 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00cb)
      002938 F0               [24] 1708 	movx	@dptr,a
      002939 90 03 2C         [24] 1709 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00cc)
      00293C F0               [24] 1710 	movx	@dptr,a
      00293D 90 03 2D         [24] 1711 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00cd)
      002940 F0               [24] 1712 	movx	@dptr,a
      002941 90 03 2E         [24] 1713 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ce)
      002944 F0               [24] 1714 	movx	@dptr,a
      002945 90 03 2F         [24] 1715 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00cf)
      002948 F0               [24] 1716 	movx	@dptr,a
      002949 90 03 30         [24] 1717 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d0)
      00294C F0               [24] 1718 	movx	@dptr,a
      00294D 90 03 31         [24] 1719 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d1)
      002950 F0               [24] 1720 	movx	@dptr,a
      002951 90 03 32         [24] 1721 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d2)
      002954 F0               [24] 1722 	movx	@dptr,a
      002955 90 03 33         [24] 1723 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d3)
      002958 F0               [24] 1724 	movx	@dptr,a
      002959 90 03 34         [24] 1725 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d4)
      00295C F0               [24] 1726 	movx	@dptr,a
      00295D 90 03 35         [24] 1727 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d5)
      002960 F0               [24] 1728 	movx	@dptr,a
      002961 90 03 36         [24] 1729 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d6)
      002964 F0               [24] 1730 	movx	@dptr,a
      002965 90 03 37         [24] 1731 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d7)
      002968 F0               [24] 1732 	movx	@dptr,a
      002969 90 03 38         [24] 1733 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d8)
      00296C F0               [24] 1734 	movx	@dptr,a
      00296D 90 03 39         [24] 1735 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00d9)
      002970 F0               [24] 1736 	movx	@dptr,a
      002971 90 03 3A         [24] 1737 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00da)
      002974 F0               [24] 1738 	movx	@dptr,a
      002975 90 03 3B         [24] 1739 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00db)
      002978 F0               [24] 1740 	movx	@dptr,a
      002979 90 03 3C         [24] 1741 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00dc)
      00297C F0               [24] 1742 	movx	@dptr,a
      00297D 90 03 3D         [24] 1743 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00dd)
      002980 F0               [24] 1744 	movx	@dptr,a
      002981 90 03 3E         [24] 1745 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00de)
      002984 F0               [24] 1746 	movx	@dptr,a
      002985 90 03 3F         [24] 1747 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00df)
      002988 F0               [24] 1748 	movx	@dptr,a
      002989 90 03 40         [24] 1749 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e0)
      00298C F0               [24] 1750 	movx	@dptr,a
      00298D 90 03 41         [24] 1751 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e1)
      002990 F0               [24] 1752 	movx	@dptr,a
      002991 90 03 42         [24] 1753 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e2)
      002994 F0               [24] 1754 	movx	@dptr,a
      002995 90 03 43         [24] 1755 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e3)
      002998 F0               [24] 1756 	movx	@dptr,a
      002999 90 03 44         [24] 1757 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e4)
      00299C F0               [24] 1758 	movx	@dptr,a
      00299D 90 03 45         [24] 1759 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e5)
      0029A0 F0               [24] 1760 	movx	@dptr,a
      0029A1 90 03 46         [24] 1761 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e6)
      0029A4 F0               [24] 1762 	movx	@dptr,a
      0029A5 90 03 47         [24] 1763 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e7)
      0029A8 F0               [24] 1764 	movx	@dptr,a
      0029A9 90 03 48         [24] 1765 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e8)
      0029AC F0               [24] 1766 	movx	@dptr,a
      0029AD 90 03 49         [24] 1767 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00e9)
      0029B0 F0               [24] 1768 	movx	@dptr,a
      0029B1 90 03 4A         [24] 1769 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ea)
      0029B4 F0               [24] 1770 	movx	@dptr,a
      0029B5 90 03 4B         [24] 1771 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00eb)
      0029B8 F0               [24] 1772 	movx	@dptr,a
      0029B9 90 03 4C         [24] 1773 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ec)
      0029BC F0               [24] 1774 	movx	@dptr,a
      0029BD 90 03 4D         [24] 1775 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ed)
      0029C0 F0               [24] 1776 	movx	@dptr,a
      0029C1 90 03 4E         [24] 1777 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ee)
      0029C4 F0               [24] 1778 	movx	@dptr,a
      0029C5 90 03 4F         [24] 1779 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ef)
      0029C8 F0               [24] 1780 	movx	@dptr,a
      0029C9 90 03 50         [24] 1781 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f0)
      0029CC F0               [24] 1782 	movx	@dptr,a
      0029CD 90 03 51         [24] 1783 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f1)
      0029D0 F0               [24] 1784 	movx	@dptr,a
      0029D1 90 03 52         [24] 1785 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f2)
      0029D4 F0               [24] 1786 	movx	@dptr,a
      0029D5 90 03 53         [24] 1787 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f3)
      0029D8 F0               [24] 1788 	movx	@dptr,a
      0029D9 90 03 54         [24] 1789 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f4)
      0029DC F0               [24] 1790 	movx	@dptr,a
      0029DD 90 03 55         [24] 1791 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f5)
      0029E0 F0               [24] 1792 	movx	@dptr,a
      0029E1 90 03 56         [24] 1793 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f6)
      0029E4 F0               [24] 1794 	movx	@dptr,a
      0029E5 90 03 57         [24] 1795 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f7)
      0029E8 F0               [24] 1796 	movx	@dptr,a
      0029E9 90 03 58         [24] 1797 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f8)
      0029EC F0               [24] 1798 	movx	@dptr,a
      0029ED 90 03 59         [24] 1799 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00f9)
      0029F0 F0               [24] 1800 	movx	@dptr,a
      0029F1 90 03 5A         [24] 1801 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fa)
      0029F4 F0               [24] 1802 	movx	@dptr,a
      0029F5 90 03 5B         [24] 1803 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fb)
      0029F8 F0               [24] 1804 	movx	@dptr,a
      0029F9 90 03 5C         [24] 1805 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fc)
      0029FC F0               [24] 1806 	movx	@dptr,a
      0029FD 90 03 5D         [24] 1807 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fd)
      002A00 F0               [24] 1808 	movx	@dptr,a
      002A01 90 03 5E         [24] 1809 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00fe)
      002A04 F0               [24] 1810 	movx	@dptr,a
      002A05 90 03 5F         [24] 1811 	mov	dptr,#(_dac_update_output_square_wave_65536_32 + 0x00ff)
      002A08 F0               [24] 1812 	movx	@dptr,a
                                   1813 ;	spi.c:576: __xdata uint8_t static triangular_value_wave[256]={0	,
      002A09 90 03 60         [24] 1814 	mov	dptr,#_dac_update_output_triangular_value_wave_65536_32
      002A0C E4               [12] 1815 	clr	a
      002A0D F0               [24] 1816 	movx	@dptr,a
      002A0E 90 03 61         [24] 1817 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0001)
      002A11 74 02            [12] 1818 	mov	a,#0x02
      002A13 F0               [24] 1819 	movx	@dptr,a
      002A14 90 03 62         [24] 1820 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0002)
      002A17 23               [12] 1821 	rl	a
      002A18 F0               [24] 1822 	movx	@dptr,a
      002A19 90 03 63         [24] 1823 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0003)
      002A1C 74 06            [12] 1824 	mov	a,#0x06
      002A1E F0               [24] 1825 	movx	@dptr,a
      002A1F 90 03 64         [24] 1826 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0004)
      002A22 74 08            [12] 1827 	mov	a,#0x08
      002A24 F0               [24] 1828 	movx	@dptr,a
      002A25 90 03 65         [24] 1829 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0005)
      002A28 74 0A            [12] 1830 	mov	a,#0x0a
      002A2A F0               [24] 1831 	movx	@dptr,a
      002A2B 90 03 66         [24] 1832 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0006)
      002A2E 74 0C            [12] 1833 	mov	a,#0x0c
      002A30 F0               [24] 1834 	movx	@dptr,a
      002A31 90 03 67         [24] 1835 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0007)
      002A34 74 0E            [12] 1836 	mov	a,#0x0e
      002A36 F0               [24] 1837 	movx	@dptr,a
      002A37 90 03 68         [24] 1838 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0008)
      002A3A 74 10            [12] 1839 	mov	a,#0x10
      002A3C F0               [24] 1840 	movx	@dptr,a
      002A3D 90 03 69         [24] 1841 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0009)
      002A40 74 12            [12] 1842 	mov	a,#0x12
      002A42 F0               [24] 1843 	movx	@dptr,a
      002A43 90 03 6A         [24] 1844 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000a)
      002A46 74 14            [12] 1845 	mov	a,#0x14
      002A48 F0               [24] 1846 	movx	@dptr,a
      002A49 90 03 6B         [24] 1847 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000b)
      002A4C 74 16            [12] 1848 	mov	a,#0x16
      002A4E F0               [24] 1849 	movx	@dptr,a
      002A4F 90 03 6C         [24] 1850 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000c)
      002A52 74 18            [12] 1851 	mov	a,#0x18
      002A54 F0               [24] 1852 	movx	@dptr,a
      002A55 90 03 6D         [24] 1853 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000d)
      002A58 74 1A            [12] 1854 	mov	a,#0x1a
      002A5A F0               [24] 1855 	movx	@dptr,a
      002A5B 90 03 6E         [24] 1856 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000e)
      002A5E 74 1C            [12] 1857 	mov	a,#0x1c
      002A60 F0               [24] 1858 	movx	@dptr,a
      002A61 90 03 6F         [24] 1859 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x000f)
      002A64 74 1E            [12] 1860 	mov	a,#0x1e
      002A66 F0               [24] 1861 	movx	@dptr,a
      002A67 90 03 70         [24] 1862 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0010)
      002A6A 74 20            [12] 1863 	mov	a,#0x20
      002A6C F0               [24] 1864 	movx	@dptr,a
      002A6D 90 03 71         [24] 1865 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0011)
      002A70 74 22            [12] 1866 	mov	a,#0x22
      002A72 F0               [24] 1867 	movx	@dptr,a
      002A73 90 03 72         [24] 1868 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0012)
      002A76 74 24            [12] 1869 	mov	a,#0x24
      002A78 F0               [24] 1870 	movx	@dptr,a
      002A79 90 03 73         [24] 1871 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0013)
      002A7C 74 26            [12] 1872 	mov	a,#0x26
      002A7E F0               [24] 1873 	movx	@dptr,a
      002A7F 90 03 74         [24] 1874 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0014)
      002A82 74 28            [12] 1875 	mov	a,#0x28
      002A84 F0               [24] 1876 	movx	@dptr,a
      002A85 90 03 75         [24] 1877 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0015)
      002A88 74 2A            [12] 1878 	mov	a,#0x2a
      002A8A F0               [24] 1879 	movx	@dptr,a
      002A8B 90 03 76         [24] 1880 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0016)
      002A8E 74 2C            [12] 1881 	mov	a,#0x2c
      002A90 F0               [24] 1882 	movx	@dptr,a
      002A91 90 03 77         [24] 1883 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0017)
      002A94 74 2E            [12] 1884 	mov	a,#0x2e
      002A96 F0               [24] 1885 	movx	@dptr,a
      002A97 90 03 78         [24] 1886 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0018)
      002A9A 74 30            [12] 1887 	mov	a,#0x30
      002A9C F0               [24] 1888 	movx	@dptr,a
      002A9D 90 03 79         [24] 1889 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0019)
      002AA0 74 32            [12] 1890 	mov	a,#0x32
      002AA2 F0               [24] 1891 	movx	@dptr,a
      002AA3 90 03 7A         [24] 1892 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001a)
      002AA6 74 34            [12] 1893 	mov	a,#0x34
      002AA8 F0               [24] 1894 	movx	@dptr,a
      002AA9 90 03 7B         [24] 1895 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001b)
      002AAC 74 36            [12] 1896 	mov	a,#0x36
      002AAE F0               [24] 1897 	movx	@dptr,a
      002AAF 90 03 7C         [24] 1898 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001c)
      002AB2 74 38            [12] 1899 	mov	a,#0x38
      002AB4 F0               [24] 1900 	movx	@dptr,a
      002AB5 90 03 7D         [24] 1901 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001d)
      002AB8 74 3A            [12] 1902 	mov	a,#0x3a
      002ABA F0               [24] 1903 	movx	@dptr,a
      002ABB 90 03 7E         [24] 1904 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001e)
      002ABE 74 3C            [12] 1905 	mov	a,#0x3c
      002AC0 F0               [24] 1906 	movx	@dptr,a
      002AC1 90 03 7F         [24] 1907 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x001f)
      002AC4 74 3E            [12] 1908 	mov	a,#0x3e
      002AC6 F0               [24] 1909 	movx	@dptr,a
      002AC7 90 03 80         [24] 1910 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0020)
      002ACA 74 40            [12] 1911 	mov	a,#0x40
      002ACC F0               [24] 1912 	movx	@dptr,a
      002ACD 90 03 81         [24] 1913 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0021)
      002AD0 74 42            [12] 1914 	mov	a,#0x42
      002AD2 F0               [24] 1915 	movx	@dptr,a
      002AD3 90 03 82         [24] 1916 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0022)
      002AD6 74 44            [12] 1917 	mov	a,#0x44
      002AD8 F0               [24] 1918 	movx	@dptr,a
      002AD9 90 03 83         [24] 1919 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0023)
      002ADC 74 46            [12] 1920 	mov	a,#0x46
      002ADE F0               [24] 1921 	movx	@dptr,a
      002ADF 90 03 84         [24] 1922 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0024)
      002AE2 74 48            [12] 1923 	mov	a,#0x48
      002AE4 F0               [24] 1924 	movx	@dptr,a
      002AE5 90 03 85         [24] 1925 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0025)
      002AE8 74 4A            [12] 1926 	mov	a,#0x4a
      002AEA F0               [24] 1927 	movx	@dptr,a
      002AEB 90 03 86         [24] 1928 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0026)
      002AEE 74 4C            [12] 1929 	mov	a,#0x4c
      002AF0 F0               [24] 1930 	movx	@dptr,a
      002AF1 90 03 87         [24] 1931 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0027)
      002AF4 74 4E            [12] 1932 	mov	a,#0x4e
      002AF6 F0               [24] 1933 	movx	@dptr,a
      002AF7 90 03 88         [24] 1934 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0028)
      002AFA 74 50            [12] 1935 	mov	a,#0x50
      002AFC F0               [24] 1936 	movx	@dptr,a
      002AFD 90 03 89         [24] 1937 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0029)
      002B00 74 52            [12] 1938 	mov	a,#0x52
      002B02 F0               [24] 1939 	movx	@dptr,a
      002B03 90 03 8A         [24] 1940 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002a)
      002B06 74 54            [12] 1941 	mov	a,#0x54
      002B08 F0               [24] 1942 	movx	@dptr,a
      002B09 90 03 8B         [24] 1943 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002b)
      002B0C 74 56            [12] 1944 	mov	a,#0x56
      002B0E F0               [24] 1945 	movx	@dptr,a
      002B0F 90 03 8C         [24] 1946 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002c)
      002B12 74 58            [12] 1947 	mov	a,#0x58
      002B14 F0               [24] 1948 	movx	@dptr,a
      002B15 90 03 8D         [24] 1949 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002d)
      002B18 74 5A            [12] 1950 	mov	a,#0x5a
      002B1A F0               [24] 1951 	movx	@dptr,a
      002B1B 90 03 8E         [24] 1952 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002e)
      002B1E 74 5C            [12] 1953 	mov	a,#0x5c
      002B20 F0               [24] 1954 	movx	@dptr,a
      002B21 90 03 8F         [24] 1955 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x002f)
      002B24 74 5E            [12] 1956 	mov	a,#0x5e
      002B26 F0               [24] 1957 	movx	@dptr,a
      002B27 90 03 90         [24] 1958 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0030)
      002B2A 74 60            [12] 1959 	mov	a,#0x60
      002B2C F0               [24] 1960 	movx	@dptr,a
      002B2D 90 03 91         [24] 1961 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0031)
      002B30 74 62            [12] 1962 	mov	a,#0x62
      002B32 F0               [24] 1963 	movx	@dptr,a
      002B33 90 03 92         [24] 1964 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0032)
      002B36 74 64            [12] 1965 	mov	a,#0x64
      002B38 F0               [24] 1966 	movx	@dptr,a
      002B39 90 03 93         [24] 1967 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0033)
      002B3C 74 66            [12] 1968 	mov	a,#0x66
      002B3E F0               [24] 1969 	movx	@dptr,a
      002B3F 90 03 94         [24] 1970 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0034)
      002B42 74 68            [12] 1971 	mov	a,#0x68
      002B44 F0               [24] 1972 	movx	@dptr,a
      002B45 90 03 95         [24] 1973 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0035)
      002B48 74 6A            [12] 1974 	mov	a,#0x6a
      002B4A F0               [24] 1975 	movx	@dptr,a
      002B4B 90 03 96         [24] 1976 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0036)
      002B4E 74 6C            [12] 1977 	mov	a,#0x6c
      002B50 F0               [24] 1978 	movx	@dptr,a
      002B51 90 03 97         [24] 1979 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0037)
      002B54 74 6E            [12] 1980 	mov	a,#0x6e
      002B56 F0               [24] 1981 	movx	@dptr,a
      002B57 90 03 98         [24] 1982 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0038)
      002B5A 74 70            [12] 1983 	mov	a,#0x70
      002B5C F0               [24] 1984 	movx	@dptr,a
      002B5D 90 03 99         [24] 1985 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0039)
      002B60 74 72            [12] 1986 	mov	a,#0x72
      002B62 F0               [24] 1987 	movx	@dptr,a
      002B63 90 03 9A         [24] 1988 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003a)
      002B66 74 74            [12] 1989 	mov	a,#0x74
      002B68 F0               [24] 1990 	movx	@dptr,a
      002B69 90 03 9B         [24] 1991 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003b)
      002B6C 74 76            [12] 1992 	mov	a,#0x76
      002B6E F0               [24] 1993 	movx	@dptr,a
      002B6F 90 03 9C         [24] 1994 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003c)
      002B72 74 78            [12] 1995 	mov	a,#0x78
      002B74 F0               [24] 1996 	movx	@dptr,a
      002B75 90 03 9D         [24] 1997 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003d)
      002B78 74 7A            [12] 1998 	mov	a,#0x7a
      002B7A F0               [24] 1999 	movx	@dptr,a
      002B7B 90 03 9E         [24] 2000 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003e)
      002B7E 74 7C            [12] 2001 	mov	a,#0x7c
      002B80 F0               [24] 2002 	movx	@dptr,a
      002B81 90 03 9F         [24] 2003 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x003f)
      002B84 74 7E            [12] 2004 	mov	a,#0x7e
      002B86 F0               [24] 2005 	movx	@dptr,a
      002B87 90 03 A0         [24] 2006 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0040)
      002B8A 74 80            [12] 2007 	mov	a,#0x80
      002B8C F0               [24] 2008 	movx	@dptr,a
      002B8D 90 03 A1         [24] 2009 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0041)
      002B90 74 82            [12] 2010 	mov	a,#0x82
      002B92 F0               [24] 2011 	movx	@dptr,a
      002B93 90 03 A2         [24] 2012 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0042)
      002B96 74 84            [12] 2013 	mov	a,#0x84
      002B98 F0               [24] 2014 	movx	@dptr,a
      002B99 90 03 A3         [24] 2015 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0043)
      002B9C 74 86            [12] 2016 	mov	a,#0x86
      002B9E F0               [24] 2017 	movx	@dptr,a
      002B9F 90 03 A4         [24] 2018 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0044)
      002BA2 74 88            [12] 2019 	mov	a,#0x88
      002BA4 F0               [24] 2020 	movx	@dptr,a
      002BA5 90 03 A5         [24] 2021 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0045)
      002BA8 74 8A            [12] 2022 	mov	a,#0x8a
      002BAA F0               [24] 2023 	movx	@dptr,a
      002BAB 90 03 A6         [24] 2024 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0046)
      002BAE 74 8C            [12] 2025 	mov	a,#0x8c
      002BB0 F0               [24] 2026 	movx	@dptr,a
      002BB1 90 03 A7         [24] 2027 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0047)
      002BB4 74 8E            [12] 2028 	mov	a,#0x8e
      002BB6 F0               [24] 2029 	movx	@dptr,a
      002BB7 90 03 A8         [24] 2030 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0048)
      002BBA 74 90            [12] 2031 	mov	a,#0x90
      002BBC F0               [24] 2032 	movx	@dptr,a
      002BBD 90 03 A9         [24] 2033 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0049)
      002BC0 74 92            [12] 2034 	mov	a,#0x92
      002BC2 F0               [24] 2035 	movx	@dptr,a
      002BC3 90 03 AA         [24] 2036 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004a)
      002BC6 74 94            [12] 2037 	mov	a,#0x94
      002BC8 F0               [24] 2038 	movx	@dptr,a
      002BC9 90 03 AB         [24] 2039 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004b)
      002BCC 74 96            [12] 2040 	mov	a,#0x96
      002BCE F0               [24] 2041 	movx	@dptr,a
      002BCF 90 03 AC         [24] 2042 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004c)
      002BD2 74 98            [12] 2043 	mov	a,#0x98
      002BD4 F0               [24] 2044 	movx	@dptr,a
      002BD5 90 03 AD         [24] 2045 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004d)
      002BD8 74 9A            [12] 2046 	mov	a,#0x9a
      002BDA F0               [24] 2047 	movx	@dptr,a
      002BDB 90 03 AE         [24] 2048 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004e)
      002BDE 74 9C            [12] 2049 	mov	a,#0x9c
      002BE0 F0               [24] 2050 	movx	@dptr,a
      002BE1 90 03 AF         [24] 2051 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x004f)
      002BE4 74 9E            [12] 2052 	mov	a,#0x9e
      002BE6 F0               [24] 2053 	movx	@dptr,a
      002BE7 90 03 B0         [24] 2054 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0050)
      002BEA 74 A0            [12] 2055 	mov	a,#0xa0
      002BEC F0               [24] 2056 	movx	@dptr,a
      002BED 90 03 B1         [24] 2057 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0051)
      002BF0 74 A2            [12] 2058 	mov	a,#0xa2
      002BF2 F0               [24] 2059 	movx	@dptr,a
      002BF3 90 03 B2         [24] 2060 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0052)
      002BF6 74 A4            [12] 2061 	mov	a,#0xa4
      002BF8 F0               [24] 2062 	movx	@dptr,a
      002BF9 90 03 B3         [24] 2063 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0053)
      002BFC 74 A6            [12] 2064 	mov	a,#0xa6
      002BFE F0               [24] 2065 	movx	@dptr,a
      002BFF 90 03 B4         [24] 2066 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0054)
      002C02 74 A8            [12] 2067 	mov	a,#0xa8
      002C04 F0               [24] 2068 	movx	@dptr,a
      002C05 90 03 B5         [24] 2069 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0055)
      002C08 74 AA            [12] 2070 	mov	a,#0xaa
      002C0A F0               [24] 2071 	movx	@dptr,a
      002C0B 90 03 B6         [24] 2072 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0056)
      002C0E 74 AC            [12] 2073 	mov	a,#0xac
      002C10 F0               [24] 2074 	movx	@dptr,a
      002C11 90 03 B7         [24] 2075 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0057)
      002C14 74 AE            [12] 2076 	mov	a,#0xae
      002C16 F0               [24] 2077 	movx	@dptr,a
      002C17 90 03 B8         [24] 2078 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0058)
      002C1A 74 B0            [12] 2079 	mov	a,#0xb0
      002C1C F0               [24] 2080 	movx	@dptr,a
      002C1D 90 03 B9         [24] 2081 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0059)
      002C20 74 B2            [12] 2082 	mov	a,#0xb2
      002C22 F0               [24] 2083 	movx	@dptr,a
      002C23 90 03 BA         [24] 2084 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005a)
      002C26 74 B4            [12] 2085 	mov	a,#0xb4
      002C28 F0               [24] 2086 	movx	@dptr,a
      002C29 90 03 BB         [24] 2087 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005b)
      002C2C 74 B6            [12] 2088 	mov	a,#0xb6
      002C2E F0               [24] 2089 	movx	@dptr,a
      002C2F 90 03 BC         [24] 2090 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005c)
      002C32 74 B8            [12] 2091 	mov	a,#0xb8
      002C34 F0               [24] 2092 	movx	@dptr,a
      002C35 90 03 BD         [24] 2093 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005d)
      002C38 74 BA            [12] 2094 	mov	a,#0xba
      002C3A F0               [24] 2095 	movx	@dptr,a
      002C3B 90 03 BE         [24] 2096 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005e)
      002C3E 74 BC            [12] 2097 	mov	a,#0xbc
      002C40 F0               [24] 2098 	movx	@dptr,a
      002C41 90 03 BF         [24] 2099 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x005f)
      002C44 74 BE            [12] 2100 	mov	a,#0xbe
      002C46 F0               [24] 2101 	movx	@dptr,a
      002C47 90 03 C0         [24] 2102 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0060)
      002C4A 74 C0            [12] 2103 	mov	a,#0xc0
      002C4C F0               [24] 2104 	movx	@dptr,a
      002C4D 90 03 C1         [24] 2105 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0061)
      002C50 74 C2            [12] 2106 	mov	a,#0xc2
      002C52 F0               [24] 2107 	movx	@dptr,a
      002C53 90 03 C2         [24] 2108 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0062)
      002C56 74 C4            [12] 2109 	mov	a,#0xc4
      002C58 F0               [24] 2110 	movx	@dptr,a
      002C59 90 03 C3         [24] 2111 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0063)
      002C5C 74 C6            [12] 2112 	mov	a,#0xc6
      002C5E F0               [24] 2113 	movx	@dptr,a
      002C5F 90 03 C4         [24] 2114 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0064)
      002C62 74 C8            [12] 2115 	mov	a,#0xc8
      002C64 F0               [24] 2116 	movx	@dptr,a
      002C65 90 03 C5         [24] 2117 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0065)
      002C68 74 CA            [12] 2118 	mov	a,#0xca
      002C6A F0               [24] 2119 	movx	@dptr,a
      002C6B 90 03 C6         [24] 2120 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0066)
      002C6E 74 CC            [12] 2121 	mov	a,#0xcc
      002C70 F0               [24] 2122 	movx	@dptr,a
      002C71 90 03 C7         [24] 2123 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0067)
      002C74 74 CE            [12] 2124 	mov	a,#0xce
      002C76 F0               [24] 2125 	movx	@dptr,a
      002C77 90 03 C8         [24] 2126 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0068)
      002C7A 74 D0            [12] 2127 	mov	a,#0xd0
      002C7C F0               [24] 2128 	movx	@dptr,a
      002C7D 90 03 C9         [24] 2129 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0069)
      002C80 74 D2            [12] 2130 	mov	a,#0xd2
      002C82 F0               [24] 2131 	movx	@dptr,a
      002C83 90 03 CA         [24] 2132 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006a)
      002C86 74 D4            [12] 2133 	mov	a,#0xd4
      002C88 F0               [24] 2134 	movx	@dptr,a
      002C89 90 03 CB         [24] 2135 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006b)
      002C8C 74 D6            [12] 2136 	mov	a,#0xd6
      002C8E F0               [24] 2137 	movx	@dptr,a
      002C8F 90 03 CC         [24] 2138 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006c)
      002C92 74 D8            [12] 2139 	mov	a,#0xd8
      002C94 F0               [24] 2140 	movx	@dptr,a
      002C95 90 03 CD         [24] 2141 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006d)
      002C98 74 DA            [12] 2142 	mov	a,#0xda
      002C9A F0               [24] 2143 	movx	@dptr,a
      002C9B 90 03 CE         [24] 2144 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006e)
      002C9E 74 DC            [12] 2145 	mov	a,#0xdc
      002CA0 F0               [24] 2146 	movx	@dptr,a
      002CA1 90 03 CF         [24] 2147 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x006f)
      002CA4 74 DE            [12] 2148 	mov	a,#0xde
      002CA6 F0               [24] 2149 	movx	@dptr,a
      002CA7 90 03 D0         [24] 2150 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0070)
      002CAA 74 E0            [12] 2151 	mov	a,#0xe0
      002CAC F0               [24] 2152 	movx	@dptr,a
      002CAD 90 03 D1         [24] 2153 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0071)
      002CB0 74 E2            [12] 2154 	mov	a,#0xe2
      002CB2 F0               [24] 2155 	movx	@dptr,a
      002CB3 90 03 D2         [24] 2156 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0072)
      002CB6 74 E4            [12] 2157 	mov	a,#0xe4
      002CB8 F0               [24] 2158 	movx	@dptr,a
      002CB9 90 03 D3         [24] 2159 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0073)
      002CBC 74 E6            [12] 2160 	mov	a,#0xe6
      002CBE F0               [24] 2161 	movx	@dptr,a
      002CBF 90 03 D4         [24] 2162 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0074)
      002CC2 74 E8            [12] 2163 	mov	a,#0xe8
      002CC4 F0               [24] 2164 	movx	@dptr,a
      002CC5 90 03 D5         [24] 2165 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0075)
      002CC8 74 EA            [12] 2166 	mov	a,#0xea
      002CCA F0               [24] 2167 	movx	@dptr,a
      002CCB 90 03 D6         [24] 2168 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0076)
      002CCE 74 EC            [12] 2169 	mov	a,#0xec
      002CD0 F0               [24] 2170 	movx	@dptr,a
      002CD1 90 03 D7         [24] 2171 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0077)
      002CD4 74 EE            [12] 2172 	mov	a,#0xee
      002CD6 F0               [24] 2173 	movx	@dptr,a
      002CD7 90 03 D8         [24] 2174 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0078)
      002CDA 74 F0            [12] 2175 	mov	a,#0xf0
      002CDC F0               [24] 2176 	movx	@dptr,a
      002CDD 90 03 D9         [24] 2177 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0079)
      002CE0 74 F2            [12] 2178 	mov	a,#0xf2
      002CE2 F0               [24] 2179 	movx	@dptr,a
      002CE3 90 03 DA         [24] 2180 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007a)
      002CE6 74 F4            [12] 2181 	mov	a,#0xf4
      002CE8 F0               [24] 2182 	movx	@dptr,a
      002CE9 90 03 DB         [24] 2183 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007b)
      002CEC 74 F6            [12] 2184 	mov	a,#0xf6
      002CEE F0               [24] 2185 	movx	@dptr,a
      002CEF 90 03 DC         [24] 2186 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007c)
      002CF2 74 F8            [12] 2187 	mov	a,#0xf8
      002CF4 F0               [24] 2188 	movx	@dptr,a
      002CF5 90 03 DD         [24] 2189 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007d)
      002CF8 74 FA            [12] 2190 	mov	a,#0xfa
      002CFA F0               [24] 2191 	movx	@dptr,a
      002CFB 90 03 DE         [24] 2192 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007e)
      002CFE 74 FC            [12] 2193 	mov	a,#0xfc
      002D00 F0               [24] 2194 	movx	@dptr,a
      002D01 90 03 DF         [24] 2195 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x007f)
      002D04 74 FE            [12] 2196 	mov	a,#0xfe
      002D06 F0               [24] 2197 	movx	@dptr,a
      002D07 90 03 E0         [24] 2198 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0080)
      002D0A 04               [12] 2199 	inc	a
      002D0B F0               [24] 2200 	movx	@dptr,a
      002D0C 90 03 E1         [24] 2201 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0081)
      002D0F 14               [12] 2202 	dec	a
      002D10 F0               [24] 2203 	movx	@dptr,a
      002D11 90 03 E2         [24] 2204 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0082)
      002D14 74 FC            [12] 2205 	mov	a,#0xfc
      002D16 F0               [24] 2206 	movx	@dptr,a
      002D17 90 03 E3         [24] 2207 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0083)
      002D1A 74 FA            [12] 2208 	mov	a,#0xfa
      002D1C F0               [24] 2209 	movx	@dptr,a
      002D1D 90 03 E4         [24] 2210 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0084)
      002D20 74 F8            [12] 2211 	mov	a,#0xf8
      002D22 F0               [24] 2212 	movx	@dptr,a
      002D23 90 03 E5         [24] 2213 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0085)
      002D26 74 F6            [12] 2214 	mov	a,#0xf6
      002D28 F0               [24] 2215 	movx	@dptr,a
      002D29 90 03 E6         [24] 2216 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0086)
      002D2C 74 F4            [12] 2217 	mov	a,#0xf4
      002D2E F0               [24] 2218 	movx	@dptr,a
      002D2F 90 03 E7         [24] 2219 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0087)
      002D32 74 F2            [12] 2220 	mov	a,#0xf2
      002D34 F0               [24] 2221 	movx	@dptr,a
      002D35 90 03 E8         [24] 2222 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0088)
      002D38 74 F0            [12] 2223 	mov	a,#0xf0
      002D3A F0               [24] 2224 	movx	@dptr,a
      002D3B 90 03 E9         [24] 2225 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0089)
      002D3E 74 EE            [12] 2226 	mov	a,#0xee
      002D40 F0               [24] 2227 	movx	@dptr,a
      002D41 90 03 EA         [24] 2228 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008a)
      002D44 74 EC            [12] 2229 	mov	a,#0xec
      002D46 F0               [24] 2230 	movx	@dptr,a
      002D47 90 03 EB         [24] 2231 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008b)
      002D4A 74 EA            [12] 2232 	mov	a,#0xea
      002D4C F0               [24] 2233 	movx	@dptr,a
      002D4D 90 03 EC         [24] 2234 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008c)
      002D50 74 E8            [12] 2235 	mov	a,#0xe8
      002D52 F0               [24] 2236 	movx	@dptr,a
      002D53 90 03 ED         [24] 2237 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008d)
      002D56 74 E6            [12] 2238 	mov	a,#0xe6
      002D58 F0               [24] 2239 	movx	@dptr,a
      002D59 90 03 EE         [24] 2240 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008e)
      002D5C 74 E4            [12] 2241 	mov	a,#0xe4
      002D5E F0               [24] 2242 	movx	@dptr,a
      002D5F 90 03 EF         [24] 2243 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x008f)
      002D62 74 E2            [12] 2244 	mov	a,#0xe2
      002D64 F0               [24] 2245 	movx	@dptr,a
      002D65 90 03 F0         [24] 2246 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0090)
      002D68 74 E0            [12] 2247 	mov	a,#0xe0
      002D6A F0               [24] 2248 	movx	@dptr,a
      002D6B 90 03 F1         [24] 2249 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0091)
      002D6E 74 DE            [12] 2250 	mov	a,#0xde
      002D70 F0               [24] 2251 	movx	@dptr,a
      002D71 90 03 F2         [24] 2252 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0092)
      002D74 74 DC            [12] 2253 	mov	a,#0xdc
      002D76 F0               [24] 2254 	movx	@dptr,a
      002D77 90 03 F3         [24] 2255 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0093)
      002D7A 74 DA            [12] 2256 	mov	a,#0xda
      002D7C F0               [24] 2257 	movx	@dptr,a
      002D7D 90 03 F4         [24] 2258 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0094)
      002D80 74 D8            [12] 2259 	mov	a,#0xd8
      002D82 F0               [24] 2260 	movx	@dptr,a
      002D83 90 03 F5         [24] 2261 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0095)
      002D86 74 D6            [12] 2262 	mov	a,#0xd6
      002D88 F0               [24] 2263 	movx	@dptr,a
      002D89 90 03 F6         [24] 2264 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0096)
      002D8C 74 D4            [12] 2265 	mov	a,#0xd4
      002D8E F0               [24] 2266 	movx	@dptr,a
      002D8F 90 03 F7         [24] 2267 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0097)
      002D92 74 D2            [12] 2268 	mov	a,#0xd2
      002D94 F0               [24] 2269 	movx	@dptr,a
      002D95 90 03 F8         [24] 2270 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0098)
      002D98 74 D0            [12] 2271 	mov	a,#0xd0
      002D9A F0               [24] 2272 	movx	@dptr,a
      002D9B 90 03 F9         [24] 2273 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x0099)
      002D9E 74 CE            [12] 2274 	mov	a,#0xce
      002DA0 F0               [24] 2275 	movx	@dptr,a
      002DA1 90 03 FA         [24] 2276 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009a)
      002DA4 74 CC            [12] 2277 	mov	a,#0xcc
      002DA6 F0               [24] 2278 	movx	@dptr,a
      002DA7 90 03 FB         [24] 2279 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009b)
      002DAA 74 CA            [12] 2280 	mov	a,#0xca
      002DAC F0               [24] 2281 	movx	@dptr,a
      002DAD 90 03 FC         [24] 2282 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009c)
      002DB0 74 C8            [12] 2283 	mov	a,#0xc8
      002DB2 F0               [24] 2284 	movx	@dptr,a
      002DB3 90 03 FD         [24] 2285 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009d)
      002DB6 74 C6            [12] 2286 	mov	a,#0xc6
      002DB8 F0               [24] 2287 	movx	@dptr,a
      002DB9 90 03 FE         [24] 2288 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009e)
      002DBC 74 C4            [12] 2289 	mov	a,#0xc4
      002DBE F0               [24] 2290 	movx	@dptr,a
      002DBF 90 03 FF         [24] 2291 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x009f)
      002DC2 74 C2            [12] 2292 	mov	a,#0xc2
      002DC4 F0               [24] 2293 	movx	@dptr,a
      002DC5 90 04 00         [24] 2294 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a0)
      002DC8 74 C0            [12] 2295 	mov	a,#0xc0
      002DCA F0               [24] 2296 	movx	@dptr,a
      002DCB 90 04 01         [24] 2297 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a1)
      002DCE 74 BE            [12] 2298 	mov	a,#0xbe
      002DD0 F0               [24] 2299 	movx	@dptr,a
      002DD1 90 04 02         [24] 2300 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a2)
      002DD4 74 BC            [12] 2301 	mov	a,#0xbc
      002DD6 F0               [24] 2302 	movx	@dptr,a
      002DD7 90 04 03         [24] 2303 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a3)
      002DDA 74 BA            [12] 2304 	mov	a,#0xba
      002DDC F0               [24] 2305 	movx	@dptr,a
      002DDD 90 04 04         [24] 2306 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a4)
      002DE0 74 B8            [12] 2307 	mov	a,#0xb8
      002DE2 F0               [24] 2308 	movx	@dptr,a
      002DE3 90 04 05         [24] 2309 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a5)
      002DE6 74 B6            [12] 2310 	mov	a,#0xb6
      002DE8 F0               [24] 2311 	movx	@dptr,a
      002DE9 90 04 06         [24] 2312 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a6)
      002DEC 74 B4            [12] 2313 	mov	a,#0xb4
      002DEE F0               [24] 2314 	movx	@dptr,a
      002DEF 90 04 07         [24] 2315 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a7)
      002DF2 74 B2            [12] 2316 	mov	a,#0xb2
      002DF4 F0               [24] 2317 	movx	@dptr,a
      002DF5 90 04 08         [24] 2318 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a8)
      002DF8 74 B0            [12] 2319 	mov	a,#0xb0
      002DFA F0               [24] 2320 	movx	@dptr,a
      002DFB 90 04 09         [24] 2321 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00a9)
      002DFE 74 AE            [12] 2322 	mov	a,#0xae
      002E00 F0               [24] 2323 	movx	@dptr,a
      002E01 90 04 0A         [24] 2324 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00aa)
      002E04 74 AC            [12] 2325 	mov	a,#0xac
      002E06 F0               [24] 2326 	movx	@dptr,a
      002E07 90 04 0B         [24] 2327 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ab)
      002E0A 74 AA            [12] 2328 	mov	a,#0xaa
      002E0C F0               [24] 2329 	movx	@dptr,a
      002E0D 90 04 0C         [24] 2330 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ac)
      002E10 74 A8            [12] 2331 	mov	a,#0xa8
      002E12 F0               [24] 2332 	movx	@dptr,a
      002E13 90 04 0D         [24] 2333 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ad)
      002E16 74 A6            [12] 2334 	mov	a,#0xa6
      002E18 F0               [24] 2335 	movx	@dptr,a
      002E19 90 04 0E         [24] 2336 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ae)
      002E1C 74 A4            [12] 2337 	mov	a,#0xa4
      002E1E F0               [24] 2338 	movx	@dptr,a
      002E1F 90 04 0F         [24] 2339 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00af)
      002E22 74 A2            [12] 2340 	mov	a,#0xa2
      002E24 F0               [24] 2341 	movx	@dptr,a
      002E25 90 04 10         [24] 2342 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b0)
      002E28 74 A0            [12] 2343 	mov	a,#0xa0
      002E2A F0               [24] 2344 	movx	@dptr,a
      002E2B 90 04 11         [24] 2345 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b1)
      002E2E 74 9E            [12] 2346 	mov	a,#0x9e
      002E30 F0               [24] 2347 	movx	@dptr,a
      002E31 90 04 12         [24] 2348 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b2)
      002E34 74 9C            [12] 2349 	mov	a,#0x9c
      002E36 F0               [24] 2350 	movx	@dptr,a
      002E37 90 04 13         [24] 2351 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b3)
      002E3A 74 9A            [12] 2352 	mov	a,#0x9a
      002E3C F0               [24] 2353 	movx	@dptr,a
      002E3D 90 04 14         [24] 2354 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b4)
      002E40 74 98            [12] 2355 	mov	a,#0x98
      002E42 F0               [24] 2356 	movx	@dptr,a
      002E43 90 04 15         [24] 2357 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b5)
      002E46 74 96            [12] 2358 	mov	a,#0x96
      002E48 F0               [24] 2359 	movx	@dptr,a
      002E49 90 04 16         [24] 2360 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b6)
      002E4C 74 94            [12] 2361 	mov	a,#0x94
      002E4E F0               [24] 2362 	movx	@dptr,a
      002E4F 90 04 17         [24] 2363 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b7)
      002E52 74 92            [12] 2364 	mov	a,#0x92
      002E54 F0               [24] 2365 	movx	@dptr,a
      002E55 90 04 18         [24] 2366 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b8)
      002E58 74 90            [12] 2367 	mov	a,#0x90
      002E5A F0               [24] 2368 	movx	@dptr,a
      002E5B 90 04 19         [24] 2369 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00b9)
      002E5E 74 8E            [12] 2370 	mov	a,#0x8e
      002E60 F0               [24] 2371 	movx	@dptr,a
      002E61 90 04 1A         [24] 2372 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ba)
      002E64 74 8C            [12] 2373 	mov	a,#0x8c
      002E66 F0               [24] 2374 	movx	@dptr,a
      002E67 90 04 1B         [24] 2375 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00bb)
      002E6A 74 8A            [12] 2376 	mov	a,#0x8a
      002E6C F0               [24] 2377 	movx	@dptr,a
      002E6D 90 04 1C         [24] 2378 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00bc)
      002E70 74 88            [12] 2379 	mov	a,#0x88
      002E72 F0               [24] 2380 	movx	@dptr,a
      002E73 90 04 1D         [24] 2381 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00bd)
      002E76 74 86            [12] 2382 	mov	a,#0x86
      002E78 F0               [24] 2383 	movx	@dptr,a
      002E79 90 04 1E         [24] 2384 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00be)
      002E7C 74 84            [12] 2385 	mov	a,#0x84
      002E7E F0               [24] 2386 	movx	@dptr,a
      002E7F 90 04 1F         [24] 2387 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00bf)
      002E82 74 82            [12] 2388 	mov	a,#0x82
      002E84 F0               [24] 2389 	movx	@dptr,a
      002E85 90 04 20         [24] 2390 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c0)
      002E88 74 80            [12] 2391 	mov	a,#0x80
      002E8A F0               [24] 2392 	movx	@dptr,a
      002E8B 90 04 21         [24] 2393 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c1)
      002E8E 74 7E            [12] 2394 	mov	a,#0x7e
      002E90 F0               [24] 2395 	movx	@dptr,a
      002E91 90 04 22         [24] 2396 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c2)
      002E94 74 7C            [12] 2397 	mov	a,#0x7c
      002E96 F0               [24] 2398 	movx	@dptr,a
      002E97 90 04 23         [24] 2399 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c3)
      002E9A 74 7A            [12] 2400 	mov	a,#0x7a
      002E9C F0               [24] 2401 	movx	@dptr,a
      002E9D 90 04 24         [24] 2402 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c4)
      002EA0 74 78            [12] 2403 	mov	a,#0x78
      002EA2 F0               [24] 2404 	movx	@dptr,a
      002EA3 90 04 25         [24] 2405 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c5)
      002EA6 74 76            [12] 2406 	mov	a,#0x76
      002EA8 F0               [24] 2407 	movx	@dptr,a
      002EA9 90 04 26         [24] 2408 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c6)
      002EAC 74 74            [12] 2409 	mov	a,#0x74
      002EAE F0               [24] 2410 	movx	@dptr,a
      002EAF 90 04 27         [24] 2411 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c7)
      002EB2 74 72            [12] 2412 	mov	a,#0x72
      002EB4 F0               [24] 2413 	movx	@dptr,a
      002EB5 90 04 28         [24] 2414 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c8)
      002EB8 74 70            [12] 2415 	mov	a,#0x70
      002EBA F0               [24] 2416 	movx	@dptr,a
      002EBB 90 04 29         [24] 2417 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00c9)
      002EBE 74 6E            [12] 2418 	mov	a,#0x6e
      002EC0 F0               [24] 2419 	movx	@dptr,a
      002EC1 90 04 2A         [24] 2420 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ca)
      002EC4 74 6C            [12] 2421 	mov	a,#0x6c
      002EC6 F0               [24] 2422 	movx	@dptr,a
      002EC7 90 04 2B         [24] 2423 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00cb)
      002ECA 74 6A            [12] 2424 	mov	a,#0x6a
      002ECC F0               [24] 2425 	movx	@dptr,a
      002ECD 90 04 2C         [24] 2426 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00cc)
      002ED0 74 68            [12] 2427 	mov	a,#0x68
      002ED2 F0               [24] 2428 	movx	@dptr,a
      002ED3 90 04 2D         [24] 2429 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00cd)
      002ED6 74 66            [12] 2430 	mov	a,#0x66
      002ED8 F0               [24] 2431 	movx	@dptr,a
      002ED9 90 04 2E         [24] 2432 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ce)
      002EDC 74 64            [12] 2433 	mov	a,#0x64
      002EDE F0               [24] 2434 	movx	@dptr,a
      002EDF 90 04 2F         [24] 2435 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00cf)
      002EE2 74 62            [12] 2436 	mov	a,#0x62
      002EE4 F0               [24] 2437 	movx	@dptr,a
      002EE5 90 04 30         [24] 2438 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d0)
      002EE8 74 60            [12] 2439 	mov	a,#0x60
      002EEA F0               [24] 2440 	movx	@dptr,a
      002EEB 90 04 31         [24] 2441 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d1)
      002EEE 74 5E            [12] 2442 	mov	a,#0x5e
      002EF0 F0               [24] 2443 	movx	@dptr,a
      002EF1 90 04 32         [24] 2444 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d2)
      002EF4 74 5C            [12] 2445 	mov	a,#0x5c
      002EF6 F0               [24] 2446 	movx	@dptr,a
      002EF7 90 04 33         [24] 2447 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d3)
      002EFA 74 5A            [12] 2448 	mov	a,#0x5a
      002EFC F0               [24] 2449 	movx	@dptr,a
      002EFD 90 04 34         [24] 2450 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d4)
      002F00 74 58            [12] 2451 	mov	a,#0x58
      002F02 F0               [24] 2452 	movx	@dptr,a
      002F03 90 04 35         [24] 2453 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d5)
      002F06 74 56            [12] 2454 	mov	a,#0x56
      002F08 F0               [24] 2455 	movx	@dptr,a
      002F09 90 04 36         [24] 2456 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d6)
      002F0C 74 54            [12] 2457 	mov	a,#0x54
      002F0E F0               [24] 2458 	movx	@dptr,a
      002F0F 90 04 37         [24] 2459 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d7)
      002F12 74 52            [12] 2460 	mov	a,#0x52
      002F14 F0               [24] 2461 	movx	@dptr,a
      002F15 90 04 38         [24] 2462 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d8)
      002F18 74 50            [12] 2463 	mov	a,#0x50
      002F1A F0               [24] 2464 	movx	@dptr,a
      002F1B 90 04 39         [24] 2465 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00d9)
      002F1E 74 4E            [12] 2466 	mov	a,#0x4e
      002F20 F0               [24] 2467 	movx	@dptr,a
      002F21 90 04 3A         [24] 2468 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00da)
      002F24 74 4C            [12] 2469 	mov	a,#0x4c
      002F26 F0               [24] 2470 	movx	@dptr,a
      002F27 90 04 3B         [24] 2471 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00db)
      002F2A 74 4A            [12] 2472 	mov	a,#0x4a
      002F2C F0               [24] 2473 	movx	@dptr,a
      002F2D 90 04 3C         [24] 2474 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00dc)
      002F30 74 48            [12] 2475 	mov	a,#0x48
      002F32 F0               [24] 2476 	movx	@dptr,a
      002F33 90 04 3D         [24] 2477 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00dd)
      002F36 74 46            [12] 2478 	mov	a,#0x46
      002F38 F0               [24] 2479 	movx	@dptr,a
      002F39 90 04 3E         [24] 2480 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00de)
      002F3C 74 44            [12] 2481 	mov	a,#0x44
      002F3E F0               [24] 2482 	movx	@dptr,a
      002F3F 90 04 3F         [24] 2483 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00df)
      002F42 74 42            [12] 2484 	mov	a,#0x42
      002F44 F0               [24] 2485 	movx	@dptr,a
      002F45 90 04 40         [24] 2486 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e0)
      002F48 74 40            [12] 2487 	mov	a,#0x40
      002F4A F0               [24] 2488 	movx	@dptr,a
      002F4B 90 04 41         [24] 2489 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e1)
      002F4E 74 3E            [12] 2490 	mov	a,#0x3e
      002F50 F0               [24] 2491 	movx	@dptr,a
      002F51 90 04 42         [24] 2492 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e2)
      002F54 74 3C            [12] 2493 	mov	a,#0x3c
      002F56 F0               [24] 2494 	movx	@dptr,a
      002F57 90 04 43         [24] 2495 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e3)
      002F5A 74 3A            [12] 2496 	mov	a,#0x3a
      002F5C F0               [24] 2497 	movx	@dptr,a
      002F5D 90 04 44         [24] 2498 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e4)
      002F60 74 38            [12] 2499 	mov	a,#0x38
      002F62 F0               [24] 2500 	movx	@dptr,a
      002F63 90 04 45         [24] 2501 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e5)
      002F66 74 36            [12] 2502 	mov	a,#0x36
      002F68 F0               [24] 2503 	movx	@dptr,a
      002F69 90 04 46         [24] 2504 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e6)
      002F6C 74 34            [12] 2505 	mov	a,#0x34
      002F6E F0               [24] 2506 	movx	@dptr,a
      002F6F 90 04 47         [24] 2507 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e7)
      002F72 74 32            [12] 2508 	mov	a,#0x32
      002F74 F0               [24] 2509 	movx	@dptr,a
      002F75 90 04 48         [24] 2510 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e8)
      002F78 74 30            [12] 2511 	mov	a,#0x30
      002F7A F0               [24] 2512 	movx	@dptr,a
      002F7B 90 04 49         [24] 2513 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00e9)
      002F7E 74 2E            [12] 2514 	mov	a,#0x2e
      002F80 F0               [24] 2515 	movx	@dptr,a
      002F81 90 04 4A         [24] 2516 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ea)
      002F84 74 2C            [12] 2517 	mov	a,#0x2c
      002F86 F0               [24] 2518 	movx	@dptr,a
      002F87 90 04 4B         [24] 2519 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00eb)
      002F8A 74 2A            [12] 2520 	mov	a,#0x2a
      002F8C F0               [24] 2521 	movx	@dptr,a
      002F8D 90 04 4C         [24] 2522 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ec)
      002F90 74 28            [12] 2523 	mov	a,#0x28
      002F92 F0               [24] 2524 	movx	@dptr,a
      002F93 90 04 4D         [24] 2525 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ed)
      002F96 74 26            [12] 2526 	mov	a,#0x26
      002F98 F0               [24] 2527 	movx	@dptr,a
      002F99 90 04 4E         [24] 2528 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ee)
      002F9C 74 24            [12] 2529 	mov	a,#0x24
      002F9E F0               [24] 2530 	movx	@dptr,a
      002F9F 90 04 4F         [24] 2531 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ef)
      002FA2 74 22            [12] 2532 	mov	a,#0x22
      002FA4 F0               [24] 2533 	movx	@dptr,a
      002FA5 90 04 50         [24] 2534 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f0)
      002FA8 74 20            [12] 2535 	mov	a,#0x20
      002FAA F0               [24] 2536 	movx	@dptr,a
      002FAB 90 04 51         [24] 2537 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f1)
      002FAE 74 1E            [12] 2538 	mov	a,#0x1e
      002FB0 F0               [24] 2539 	movx	@dptr,a
      002FB1 90 04 52         [24] 2540 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f2)
      002FB4 74 1C            [12] 2541 	mov	a,#0x1c
      002FB6 F0               [24] 2542 	movx	@dptr,a
      002FB7 90 04 53         [24] 2543 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f3)
      002FBA 74 1A            [12] 2544 	mov	a,#0x1a
      002FBC F0               [24] 2545 	movx	@dptr,a
      002FBD 90 04 54         [24] 2546 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f4)
      002FC0 74 18            [12] 2547 	mov	a,#0x18
      002FC2 F0               [24] 2548 	movx	@dptr,a
      002FC3 90 04 55         [24] 2549 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f5)
      002FC6 74 16            [12] 2550 	mov	a,#0x16
      002FC8 F0               [24] 2551 	movx	@dptr,a
      002FC9 90 04 56         [24] 2552 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f6)
      002FCC 74 14            [12] 2553 	mov	a,#0x14
      002FCE F0               [24] 2554 	movx	@dptr,a
      002FCF 90 04 57         [24] 2555 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f7)
      002FD2 74 12            [12] 2556 	mov	a,#0x12
      002FD4 F0               [24] 2557 	movx	@dptr,a
      002FD5 90 04 58         [24] 2558 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f8)
      002FD8 74 10            [12] 2559 	mov	a,#0x10
      002FDA F0               [24] 2560 	movx	@dptr,a
      002FDB 90 04 59         [24] 2561 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00f9)
      002FDE 74 0E            [12] 2562 	mov	a,#0x0e
      002FE0 F0               [24] 2563 	movx	@dptr,a
      002FE1 90 04 5A         [24] 2564 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fa)
      002FE4 74 0C            [12] 2565 	mov	a,#0x0c
      002FE6 F0               [24] 2566 	movx	@dptr,a
      002FE7 90 04 5B         [24] 2567 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fb)
      002FEA 74 0A            [12] 2568 	mov	a,#0x0a
      002FEC F0               [24] 2569 	movx	@dptr,a
      002FED 90 04 5C         [24] 2570 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fc)
      002FF0 74 08            [12] 2571 	mov	a,#0x08
      002FF2 F0               [24] 2572 	movx	@dptr,a
      002FF3 90 04 5D         [24] 2573 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fd)
      002FF6 74 06            [12] 2574 	mov	a,#0x06
      002FF8 F0               [24] 2575 	movx	@dptr,a
      002FF9 90 04 5E         [24] 2576 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00fe)
      002FFC 74 04            [12] 2577 	mov	a,#0x04
      002FFE F0               [24] 2578 	movx	@dptr,a
      002FFF 90 04 5F         [24] 2579 	mov	dptr,#(_dac_update_output_triangular_value_wave_65536_32 + 0x00ff)
      003002 03               [12] 2580 	rr	a
      003003 F0               [24] 2581 	movx	@dptr,a
                                   2582 ;	spi.c:834: __xdata uint8_t static saw_wave[256]={0	,
      003004 90 04 60         [24] 2583 	mov	dptr,#_dac_update_output_saw_wave_65536_32
      003007 E4               [12] 2584 	clr	a
      003008 F0               [24] 2585 	movx	@dptr,a
      003009 90 04 61         [24] 2586 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0001)
      00300C 04               [12] 2587 	inc	a
      00300D F0               [24] 2588 	movx	@dptr,a
      00300E 90 04 62         [24] 2589 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0002)
      003011 04               [12] 2590 	inc	a
      003012 F0               [24] 2591 	movx	@dptr,a
      003013 90 04 63         [24] 2592 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0003)
      003016 04               [12] 2593 	inc	a
      003017 F0               [24] 2594 	movx	@dptr,a
      003018 90 04 64         [24] 2595 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0004)
      00301B 04               [12] 2596 	inc	a
      00301C F0               [24] 2597 	movx	@dptr,a
      00301D 90 04 65         [24] 2598 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0005)
      003020 04               [12] 2599 	inc	a
      003021 F0               [24] 2600 	movx	@dptr,a
      003022 90 04 66         [24] 2601 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0006)
      003025 04               [12] 2602 	inc	a
      003026 F0               [24] 2603 	movx	@dptr,a
      003027 90 04 67         [24] 2604 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0007)
      00302A 04               [12] 2605 	inc	a
      00302B F0               [24] 2606 	movx	@dptr,a
      00302C 90 04 68         [24] 2607 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0008)
      00302F 04               [12] 2608 	inc	a
      003030 F0               [24] 2609 	movx	@dptr,a
      003031 90 04 69         [24] 2610 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0009)
      003034 04               [12] 2611 	inc	a
      003035 F0               [24] 2612 	movx	@dptr,a
      003036 90 04 6A         [24] 2613 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000a)
      003039 04               [12] 2614 	inc	a
      00303A F0               [24] 2615 	movx	@dptr,a
      00303B 90 04 6B         [24] 2616 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000b)
      00303E 04               [12] 2617 	inc	a
      00303F F0               [24] 2618 	movx	@dptr,a
      003040 90 04 6C         [24] 2619 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000c)
      003043 04               [12] 2620 	inc	a
      003044 F0               [24] 2621 	movx	@dptr,a
      003045 90 04 6D         [24] 2622 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000d)
      003048 04               [12] 2623 	inc	a
      003049 F0               [24] 2624 	movx	@dptr,a
      00304A 90 04 6E         [24] 2625 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000e)
      00304D 04               [12] 2626 	inc	a
      00304E F0               [24] 2627 	movx	@dptr,a
      00304F 90 04 6F         [24] 2628 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x000f)
      003052 04               [12] 2629 	inc	a
      003053 F0               [24] 2630 	movx	@dptr,a
      003054 90 04 70         [24] 2631 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0010)
      003057 04               [12] 2632 	inc	a
      003058 F0               [24] 2633 	movx	@dptr,a
      003059 90 04 71         [24] 2634 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0011)
      00305C 04               [12] 2635 	inc	a
      00305D F0               [24] 2636 	movx	@dptr,a
      00305E 90 04 72         [24] 2637 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0012)
      003061 04               [12] 2638 	inc	a
      003062 F0               [24] 2639 	movx	@dptr,a
      003063 90 04 73         [24] 2640 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0013)
      003066 04               [12] 2641 	inc	a
      003067 F0               [24] 2642 	movx	@dptr,a
      003068 90 04 74         [24] 2643 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0014)
      00306B 04               [12] 2644 	inc	a
      00306C F0               [24] 2645 	movx	@dptr,a
      00306D 90 04 75         [24] 2646 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0015)
      003070 04               [12] 2647 	inc	a
      003071 F0               [24] 2648 	movx	@dptr,a
      003072 90 04 76         [24] 2649 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0016)
      003075 04               [12] 2650 	inc	a
      003076 F0               [24] 2651 	movx	@dptr,a
      003077 90 04 77         [24] 2652 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0017)
      00307A 04               [12] 2653 	inc	a
      00307B F0               [24] 2654 	movx	@dptr,a
      00307C 90 04 78         [24] 2655 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0018)
      00307F 04               [12] 2656 	inc	a
      003080 F0               [24] 2657 	movx	@dptr,a
      003081 90 04 79         [24] 2658 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0019)
      003084 04               [12] 2659 	inc	a
      003085 F0               [24] 2660 	movx	@dptr,a
      003086 90 04 7A         [24] 2661 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001a)
      003089 04               [12] 2662 	inc	a
      00308A F0               [24] 2663 	movx	@dptr,a
      00308B 90 04 7B         [24] 2664 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001b)
      00308E 04               [12] 2665 	inc	a
      00308F F0               [24] 2666 	movx	@dptr,a
      003090 90 04 7C         [24] 2667 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001c)
      003093 04               [12] 2668 	inc	a
      003094 F0               [24] 2669 	movx	@dptr,a
      003095 90 04 7D         [24] 2670 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001d)
      003098 04               [12] 2671 	inc	a
      003099 F0               [24] 2672 	movx	@dptr,a
      00309A 90 04 7E         [24] 2673 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001e)
      00309D 04               [12] 2674 	inc	a
      00309E F0               [24] 2675 	movx	@dptr,a
      00309F 90 04 7F         [24] 2676 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x001f)
      0030A2 04               [12] 2677 	inc	a
      0030A3 F0               [24] 2678 	movx	@dptr,a
      0030A4 90 04 80         [24] 2679 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0020)
      0030A7 04               [12] 2680 	inc	a
      0030A8 F0               [24] 2681 	movx	@dptr,a
      0030A9 90 04 81         [24] 2682 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0021)
      0030AC 04               [12] 2683 	inc	a
      0030AD F0               [24] 2684 	movx	@dptr,a
      0030AE 90 04 82         [24] 2685 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0022)
      0030B1 04               [12] 2686 	inc	a
      0030B2 F0               [24] 2687 	movx	@dptr,a
      0030B3 90 04 83         [24] 2688 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0023)
      0030B6 04               [12] 2689 	inc	a
      0030B7 F0               [24] 2690 	movx	@dptr,a
      0030B8 90 04 84         [24] 2691 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0024)
      0030BB 04               [12] 2692 	inc	a
      0030BC F0               [24] 2693 	movx	@dptr,a
      0030BD 90 04 85         [24] 2694 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0025)
      0030C0 04               [12] 2695 	inc	a
      0030C1 F0               [24] 2696 	movx	@dptr,a
      0030C2 90 04 86         [24] 2697 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0026)
      0030C5 04               [12] 2698 	inc	a
      0030C6 F0               [24] 2699 	movx	@dptr,a
      0030C7 90 04 87         [24] 2700 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0027)
      0030CA 04               [12] 2701 	inc	a
      0030CB F0               [24] 2702 	movx	@dptr,a
      0030CC 90 04 88         [24] 2703 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0028)
      0030CF 04               [12] 2704 	inc	a
      0030D0 F0               [24] 2705 	movx	@dptr,a
      0030D1 90 04 89         [24] 2706 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0029)
      0030D4 04               [12] 2707 	inc	a
      0030D5 F0               [24] 2708 	movx	@dptr,a
      0030D6 90 04 8A         [24] 2709 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002a)
      0030D9 04               [12] 2710 	inc	a
      0030DA F0               [24] 2711 	movx	@dptr,a
      0030DB 90 04 8B         [24] 2712 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002b)
      0030DE 04               [12] 2713 	inc	a
      0030DF F0               [24] 2714 	movx	@dptr,a
      0030E0 90 04 8C         [24] 2715 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002c)
      0030E3 04               [12] 2716 	inc	a
      0030E4 F0               [24] 2717 	movx	@dptr,a
      0030E5 90 04 8D         [24] 2718 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002d)
      0030E8 04               [12] 2719 	inc	a
      0030E9 F0               [24] 2720 	movx	@dptr,a
      0030EA 90 04 8E         [24] 2721 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002e)
      0030ED 04               [12] 2722 	inc	a
      0030EE F0               [24] 2723 	movx	@dptr,a
      0030EF 90 04 8F         [24] 2724 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x002f)
      0030F2 04               [12] 2725 	inc	a
      0030F3 F0               [24] 2726 	movx	@dptr,a
      0030F4 90 04 90         [24] 2727 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0030)
      0030F7 04               [12] 2728 	inc	a
      0030F8 F0               [24] 2729 	movx	@dptr,a
      0030F9 90 04 91         [24] 2730 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0031)
      0030FC 04               [12] 2731 	inc	a
      0030FD F0               [24] 2732 	movx	@dptr,a
      0030FE 90 04 92         [24] 2733 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0032)
      003101 04               [12] 2734 	inc	a
      003102 F0               [24] 2735 	movx	@dptr,a
      003103 90 04 93         [24] 2736 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0033)
      003106 04               [12] 2737 	inc	a
      003107 F0               [24] 2738 	movx	@dptr,a
      003108 90 04 94         [24] 2739 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0034)
      00310B 04               [12] 2740 	inc	a
      00310C F0               [24] 2741 	movx	@dptr,a
      00310D 90 04 95         [24] 2742 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0035)
      003110 04               [12] 2743 	inc	a
      003111 F0               [24] 2744 	movx	@dptr,a
      003112 90 04 96         [24] 2745 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0036)
      003115 04               [12] 2746 	inc	a
      003116 F0               [24] 2747 	movx	@dptr,a
      003117 90 04 97         [24] 2748 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0037)
      00311A 04               [12] 2749 	inc	a
      00311B F0               [24] 2750 	movx	@dptr,a
      00311C 90 04 98         [24] 2751 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0038)
      00311F 04               [12] 2752 	inc	a
      003120 F0               [24] 2753 	movx	@dptr,a
      003121 90 04 99         [24] 2754 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0039)
      003124 04               [12] 2755 	inc	a
      003125 F0               [24] 2756 	movx	@dptr,a
      003126 90 04 9A         [24] 2757 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003a)
      003129 04               [12] 2758 	inc	a
      00312A F0               [24] 2759 	movx	@dptr,a
      00312B 90 04 9B         [24] 2760 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003b)
      00312E 04               [12] 2761 	inc	a
      00312F F0               [24] 2762 	movx	@dptr,a
      003130 90 04 9C         [24] 2763 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003c)
      003133 04               [12] 2764 	inc	a
      003134 F0               [24] 2765 	movx	@dptr,a
      003135 90 04 9D         [24] 2766 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003d)
      003138 04               [12] 2767 	inc	a
      003139 F0               [24] 2768 	movx	@dptr,a
      00313A 90 04 9E         [24] 2769 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003e)
      00313D 04               [12] 2770 	inc	a
      00313E F0               [24] 2771 	movx	@dptr,a
      00313F 90 04 9F         [24] 2772 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x003f)
      003142 04               [12] 2773 	inc	a
      003143 F0               [24] 2774 	movx	@dptr,a
      003144 90 04 A0         [24] 2775 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0040)
      003147 04               [12] 2776 	inc	a
      003148 F0               [24] 2777 	movx	@dptr,a
      003149 90 04 A1         [24] 2778 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0041)
      00314C 04               [12] 2779 	inc	a
      00314D F0               [24] 2780 	movx	@dptr,a
      00314E 90 04 A2         [24] 2781 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0042)
      003151 04               [12] 2782 	inc	a
      003152 F0               [24] 2783 	movx	@dptr,a
      003153 90 04 A3         [24] 2784 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0043)
      003156 04               [12] 2785 	inc	a
      003157 F0               [24] 2786 	movx	@dptr,a
      003158 90 04 A4         [24] 2787 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0044)
      00315B 04               [12] 2788 	inc	a
      00315C F0               [24] 2789 	movx	@dptr,a
      00315D 90 04 A5         [24] 2790 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0045)
      003160 04               [12] 2791 	inc	a
      003161 F0               [24] 2792 	movx	@dptr,a
      003162 90 04 A6         [24] 2793 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0046)
      003165 04               [12] 2794 	inc	a
      003166 F0               [24] 2795 	movx	@dptr,a
      003167 90 04 A7         [24] 2796 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0047)
      00316A 04               [12] 2797 	inc	a
      00316B F0               [24] 2798 	movx	@dptr,a
      00316C 90 04 A8         [24] 2799 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0048)
      00316F 04               [12] 2800 	inc	a
      003170 F0               [24] 2801 	movx	@dptr,a
      003171 90 04 A9         [24] 2802 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0049)
      003174 04               [12] 2803 	inc	a
      003175 F0               [24] 2804 	movx	@dptr,a
      003176 90 04 AA         [24] 2805 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004a)
      003179 04               [12] 2806 	inc	a
      00317A F0               [24] 2807 	movx	@dptr,a
      00317B 90 04 AB         [24] 2808 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004b)
      00317E 04               [12] 2809 	inc	a
      00317F F0               [24] 2810 	movx	@dptr,a
      003180 90 04 AC         [24] 2811 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004c)
      003183 04               [12] 2812 	inc	a
      003184 F0               [24] 2813 	movx	@dptr,a
      003185 90 04 AD         [24] 2814 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004d)
      003188 04               [12] 2815 	inc	a
      003189 F0               [24] 2816 	movx	@dptr,a
      00318A 90 04 AE         [24] 2817 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004e)
      00318D 04               [12] 2818 	inc	a
      00318E F0               [24] 2819 	movx	@dptr,a
      00318F 90 04 AF         [24] 2820 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x004f)
      003192 04               [12] 2821 	inc	a
      003193 F0               [24] 2822 	movx	@dptr,a
      003194 90 04 B0         [24] 2823 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0050)
      003197 04               [12] 2824 	inc	a
      003198 F0               [24] 2825 	movx	@dptr,a
      003199 90 04 B1         [24] 2826 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0051)
      00319C 04               [12] 2827 	inc	a
      00319D F0               [24] 2828 	movx	@dptr,a
      00319E 90 04 B2         [24] 2829 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0052)
      0031A1 04               [12] 2830 	inc	a
      0031A2 F0               [24] 2831 	movx	@dptr,a
      0031A3 90 04 B3         [24] 2832 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0053)
      0031A6 04               [12] 2833 	inc	a
      0031A7 F0               [24] 2834 	movx	@dptr,a
      0031A8 90 04 B4         [24] 2835 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0054)
      0031AB 04               [12] 2836 	inc	a
      0031AC F0               [24] 2837 	movx	@dptr,a
      0031AD 90 04 B5         [24] 2838 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0055)
      0031B0 04               [12] 2839 	inc	a
      0031B1 F0               [24] 2840 	movx	@dptr,a
      0031B2 90 04 B6         [24] 2841 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0056)
      0031B5 04               [12] 2842 	inc	a
      0031B6 F0               [24] 2843 	movx	@dptr,a
      0031B7 90 04 B7         [24] 2844 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0057)
      0031BA 04               [12] 2845 	inc	a
      0031BB F0               [24] 2846 	movx	@dptr,a
      0031BC 90 04 B8         [24] 2847 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0058)
      0031BF 04               [12] 2848 	inc	a
      0031C0 F0               [24] 2849 	movx	@dptr,a
      0031C1 90 04 B9         [24] 2850 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0059)
      0031C4 04               [12] 2851 	inc	a
      0031C5 F0               [24] 2852 	movx	@dptr,a
      0031C6 90 04 BA         [24] 2853 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005a)
      0031C9 04               [12] 2854 	inc	a
      0031CA F0               [24] 2855 	movx	@dptr,a
      0031CB 90 04 BB         [24] 2856 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005b)
      0031CE 04               [12] 2857 	inc	a
      0031CF F0               [24] 2858 	movx	@dptr,a
      0031D0 90 04 BC         [24] 2859 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005c)
      0031D3 04               [12] 2860 	inc	a
      0031D4 F0               [24] 2861 	movx	@dptr,a
      0031D5 90 04 BD         [24] 2862 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005d)
      0031D8 04               [12] 2863 	inc	a
      0031D9 F0               [24] 2864 	movx	@dptr,a
      0031DA 90 04 BE         [24] 2865 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005e)
      0031DD 04               [12] 2866 	inc	a
      0031DE F0               [24] 2867 	movx	@dptr,a
      0031DF 90 04 BF         [24] 2868 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x005f)
      0031E2 04               [12] 2869 	inc	a
      0031E3 F0               [24] 2870 	movx	@dptr,a
      0031E4 90 04 C0         [24] 2871 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0060)
      0031E7 04               [12] 2872 	inc	a
      0031E8 F0               [24] 2873 	movx	@dptr,a
      0031E9 90 04 C1         [24] 2874 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0061)
      0031EC 04               [12] 2875 	inc	a
      0031ED F0               [24] 2876 	movx	@dptr,a
      0031EE 90 04 C2         [24] 2877 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0062)
      0031F1 04               [12] 2878 	inc	a
      0031F2 F0               [24] 2879 	movx	@dptr,a
      0031F3 90 04 C3         [24] 2880 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0063)
      0031F6 04               [12] 2881 	inc	a
      0031F7 F0               [24] 2882 	movx	@dptr,a
      0031F8 90 04 C4         [24] 2883 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0064)
      0031FB 04               [12] 2884 	inc	a
      0031FC F0               [24] 2885 	movx	@dptr,a
      0031FD 90 04 C5         [24] 2886 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0065)
      003200 04               [12] 2887 	inc	a
      003201 F0               [24] 2888 	movx	@dptr,a
      003202 90 04 C6         [24] 2889 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0066)
      003205 04               [12] 2890 	inc	a
      003206 F0               [24] 2891 	movx	@dptr,a
      003207 90 04 C7         [24] 2892 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0067)
      00320A 04               [12] 2893 	inc	a
      00320B F0               [24] 2894 	movx	@dptr,a
      00320C 90 04 C8         [24] 2895 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0068)
      00320F 04               [12] 2896 	inc	a
      003210 F0               [24] 2897 	movx	@dptr,a
      003211 90 04 C9         [24] 2898 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0069)
      003214 04               [12] 2899 	inc	a
      003215 F0               [24] 2900 	movx	@dptr,a
      003216 90 04 CA         [24] 2901 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006a)
      003219 04               [12] 2902 	inc	a
      00321A F0               [24] 2903 	movx	@dptr,a
      00321B 90 04 CB         [24] 2904 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006b)
      00321E 04               [12] 2905 	inc	a
      00321F F0               [24] 2906 	movx	@dptr,a
      003220 90 04 CC         [24] 2907 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006c)
      003223 04               [12] 2908 	inc	a
      003224 F0               [24] 2909 	movx	@dptr,a
      003225 90 04 CD         [24] 2910 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006d)
      003228 04               [12] 2911 	inc	a
      003229 F0               [24] 2912 	movx	@dptr,a
      00322A 90 04 CE         [24] 2913 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006e)
      00322D 04               [12] 2914 	inc	a
      00322E F0               [24] 2915 	movx	@dptr,a
      00322F 90 04 CF         [24] 2916 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x006f)
      003232 04               [12] 2917 	inc	a
      003233 F0               [24] 2918 	movx	@dptr,a
      003234 90 04 D0         [24] 2919 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0070)
      003237 04               [12] 2920 	inc	a
      003238 F0               [24] 2921 	movx	@dptr,a
      003239 90 04 D1         [24] 2922 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0071)
      00323C 04               [12] 2923 	inc	a
      00323D F0               [24] 2924 	movx	@dptr,a
      00323E 90 04 D2         [24] 2925 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0072)
      003241 04               [12] 2926 	inc	a
      003242 F0               [24] 2927 	movx	@dptr,a
      003243 90 04 D3         [24] 2928 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0073)
      003246 04               [12] 2929 	inc	a
      003247 F0               [24] 2930 	movx	@dptr,a
      003248 90 04 D4         [24] 2931 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0074)
      00324B 04               [12] 2932 	inc	a
      00324C F0               [24] 2933 	movx	@dptr,a
      00324D 90 04 D5         [24] 2934 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0075)
      003250 04               [12] 2935 	inc	a
      003251 F0               [24] 2936 	movx	@dptr,a
      003252 90 04 D6         [24] 2937 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0076)
      003255 04               [12] 2938 	inc	a
      003256 F0               [24] 2939 	movx	@dptr,a
      003257 90 04 D7         [24] 2940 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0077)
      00325A 04               [12] 2941 	inc	a
      00325B F0               [24] 2942 	movx	@dptr,a
      00325C 90 04 D8         [24] 2943 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0078)
      00325F 04               [12] 2944 	inc	a
      003260 F0               [24] 2945 	movx	@dptr,a
      003261 90 04 D9         [24] 2946 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0079)
      003264 04               [12] 2947 	inc	a
      003265 F0               [24] 2948 	movx	@dptr,a
      003266 90 04 DA         [24] 2949 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007a)
      003269 04               [12] 2950 	inc	a
      00326A F0               [24] 2951 	movx	@dptr,a
      00326B 90 04 DB         [24] 2952 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007b)
      00326E 04               [12] 2953 	inc	a
      00326F F0               [24] 2954 	movx	@dptr,a
      003270 90 04 DC         [24] 2955 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007c)
      003273 04               [12] 2956 	inc	a
      003274 F0               [24] 2957 	movx	@dptr,a
      003275 90 04 DD         [24] 2958 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007d)
      003278 04               [12] 2959 	inc	a
      003279 F0               [24] 2960 	movx	@dptr,a
      00327A 90 04 DE         [24] 2961 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007e)
      00327D 04               [12] 2962 	inc	a
      00327E F0               [24] 2963 	movx	@dptr,a
      00327F 90 04 DF         [24] 2964 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x007f)
      003282 04               [12] 2965 	inc	a
      003283 F0               [24] 2966 	movx	@dptr,a
      003284 90 04 E0         [24] 2967 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0080)
      003287 04               [12] 2968 	inc	a
      003288 F0               [24] 2969 	movx	@dptr,a
      003289 90 04 E1         [24] 2970 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0081)
      00328C 04               [12] 2971 	inc	a
      00328D F0               [24] 2972 	movx	@dptr,a
      00328E 90 04 E2         [24] 2973 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0082)
      003291 04               [12] 2974 	inc	a
      003292 F0               [24] 2975 	movx	@dptr,a
      003293 90 04 E3         [24] 2976 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0083)
      003296 04               [12] 2977 	inc	a
      003297 F0               [24] 2978 	movx	@dptr,a
      003298 90 04 E4         [24] 2979 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0084)
      00329B 04               [12] 2980 	inc	a
      00329C F0               [24] 2981 	movx	@dptr,a
      00329D 90 04 E5         [24] 2982 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0085)
      0032A0 04               [12] 2983 	inc	a
      0032A1 F0               [24] 2984 	movx	@dptr,a
      0032A2 90 04 E6         [24] 2985 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0086)
      0032A5 04               [12] 2986 	inc	a
      0032A6 F0               [24] 2987 	movx	@dptr,a
      0032A7 90 04 E7         [24] 2988 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0087)
      0032AA 04               [12] 2989 	inc	a
      0032AB F0               [24] 2990 	movx	@dptr,a
      0032AC 90 04 E8         [24] 2991 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0088)
      0032AF 04               [12] 2992 	inc	a
      0032B0 F0               [24] 2993 	movx	@dptr,a
      0032B1 90 04 E9         [24] 2994 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0089)
      0032B4 04               [12] 2995 	inc	a
      0032B5 F0               [24] 2996 	movx	@dptr,a
      0032B6 90 04 EA         [24] 2997 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008a)
      0032B9 04               [12] 2998 	inc	a
      0032BA F0               [24] 2999 	movx	@dptr,a
      0032BB 90 04 EB         [24] 3000 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008b)
      0032BE 04               [12] 3001 	inc	a
      0032BF F0               [24] 3002 	movx	@dptr,a
      0032C0 90 04 EC         [24] 3003 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008c)
      0032C3 04               [12] 3004 	inc	a
      0032C4 F0               [24] 3005 	movx	@dptr,a
      0032C5 90 04 ED         [24] 3006 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008d)
      0032C8 04               [12] 3007 	inc	a
      0032C9 F0               [24] 3008 	movx	@dptr,a
      0032CA 90 04 EE         [24] 3009 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008e)
      0032CD 04               [12] 3010 	inc	a
      0032CE F0               [24] 3011 	movx	@dptr,a
      0032CF 90 04 EF         [24] 3012 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x008f)
      0032D2 04               [12] 3013 	inc	a
      0032D3 F0               [24] 3014 	movx	@dptr,a
      0032D4 90 04 F0         [24] 3015 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0090)
      0032D7 04               [12] 3016 	inc	a
      0032D8 F0               [24] 3017 	movx	@dptr,a
      0032D9 90 04 F1         [24] 3018 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0091)
      0032DC 04               [12] 3019 	inc	a
      0032DD F0               [24] 3020 	movx	@dptr,a
      0032DE 90 04 F2         [24] 3021 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0092)
      0032E1 04               [12] 3022 	inc	a
      0032E2 F0               [24] 3023 	movx	@dptr,a
      0032E3 90 04 F3         [24] 3024 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0093)
      0032E6 04               [12] 3025 	inc	a
      0032E7 F0               [24] 3026 	movx	@dptr,a
      0032E8 90 04 F4         [24] 3027 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0094)
      0032EB 04               [12] 3028 	inc	a
      0032EC F0               [24] 3029 	movx	@dptr,a
      0032ED 90 04 F5         [24] 3030 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0095)
      0032F0 04               [12] 3031 	inc	a
      0032F1 F0               [24] 3032 	movx	@dptr,a
      0032F2 90 04 F6         [24] 3033 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0096)
      0032F5 04               [12] 3034 	inc	a
      0032F6 F0               [24] 3035 	movx	@dptr,a
      0032F7 90 04 F7         [24] 3036 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0097)
      0032FA 04               [12] 3037 	inc	a
      0032FB F0               [24] 3038 	movx	@dptr,a
      0032FC 90 04 F8         [24] 3039 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0098)
      0032FF 04               [12] 3040 	inc	a
      003300 F0               [24] 3041 	movx	@dptr,a
      003301 90 04 F9         [24] 3042 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x0099)
      003304 04               [12] 3043 	inc	a
      003305 F0               [24] 3044 	movx	@dptr,a
      003306 90 04 FA         [24] 3045 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009a)
      003309 04               [12] 3046 	inc	a
      00330A F0               [24] 3047 	movx	@dptr,a
      00330B 90 04 FB         [24] 3048 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009b)
      00330E 04               [12] 3049 	inc	a
      00330F F0               [24] 3050 	movx	@dptr,a
      003310 90 04 FC         [24] 3051 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009c)
      003313 04               [12] 3052 	inc	a
      003314 F0               [24] 3053 	movx	@dptr,a
      003315 90 04 FD         [24] 3054 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009d)
      003318 04               [12] 3055 	inc	a
      003319 F0               [24] 3056 	movx	@dptr,a
      00331A 90 04 FE         [24] 3057 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009e)
      00331D 04               [12] 3058 	inc	a
      00331E F0               [24] 3059 	movx	@dptr,a
      00331F 90 04 FF         [24] 3060 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x009f)
      003322 04               [12] 3061 	inc	a
      003323 F0               [24] 3062 	movx	@dptr,a
      003324 90 05 00         [24] 3063 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a0)
      003327 04               [12] 3064 	inc	a
      003328 F0               [24] 3065 	movx	@dptr,a
      003329 90 05 01         [24] 3066 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a1)
      00332C 04               [12] 3067 	inc	a
      00332D F0               [24] 3068 	movx	@dptr,a
      00332E 90 05 02         [24] 3069 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a2)
      003331 04               [12] 3070 	inc	a
      003332 F0               [24] 3071 	movx	@dptr,a
      003333 90 05 03         [24] 3072 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a3)
      003336 04               [12] 3073 	inc	a
      003337 F0               [24] 3074 	movx	@dptr,a
      003338 90 05 04         [24] 3075 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a4)
      00333B 04               [12] 3076 	inc	a
      00333C F0               [24] 3077 	movx	@dptr,a
      00333D 90 05 05         [24] 3078 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a5)
      003340 04               [12] 3079 	inc	a
      003341 F0               [24] 3080 	movx	@dptr,a
      003342 90 05 06         [24] 3081 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a6)
      003345 04               [12] 3082 	inc	a
      003346 F0               [24] 3083 	movx	@dptr,a
      003347 90 05 07         [24] 3084 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a7)
      00334A 04               [12] 3085 	inc	a
      00334B F0               [24] 3086 	movx	@dptr,a
      00334C 90 05 08         [24] 3087 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a8)
      00334F 04               [12] 3088 	inc	a
      003350 F0               [24] 3089 	movx	@dptr,a
      003351 90 05 09         [24] 3090 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00a9)
      003354 04               [12] 3091 	inc	a
      003355 F0               [24] 3092 	movx	@dptr,a
      003356 90 05 0A         [24] 3093 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00aa)
      003359 04               [12] 3094 	inc	a
      00335A F0               [24] 3095 	movx	@dptr,a
      00335B 90 05 0B         [24] 3096 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ab)
      00335E 04               [12] 3097 	inc	a
      00335F F0               [24] 3098 	movx	@dptr,a
      003360 90 05 0C         [24] 3099 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ac)
      003363 04               [12] 3100 	inc	a
      003364 F0               [24] 3101 	movx	@dptr,a
      003365 90 05 0D         [24] 3102 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ad)
      003368 04               [12] 3103 	inc	a
      003369 F0               [24] 3104 	movx	@dptr,a
      00336A 90 05 0E         [24] 3105 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ae)
      00336D 04               [12] 3106 	inc	a
      00336E F0               [24] 3107 	movx	@dptr,a
      00336F 90 05 0F         [24] 3108 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00af)
      003372 04               [12] 3109 	inc	a
      003373 F0               [24] 3110 	movx	@dptr,a
      003374 90 05 10         [24] 3111 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b0)
      003377 04               [12] 3112 	inc	a
      003378 F0               [24] 3113 	movx	@dptr,a
      003379 90 05 11         [24] 3114 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b1)
      00337C 04               [12] 3115 	inc	a
      00337D F0               [24] 3116 	movx	@dptr,a
      00337E 90 05 12         [24] 3117 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b2)
      003381 04               [12] 3118 	inc	a
      003382 F0               [24] 3119 	movx	@dptr,a
      003383 90 05 13         [24] 3120 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b3)
      003386 04               [12] 3121 	inc	a
      003387 F0               [24] 3122 	movx	@dptr,a
      003388 90 05 14         [24] 3123 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b4)
      00338B 04               [12] 3124 	inc	a
      00338C F0               [24] 3125 	movx	@dptr,a
      00338D 90 05 15         [24] 3126 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b5)
      003390 04               [12] 3127 	inc	a
      003391 F0               [24] 3128 	movx	@dptr,a
      003392 90 05 16         [24] 3129 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b6)
      003395 04               [12] 3130 	inc	a
      003396 F0               [24] 3131 	movx	@dptr,a
      003397 90 05 17         [24] 3132 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b7)
      00339A 04               [12] 3133 	inc	a
      00339B F0               [24] 3134 	movx	@dptr,a
      00339C 90 05 18         [24] 3135 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b8)
      00339F 04               [12] 3136 	inc	a
      0033A0 F0               [24] 3137 	movx	@dptr,a
      0033A1 90 05 19         [24] 3138 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00b9)
      0033A4 04               [12] 3139 	inc	a
      0033A5 F0               [24] 3140 	movx	@dptr,a
      0033A6 90 05 1A         [24] 3141 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ba)
      0033A9 04               [12] 3142 	inc	a
      0033AA F0               [24] 3143 	movx	@dptr,a
      0033AB 90 05 1B         [24] 3144 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00bb)
      0033AE 04               [12] 3145 	inc	a
      0033AF F0               [24] 3146 	movx	@dptr,a
      0033B0 90 05 1C         [24] 3147 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00bc)
      0033B3 04               [12] 3148 	inc	a
      0033B4 F0               [24] 3149 	movx	@dptr,a
      0033B5 90 05 1D         [24] 3150 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00bd)
      0033B8 04               [12] 3151 	inc	a
      0033B9 F0               [24] 3152 	movx	@dptr,a
      0033BA 90 05 1E         [24] 3153 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00be)
      0033BD 04               [12] 3154 	inc	a
      0033BE F0               [24] 3155 	movx	@dptr,a
      0033BF 90 05 1F         [24] 3156 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00bf)
      0033C2 04               [12] 3157 	inc	a
      0033C3 F0               [24] 3158 	movx	@dptr,a
      0033C4 90 05 20         [24] 3159 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c0)
      0033C7 04               [12] 3160 	inc	a
      0033C8 F0               [24] 3161 	movx	@dptr,a
      0033C9 90 05 21         [24] 3162 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c1)
      0033CC 04               [12] 3163 	inc	a
      0033CD F0               [24] 3164 	movx	@dptr,a
      0033CE 90 05 22         [24] 3165 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c2)
      0033D1 04               [12] 3166 	inc	a
      0033D2 F0               [24] 3167 	movx	@dptr,a
      0033D3 90 05 23         [24] 3168 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c3)
      0033D6 04               [12] 3169 	inc	a
      0033D7 F0               [24] 3170 	movx	@dptr,a
      0033D8 90 05 24         [24] 3171 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c4)
      0033DB 04               [12] 3172 	inc	a
      0033DC F0               [24] 3173 	movx	@dptr,a
      0033DD 90 05 25         [24] 3174 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c5)
      0033E0 04               [12] 3175 	inc	a
      0033E1 F0               [24] 3176 	movx	@dptr,a
      0033E2 90 05 26         [24] 3177 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c6)
      0033E5 04               [12] 3178 	inc	a
      0033E6 F0               [24] 3179 	movx	@dptr,a
      0033E7 90 05 27         [24] 3180 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c7)
      0033EA 04               [12] 3181 	inc	a
      0033EB F0               [24] 3182 	movx	@dptr,a
      0033EC 90 05 28         [24] 3183 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c8)
      0033EF 04               [12] 3184 	inc	a
      0033F0 F0               [24] 3185 	movx	@dptr,a
      0033F1 90 05 29         [24] 3186 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00c9)
      0033F4 04               [12] 3187 	inc	a
      0033F5 F0               [24] 3188 	movx	@dptr,a
      0033F6 90 05 2A         [24] 3189 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ca)
      0033F9 04               [12] 3190 	inc	a
      0033FA F0               [24] 3191 	movx	@dptr,a
      0033FB 90 05 2B         [24] 3192 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00cb)
      0033FE 04               [12] 3193 	inc	a
      0033FF F0               [24] 3194 	movx	@dptr,a
      003400 90 05 2C         [24] 3195 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00cc)
      003403 04               [12] 3196 	inc	a
      003404 F0               [24] 3197 	movx	@dptr,a
      003405 90 05 2D         [24] 3198 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00cd)
      003408 04               [12] 3199 	inc	a
      003409 F0               [24] 3200 	movx	@dptr,a
      00340A 90 05 2E         [24] 3201 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ce)
      00340D 04               [12] 3202 	inc	a
      00340E F0               [24] 3203 	movx	@dptr,a
      00340F 90 05 2F         [24] 3204 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00cf)
      003412 04               [12] 3205 	inc	a
      003413 F0               [24] 3206 	movx	@dptr,a
      003414 90 05 30         [24] 3207 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d0)
      003417 04               [12] 3208 	inc	a
      003418 F0               [24] 3209 	movx	@dptr,a
      003419 90 05 31         [24] 3210 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d1)
      00341C 04               [12] 3211 	inc	a
      00341D F0               [24] 3212 	movx	@dptr,a
      00341E 90 05 32         [24] 3213 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d2)
      003421 04               [12] 3214 	inc	a
      003422 F0               [24] 3215 	movx	@dptr,a
      003423 90 05 33         [24] 3216 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d3)
      003426 04               [12] 3217 	inc	a
      003427 F0               [24] 3218 	movx	@dptr,a
      003428 90 05 34         [24] 3219 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d4)
      00342B 04               [12] 3220 	inc	a
      00342C F0               [24] 3221 	movx	@dptr,a
      00342D 90 05 35         [24] 3222 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d5)
      003430 04               [12] 3223 	inc	a
      003431 F0               [24] 3224 	movx	@dptr,a
      003432 90 05 36         [24] 3225 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d6)
      003435 04               [12] 3226 	inc	a
      003436 F0               [24] 3227 	movx	@dptr,a
      003437 90 05 37         [24] 3228 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d7)
      00343A 04               [12] 3229 	inc	a
      00343B F0               [24] 3230 	movx	@dptr,a
      00343C 90 05 38         [24] 3231 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d8)
      00343F 04               [12] 3232 	inc	a
      003440 F0               [24] 3233 	movx	@dptr,a
      003441 90 05 39         [24] 3234 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00d9)
      003444 04               [12] 3235 	inc	a
      003445 F0               [24] 3236 	movx	@dptr,a
      003446 90 05 3A         [24] 3237 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00da)
      003449 04               [12] 3238 	inc	a
      00344A F0               [24] 3239 	movx	@dptr,a
      00344B 90 05 3B         [24] 3240 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00db)
      00344E 04               [12] 3241 	inc	a
      00344F F0               [24] 3242 	movx	@dptr,a
      003450 90 05 3C         [24] 3243 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00dc)
      003453 04               [12] 3244 	inc	a
      003454 F0               [24] 3245 	movx	@dptr,a
      003455 90 05 3D         [24] 3246 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00dd)
      003458 04               [12] 3247 	inc	a
      003459 F0               [24] 3248 	movx	@dptr,a
      00345A 90 05 3E         [24] 3249 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00de)
      00345D 04               [12] 3250 	inc	a
      00345E F0               [24] 3251 	movx	@dptr,a
      00345F 90 05 3F         [24] 3252 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00df)
      003462 04               [12] 3253 	inc	a
      003463 F0               [24] 3254 	movx	@dptr,a
      003464 90 05 40         [24] 3255 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e0)
      003467 04               [12] 3256 	inc	a
      003468 F0               [24] 3257 	movx	@dptr,a
      003469 90 05 41         [24] 3258 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e1)
      00346C 04               [12] 3259 	inc	a
      00346D F0               [24] 3260 	movx	@dptr,a
      00346E 90 05 42         [24] 3261 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e2)
      003471 04               [12] 3262 	inc	a
      003472 F0               [24] 3263 	movx	@dptr,a
      003473 90 05 43         [24] 3264 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e3)
      003476 04               [12] 3265 	inc	a
      003477 F0               [24] 3266 	movx	@dptr,a
      003478 90 05 44         [24] 3267 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e4)
      00347B 04               [12] 3268 	inc	a
      00347C F0               [24] 3269 	movx	@dptr,a
      00347D 90 05 45         [24] 3270 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e5)
      003480 04               [12] 3271 	inc	a
      003481 F0               [24] 3272 	movx	@dptr,a
      003482 90 05 46         [24] 3273 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e6)
      003485 04               [12] 3274 	inc	a
      003486 F0               [24] 3275 	movx	@dptr,a
      003487 90 05 47         [24] 3276 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e7)
      00348A 04               [12] 3277 	inc	a
      00348B F0               [24] 3278 	movx	@dptr,a
      00348C 90 05 48         [24] 3279 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e8)
      00348F 04               [12] 3280 	inc	a
      003490 F0               [24] 3281 	movx	@dptr,a
      003491 90 05 49         [24] 3282 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00e9)
      003494 04               [12] 3283 	inc	a
      003495 F0               [24] 3284 	movx	@dptr,a
      003496 90 05 4A         [24] 3285 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ea)
      003499 04               [12] 3286 	inc	a
      00349A F0               [24] 3287 	movx	@dptr,a
      00349B 90 05 4B         [24] 3288 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00eb)
      00349E 04               [12] 3289 	inc	a
      00349F F0               [24] 3290 	movx	@dptr,a
      0034A0 90 05 4C         [24] 3291 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ec)
      0034A3 04               [12] 3292 	inc	a
      0034A4 F0               [24] 3293 	movx	@dptr,a
      0034A5 90 05 4D         [24] 3294 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ed)
      0034A8 04               [12] 3295 	inc	a
      0034A9 F0               [24] 3296 	movx	@dptr,a
      0034AA 90 05 4E         [24] 3297 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ee)
      0034AD 04               [12] 3298 	inc	a
      0034AE F0               [24] 3299 	movx	@dptr,a
      0034AF 90 05 4F         [24] 3300 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ef)
      0034B2 04               [12] 3301 	inc	a
      0034B3 F0               [24] 3302 	movx	@dptr,a
      0034B4 90 05 50         [24] 3303 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f0)
      0034B7 04               [12] 3304 	inc	a
      0034B8 F0               [24] 3305 	movx	@dptr,a
      0034B9 90 05 51         [24] 3306 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f1)
      0034BC 04               [12] 3307 	inc	a
      0034BD F0               [24] 3308 	movx	@dptr,a
      0034BE 90 05 52         [24] 3309 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f2)
      0034C1 04               [12] 3310 	inc	a
      0034C2 F0               [24] 3311 	movx	@dptr,a
      0034C3 90 05 53         [24] 3312 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f3)
      0034C6 04               [12] 3313 	inc	a
      0034C7 F0               [24] 3314 	movx	@dptr,a
      0034C8 90 05 54         [24] 3315 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f4)
      0034CB 04               [12] 3316 	inc	a
      0034CC F0               [24] 3317 	movx	@dptr,a
      0034CD 90 05 55         [24] 3318 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f5)
      0034D0 04               [12] 3319 	inc	a
      0034D1 F0               [24] 3320 	movx	@dptr,a
      0034D2 90 05 56         [24] 3321 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f6)
      0034D5 04               [12] 3322 	inc	a
      0034D6 F0               [24] 3323 	movx	@dptr,a
      0034D7 90 05 57         [24] 3324 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f7)
      0034DA 04               [12] 3325 	inc	a
      0034DB F0               [24] 3326 	movx	@dptr,a
      0034DC 90 05 58         [24] 3327 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f8)
      0034DF 04               [12] 3328 	inc	a
      0034E0 F0               [24] 3329 	movx	@dptr,a
      0034E1 90 05 59         [24] 3330 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00f9)
      0034E4 04               [12] 3331 	inc	a
      0034E5 F0               [24] 3332 	movx	@dptr,a
      0034E6 90 05 5A         [24] 3333 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fa)
      0034E9 04               [12] 3334 	inc	a
      0034EA F0               [24] 3335 	movx	@dptr,a
      0034EB 90 05 5B         [24] 3336 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fb)
      0034EE 04               [12] 3337 	inc	a
      0034EF F0               [24] 3338 	movx	@dptr,a
      0034F0 90 05 5C         [24] 3339 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fc)
      0034F3 04               [12] 3340 	inc	a
      0034F4 F0               [24] 3341 	movx	@dptr,a
      0034F5 90 05 5D         [24] 3342 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fd)
      0034F8 04               [12] 3343 	inc	a
      0034F9 F0               [24] 3344 	movx	@dptr,a
      0034FA 90 05 5E         [24] 3345 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00fe)
      0034FD 04               [12] 3346 	inc	a
      0034FE F0               [24] 3347 	movx	@dptr,a
      0034FF 90 05 5F         [24] 3348 	mov	dptr,#(_dac_update_output_saw_wave_65536_32 + 0x00ff)
      003502 04               [12] 3349 	inc	a
      003503 F0               [24] 3350 	movx	@dptr,a
                                   3351 ;--------------------------------------------------------
                                   3352 ; Home
                                   3353 ;--------------------------------------------------------
                                   3354 	.area HOME    (CODE)
                                   3355 	.area HOME    (CODE)
                                   3356 ;--------------------------------------------------------
                                   3357 ; code
                                   3358 ;--------------------------------------------------------
                                   3359 	.area CSEG    (CODE)
                                   3360 ;------------------------------------------------------------
                                   3361 ;Allocation info for local variables in function 'spi_clock_tick'
                                   3362 ;------------------------------------------------------------
                                   3363 ;	spi.c:16: void spi_clock_tick(void)
                                   3364 ;	-----------------------------------------
                                   3365 ;	 function spi_clock_tick
                                   3366 ;	-----------------------------------------
      003DEE                       3367 _spi_clock_tick:
                           000007  3368 	ar7 = 0x07
                           000006  3369 	ar6 = 0x06
                           000005  3370 	ar5 = 0x05
                           000004  3371 	ar4 = 0x04
                           000003  3372 	ar3 = 0x03
                           000002  3373 	ar2 = 0x02
                           000001  3374 	ar1 = 0x01
                           000000  3375 	ar0 = 0x00
                                   3376 ;	spi.c:18: sck = 1;
                                   3377 ;	assignBit
      003DEE D2 96            [12] 3378 	setb	_P1_6
                                   3379 ;	spi.c:19: sck = 0;
                                   3380 ;	assignBit
      003DF0 C2 96            [12] 3381 	clr	_P1_6
                                   3382 ;	spi.c:20: return;
                                   3383 ;	spi.c:21: }
      003DF2 22               [24] 3384 	ret
                                   3385 ;------------------------------------------------------------
                                   3386 ;Allocation info for local variables in function 'spi_write_word'
                                   3387 ;------------------------------------------------------------
                                   3388 ;data_word                 Allocated with name '_spi_write_word_data_word_65536_25'
                                   3389 ;i                         Allocated with name '_spi_write_word_i_65536_26'
                                   3390 ;------------------------------------------------------------
                                   3391 ;	spi.c:28: void spi_write_word(__xdata uint16_t data_word)
                                   3392 ;	-----------------------------------------
                                   3393 ;	 function spi_write_word
                                   3394 ;	-----------------------------------------
      003DF3                       3395 _spi_write_word:
      003DF3 AF 83            [24] 3396 	mov	r7,dph
      003DF5 E5 82            [12] 3397 	mov	a,dpl
      003DF7 90 01 5C         [24] 3398 	mov	dptr,#_spi_write_word_data_word_65536_25
      003DFA F0               [24] 3399 	movx	@dptr,a
      003DFB EF               [12] 3400 	mov	a,r7
      003DFC A3               [24] 3401 	inc	dptr
      003DFD F0               [24] 3402 	movx	@dptr,a
                                   3403 ;	spi.c:31: sck = 0;
                                   3404 ;	assignBit
      003DFE C2 96            [12] 3405 	clr	_P1_6
                                   3406 ;	spi.c:32: ldac_bar = 1;
                                   3407 ;	assignBit
      003E00 D2 92            [12] 3408 	setb	_P1_2
                                   3409 ;	spi.c:33: cs_bar = 0;
                                   3410 ;	assignBit
      003E02 C2 90            [12] 3411 	clr	_P1_0
                                   3412 ;	spi.c:34: for(i=0;i<16;i++)
      003E04 7F 00            [12] 3413 	mov	r7,#0x00
      003E06                       3414 00105$:
                                   3415 ;	spi.c:36: if(data_word & spi_MSB_mask)
      003E06 90 01 5C         [24] 3416 	mov	dptr,#_spi_write_word_data_word_65536_25
      003E09 E0               [24] 3417 	movx	a,@dptr
      003E0A A3               [24] 3418 	inc	dptr
      003E0B E0               [24] 3419 	movx	a,@dptr
      003E0C 30 E7 04         [24] 3420 	jnb	acc.7,00102$
                                   3421 ;	spi.c:38: sdi = 1;
                                   3422 ;	assignBit
      003E0F D2 97            [12] 3423 	setb	_P1_7
      003E11 80 02            [24] 3424 	sjmp	00103$
      003E13                       3425 00102$:
                                   3426 ;	spi.c:42: sdi = 0;
                                   3427 ;	assignBit
      003E13 C2 97            [12] 3428 	clr	_P1_7
      003E15                       3429 00103$:
                                   3430 ;	spi.c:44: spi_clock_tick();
      003E15 C0 07            [24] 3431 	push	ar7
      003E17 12 3D EE         [24] 3432 	lcall	_spi_clock_tick
      003E1A D0 07            [24] 3433 	pop	ar7
                                   3434 ;	spi.c:45: data_word = data_word<<1;
      003E1C 90 01 5C         [24] 3435 	mov	dptr,#_spi_write_word_data_word_65536_25
      003E1F E0               [24] 3436 	movx	a,@dptr
      003E20 FD               [12] 3437 	mov	r5,a
      003E21 A3               [24] 3438 	inc	dptr
      003E22 E0               [24] 3439 	movx	a,@dptr
      003E23 FE               [12] 3440 	mov	r6,a
      003E24 ED               [12] 3441 	mov	a,r5
      003E25 2D               [12] 3442 	add	a,r5
      003E26 FD               [12] 3443 	mov	r5,a
      003E27 EE               [12] 3444 	mov	a,r6
      003E28 33               [12] 3445 	rlc	a
      003E29 FE               [12] 3446 	mov	r6,a
      003E2A 90 01 5C         [24] 3447 	mov	dptr,#_spi_write_word_data_word_65536_25
      003E2D ED               [12] 3448 	mov	a,r5
      003E2E F0               [24] 3449 	movx	@dptr,a
      003E2F EE               [12] 3450 	mov	a,r6
      003E30 A3               [24] 3451 	inc	dptr
      003E31 F0               [24] 3452 	movx	@dptr,a
                                   3453 ;	spi.c:34: for(i=0;i<16;i++)
      003E32 0F               [12] 3454 	inc	r7
      003E33 BF 10 00         [24] 3455 	cjne	r7,#0x10,00123$
      003E36                       3456 00123$:
      003E36 40 CE            [24] 3457 	jc	00105$
                                   3458 ;	spi.c:47: cs_bar = 1;
                                   3459 ;	assignBit
      003E38 D2 90            [12] 3460 	setb	_P1_0
                                   3461 ;	spi.c:48: ldac_bar =0;
                                   3462 ;	assignBit
      003E3A C2 92            [12] 3463 	clr	_P1_2
                                   3464 ;	spi.c:49: sck = 0;
                                   3465 ;	assignBit
      003E3C C2 96            [12] 3466 	clr	_P1_6
                                   3467 ;	spi.c:50: return;
                                   3468 ;	spi.c:51: }
      003E3E 22               [24] 3469 	ret
                                   3470 ;------------------------------------------------------------
                                   3471 ;Allocation info for local variables in function 'dac_update_output'
                                   3472 ;------------------------------------------------------------
                                   3473 ;counter                   Allocated with name '_dac_update_output_counter_65536_32'
                                   3474 ;sine_wave                 Allocated with name '_dac_update_output_sine_wave_65536_32'
                                   3475 ;square_wave               Allocated with name '_dac_update_output_square_wave_65536_32'
                                   3476 ;triangular_value_wave     Allocated with name '_dac_update_output_triangular_value_wave_65536_32'
                                   3477 ;saw_wave                  Allocated with name '_dac_update_output_saw_wave_65536_32'
                                   3478 ;array_ptr                 Allocated with name '_dac_update_output_array_ptr_65536_32'
                                   3479 ;command_word_a            Allocated with name '_dac_update_output_command_word_a_65536_32'
                                   3480 ;command_word_b            Allocated with name '_dac_update_output_command_word_b_65536_32'
                                   3481 ;data_ptr                  Allocated with name '_dac_update_output_data_ptr_65536_32'
                                   3482 ;------------------------------------------------------------
                                   3483 ;	spi.c:57: void dac_update_output(void)
                                   3484 ;	-----------------------------------------
                                   3485 ;	 function dac_update_output
                                   3486 ;	-----------------------------------------
      003E3F                       3487 _dac_update_output:
                                   3488 ;	spi.c:1092: __xdata uint8_t* array_ptr[4]={sine_wave,square_wave,triangular_value_wave,saw_wave};
      003E3F 90 05 60         [24] 3489 	mov	dptr,#_dac_update_output_array_ptr_65536_32
      003E42 74 60            [12] 3490 	mov	a,#_dac_update_output_sine_wave_65536_32
      003E44 F0               [24] 3491 	movx	@dptr,a
      003E45 74 01            [12] 3492 	mov	a,#(_dac_update_output_sine_wave_65536_32 >> 8)
      003E47 A3               [24] 3493 	inc	dptr
      003E48 F0               [24] 3494 	movx	@dptr,a
      003E49 90 05 62         [24] 3495 	mov	dptr,#(_dac_update_output_array_ptr_65536_32 + 0x0002)
      003E4C 74 60            [12] 3496 	mov	a,#_dac_update_output_square_wave_65536_32
      003E4E F0               [24] 3497 	movx	@dptr,a
      003E4F 74 02            [12] 3498 	mov	a,#(_dac_update_output_square_wave_65536_32 >> 8)
      003E51 A3               [24] 3499 	inc	dptr
      003E52 F0               [24] 3500 	movx	@dptr,a
      003E53 90 05 64         [24] 3501 	mov	dptr,#(_dac_update_output_array_ptr_65536_32 + 0x0004)
      003E56 74 60            [12] 3502 	mov	a,#_dac_update_output_triangular_value_wave_65536_32
      003E58 F0               [24] 3503 	movx	@dptr,a
      003E59 74 03            [12] 3504 	mov	a,#(_dac_update_output_triangular_value_wave_65536_32 >> 8)
      003E5B A3               [24] 3505 	inc	dptr
      003E5C F0               [24] 3506 	movx	@dptr,a
      003E5D 90 05 66         [24] 3507 	mov	dptr,#(_dac_update_output_array_ptr_65536_32 + 0x0006)
      003E60 74 60            [12] 3508 	mov	a,#_dac_update_output_saw_wave_65536_32
      003E62 F0               [24] 3509 	movx	@dptr,a
      003E63 74 04            [12] 3510 	mov	a,#(_dac_update_output_saw_wave_65536_32 >> 8)
      003E65 A3               [24] 3511 	inc	dptr
      003E66 F0               [24] 3512 	movx	@dptr,a
                                   3513 ;	spi.c:1095: if(mode==0)
      003E67 90 01 5B         [24] 3514 	mov	dptr,#_mode
      003E6A E0               [24] 3515 	movx	a,@dptr
      003E6B 60 03            [24] 3516 	jz	00123$
      003E6D 02 3F 12         [24] 3517 	ljmp	00105$
      003E70                       3518 00123$:
                                   3519 ;	spi.c:1097: data_ptr=array_ptr[wave];
      003E70 90 01 59         [24] 3520 	mov	dptr,#_wave
      003E73 E0               [24] 3521 	movx	a,@dptr
      003E74 75 F0 02         [24] 3522 	mov	b,#0x02
      003E77 A4               [48] 3523 	mul	ab
      003E78 24 60            [12] 3524 	add	a,#_dac_update_output_array_ptr_65536_32
      003E7A F5 82            [12] 3525 	mov	dpl,a
      003E7C 74 05            [12] 3526 	mov	a,#(_dac_update_output_array_ptr_65536_32 >> 8)
      003E7E 35 F0            [12] 3527 	addc	a,b
      003E80 F5 83            [12] 3528 	mov	dph,a
      003E82 E0               [24] 3529 	movx	a,@dptr
      003E83 FE               [12] 3530 	mov	r6,a
      003E84 A3               [24] 3531 	inc	dptr
      003E85 E0               [24] 3532 	movx	a,@dptr
      003E86 FF               [12] 3533 	mov	r7,a
                                   3534 ;	spi.c:1098: command_word_a = *(data_ptr+counter)<<4;
      003E87 90 01 5E         [24] 3535 	mov	dptr,#_dac_update_output_counter_65536_32
      003E8A E0               [24] 3536 	movx	a,@dptr
      003E8B FC               [12] 3537 	mov	r4,a
      003E8C A3               [24] 3538 	inc	dptr
      003E8D E0               [24] 3539 	movx	a,@dptr
      003E8E FD               [12] 3540 	mov	r5,a
      003E8F EC               [12] 3541 	mov	a,r4
      003E90 2E               [12] 3542 	add	a,r6
      003E91 F5 82            [12] 3543 	mov	dpl,a
      003E93 ED               [12] 3544 	mov	a,r5
      003E94 3F               [12] 3545 	addc	a,r7
      003E95 F5 83            [12] 3546 	mov	dph,a
      003E97 E0               [24] 3547 	movx	a,@dptr
      003E98 FF               [12] 3548 	mov	r7,a
      003E99 E4               [12] 3549 	clr	a
      003E9A C4               [12] 3550 	swap	a
      003E9B 54 F0            [12] 3551 	anl	a,#0xf0
      003E9D CF               [12] 3552 	xch	a,r7
      003E9E C4               [12] 3553 	swap	a
      003E9F CF               [12] 3554 	xch	a,r7
      003EA0 6F               [12] 3555 	xrl	a,r7
      003EA1 CF               [12] 3556 	xch	a,r7
      003EA2 54 F0            [12] 3557 	anl	a,#0xf0
      003EA4 CF               [12] 3558 	xch	a,r7
      003EA5 6F               [12] 3559 	xrl	a,r7
      003EA6 FE               [12] 3560 	mov	r6,a
                                   3561 ;	spi.c:1100: command_word_a &= A_mask;
      003EA7 8F 04            [24] 3562 	mov	ar4,r7
      003EA9 74 7F            [12] 3563 	mov	a,#0x7f
      003EAB 5E               [12] 3564 	anl	a,r6
      003EAC FD               [12] 3565 	mov	r5,a
                                   3566 ;	spi.c:1101: command_word_b |= B_mask;
      003EAD 43 06 80         [24] 3567 	orl	ar6,#0x80
                                   3568 ;	spi.c:1102: command_word_a |= active_mask;
      003EB0 43 05 10         [24] 3569 	orl	ar5,#0x10
                                   3570 ;	spi.c:1103: command_word_b |= active_mask;
      003EB3 43 06 10         [24] 3571 	orl	ar6,#0x10
                                   3572 ;	spi.c:1105: if(gain==2)
      003EB6 90 01 5A         [24] 3573 	mov	dptr,#_gain
      003EB9 E0               [24] 3574 	movx	a,@dptr
      003EBA FB               [12] 3575 	mov	r3,a
      003EBB BB 02 20         [24] 3576 	cjne	r3,#0x02,00102$
                                   3577 ;	spi.c:1107: command_word_a &= Gain_increase_mask;
      003EBE 8C 02            [24] 3578 	mov	ar2,r4
      003EC0 8D 03            [24] 3579 	mov	ar3,r5
      003EC2 53 03 DF         [24] 3580 	anl	ar3,#0xdf
      003EC5 90 05 68         [24] 3581 	mov	dptr,#_dac_update_output_command_word_a_65536_32
      003EC8 EA               [12] 3582 	mov	a,r2
      003EC9 F0               [24] 3583 	movx	@dptr,a
      003ECA EB               [12] 3584 	mov	a,r3
      003ECB A3               [24] 3585 	inc	dptr
      003ECC F0               [24] 3586 	movx	@dptr,a
                                   3587 ;	spi.c:1108: command_word_b &= Gain_increase_mask;
      003ECD 8F 02            [24] 3588 	mov	ar2,r7
      003ECF 8E 03            [24] 3589 	mov	ar3,r6
      003ED1 53 03 DF         [24] 3590 	anl	ar3,#0xdf
      003ED4 90 05 6A         [24] 3591 	mov	dptr,#_dac_update_output_command_word_b_65536_32
      003ED7 EA               [12] 3592 	mov	a,r2
      003ED8 F0               [24] 3593 	movx	@dptr,a
      003ED9 EB               [12] 3594 	mov	a,r3
      003EDA A3               [24] 3595 	inc	dptr
      003EDB F0               [24] 3596 	movx	@dptr,a
      003EDC 80 16            [24] 3597 	sjmp	00103$
      003EDE                       3598 00102$:
                                   3599 ;	spi.c:1112: command_word_a |= Gain_decrease_mask;
      003EDE 43 05 20         [24] 3600 	orl	ar5,#0x20
      003EE1 90 05 68         [24] 3601 	mov	dptr,#_dac_update_output_command_word_a_65536_32
      003EE4 EC               [12] 3602 	mov	a,r4
      003EE5 F0               [24] 3603 	movx	@dptr,a
      003EE6 ED               [12] 3604 	mov	a,r5
      003EE7 A3               [24] 3605 	inc	dptr
      003EE8 F0               [24] 3606 	movx	@dptr,a
                                   3607 ;	spi.c:1113: command_word_b |= Gain_decrease_mask;
      003EE9 43 06 20         [24] 3608 	orl	ar6,#0x20
      003EEC 90 05 6A         [24] 3609 	mov	dptr,#_dac_update_output_command_word_b_65536_32
      003EEF EF               [12] 3610 	mov	a,r7
      003EF0 F0               [24] 3611 	movx	@dptr,a
      003EF1 EE               [12] 3612 	mov	a,r6
      003EF2 A3               [24] 3613 	inc	dptr
      003EF3 F0               [24] 3614 	movx	@dptr,a
      003EF4                       3615 00103$:
                                   3616 ;	spi.c:1115: spi_write_word(command_word_a);
      003EF4 90 05 68         [24] 3617 	mov	dptr,#_dac_update_output_command_word_a_65536_32
      003EF7 E0               [24] 3618 	movx	a,@dptr
      003EF8 FE               [12] 3619 	mov	r6,a
      003EF9 A3               [24] 3620 	inc	dptr
      003EFA E0               [24] 3621 	movx	a,@dptr
      003EFB FF               [12] 3622 	mov	r7,a
      003EFC 8E 82            [24] 3623 	mov	dpl,r6
      003EFE 8F 83            [24] 3624 	mov	dph,r7
      003F00 12 3D F3         [24] 3625 	lcall	_spi_write_word
                                   3626 ;	spi.c:1116: spi_write_word(command_word_b);
      003F03 90 05 6A         [24] 3627 	mov	dptr,#_dac_update_output_command_word_b_65536_32
      003F06 E0               [24] 3628 	movx	a,@dptr
      003F07 FE               [12] 3629 	mov	r6,a
      003F08 A3               [24] 3630 	inc	dptr
      003F09 E0               [24] 3631 	movx	a,@dptr
      003F0A FF               [12] 3632 	mov	r7,a
      003F0B 8E 82            [24] 3633 	mov	dpl,r6
      003F0D 8F 83            [24] 3634 	mov	dph,r7
      003F0F 12 3D F3         [24] 3635 	lcall	_spi_write_word
      003F12                       3636 00105$:
                                   3637 ;	spi.c:1118: if(counter == 255)
      003F12 90 01 5E         [24] 3638 	mov	dptr,#_dac_update_output_counter_65536_32
      003F15 E0               [24] 3639 	movx	a,@dptr
      003F16 FE               [12] 3640 	mov	r6,a
      003F17 A3               [24] 3641 	inc	dptr
      003F18 E0               [24] 3642 	movx	a,@dptr
      003F19 FF               [12] 3643 	mov	r7,a
      003F1A 8E 04            [24] 3644 	mov	ar4,r6
      003F1C 8F 05            [24] 3645 	mov	ar5,r7
      003F1E BC FF 0B         [24] 3646 	cjne	r4,#0xff,00107$
      003F21 BD 00 08         [24] 3647 	cjne	r5,#0x00,00107$
                                   3648 ;	spi.c:1120: counter = 0;
      003F24 90 01 5E         [24] 3649 	mov	dptr,#_dac_update_output_counter_65536_32
      003F27 E4               [12] 3650 	clr	a
      003F28 F0               [24] 3651 	movx	@dptr,a
      003F29 A3               [24] 3652 	inc	dptr
      003F2A F0               [24] 3653 	movx	@dptr,a
      003F2B 22               [24] 3654 	ret
      003F2C                       3655 00107$:
                                   3656 ;	spi.c:1124: counter++;
      003F2C 90 01 5E         [24] 3657 	mov	dptr,#_dac_update_output_counter_65536_32
      003F2F 74 01            [12] 3658 	mov	a,#0x01
      003F31 2E               [12] 3659 	add	a,r6
      003F32 F0               [24] 3660 	movx	@dptr,a
      003F33 E4               [12] 3661 	clr	a
      003F34 3F               [12] 3662 	addc	a,r7
      003F35 A3               [24] 3663 	inc	dptr
      003F36 F0               [24] 3664 	movx	@dptr,a
                                   3665 ;	spi.c:1126: return;
                                   3666 ;	spi.c:1127: }
      003F37 22               [24] 3667 	ret
                                   3668 ;------------------------------------------------------------
                                   3669 ;Allocation info for local variables in function 'dac_start_output'
                                   3670 ;------------------------------------------------------------
                                   3671 ;	spi.c:1133: void dac_start_output(void)
                                   3672 ;	-----------------------------------------
                                   3673 ;	 function dac_start_output
                                   3674 ;	-----------------------------------------
      003F38                       3675 _dac_start_output:
                                   3676 ;	spi.c:1135: return;
                                   3677 ;	spi.c:1136: }
      003F38 22               [24] 3678 	ret
                                   3679 ;------------------------------------------------------------
                                   3680 ;Allocation info for local variables in function 'dac_stop_output'
                                   3681 ;------------------------------------------------------------
                                   3682 ;	spi.c:1142: void dac_stop_output(void)
                                   3683 ;	-----------------------------------------
                                   3684 ;	 function dac_stop_output
                                   3685 ;	-----------------------------------------
      003F39                       3686 _dac_stop_output:
                                   3687 ;	spi.c:1145: return;
                                   3688 ;	spi.c:1146: }
      003F39 22               [24] 3689 	ret
                                   3690 ;------------------------------------------------------------
                                   3691 ;Allocation info for local variables in function 'dac_set'
                                   3692 ;------------------------------------------------------------
                                   3693 ;data_word                 Allocated with name '_dac_set_data_word_65536_42'
                                   3694 ;command_word_a            Allocated with name '_dac_set_command_word_a_65536_43'
                                   3695 ;command_word_b            Allocated with name '_dac_set_command_word_b_65536_43'
                                   3696 ;------------------------------------------------------------
                                   3697 ;	spi.c:1148: void dac_set(uint16_t data_word)
                                   3698 ;	-----------------------------------------
                                   3699 ;	 function dac_set
                                   3700 ;	-----------------------------------------
      003F3A                       3701 _dac_set:
      003F3A AF 83            [24] 3702 	mov	r7,dph
      003F3C E5 82            [12] 3703 	mov	a,dpl
      003F3E 90 05 6C         [24] 3704 	mov	dptr,#_dac_set_data_word_65536_42
      003F41 F0               [24] 3705 	movx	@dptr,a
      003F42 EF               [12] 3706 	mov	a,r7
      003F43 A3               [24] 3707 	inc	dptr
      003F44 F0               [24] 3708 	movx	@dptr,a
                                   3709 ;	spi.c:1151: command_word_a = data_word<<4;
      003F45 90 05 6C         [24] 3710 	mov	dptr,#_dac_set_data_word_65536_42
      003F48 E0               [24] 3711 	movx	a,@dptr
      003F49 FE               [12] 3712 	mov	r6,a
      003F4A A3               [24] 3713 	inc	dptr
      003F4B E0               [24] 3714 	movx	a,@dptr
      003F4C C4               [12] 3715 	swap	a
      003F4D 54 F0            [12] 3716 	anl	a,#0xf0
      003F4F CE               [12] 3717 	xch	a,r6
      003F50 C4               [12] 3718 	swap	a
      003F51 CE               [12] 3719 	xch	a,r6
      003F52 6E               [12] 3720 	xrl	a,r6
      003F53 CE               [12] 3721 	xch	a,r6
      003F54 54 F0            [12] 3722 	anl	a,#0xf0
      003F56 CE               [12] 3723 	xch	a,r6
      003F57 6E               [12] 3724 	xrl	a,r6
      003F58 FF               [12] 3725 	mov	r7,a
                                   3726 ;	spi.c:1153: command_word_a &= A_mask;
      003F59 8E 04            [24] 3727 	mov	ar4,r6
      003F5B 74 7F            [12] 3728 	mov	a,#0x7f
      003F5D 5F               [12] 3729 	anl	a,r7
      003F5E FD               [12] 3730 	mov	r5,a
                                   3731 ;	spi.c:1154: command_word_b |= B_mask;
      003F5F 43 07 80         [24] 3732 	orl	ar7,#0x80
                                   3733 ;	spi.c:1155: command_word_a |= active_mask;
      003F62 43 05 10         [24] 3734 	orl	ar5,#0x10
                                   3735 ;	spi.c:1156: command_word_b |= active_mask;
      003F65 43 07 10         [24] 3736 	orl	ar7,#0x10
                                   3737 ;	spi.c:1157: command_word_a &= Gain_increase_mask;
      003F68 53 05 DF         [24] 3738 	anl	ar5,#0xdf
                                   3739 ;	spi.c:1158: command_word_b &= Gain_increase_mask;
      003F6B 53 07 DF         [24] 3740 	anl	ar7,#0xdf
                                   3741 ;	spi.c:1159: spi_write_word(command_word_a);
      003F6E 8C 82            [24] 3742 	mov	dpl,r4
      003F70 8D 83            [24] 3743 	mov	dph,r5
      003F72 C0 07            [24] 3744 	push	ar7
      003F74 C0 06            [24] 3745 	push	ar6
      003F76 12 3D F3         [24] 3746 	lcall	_spi_write_word
      003F79 D0 06            [24] 3747 	pop	ar6
      003F7B D0 07            [24] 3748 	pop	ar7
                                   3749 ;	spi.c:1160: spi_write_word(command_word_b);
      003F7D 8E 82            [24] 3750 	mov	dpl,r6
      003F7F 8F 83            [24] 3751 	mov	dph,r7
                                   3752 ;	spi.c:1161: return;
                                   3753 ;	spi.c:1162: }
      003F81 02 3D F3         [24] 3754 	ljmp	_spi_write_word
                                   3755 ;------------------------------------------------------------
                                   3756 ;Allocation info for local variables in function 'dac_output_control_change'
                                   3757 ;------------------------------------------------------------
                                   3758 ;	spi.c:1168: void dac_output_control_change(void)
                                   3759 ;	-----------------------------------------
                                   3760 ;	 function dac_output_control_change
                                   3761 ;	-----------------------------------------
      003F84                       3762 _dac_output_control_change:
                                   3763 ;	spi.c:1170: if(mode==0)
      003F84 90 01 5B         [24] 3764 	mov	dptr,#_mode
      003F87 E0               [24] 3765 	movx	a,@dptr
      003F88 70 09            [24] 3766 	jnz	00102$
                                   3767 ;	spi.c:1172: mode = 1;
      003F8A 90 01 5B         [24] 3768 	mov	dptr,#_mode
      003F8D 74 01            [12] 3769 	mov	a,#0x01
      003F8F F0               [24] 3770 	movx	@dptr,a
                                   3771 ;	spi.c:1173: TR0=0;
                                   3772 ;	assignBit
      003F90 C2 8C            [12] 3773 	clr	_TR0
      003F92 22               [24] 3774 	ret
      003F93                       3775 00102$:
                                   3776 ;	spi.c:1177: mode = 0;
      003F93 90 01 5B         [24] 3777 	mov	dptr,#_mode
      003F96 E4               [12] 3778 	clr	a
      003F97 F0               [24] 3779 	movx	@dptr,a
                                   3780 ;	spi.c:1178: TR0 = 1;
                                   3781 ;	assignBit
      003F98 D2 8C            [12] 3782 	setb	_TR0
                                   3783 ;	spi.c:1180: return;
                                   3784 ;	spi.c:1181: }
      003F9A 22               [24] 3785 	ret
                                   3786 ;------------------------------------------------------------
                                   3787 ;Allocation info for local variables in function 'dac_next_wave'
                                   3788 ;------------------------------------------------------------
                                   3789 ;	spi.c:1188: void dac_next_wave(void)
                                   3790 ;	-----------------------------------------
                                   3791 ;	 function dac_next_wave
                                   3792 ;	-----------------------------------------
      003F9B                       3793 _dac_next_wave:
                                   3794 ;	spi.c:1190: if(wave == 3)
      003F9B 90 01 59         [24] 3795 	mov	dptr,#_wave
      003F9E E0               [24] 3796 	movx	a,@dptr
      003F9F FF               [12] 3797 	mov	r7,a
      003FA0 BF 03 06         [24] 3798 	cjne	r7,#0x03,00102$
                                   3799 ;	spi.c:1192: wave = 0;
      003FA3 90 01 59         [24] 3800 	mov	dptr,#_wave
      003FA6 E4               [12] 3801 	clr	a
      003FA7 F0               [24] 3802 	movx	@dptr,a
      003FA8 22               [24] 3803 	ret
      003FA9                       3804 00102$:
                                   3805 ;	spi.c:1196: wave++;
      003FA9 90 01 59         [24] 3806 	mov	dptr,#_wave
      003FAC EF               [12] 3807 	mov	a,r7
      003FAD 04               [12] 3808 	inc	a
      003FAE F0               [24] 3809 	movx	@dptr,a
                                   3810 ;	spi.c:1198: return;
                                   3811 ;	spi.c:1199: }
      003FAF 22               [24] 3812 	ret
                                   3813 ;------------------------------------------------------------
                                   3814 ;Allocation info for local variables in function 'dac_increase_voltage'
                                   3815 ;------------------------------------------------------------
                                   3816 ;	spi.c:1205: void dac_increase_voltage(void)
                                   3817 ;	-----------------------------------------
                                   3818 ;	 function dac_increase_voltage
                                   3819 ;	-----------------------------------------
      003FB0                       3820 _dac_increase_voltage:
                                   3821 ;	spi.c:1207: gain=2;
      003FB0 90 01 5A         [24] 3822 	mov	dptr,#_gain
      003FB3 74 02            [12] 3823 	mov	a,#0x02
      003FB5 F0               [24] 3824 	movx	@dptr,a
                                   3825 ;	spi.c:1208: return;
                                   3826 ;	spi.c:1209: }
      003FB6 22               [24] 3827 	ret
                                   3828 ;------------------------------------------------------------
                                   3829 ;Allocation info for local variables in function 'dac_decrease_voltage'
                                   3830 ;------------------------------------------------------------
                                   3831 ;	spi.c:1215: void dac_decrease_voltage(void)
                                   3832 ;	-----------------------------------------
                                   3833 ;	 function dac_decrease_voltage
                                   3834 ;	-----------------------------------------
      003FB7                       3835 _dac_decrease_voltage:
                                   3836 ;	spi.c:1217: gain=1;
      003FB7 90 01 5A         [24] 3837 	mov	dptr,#_gain
      003FBA 74 01            [12] 3838 	mov	a,#0x01
      003FBC F0               [24] 3839 	movx	@dptr,a
                                   3840 ;	spi.c:1218: return;
                                   3841 ;	spi.c:1219: }
      003FBD 22               [24] 3842 	ret
                                   3843 	.area CSEG    (CODE)
                                   3844 	.area CONST   (CODE)
                                   3845 	.area XINIT   (CODE)
                                   3846 	.area CABS    (ABS,CODE)
