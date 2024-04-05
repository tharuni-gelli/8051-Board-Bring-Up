                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _getchar
                                     12 	.globl _putchar
                                     13 	.globl _delay_us
                                     14 	.globl _powf
                                     15 	.globl _printf_tiny
                                     16 	.globl _P5_7
                                     17 	.globl _P5_6
                                     18 	.globl _P5_5
                                     19 	.globl _P5_4
                                     20 	.globl _P5_3
                                     21 	.globl _P5_2
                                     22 	.globl _P5_1
                                     23 	.globl _P5_0
                                     24 	.globl _P4_7
                                     25 	.globl _P4_6
                                     26 	.globl _P4_5
                                     27 	.globl _P4_4
                                     28 	.globl _P4_3
                                     29 	.globl _P4_2
                                     30 	.globl _P4_1
                                     31 	.globl _P4_0
                                     32 	.globl _PX0L
                                     33 	.globl _PT0L
                                     34 	.globl _PX1L
                                     35 	.globl _PT1L
                                     36 	.globl _PSL
                                     37 	.globl _PT2L
                                     38 	.globl _PPCL
                                     39 	.globl _EC
                                     40 	.globl _CCF0
                                     41 	.globl _CCF1
                                     42 	.globl _CCF2
                                     43 	.globl _CCF3
                                     44 	.globl _CCF4
                                     45 	.globl _CR
                                     46 	.globl _CF
                                     47 	.globl _TF2
                                     48 	.globl _EXF2
                                     49 	.globl _RCLK
                                     50 	.globl _TCLK
                                     51 	.globl _EXEN2
                                     52 	.globl _TR2
                                     53 	.globl _C_T2
                                     54 	.globl _CP_RL2
                                     55 	.globl _T2CON_7
                                     56 	.globl _T2CON_6
                                     57 	.globl _T2CON_5
                                     58 	.globl _T2CON_4
                                     59 	.globl _T2CON_3
                                     60 	.globl _T2CON_2
                                     61 	.globl _T2CON_1
                                     62 	.globl _T2CON_0
                                     63 	.globl _PT2
                                     64 	.globl _ET2
                                     65 	.globl _CY
                                     66 	.globl _AC
                                     67 	.globl _F0
                                     68 	.globl _RS1
                                     69 	.globl _RS0
                                     70 	.globl _OV
                                     71 	.globl _F1
                                     72 	.globl _P
                                     73 	.globl _PS
                                     74 	.globl _PT1
                                     75 	.globl _PX1
                                     76 	.globl _PT0
                                     77 	.globl _PX0
                                     78 	.globl _RD
                                     79 	.globl _WR
                                     80 	.globl _T1
                                     81 	.globl _T0
                                     82 	.globl _INT1
                                     83 	.globl _INT0
                                     84 	.globl _TXD
                                     85 	.globl _RXD
                                     86 	.globl _P3_7
                                     87 	.globl _P3_6
                                     88 	.globl _P3_5
                                     89 	.globl _P3_4
                                     90 	.globl _P3_3
                                     91 	.globl _P3_2
                                     92 	.globl _P3_1
                                     93 	.globl _P3_0
                                     94 	.globl _EA
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _P2_7
                                    101 	.globl _P2_6
                                    102 	.globl _P2_5
                                    103 	.globl _P2_4
                                    104 	.globl _P2_3
                                    105 	.globl _P2_2
                                    106 	.globl _P2_1
                                    107 	.globl _P2_0
                                    108 	.globl _SM0
                                    109 	.globl _SM1
                                    110 	.globl _SM2
                                    111 	.globl _REN
                                    112 	.globl _TB8
                                    113 	.globl _RB8
                                    114 	.globl _TI
                                    115 	.globl _RI
                                    116 	.globl _P1_7
                                    117 	.globl _P1_6
                                    118 	.globl _P1_5
                                    119 	.globl _P1_4
                                    120 	.globl _P1_3
                                    121 	.globl _P1_2
                                    122 	.globl _P1_1
                                    123 	.globl _P1_0
                                    124 	.globl _TF1
                                    125 	.globl _TR1
                                    126 	.globl _TF0
                                    127 	.globl _TR0
                                    128 	.globl _IE1
                                    129 	.globl _IT1
                                    130 	.globl _IE0
                                    131 	.globl _IT0
                                    132 	.globl _P0_7
                                    133 	.globl _P0_6
                                    134 	.globl _P0_5
                                    135 	.globl _P0_4
                                    136 	.globl _P0_3
                                    137 	.globl _P0_2
                                    138 	.globl _P0_1
                                    139 	.globl _P0_0
                                    140 	.globl _EECON
                                    141 	.globl _KBF
                                    142 	.globl _KBE
                                    143 	.globl _KBLS
                                    144 	.globl _BRL
                                    145 	.globl _BDRCON
                                    146 	.globl _T2MOD
                                    147 	.globl _SPDAT
                                    148 	.globl _SPSTA
                                    149 	.globl _SPCON
                                    150 	.globl _SADEN
                                    151 	.globl _SADDR
                                    152 	.globl _WDTPRG
                                    153 	.globl _WDTRST
                                    154 	.globl _P5
                                    155 	.globl _P4
                                    156 	.globl _IPH1
                                    157 	.globl _IPL1
                                    158 	.globl _IPH0
                                    159 	.globl _IPL0
                                    160 	.globl _IEN1
                                    161 	.globl _IEN0
                                    162 	.globl _CMOD
                                    163 	.globl _CL
                                    164 	.globl _CH
                                    165 	.globl _CCON
                                    166 	.globl _CCAPM4
                                    167 	.globl _CCAPM3
                                    168 	.globl _CCAPM2
                                    169 	.globl _CCAPM1
                                    170 	.globl _CCAPM0
                                    171 	.globl _CCAP4L
                                    172 	.globl _CCAP3L
                                    173 	.globl _CCAP2L
                                    174 	.globl _CCAP1L
                                    175 	.globl _CCAP0L
                                    176 	.globl _CCAP4H
                                    177 	.globl _CCAP3H
                                    178 	.globl _CCAP2H
                                    179 	.globl _CCAP1H
                                    180 	.globl _CCAP0H
                                    181 	.globl _CKCON1
                                    182 	.globl _CKCON0
                                    183 	.globl _CKRL
                                    184 	.globl _AUXR1
                                    185 	.globl _AUXR
                                    186 	.globl _TH2
                                    187 	.globl _TL2
                                    188 	.globl _RCAP2H
                                    189 	.globl _RCAP2L
                                    190 	.globl _T2CON
                                    191 	.globl _B
                                    192 	.globl _ACC
                                    193 	.globl _PSW
                                    194 	.globl _IP
                                    195 	.globl _P3
                                    196 	.globl _IE
                                    197 	.globl _P2
                                    198 	.globl _SBUF
                                    199 	.globl _SCON
                                    200 	.globl _P1
                                    201 	.globl _TH1
                                    202 	.globl _TH0
                                    203 	.globl _TL1
                                    204 	.globl _TL0
                                    205 	.globl _TMOD
                                    206 	.globl _TCON
                                    207 	.globl _PCON
                                    208 	.globl _DPH
                                    209 	.globl _DPL
                                    210 	.globl _SP
                                    211 	.globl _P0
                                    212 	.globl _i2c_init
                                    213 	.globl _i2c_start
                                    214 	.globl _i2c_stop
                                    215 	.globl _i2c_ACK
                                    216 	.globl _i2c_NoAck
                                    217 	.globl _i2c_Restart
                                    218 	.globl _eereset
                                    219 	.globl _i2c_Write_Byte
                                    220 	.globl _i2c_Read_Byte
                                    221 	.globl _i2c_EEPROM_Write
                                    222 	.globl _i2c_EEPROM_Read
                                    223 	.globl _hex_addresses
                                    224 	.globl _hex_data
                                    225 	.globl _hex_dump
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           000080   231 _P0	=	0x0080
                           000081   232 _SP	=	0x0081
                           000082   233 _DPL	=	0x0082
                           000083   234 _DPH	=	0x0083
                           000087   235 _PCON	=	0x0087
                           000088   236 _TCON	=	0x0088
                           000089   237 _TMOD	=	0x0089
                           00008A   238 _TL0	=	0x008a
                           00008B   239 _TL1	=	0x008b
                           00008C   240 _TH0	=	0x008c
                           00008D   241 _TH1	=	0x008d
                           000090   242 _P1	=	0x0090
                           000098   243 _SCON	=	0x0098
                           000099   244 _SBUF	=	0x0099
                           0000A0   245 _P2	=	0x00a0
                           0000A8   246 _IE	=	0x00a8
                           0000B0   247 _P3	=	0x00b0
                           0000B8   248 _IP	=	0x00b8
                           0000D0   249 _PSW	=	0x00d0
                           0000E0   250 _ACC	=	0x00e0
                           0000F0   251 _B	=	0x00f0
                           0000C8   252 _T2CON	=	0x00c8
                           0000CA   253 _RCAP2L	=	0x00ca
                           0000CB   254 _RCAP2H	=	0x00cb
                           0000CC   255 _TL2	=	0x00cc
                           0000CD   256 _TH2	=	0x00cd
                           00008E   257 _AUXR	=	0x008e
                           0000A2   258 _AUXR1	=	0x00a2
                           000097   259 _CKRL	=	0x0097
                           00008F   260 _CKCON0	=	0x008f
                           0000AF   261 _CKCON1	=	0x00af
                           0000FA   262 _CCAP0H	=	0x00fa
                           0000FB   263 _CCAP1H	=	0x00fb
                           0000FC   264 _CCAP2H	=	0x00fc
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 _CCAP4H	=	0x00fe
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000EB   268 _CCAP1L	=	0x00eb
                           0000EC   269 _CCAP2L	=	0x00ec
                           0000ED   270 _CCAP3L	=	0x00ed
                           0000EE   271 _CCAP4L	=	0x00ee
                           0000DA   272 _CCAPM0	=	0x00da
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 _CCAPM2	=	0x00dc
                           0000DD   275 _CCAPM3	=	0x00dd
                           0000DE   276 _CCAPM4	=	0x00de
                           0000D8   277 _CCON	=	0x00d8
                           0000F9   278 _CH	=	0x00f9
                           0000E9   279 _CL	=	0x00e9
                           0000D9   280 _CMOD	=	0x00d9
                           0000A8   281 _IEN0	=	0x00a8
                           0000B1   282 _IEN1	=	0x00b1
                           0000B8   283 _IPL0	=	0x00b8
                           0000B7   284 _IPH0	=	0x00b7
                           0000B2   285 _IPL1	=	0x00b2
                           0000B3   286 _IPH1	=	0x00b3
                           0000C0   287 _P4	=	0x00c0
                           0000E8   288 _P5	=	0x00e8
                           0000A6   289 _WDTRST	=	0x00a6
                           0000A7   290 _WDTPRG	=	0x00a7
                           0000A9   291 _SADDR	=	0x00a9
                           0000B9   292 _SADEN	=	0x00b9
                           0000C3   293 _SPCON	=	0x00c3
                           0000C4   294 _SPSTA	=	0x00c4
                           0000C5   295 _SPDAT	=	0x00c5
                           0000C9   296 _T2MOD	=	0x00c9
                           00009B   297 _BDRCON	=	0x009b
                           00009A   298 _BRL	=	0x009a
                           00009C   299 _KBLS	=	0x009c
                           00009D   300 _KBE	=	0x009d
                           00009E   301 _KBF	=	0x009e
                           0000D2   302 _EECON	=	0x00d2
                                    303 ;--------------------------------------------------------
                                    304 ; special function bits
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           000080   308 _P0_0	=	0x0080
                           000081   309 _P0_1	=	0x0081
                           000082   310 _P0_2	=	0x0082
                           000083   311 _P0_3	=	0x0083
                           000084   312 _P0_4	=	0x0084
                           000085   313 _P0_5	=	0x0085
                           000086   314 _P0_6	=	0x0086
                           000087   315 _P0_7	=	0x0087
                           000088   316 _IT0	=	0x0088
                           000089   317 _IE0	=	0x0089
                           00008A   318 _IT1	=	0x008a
                           00008B   319 _IE1	=	0x008b
                           00008C   320 _TR0	=	0x008c
                           00008D   321 _TF0	=	0x008d
                           00008E   322 _TR1	=	0x008e
                           00008F   323 _TF1	=	0x008f
                           000090   324 _P1_0	=	0x0090
                           000091   325 _P1_1	=	0x0091
                           000092   326 _P1_2	=	0x0092
                           000093   327 _P1_3	=	0x0093
                           000094   328 _P1_4	=	0x0094
                           000095   329 _P1_5	=	0x0095
                           000096   330 _P1_6	=	0x0096
                           000097   331 _P1_7	=	0x0097
                           000098   332 _RI	=	0x0098
                           000099   333 _TI	=	0x0099
                           00009A   334 _RB8	=	0x009a
                           00009B   335 _TB8	=	0x009b
                           00009C   336 _REN	=	0x009c
                           00009D   337 _SM2	=	0x009d
                           00009E   338 _SM1	=	0x009e
                           00009F   339 _SM0	=	0x009f
                           0000A0   340 _P2_0	=	0x00a0
                           0000A1   341 _P2_1	=	0x00a1
                           0000A2   342 _P2_2	=	0x00a2
                           0000A3   343 _P2_3	=	0x00a3
                           0000A4   344 _P2_4	=	0x00a4
                           0000A5   345 _P2_5	=	0x00a5
                           0000A6   346 _P2_6	=	0x00a6
                           0000A7   347 _P2_7	=	0x00a7
                           0000A8   348 _EX0	=	0x00a8
                           0000A9   349 _ET0	=	0x00a9
                           0000AA   350 _EX1	=	0x00aa
                           0000AB   351 _ET1	=	0x00ab
                           0000AC   352 _ES	=	0x00ac
                           0000AF   353 _EA	=	0x00af
                           0000B0   354 _P3_0	=	0x00b0
                           0000B1   355 _P3_1	=	0x00b1
                           0000B2   356 _P3_2	=	0x00b2
                           0000B3   357 _P3_3	=	0x00b3
                           0000B4   358 _P3_4	=	0x00b4
                           0000B5   359 _P3_5	=	0x00b5
                           0000B6   360 _P3_6	=	0x00b6
                           0000B7   361 _P3_7	=	0x00b7
                           0000B0   362 _RXD	=	0x00b0
                           0000B1   363 _TXD	=	0x00b1
                           0000B2   364 _INT0	=	0x00b2
                           0000B3   365 _INT1	=	0x00b3
                           0000B4   366 _T0	=	0x00b4
                           0000B5   367 _T1	=	0x00b5
                           0000B6   368 _WR	=	0x00b6
                           0000B7   369 _RD	=	0x00b7
                           0000B8   370 _PX0	=	0x00b8
                           0000B9   371 _PT0	=	0x00b9
                           0000BA   372 _PX1	=	0x00ba
                           0000BB   373 _PT1	=	0x00bb
                           0000BC   374 _PS	=	0x00bc
                           0000D0   375 _P	=	0x00d0
                           0000D1   376 _F1	=	0x00d1
                           0000D2   377 _OV	=	0x00d2
                           0000D3   378 _RS0	=	0x00d3
                           0000D4   379 _RS1	=	0x00d4
                           0000D5   380 _F0	=	0x00d5
                           0000D6   381 _AC	=	0x00d6
                           0000D7   382 _CY	=	0x00d7
                           0000AD   383 _ET2	=	0x00ad
                           0000BD   384 _PT2	=	0x00bd
                           0000C8   385 _T2CON_0	=	0x00c8
                           0000C9   386 _T2CON_1	=	0x00c9
                           0000CA   387 _T2CON_2	=	0x00ca
                           0000CB   388 _T2CON_3	=	0x00cb
                           0000CC   389 _T2CON_4	=	0x00cc
                           0000CD   390 _T2CON_5	=	0x00cd
                           0000CE   391 _T2CON_6	=	0x00ce
                           0000CF   392 _T2CON_7	=	0x00cf
                           0000C8   393 _CP_RL2	=	0x00c8
                           0000C9   394 _C_T2	=	0x00c9
                           0000CA   395 _TR2	=	0x00ca
                           0000CB   396 _EXEN2	=	0x00cb
                           0000CC   397 _TCLK	=	0x00cc
                           0000CD   398 _RCLK	=	0x00cd
                           0000CE   399 _EXF2	=	0x00ce
                           0000CF   400 _TF2	=	0x00cf
                           0000DF   401 _CF	=	0x00df
                           0000DE   402 _CR	=	0x00de
                           0000DC   403 _CCF4	=	0x00dc
                           0000DB   404 _CCF3	=	0x00db
                           0000DA   405 _CCF2	=	0x00da
                           0000D9   406 _CCF1	=	0x00d9
                           0000D8   407 _CCF0	=	0x00d8
                           0000AE   408 _EC	=	0x00ae
                           0000BE   409 _PPCL	=	0x00be
                           0000BD   410 _PT2L	=	0x00bd
                           0000BC   411 _PSL	=	0x00bc
                           0000BB   412 _PT1L	=	0x00bb
                           0000BA   413 _PX1L	=	0x00ba
                           0000B9   414 _PT0L	=	0x00b9
                           0000B8   415 _PX0L	=	0x00b8
                           0000C0   416 _P4_0	=	0x00c0
                           0000C1   417 _P4_1	=	0x00c1
                           0000C2   418 _P4_2	=	0x00c2
                           0000C3   419 _P4_3	=	0x00c3
                           0000C4   420 _P4_4	=	0x00c4
                           0000C5   421 _P4_5	=	0x00c5
                           0000C6   422 _P4_6	=	0x00c6
                           0000C7   423 _P4_7	=	0x00c7
                           0000E8   424 _P5_0	=	0x00e8
                           0000E9   425 _P5_1	=	0x00e9
                           0000EA   426 _P5_2	=	0x00ea
                           0000EB   427 _P5_3	=	0x00eb
                           0000EC   428 _P5_4	=	0x00ec
                           0000ED   429 _P5_5	=	0x00ed
                           0000EE   430 _P5_6	=	0x00ee
                           0000EF   431 _P5_7	=	0x00ef
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable register banks
                                    434 ;--------------------------------------------------------
                                    435 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        436 	.ds 8
                                    437 ;--------------------------------------------------------
                                    438 ; internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area DSEG    (DATA)
      000008                        441 _i2c_EEPROM_Write_sloc0_1_0:
      000008                        442 	.ds 4
      00000C                        443 _i2c_EEPROM_Write_sloc1_1_0:
      00000C                        444 	.ds 4
      000010                        445 _i2c_EEPROM_Read_sloc0_1_0:
      000010                        446 	.ds 4
      000014                        447 _hex_addresses_sloc0_1_0:
      000014                        448 	.ds 4
      000018                        449 _hex_dump_sloc0_1_0:
      000018                        450 	.ds 2
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable items in internal ram
                                    453 ;--------------------------------------------------------
                                    454 ;--------------------------------------------------------
                                    455 ; indirectly addressable internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area ISEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area IABS    (ABS,DATA)
                                    462 	.area IABS    (ABS,DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; bit data
                                    465 ;--------------------------------------------------------
                                    466 	.area BSEG    (BIT)
                                    467 ;--------------------------------------------------------
                                    468 ; paged external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area PSEG    (PAG,XDATA)
                                    471 ;--------------------------------------------------------
                                    472 ; external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XSEG    (XDATA)
      000003                        475 _i2c_Write_Byte_byte_65536_115:
      000003                        476 	.ds 1
      000004                        477 _i2c_Read_Byte_buff_65536_120:
      000004                        478 	.ds 1
      000005                        479 _i2c_EEPROM_Write_flag_65536_123:
      000005                        480 	.ds 1
      000006                        481 _i2c_EEPROM_Write_flag1_65536_123:
      000006                        482 	.ds 1
      000007                        483 _i2c_EEPROM_Write_address_65536_123:
      000007                        484 	.ds 2
      000009                        485 _i2c_EEPROM_Write_get_address_65536_123:
      000009                        486 	.ds 3
      00000C                        487 _i2c_EEPROM_Write_get_address_int_65536_123:
      00000C                        488 	.ds 6
      000012                        489 _i2c_EEPROM_Write_data_65536_123:
      000012                        490 	.ds 2
      000014                        491 _i2c_EEPROM_Write_get_data_65536_123:
      000014                        492 	.ds 2
      000016                        493 _i2c_EEPROM_Write_get_data_int_65536_123:
      000016                        494 	.ds 4
      00001A                        495 _i2c_EEPROM_Read_flag_65536_162:
      00001A                        496 	.ds 1
      00001B                        497 _i2c_EEPROM_Read_address_65536_162:
      00001B                        498 	.ds 2
      00001D                        499 _i2c_EEPROM_Read_get_address_65536_162:
      00001D                        500 	.ds 3
      000020                        501 _i2c_EEPROM_Read_get_address_int_65536_162:
      000020                        502 	.ds 6
      000026                        503 _hex_addresses_flag_65536_183:
      000026                        504 	.ds 2
      000028                        505 _hex_addresses_address_65536_183:
      000028                        506 	.ds 2
      00002A                        507 _hex_addresses_get_address_65536_183:
      00002A                        508 	.ds 3
      00002D                        509 _hex_addresses_get_address_int_65536_183:
      00002D                        510 	.ds 6
      000033                        511 _hex_data_rec_addr_65536_204:
      000033                        512 	.ds 2
      000035                        513 _hex_dump_count_65536_206:
      000035                        514 	.ds 2
      000037                        515 _hex_dump_flag_65536_206:
      000037                        516 	.ds 2
                                    517 ;--------------------------------------------------------
                                    518 ; absolute external ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area XABS    (ABS,XDATA)
                                    521 ;--------------------------------------------------------
                                    522 ; external initialized ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area XISEG   (XDATA)
                                    525 	.area HOME    (CODE)
                                    526 	.area GSINIT0 (CODE)
                                    527 	.area GSINIT1 (CODE)
                                    528 	.area GSINIT2 (CODE)
                                    529 	.area GSINIT3 (CODE)
                                    530 	.area GSINIT4 (CODE)
                                    531 	.area GSINIT5 (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 	.area GSFINAL (CODE)
                                    534 	.area CSEG    (CODE)
                                    535 ;--------------------------------------------------------
                                    536 ; global & static initialisations
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 ;--------------------------------------------------------
                                    543 ; Home
                                    544 ;--------------------------------------------------------
                                    545 	.area HOME    (CODE)
                                    546 	.area HOME    (CODE)
                                    547 ;--------------------------------------------------------
                                    548 ; code
                                    549 ;--------------------------------------------------------
                                    550 	.area CSEG    (CODE)
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'i2c_init'
                                    553 ;------------------------------------------------------------
                                    554 ;	i2c.c:12: void i2c_init()
                                    555 ;	-----------------------------------------
                                    556 ;	 function i2c_init
                                    557 ;	-----------------------------------------
      00209C                        558 _i2c_init:
                           000007   559 	ar7 = 0x07
                           000006   560 	ar6 = 0x06
                           000005   561 	ar5 = 0x05
                           000004   562 	ar4 = 0x04
                           000003   563 	ar3 = 0x03
                           000002   564 	ar2 = 0x02
                           000001   565 	ar1 = 0x01
                           000000   566 	ar0 = 0x00
                                    567 ;	i2c.c:14: sda=1;
                                    568 ;	assignBit
      00209C D2 94            [12]  569 	setb	_P1_4
                                    570 ;	i2c.c:15: scl=1;
                                    571 ;	assignBit
      00209E D2 93            [12]  572 	setb	_P1_3
                                    573 ;	i2c.c:16: }
      0020A0 22               [24]  574 	ret
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'i2c_start'
                                    577 ;------------------------------------------------------------
                                    578 ;	i2c.c:21: void i2c_start(void)
                                    579 ;	-----------------------------------------
                                    580 ;	 function i2c_start
                                    581 ;	-----------------------------------------
      0020A1                        582 _i2c_start:
                                    583 ;	i2c.c:23: scl=1;
                                    584 ;	assignBit
      0020A1 D2 93            [12]  585 	setb	_P1_3
                                    586 ;	i2c.c:24: sda=1;
                                    587 ;	assignBit
      0020A3 D2 94            [12]  588 	setb	_P1_4
                                    589 ;	i2c.c:25: delay_us(Half_Bit_Delay);
      0020A5 90 01 F4         [24]  590 	mov	dptr,#0x01f4
      0020A8 12 20 62         [24]  591 	lcall	_delay_us
                                    592 ;	i2c.c:26: sda=0;
                                    593 ;	assignBit
      0020AB C2 94            [12]  594 	clr	_P1_4
                                    595 ;	i2c.c:27: delay_us(Half_Bit_Delay);
      0020AD 90 01 F4         [24]  596 	mov	dptr,#0x01f4
                                    597 ;	i2c.c:28: }
      0020B0 02 20 62         [24]  598 	ljmp	_delay_us
                                    599 ;------------------------------------------------------------
                                    600 ;Allocation info for local variables in function 'i2c_stop'
                                    601 ;------------------------------------------------------------
                                    602 ;	i2c.c:33: void i2c_stop(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function i2c_stop
                                    605 ;	-----------------------------------------
      0020B3                        606 _i2c_stop:
                                    607 ;	i2c.c:35: scl=0;
                                    608 ;	assignBit
      0020B3 C2 93            [12]  609 	clr	_P1_3
                                    610 ;	i2c.c:36: delay_us(Half_Bit_Delay/2);
      0020B5 90 00 FA         [24]  611 	mov	dptr,#0x00fa
      0020B8 12 20 62         [24]  612 	lcall	_delay_us
                                    613 ;	i2c.c:37: sda=0;
                                    614 ;	assignBit
      0020BB C2 94            [12]  615 	clr	_P1_4
                                    616 ;	i2c.c:38: delay_us(Half_Bit_Delay/2);
      0020BD 90 00 FA         [24]  617 	mov	dptr,#0x00fa
      0020C0 12 20 62         [24]  618 	lcall	_delay_us
                                    619 ;	i2c.c:39: scl=1;
                                    620 ;	assignBit
      0020C3 D2 93            [12]  621 	setb	_P1_3
                                    622 ;	i2c.c:40: delay_us(Half_Bit_Delay/2);
      0020C5 90 00 FA         [24]  623 	mov	dptr,#0x00fa
      0020C8 12 20 62         [24]  624 	lcall	_delay_us
                                    625 ;	i2c.c:41: sda=1;
                                    626 ;	assignBit
      0020CB D2 94            [12]  627 	setb	_P1_4
                                    628 ;	i2c.c:42: delay_us(Half_Bit_Delay/2);
      0020CD 90 00 FA         [24]  629 	mov	dptr,#0x00fa
                                    630 ;	i2c.c:43: }
      0020D0 02 20 62         [24]  631 	ljmp	_delay_us
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'i2c_ACK'
                                    634 ;------------------------------------------------------------
                                    635 ;	i2c.c:48: void i2c_ACK(void)
                                    636 ;	-----------------------------------------
                                    637 ;	 function i2c_ACK
                                    638 ;	-----------------------------------------
      0020D3                        639 _i2c_ACK:
                                    640 ;	i2c.c:50: scl=0;
                                    641 ;	assignBit
      0020D3 C2 93            [12]  642 	clr	_P1_3
                                    643 ;	i2c.c:51: delay_us(Half_Bit_Delay/2);
      0020D5 90 00 FA         [24]  644 	mov	dptr,#0x00fa
      0020D8 12 20 62         [24]  645 	lcall	_delay_us
                                    646 ;	i2c.c:52: sda=0;
                                    647 ;	assignBit
      0020DB C2 94            [12]  648 	clr	_P1_4
                                    649 ;	i2c.c:53: delay_us(Half_Bit_Delay/2);
      0020DD 90 00 FA         [24]  650 	mov	dptr,#0x00fa
      0020E0 12 20 62         [24]  651 	lcall	_delay_us
                                    652 ;	i2c.c:54: scl=1;
                                    653 ;	assignBit
      0020E3 D2 93            [12]  654 	setb	_P1_3
                                    655 ;	i2c.c:55: delay_us(Half_Bit_Delay/2);
      0020E5 90 00 FA         [24]  656 	mov	dptr,#0x00fa
                                    657 ;	i2c.c:56: }
      0020E8 02 20 62         [24]  658 	ljmp	_delay_us
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'i2c_NoAck'
                                    661 ;------------------------------------------------------------
                                    662 ;	i2c.c:61: void i2c_NoAck(void)
                                    663 ;	-----------------------------------------
                                    664 ;	 function i2c_NoAck
                                    665 ;	-----------------------------------------
      0020EB                        666 _i2c_NoAck:
                                    667 ;	i2c.c:63: scl=0;
                                    668 ;	assignBit
      0020EB C2 93            [12]  669 	clr	_P1_3
                                    670 ;	i2c.c:64: delay_us(Half_Bit_Delay/2);
      0020ED 90 00 FA         [24]  671 	mov	dptr,#0x00fa
      0020F0 12 20 62         [24]  672 	lcall	_delay_us
                                    673 ;	i2c.c:65: sda=1;
                                    674 ;	assignBit
      0020F3 D2 94            [12]  675 	setb	_P1_4
                                    676 ;	i2c.c:66: delay_us(Half_Bit_Delay/2);
      0020F5 90 00 FA         [24]  677 	mov	dptr,#0x00fa
      0020F8 12 20 62         [24]  678 	lcall	_delay_us
                                    679 ;	i2c.c:67: scl=1;
                                    680 ;	assignBit
      0020FB D2 93            [12]  681 	setb	_P1_3
                                    682 ;	i2c.c:68: delay_us(Half_Bit_Delay/2);
      0020FD 90 00 FA         [24]  683 	mov	dptr,#0x00fa
                                    684 ;	i2c.c:69: }
      002100 02 20 62         [24]  685 	ljmp	_delay_us
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'i2c_Restart'
                                    688 ;------------------------------------------------------------
                                    689 ;	i2c.c:74: void i2c_Restart()
                                    690 ;	-----------------------------------------
                                    691 ;	 function i2c_Restart
                                    692 ;	-----------------------------------------
      002103                        693 _i2c_Restart:
                                    694 ;	i2c.c:76: scl=0;
                                    695 ;	assignBit
      002103 C2 93            [12]  696 	clr	_P1_3
                                    697 ;	i2c.c:77: delay_us(Half_Bit_Delay/2);
      002105 90 00 FA         [24]  698 	mov	dptr,#0x00fa
      002108 12 20 62         [24]  699 	lcall	_delay_us
                                    700 ;	i2c.c:78: sda=1;
                                    701 ;	assignBit
      00210B D2 94            [12]  702 	setb	_P1_4
                                    703 ;	i2c.c:79: delay_us(Half_Bit_Delay/2);
      00210D 90 00 FA         [24]  704 	mov	dptr,#0x00fa
      002110 12 20 62         [24]  705 	lcall	_delay_us
                                    706 ;	i2c.c:80: scl=1;
                                    707 ;	assignBit
      002113 D2 93            [12]  708 	setb	_P1_3
                                    709 ;	i2c.c:81: delay_us(Half_Bit_Delay/2);
      002115 90 00 FA         [24]  710 	mov	dptr,#0x00fa
      002118 12 20 62         [24]  711 	lcall	_delay_us
                                    712 ;	i2c.c:82: sda=0;
                                    713 ;	assignBit
      00211B C2 94            [12]  714 	clr	_P1_4
                                    715 ;	i2c.c:83: delay_us(Half_Bit_Delay/2);
      00211D 90 00 FA         [24]  716 	mov	dptr,#0x00fa
                                    717 ;	i2c.c:84: }
      002120 02 20 62         [24]  718 	ljmp	_delay_us
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'eereset'
                                    721 ;------------------------------------------------------------
                                    722 ;i                         Allocated with name '_eereset_i_65536_112'
                                    723 ;------------------------------------------------------------
                                    724 ;	i2c.c:89: void eereset()
                                    725 ;	-----------------------------------------
                                    726 ;	 function eereset
                                    727 ;	-----------------------------------------
      002123                        728 _eereset:
                                    729 ;	i2c.c:92: i2c_start();
      002123 12 20 A1         [24]  730 	lcall	_i2c_start
                                    731 ;	i2c.c:93: for(i=0;i<9;i++)
      002126 7F 00            [12]  732 	mov	r7,#0x00
      002128                        733 00102$:
                                    734 ;	i2c.c:95: sda=1;
                                    735 ;	assignBit
      002128 D2 94            [12]  736 	setb	_P1_4
                                    737 ;	i2c.c:96: scl=1;
                                    738 ;	assignBit
      00212A D2 93            [12]  739 	setb	_P1_3
                                    740 ;	i2c.c:97: delay_us(Half_Bit_Delay);
      00212C 90 01 F4         [24]  741 	mov	dptr,#0x01f4
      00212F C0 07            [24]  742 	push	ar7
      002131 12 20 62         [24]  743 	lcall	_delay_us
                                    744 ;	i2c.c:98: scl=0;
                                    745 ;	assignBit
      002134 C2 93            [12]  746 	clr	_P1_3
                                    747 ;	i2c.c:99: delay_us(Half_Bit_Delay);
      002136 90 01 F4         [24]  748 	mov	dptr,#0x01f4
      002139 12 20 62         [24]  749 	lcall	_delay_us
      00213C D0 07            [24]  750 	pop	ar7
                                    751 ;	i2c.c:93: for(i=0;i<9;i++)
      00213E 0F               [12]  752 	inc	r7
      00213F BF 09 00         [24]  753 	cjne	r7,#0x09,00115$
      002142                        754 00115$:
      002142 40 E4            [24]  755 	jc	00102$
                                    756 ;	i2c.c:101: scl=1;
                                    757 ;	assignBit
      002144 D2 93            [12]  758 	setb	_P1_3
                                    759 ;	i2c.c:102: delay_us(Half_Bit_Delay);
      002146 90 01 F4         [24]  760 	mov	dptr,#0x01f4
      002149 12 20 62         [24]  761 	lcall	_delay_us
                                    762 ;	i2c.c:103: i2c_start();
      00214C 12 20 A1         [24]  763 	lcall	_i2c_start
                                    764 ;	i2c.c:104: i2c_stop();
                                    765 ;	i2c.c:105: }
      00214F 02 20 B3         [24]  766 	ljmp	_i2c_stop
                                    767 ;------------------------------------------------------------
                                    768 ;Allocation info for local variables in function 'i2c_Write_Byte'
                                    769 ;------------------------------------------------------------
                                    770 ;byte                      Allocated with name '_i2c_Write_Byte_byte_65536_115'
                                    771 ;i                         Allocated with name '_i2c_Write_Byte_i_65536_116'
                                    772 ;------------------------------------------------------------
                                    773 ;	i2c.c:111: int i2c_Write_Byte(uint8_t byte)
                                    774 ;	-----------------------------------------
                                    775 ;	 function i2c_Write_Byte
                                    776 ;	-----------------------------------------
      002152                        777 _i2c_Write_Byte:
      002152 E5 82            [12]  778 	mov	a,dpl
      002154 90 00 03         [24]  779 	mov	dptr,#_i2c_Write_Byte_byte_65536_115
      002157 F0               [24]  780 	movx	@dptr,a
                                    781 ;	i2c.c:114: for(i=0;i<8;i++)
      002158 E0               [24]  782 	movx	a,@dptr
      002159 FF               [12]  783 	mov	r7,a
      00215A 7E 00            [12]  784 	mov	r6,#0x00
      00215C                        785 00105$:
                                    786 ;	i2c.c:116: scl=0;
                                    787 ;	assignBit
      00215C C2 93            [12]  788 	clr	_P1_3
                                    789 ;	i2c.c:117: delay_us(Half_Bit_Delay/2);
      00215E 90 00 FA         [24]  790 	mov	dptr,#0x00fa
      002161 C0 07            [24]  791 	push	ar7
      002163 C0 06            [24]  792 	push	ar6
      002165 12 20 62         [24]  793 	lcall	_delay_us
      002168 D0 06            [24]  794 	pop	ar6
      00216A D0 07            [24]  795 	pop	ar7
                                    796 ;	i2c.c:118: if((byte<<i)&0x80)  // Place data bit value on SDA pin
      00216C 8F 04            [24]  797 	mov	ar4,r7
      00216E 7D 00            [12]  798 	mov	r5,#0x00
      002170 8E F0            [24]  799 	mov	b,r6
      002172 05 F0            [12]  800 	inc	b
      002174 80 06            [24]  801 	sjmp	00123$
      002176                        802 00122$:
      002176 EC               [12]  803 	mov	a,r4
      002177 2C               [12]  804 	add	a,r4
      002178 FC               [12]  805 	mov	r4,a
      002179 ED               [12]  806 	mov	a,r5
      00217A 33               [12]  807 	rlc	a
      00217B FD               [12]  808 	mov	r5,a
      00217C                        809 00123$:
      00217C D5 F0 F7         [24]  810 	djnz	b,00122$
      00217F EC               [12]  811 	mov	a,r4
      002180 30 E7 04         [24]  812 	jnb	acc.7,00102$
                                    813 ;	i2c.c:119: sda=1;	// If bit is high, make SDA high
                                    814 ;	assignBit
      002183 D2 94            [12]  815 	setb	_P1_4
      002185 80 02            [24]  816 	sjmp	00103$
      002187                        817 00102$:
                                    818 ;	i2c.c:121: sda=0;	// If bit is low, make SDA low
                                    819 ;	assignBit
      002187 C2 94            [12]  820 	clr	_P1_4
      002189                        821 00103$:
                                    822 ;	i2c.c:122: delay_us(Half_Bit_Delay/2);
      002189 90 00 FA         [24]  823 	mov	dptr,#0x00fa
      00218C C0 07            [24]  824 	push	ar7
      00218E C0 06            [24]  825 	push	ar6
      002190 12 20 62         [24]  826 	lcall	_delay_us
                                    827 ;	i2c.c:123: scl=1;
                                    828 ;	assignBit
      002193 D2 93            [12]  829 	setb	_P1_3
                                    830 ;	i2c.c:124: delay_us(Half_Bit_Delay);
      002195 90 01 F4         [24]  831 	mov	dptr,#0x01f4
      002198 12 20 62         [24]  832 	lcall	_delay_us
      00219B D0 06            [24]  833 	pop	ar6
      00219D D0 07            [24]  834 	pop	ar7
                                    835 ;	i2c.c:114: for(i=0;i<8;i++)
      00219F 0E               [12]  836 	inc	r6
      0021A0 BE 08 00         [24]  837 	cjne	r6,#0x08,00125$
      0021A3                        838 00125$:
      0021A3 40 B7            [24]  839 	jc	00105$
                                    840 ;	i2c.c:126: scl=0;
                                    841 ;	assignBit
      0021A5 C2 93            [12]  842 	clr	_P1_3
                                    843 ;	i2c.c:127: sda=1;
                                    844 ;	assignBit
      0021A7 D2 94            [12]  845 	setb	_P1_4
                                    846 ;	i2c.c:128: delay_us(Half_Bit_Delay);
      0021A9 90 01 F4         [24]  847 	mov	dptr,#0x01f4
      0021AC 12 20 62         [24]  848 	lcall	_delay_us
                                    849 ;	i2c.c:129: scl=1;
                                    850 ;	assignBit
      0021AF D2 93            [12]  851 	setb	_P1_3
                                    852 ;	i2c.c:130: delay_us(Half_Bit_Delay);
      0021B1 90 01 F4         [24]  853 	mov	dptr,#0x01f4
      0021B4 12 20 62         [24]  854 	lcall	_delay_us
                                    855 ;	i2c.c:131: return sda;
      0021B7 A2 94            [12]  856 	mov	c,_P1_4
      0021B9 E4               [12]  857 	clr	a
      0021BA 33               [12]  858 	rlc	a
      0021BB FE               [12]  859 	mov	r6,a
      0021BC 7F 00            [12]  860 	mov	r7,#0x00
      0021BE 8E 82            [24]  861 	mov	dpl,r6
      0021C0 8F 83            [24]  862 	mov	dph,r7
                                    863 ;	i2c.c:132: }
      0021C2 22               [24]  864 	ret
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'i2c_Read_Byte'
                                    867 ;------------------------------------------------------------
                                    868 ;i                         Allocated with name '_i2c_Read_Byte_i_65536_120'
                                    869 ;d                         Allocated with name '_i2c_Read_Byte_d_65536_120'
                                    870 ;buff                      Allocated with name '_i2c_Read_Byte_buff_65536_120'
                                    871 ;------------------------------------------------------------
                                    872 ;	i2c.c:138: uint8_t i2c_Read_Byte(void)
                                    873 ;	-----------------------------------------
                                    874 ;	 function i2c_Read_Byte
                                    875 ;	-----------------------------------------
      0021C3                        876 _i2c_Read_Byte:
                                    877 ;	i2c.c:140: uint8_t i,d,buff=0;
      0021C3 90 00 04         [24]  878 	mov	dptr,#_i2c_Read_Byte_buff_65536_120
      0021C6 E4               [12]  879 	clr	a
      0021C7 F0               [24]  880 	movx	@dptr,a
                                    881 ;	i2c.c:141: for(i=0;i<8;i++)
      0021C8 7F 00            [12]  882 	mov	r7,#0x00
      0021CA                        883 00102$:
                                    884 ;	i2c.c:143: scl=0;
                                    885 ;	assignBit
      0021CA C2 93            [12]  886 	clr	_P1_3
                                    887 ;	i2c.c:144: sda=1;
                                    888 ;	assignBit
      0021CC D2 94            [12]  889 	setb	_P1_4
                                    890 ;	i2c.c:145: delay_us(Half_Bit_Delay);
      0021CE 90 01 F4         [24]  891 	mov	dptr,#0x01f4
      0021D1 C0 07            [24]  892 	push	ar7
      0021D3 12 20 62         [24]  893 	lcall	_delay_us
                                    894 ;	i2c.c:146: scl=1;
                                    895 ;	assignBit
      0021D6 D2 93            [12]  896 	setb	_P1_3
                                    897 ;	i2c.c:147: delay_us(Half_Bit_Delay/2);
      0021D8 90 00 FA         [24]  898 	mov	dptr,#0x00fa
      0021DB 12 20 62         [24]  899 	lcall	_delay_us
      0021DE D0 07            [24]  900 	pop	ar7
                                    901 ;	i2c.c:148: d=sda;
      0021E0 A2 94            [12]  902 	mov	c,_P1_4
                                    903 ;	i2c.c:149: buff |=(sda<<(7-i));
      0021E2 A2 94            [12]  904 	mov	c,_P1_4
      0021E4 E4               [12]  905 	clr	a
      0021E5 33               [12]  906 	rlc	a
      0021E6 FE               [12]  907 	mov	r6,a
      0021E7 8F 05            [24]  908 	mov	ar5,r7
      0021E9 74 07            [12]  909 	mov	a,#0x07
      0021EB C3               [12]  910 	clr	c
      0021EC 9D               [12]  911 	subb	a,r5
      0021ED FD               [12]  912 	mov	r5,a
      0021EE 8D F0            [24]  913 	mov	b,r5
      0021F0 05 F0            [12]  914 	inc	b
      0021F2 EE               [12]  915 	mov	a,r6
      0021F3 80 02            [24]  916 	sjmp	00117$
      0021F5                        917 00115$:
      0021F5 25 E0            [12]  918 	add	a,acc
      0021F7                        919 00117$:
      0021F7 D5 F0 FB         [24]  920 	djnz	b,00115$
      0021FA FD               [12]  921 	mov	r5,a
      0021FB 90 00 04         [24]  922 	mov	dptr,#_i2c_Read_Byte_buff_65536_120
      0021FE E0               [24]  923 	movx	a,@dptr
      0021FF 4D               [12]  924 	orl	a,r5
      002200 F0               [24]  925 	movx	@dptr,a
                                    926 ;	i2c.c:150: delay_us(Half_Bit_Delay/2);
      002201 90 00 FA         [24]  927 	mov	dptr,#0x00fa
      002204 C0 07            [24]  928 	push	ar7
      002206 12 20 62         [24]  929 	lcall	_delay_us
      002209 D0 07            [24]  930 	pop	ar7
                                    931 ;	i2c.c:141: for(i=0;i<8;i++)
      00220B 0F               [12]  932 	inc	r7
      00220C BF 08 00         [24]  933 	cjne	r7,#0x08,00118$
      00220F                        934 00118$:
      00220F 40 B9            [24]  935 	jc	00102$
                                    936 ;	i2c.c:152: return buff;
      002211 90 00 04         [24]  937 	mov	dptr,#_i2c_Read_Byte_buff_65536_120
      002214 E0               [24]  938 	movx	a,@dptr
                                    939 ;	i2c.c:153: }
      002215 F5 82            [12]  940 	mov	dpl,a
      002217 22               [24]  941 	ret
                                    942 ;------------------------------------------------------------
                                    943 ;Allocation info for local variables in function 'i2c_EEPROM_Write'
                                    944 ;------------------------------------------------------------
                                    945 ;sloc0                     Allocated with name '_i2c_EEPROM_Write_sloc0_1_0'
                                    946 ;sloc1                     Allocated with name '_i2c_EEPROM_Write_sloc1_1_0'
                                    947 ;flag                      Allocated with name '_i2c_EEPROM_Write_flag_65536_123'
                                    948 ;flag1                     Allocated with name '_i2c_EEPROM_Write_flag1_65536_123'
                                    949 ;address                   Allocated with name '_i2c_EEPROM_Write_address_65536_123'
                                    950 ;get_address               Allocated with name '_i2c_EEPROM_Write_get_address_65536_123'
                                    951 ;get_address_int           Allocated with name '_i2c_EEPROM_Write_get_address_int_65536_123'
                                    952 ;data                      Allocated with name '_i2c_EEPROM_Write_data_65536_123'
                                    953 ;get_data                  Allocated with name '_i2c_EEPROM_Write_get_data_65536_123'
                                    954 ;get_data_int              Allocated with name '_i2c_EEPROM_Write_get_data_int_65536_123'
                                    955 ;control_byte              Allocated with name '_i2c_EEPROM_Write_control_byte_65536_123'
                                    956 ;address_byte              Allocated with name '_i2c_EEPROM_Write_address_byte_65536_123'
                                    957 ;i                         Allocated with name '_i2c_EEPROM_Write_i_65536_123'
                                    958 ;------------------------------------------------------------
                                    959 ;	i2c.c:159: void i2c_EEPROM_Write()
                                    960 ;	-----------------------------------------
                                    961 ;	 function i2c_EEPROM_Write
                                    962 ;	-----------------------------------------
      002218                        963 _i2c_EEPROM_Write:
                                    964 ;	i2c.c:161: uint8_t flag=1;
      002218 90 00 05         [24]  965 	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
      00221B 74 01            [12]  966 	mov	a,#0x01
      00221D F0               [24]  967 	movx	@dptr,a
                                    968 ;	i2c.c:162: uint8_t flag1=1;
      00221E 90 00 06         [24]  969 	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
      002221 F0               [24]  970 	movx	@dptr,a
                                    971 ;	i2c.c:163: uint16_t address=0;//to store the address from the user in a single integer form
      002222 90 00 07         [24]  972 	mov	dptr,#_i2c_EEPROM_Write_address_65536_123
      002225 E4               [12]  973 	clr	a
      002226 F0               [24]  974 	movx	@dptr,a
      002227 A3               [24]  975 	inc	dptr
      002228 F0               [24]  976 	movx	@dptr,a
                                    977 ;	i2c.c:166: uint16_t data=0;
      002229 90 00 12         [24]  978 	mov	dptr,#_i2c_EEPROM_Write_data_65536_123
      00222C F0               [24]  979 	movx	@dptr,a
      00222D A3               [24]  980 	inc	dptr
      00222E F0               [24]  981 	movx	@dptr,a
                                    982 ;	i2c.c:174: while(flag)
      00222F                        983 00150$:
      00222F 90 00 05         [24]  984 	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
      002232 E0               [24]  985 	movx	a,@dptr
      002233 70 03            [24]  986 	jnz	00458$
      002235 02 24 CA         [24]  987 	ljmp	00245$
      002238                        988 00458$:
                                    989 ;	i2c.c:176: flag=0;
      002238 90 00 05         [24]  990 	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
      00223B E4               [12]  991 	clr	a
      00223C F0               [24]  992 	movx	@dptr,a
                                    993 ;	i2c.c:177: printf_tiny("\n\rEnter the address between 0x00-0x7ff\n\r");
      00223D 74 09            [12]  994 	mov	a,#___str_0
      00223F C0 E0            [24]  995 	push	acc
      002241 74 3F            [12]  996 	mov	a,#(___str_0 >> 8)
      002243 C0 E0            [24]  997 	push	acc
      002245 12 37 0C         [24]  998 	lcall	_printf_tiny
      002248 15 81            [12]  999 	dec	sp
      00224A 15 81            [12] 1000 	dec	sp
                                   1001 ;	i2c.c:178: for(i=0;i<3;i++)
      00224C 7F 00            [12] 1002 	mov	r7,#0x00
      00224E                       1003 00202$:
                                   1004 ;	i2c.c:180: get_address[i]=getchar();
      00224E EF               [12] 1005 	mov	a,r7
      00224F 24 09            [12] 1006 	add	a,#_i2c_EEPROM_Write_get_address_65536_123
      002251 FD               [12] 1007 	mov	r5,a
      002252 E4               [12] 1008 	clr	a
      002253 34 00            [12] 1009 	addc	a,#(_i2c_EEPROM_Write_get_address_65536_123 >> 8)
      002255 FE               [12] 1010 	mov	r6,a
      002256 C0 07            [24] 1011 	push	ar7
      002258 C0 06            [24] 1012 	push	ar6
      00225A C0 05            [24] 1013 	push	ar5
      00225C 12 34 3F         [24] 1014 	lcall	_getchar
      00225F AB 82            [24] 1015 	mov	r3,dpl
      002261 D0 05            [24] 1016 	pop	ar5
      002263 D0 06            [24] 1017 	pop	ar6
      002265 8D 82            [24] 1018 	mov	dpl,r5
      002267 8E 83            [24] 1019 	mov	dph,r6
      002269 EB               [12] 1020 	mov	a,r3
      00226A F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	i2c.c:181: putchar(get_address[i]);
      00226B 7E 00            [12] 1023 	mov	r6,#0x00
      00226D 8B 82            [24] 1024 	mov	dpl,r3
      00226F 8E 83            [24] 1025 	mov	dph,r6
      002271 12 34 20         [24] 1026 	lcall	_putchar
      002274 D0 07            [24] 1027 	pop	ar7
                                   1028 ;	i2c.c:178: for(i=0;i<3;i++)
      002276 0F               [12] 1029 	inc	r7
      002277 BF 03 00         [24] 1030 	cjne	r7,#0x03,00459$
      00227A                       1031 00459$:
      00227A 40 D2            [24] 1032 	jc	00202$
                                   1033 ;	i2c.c:184: for(i=0;i<3;i++)
      00227C 7F 00            [12] 1034 	mov	r7,#0x00
      00227E                       1035 00204$:
                                   1036 ;	i2c.c:186: switch(i)
      00227E BF 00 02         [24] 1037 	cjne	r7,#0x00,00461$
      002281 80 0E            [24] 1038 	sjmp	00102$
      002283                       1039 00461$:
      002283 BF 01 02         [24] 1040 	cjne	r7,#0x01,00462$
      002286 80 5C            [24] 1041 	sjmp	00107$
      002288                       1042 00462$:
      002288 BF 02 03         [24] 1043 	cjne	r7,#0x02,00463$
      00228B 02 23 D7         [24] 1044 	ljmp	00127$
      00228E                       1045 00463$:
      00228E 02 24 BE         [24] 1046 	ljmp	00205$
                                   1047 ;	i2c.c:188: case 0:
      002291                       1048 00102$:
                                   1049 ;	i2c.c:189: if((get_address[i]>=48) && (get_address[i]<=55))
      002291 EF               [12] 1050 	mov	a,r7
      002292 24 09            [12] 1051 	add	a,#_i2c_EEPROM_Write_get_address_65536_123
      002294 F5 82            [12] 1052 	mov	dpl,a
      002296 E4               [12] 1053 	clr	a
      002297 34 00            [12] 1054 	addc	a,#(_i2c_EEPROM_Write_get_address_65536_123 >> 8)
      002299 F5 83            [12] 1055 	mov	dph,a
      00229B E0               [24] 1056 	movx	a,@dptr
      00229C FE               [12] 1057 	mov	r6,a
      00229D BE 30 00         [24] 1058 	cjne	r6,#0x30,00464$
      0022A0                       1059 00464$:
      0022A0 40 26            [24] 1060 	jc	00104$
      0022A2 EE               [12] 1061 	mov	a,r6
      0022A3 24 C8            [12] 1062 	add	a,#0xff - 0x37
      0022A5 40 21            [24] 1063 	jc	00104$
                                   1064 ;	i2c.c:191: get_address_int[i]= get_address[i]-48;
      0022A7 EF               [12] 1065 	mov	a,r7
      0022A8 75 F0 02         [24] 1066 	mov	b,#0x02
      0022AB A4               [48] 1067 	mul	ab
      0022AC 24 0C            [12] 1068 	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
      0022AE F5 82            [12] 1069 	mov	dpl,a
      0022B0 74 00            [12] 1070 	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
      0022B2 35 F0            [12] 1071 	addc	a,b
      0022B4 F5 83            [12] 1072 	mov	dph,a
      0022B6 7D 00            [12] 1073 	mov	r5,#0x00
      0022B8 EE               [12] 1074 	mov	a,r6
      0022B9 24 D0            [12] 1075 	add	a,#0xd0
      0022BB FE               [12] 1076 	mov	r6,a
      0022BC ED               [12] 1077 	mov	a,r5
      0022BD 34 FF            [12] 1078 	addc	a,#0xff
      0022BF FD               [12] 1079 	mov	r5,a
      0022C0 EE               [12] 1080 	mov	a,r6
      0022C1 F0               [24] 1081 	movx	@dptr,a
      0022C2 ED               [12] 1082 	mov	a,r5
      0022C3 A3               [24] 1083 	inc	dptr
      0022C4 F0               [24] 1084 	movx	@dptr,a
      0022C5 02 24 BE         [24] 1085 	ljmp	00205$
      0022C8                       1086 00104$:
                                   1087 ;	i2c.c:195: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
      0022C8 C0 07            [24] 1088 	push	ar7
      0022CA 74 32            [12] 1089 	mov	a,#___str_1
      0022CC C0 E0            [24] 1090 	push	acc
      0022CE 74 3F            [12] 1091 	mov	a,#(___str_1 >> 8)
      0022D0 C0 E0            [24] 1092 	push	acc
      0022D2 12 37 0C         [24] 1093 	lcall	_printf_tiny
      0022D5 15 81            [12] 1094 	dec	sp
      0022D7 15 81            [12] 1095 	dec	sp
      0022D9 D0 07            [24] 1096 	pop	ar7
                                   1097 ;	i2c.c:196: flag=1;
      0022DB 90 00 05         [24] 1098 	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
      0022DE 74 01            [12] 1099 	mov	a,#0x01
      0022E0 F0               [24] 1100 	movx	@dptr,a
                                   1101 ;	i2c.c:198: break;
      0022E1 02 24 BE         [24] 1102 	ljmp	00205$
                                   1103 ;	i2c.c:200: case 1:
      0022E4                       1104 00107$:
                                   1105 ;	i2c.c:201: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
      0022E4 EF               [12] 1106 	mov	a,r7
      0022E5 24 09            [12] 1107 	add	a,#_i2c_EEPROM_Write_get_address_65536_123
      0022E7 FD               [12] 1108 	mov	r5,a
      0022E8 E4               [12] 1109 	clr	a
      0022E9 34 00            [12] 1110 	addc	a,#(_i2c_EEPROM_Write_get_address_65536_123 >> 8)
      0022EB FE               [12] 1111 	mov	r6,a
      0022EC 8D 82            [24] 1112 	mov	dpl,r5
      0022EE 8E 83            [24] 1113 	mov	dph,r6
      0022F0 E0               [24] 1114 	movx	a,@dptr
      0022F1 FC               [12] 1115 	mov	r4,a
      0022F2 BC 30 00         [24] 1116 	cjne	r4,#0x30,00467$
      0022F5                       1117 00467$:
      0022F5 40 05            [24] 1118 	jc	00124$
      0022F7 EC               [12] 1119 	mov	a,r4
      0022F8 24 C6            [12] 1120 	add	a,#0xff - 0x39
      0022FA 50 26            [24] 1121 	jnc	00119$
      0022FC                       1122 00124$:
      0022FC 8D 82            [24] 1123 	mov	dpl,r5
      0022FE 8E 83            [24] 1124 	mov	dph,r6
      002300 E0               [24] 1125 	movx	a,@dptr
      002301 FC               [12] 1126 	mov	r4,a
      002302 BC 41 00         [24] 1127 	cjne	r4,#0x41,00470$
      002305                       1128 00470$:
      002305 40 05            [24] 1129 	jc	00126$
      002307 EC               [12] 1130 	mov	a,r4
      002308 24 B9            [12] 1131 	add	a,#0xff - 0x46
      00230A 50 16            [24] 1132 	jnc	00119$
      00230C                       1133 00126$:
      00230C 8D 82            [24] 1134 	mov	dpl,r5
      00230E 8E 83            [24] 1135 	mov	dph,r6
      002310 E0               [24] 1136 	movx	a,@dptr
      002311 FC               [12] 1137 	mov	r4,a
      002312 BC 61 00         [24] 1138 	cjne	r4,#0x61,00473$
      002315                       1139 00473$:
      002315 50 03            [24] 1140 	jnc	00474$
      002317 02 23 BB         [24] 1141 	ljmp	00120$
      00231A                       1142 00474$:
      00231A EC               [12] 1143 	mov	a,r4
      00231B 24 99            [12] 1144 	add	a,#0xff - 0x66
      00231D 50 03            [24] 1145 	jnc	00475$
      00231F 02 23 BB         [24] 1146 	ljmp	00120$
      002322                       1147 00475$:
      002322                       1148 00119$:
                                   1149 ;	i2c.c:203: if((get_address[i]>=48) && (get_address[i]<=57))
      002322 8D 82            [24] 1150 	mov	dpl,r5
      002324 8E 83            [24] 1151 	mov	dph,r6
      002326 E0               [24] 1152 	movx	a,@dptr
      002327 FC               [12] 1153 	mov	r4,a
      002328 BC 30 00         [24] 1154 	cjne	r4,#0x30,00476$
      00232B                       1155 00476$:
      00232B 40 26            [24] 1156 	jc	00116$
      00232D EC               [12] 1157 	mov	a,r4
      00232E 24 C6            [12] 1158 	add	a,#0xff - 0x39
      002330 40 21            [24] 1159 	jc	00116$
                                   1160 ;	i2c.c:205: get_address_int[i]=get_address[i]-48;
      002332 EF               [12] 1161 	mov	a,r7
      002333 75 F0 02         [24] 1162 	mov	b,#0x02
      002336 A4               [48] 1163 	mul	ab
      002337 24 0C            [12] 1164 	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
      002339 F5 82            [12] 1165 	mov	dpl,a
      00233B 74 00            [12] 1166 	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
      00233D 35 F0            [12] 1167 	addc	a,b
      00233F F5 83            [12] 1168 	mov	dph,a
      002341 7B 00            [12] 1169 	mov	r3,#0x00
      002343 EC               [12] 1170 	mov	a,r4
      002344 24 D0            [12] 1171 	add	a,#0xd0
      002346 FC               [12] 1172 	mov	r4,a
      002347 EB               [12] 1173 	mov	a,r3
      002348 34 FF            [12] 1174 	addc	a,#0xff
      00234A FB               [12] 1175 	mov	r3,a
      00234B EC               [12] 1176 	mov	a,r4
      00234C F0               [24] 1177 	movx	@dptr,a
      00234D EB               [12] 1178 	mov	a,r3
      00234E A3               [24] 1179 	inc	dptr
      00234F F0               [24] 1180 	movx	@dptr,a
      002350 02 24 BE         [24] 1181 	ljmp	00205$
      002353                       1182 00116$:
                                   1183 ;	i2c.c:207: else if((get_address[i]>=65) && (get_address[i]<=70))
      002353 8D 82            [24] 1184 	mov	dpl,r5
      002355 8E 83            [24] 1185 	mov	dph,r6
      002357 E0               [24] 1186 	movx	a,@dptr
      002358 FC               [12] 1187 	mov	r4,a
      002359 BC 41 00         [24] 1188 	cjne	r4,#0x41,00479$
      00235C                       1189 00479$:
      00235C 40 26            [24] 1190 	jc	00112$
      00235E EC               [12] 1191 	mov	a,r4
      00235F 24 B9            [12] 1192 	add	a,#0xff - 0x46
      002361 40 21            [24] 1193 	jc	00112$
                                   1194 ;	i2c.c:209: get_address_int[i]=get_address[i]-55;
      002363 EF               [12] 1195 	mov	a,r7
      002364 75 F0 02         [24] 1196 	mov	b,#0x02
      002367 A4               [48] 1197 	mul	ab
      002368 24 0C            [12] 1198 	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
      00236A F5 82            [12] 1199 	mov	dpl,a
      00236C 74 00            [12] 1200 	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
      00236E 35 F0            [12] 1201 	addc	a,b
      002370 F5 83            [12] 1202 	mov	dph,a
      002372 7B 00            [12] 1203 	mov	r3,#0x00
      002374 EC               [12] 1204 	mov	a,r4
      002375 24 C9            [12] 1205 	add	a,#0xc9
      002377 FC               [12] 1206 	mov	r4,a
      002378 EB               [12] 1207 	mov	a,r3
      002379 34 FF            [12] 1208 	addc	a,#0xff
      00237B FB               [12] 1209 	mov	r3,a
      00237C EC               [12] 1210 	mov	a,r4
      00237D F0               [24] 1211 	movx	@dptr,a
      00237E EB               [12] 1212 	mov	a,r3
      00237F A3               [24] 1213 	inc	dptr
      002380 F0               [24] 1214 	movx	@dptr,a
      002381 02 24 BE         [24] 1215 	ljmp	00205$
      002384                       1216 00112$:
                                   1217 ;	i2c.c:211: else if((get_address[i]>=97) && (get_address[i]<=102))
      002384 8D 82            [24] 1218 	mov	dpl,r5
      002386 8E 83            [24] 1219 	mov	dph,r6
      002388 E0               [24] 1220 	movx	a,@dptr
      002389 FE               [12] 1221 	mov	r6,a
      00238A BE 61 00         [24] 1222 	cjne	r6,#0x61,00482$
      00238D                       1223 00482$:
      00238D 50 03            [24] 1224 	jnc	00483$
      00238F 02 24 BE         [24] 1225 	ljmp	00205$
      002392                       1226 00483$:
      002392 EE               [12] 1227 	mov	a,r6
      002393 24 99            [12] 1228 	add	a,#0xff - 0x66
      002395 50 03            [24] 1229 	jnc	00484$
      002397 02 24 BE         [24] 1230 	ljmp	00205$
      00239A                       1231 00484$:
                                   1232 ;	i2c.c:213: get_address_int[i]=get_address[i]-87;
      00239A EF               [12] 1233 	mov	a,r7
      00239B 75 F0 02         [24] 1234 	mov	b,#0x02
      00239E A4               [48] 1235 	mul	ab
      00239F 24 0C            [12] 1236 	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
      0023A1 F5 82            [12] 1237 	mov	dpl,a
      0023A3 74 00            [12] 1238 	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
      0023A5 35 F0            [12] 1239 	addc	a,b
      0023A7 F5 83            [12] 1240 	mov	dph,a
      0023A9 7D 00            [12] 1241 	mov	r5,#0x00
      0023AB EE               [12] 1242 	mov	a,r6
      0023AC 24 A9            [12] 1243 	add	a,#0xa9
      0023AE FE               [12] 1244 	mov	r6,a
      0023AF ED               [12] 1245 	mov	a,r5
      0023B0 34 FF            [12] 1246 	addc	a,#0xff
      0023B2 FD               [12] 1247 	mov	r5,a
      0023B3 EE               [12] 1248 	mov	a,r6
      0023B4 F0               [24] 1249 	movx	@dptr,a
      0023B5 ED               [12] 1250 	mov	a,r5
      0023B6 A3               [24] 1251 	inc	dptr
      0023B7 F0               [24] 1252 	movx	@dptr,a
      0023B8 02 24 BE         [24] 1253 	ljmp	00205$
      0023BB                       1254 00120$:
                                   1255 ;	i2c.c:218: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
      0023BB C0 07            [24] 1256 	push	ar7
      0023BD 74 32            [12] 1257 	mov	a,#___str_1
      0023BF C0 E0            [24] 1258 	push	acc
      0023C1 74 3F            [12] 1259 	mov	a,#(___str_1 >> 8)
      0023C3 C0 E0            [24] 1260 	push	acc
      0023C5 12 37 0C         [24] 1261 	lcall	_printf_tiny
      0023C8 15 81            [12] 1262 	dec	sp
      0023CA 15 81            [12] 1263 	dec	sp
      0023CC D0 07            [24] 1264 	pop	ar7
                                   1265 ;	i2c.c:219: flag=1;
      0023CE 90 00 05         [24] 1266 	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
      0023D1 74 01            [12] 1267 	mov	a,#0x01
      0023D3 F0               [24] 1268 	movx	@dptr,a
                                   1269 ;	i2c.c:221: break;
      0023D4 02 24 BE         [24] 1270 	ljmp	00205$
                                   1271 ;	i2c.c:223: case 2:
      0023D7                       1272 00127$:
                                   1273 ;	i2c.c:224: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
      0023D7 EF               [12] 1274 	mov	a,r7
      0023D8 24 09            [12] 1275 	add	a,#_i2c_EEPROM_Write_get_address_65536_123
      0023DA FD               [12] 1276 	mov	r5,a
      0023DB E4               [12] 1277 	clr	a
      0023DC 34 00            [12] 1278 	addc	a,#(_i2c_EEPROM_Write_get_address_65536_123 >> 8)
      0023DE FE               [12] 1279 	mov	r6,a
      0023DF 8D 82            [24] 1280 	mov	dpl,r5
      0023E1 8E 83            [24] 1281 	mov	dph,r6
      0023E3 E0               [24] 1282 	movx	a,@dptr
      0023E4 FC               [12] 1283 	mov	r4,a
      0023E5 BC 30 00         [24] 1284 	cjne	r4,#0x30,00485$
      0023E8                       1285 00485$:
      0023E8 40 05            [24] 1286 	jc	00144$
      0023EA EC               [12] 1287 	mov	a,r4
      0023EB 24 C6            [12] 1288 	add	a,#0xff - 0x39
      0023ED 50 26            [24] 1289 	jnc	00139$
      0023EF                       1290 00144$:
      0023EF 8D 82            [24] 1291 	mov	dpl,r5
      0023F1 8E 83            [24] 1292 	mov	dph,r6
      0023F3 E0               [24] 1293 	movx	a,@dptr
      0023F4 FC               [12] 1294 	mov	r4,a
      0023F5 BC 41 00         [24] 1295 	cjne	r4,#0x41,00488$
      0023F8                       1296 00488$:
      0023F8 40 05            [24] 1297 	jc	00146$
      0023FA EC               [12] 1298 	mov	a,r4
      0023FB 24 B9            [12] 1299 	add	a,#0xff - 0x46
      0023FD 50 16            [24] 1300 	jnc	00139$
      0023FF                       1301 00146$:
      0023FF 8D 82            [24] 1302 	mov	dpl,r5
      002401 8E 83            [24] 1303 	mov	dph,r6
      002403 E0               [24] 1304 	movx	a,@dptr
      002404 FC               [12] 1305 	mov	r4,a
      002405 BC 61 00         [24] 1306 	cjne	r4,#0x61,00491$
      002408                       1307 00491$:
      002408 50 03            [24] 1308 	jnc	00492$
      00240A 02 24 A5         [24] 1309 	ljmp	00140$
      00240D                       1310 00492$:
      00240D EC               [12] 1311 	mov	a,r4
      00240E 24 99            [12] 1312 	add	a,#0xff - 0x66
      002410 50 03            [24] 1313 	jnc	00493$
      002412 02 24 A5         [24] 1314 	ljmp	00140$
      002415                       1315 00493$:
      002415                       1316 00139$:
                                   1317 ;	i2c.c:226: if((get_address[i]>=48) && (get_address[i]<=57))
      002415 8D 82            [24] 1318 	mov	dpl,r5
      002417 8E 83            [24] 1319 	mov	dph,r6
      002419 E0               [24] 1320 	movx	a,@dptr
      00241A FC               [12] 1321 	mov	r4,a
      00241B BC 30 00         [24] 1322 	cjne	r4,#0x30,00494$
      00241E                       1323 00494$:
      00241E 40 25            [24] 1324 	jc	00136$
      002420 EC               [12] 1325 	mov	a,r4
      002421 24 C6            [12] 1326 	add	a,#0xff - 0x39
      002423 40 20            [24] 1327 	jc	00136$
                                   1328 ;	i2c.c:228: get_address_int[i]=get_address[i]-48;
      002425 EF               [12] 1329 	mov	a,r7
      002426 75 F0 02         [24] 1330 	mov	b,#0x02
      002429 A4               [48] 1331 	mul	ab
      00242A 24 0C            [12] 1332 	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
      00242C F5 82            [12] 1333 	mov	dpl,a
      00242E 74 00            [12] 1334 	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
      002430 35 F0            [12] 1335 	addc	a,b
      002432 F5 83            [12] 1336 	mov	dph,a
      002434 7B 00            [12] 1337 	mov	r3,#0x00
      002436 EC               [12] 1338 	mov	a,r4
      002437 24 D0            [12] 1339 	add	a,#0xd0
      002439 FC               [12] 1340 	mov	r4,a
      00243A EB               [12] 1341 	mov	a,r3
      00243B 34 FF            [12] 1342 	addc	a,#0xff
      00243D FB               [12] 1343 	mov	r3,a
      00243E EC               [12] 1344 	mov	a,r4
      00243F F0               [24] 1345 	movx	@dptr,a
      002440 EB               [12] 1346 	mov	a,r3
      002441 A3               [24] 1347 	inc	dptr
      002442 F0               [24] 1348 	movx	@dptr,a
      002443 80 79            [24] 1349 	sjmp	00205$
      002445                       1350 00136$:
                                   1351 ;	i2c.c:230: else if((get_address[i]>=65) && (get_address[i]<=70))
      002445 8D 82            [24] 1352 	mov	dpl,r5
      002447 8E 83            [24] 1353 	mov	dph,r6
      002449 E0               [24] 1354 	movx	a,@dptr
      00244A FC               [12] 1355 	mov	r4,a
      00244B BC 41 00         [24] 1356 	cjne	r4,#0x41,00497$
      00244E                       1357 00497$:
      00244E 40 25            [24] 1358 	jc	00132$
      002450 EC               [12] 1359 	mov	a,r4
      002451 24 B9            [12] 1360 	add	a,#0xff - 0x46
      002453 40 20            [24] 1361 	jc	00132$
                                   1362 ;	i2c.c:232: get_address_int[i]=get_address[i]-55;
      002455 EF               [12] 1363 	mov	a,r7
      002456 75 F0 02         [24] 1364 	mov	b,#0x02
      002459 A4               [48] 1365 	mul	ab
      00245A 24 0C            [12] 1366 	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
      00245C F5 82            [12] 1367 	mov	dpl,a
      00245E 74 00            [12] 1368 	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
      002460 35 F0            [12] 1369 	addc	a,b
      002462 F5 83            [12] 1370 	mov	dph,a
      002464 7B 00            [12] 1371 	mov	r3,#0x00
      002466 EC               [12] 1372 	mov	a,r4
      002467 24 C9            [12] 1373 	add	a,#0xc9
      002469 FC               [12] 1374 	mov	r4,a
      00246A EB               [12] 1375 	mov	a,r3
      00246B 34 FF            [12] 1376 	addc	a,#0xff
      00246D FB               [12] 1377 	mov	r3,a
      00246E EC               [12] 1378 	mov	a,r4
      00246F F0               [24] 1379 	movx	@dptr,a
      002470 EB               [12] 1380 	mov	a,r3
      002471 A3               [24] 1381 	inc	dptr
      002472 F0               [24] 1382 	movx	@dptr,a
      002473 80 49            [24] 1383 	sjmp	00205$
      002475                       1384 00132$:
                                   1385 ;	i2c.c:234: else if((get_address[i]>=97) && (get_address[i]<=102))
      002475 8D 82            [24] 1386 	mov	dpl,r5
      002477 8E 83            [24] 1387 	mov	dph,r6
      002479 E0               [24] 1388 	movx	a,@dptr
      00247A FE               [12] 1389 	mov	r6,a
      00247B BE 61 00         [24] 1390 	cjne	r6,#0x61,00500$
      00247E                       1391 00500$:
      00247E 40 3E            [24] 1392 	jc	00205$
      002480 EE               [12] 1393 	mov	a,r6
      002481 24 99            [12] 1394 	add	a,#0xff - 0x66
      002483 40 39            [24] 1395 	jc	00205$
                                   1396 ;	i2c.c:236: get_address_int[i]=get_address[i]-87;
      002485 EF               [12] 1397 	mov	a,r7
      002486 75 F0 02         [24] 1398 	mov	b,#0x02
      002489 A4               [48] 1399 	mul	ab
      00248A 24 0C            [12] 1400 	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
      00248C F5 82            [12] 1401 	mov	dpl,a
      00248E 74 00            [12] 1402 	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
      002490 35 F0            [12] 1403 	addc	a,b
      002492 F5 83            [12] 1404 	mov	dph,a
      002494 7D 00            [12] 1405 	mov	r5,#0x00
      002496 EE               [12] 1406 	mov	a,r6
      002497 24 A9            [12] 1407 	add	a,#0xa9
      002499 FE               [12] 1408 	mov	r6,a
      00249A ED               [12] 1409 	mov	a,r5
      00249B 34 FF            [12] 1410 	addc	a,#0xff
      00249D FD               [12] 1411 	mov	r5,a
      00249E EE               [12] 1412 	mov	a,r6
      00249F F0               [24] 1413 	movx	@dptr,a
      0024A0 ED               [12] 1414 	mov	a,r5
      0024A1 A3               [24] 1415 	inc	dptr
      0024A2 F0               [24] 1416 	movx	@dptr,a
      0024A3 80 19            [24] 1417 	sjmp	00205$
      0024A5                       1418 00140$:
                                   1419 ;	i2c.c:241: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
      0024A5 C0 07            [24] 1420 	push	ar7
      0024A7 74 32            [12] 1421 	mov	a,#___str_1
      0024A9 C0 E0            [24] 1422 	push	acc
      0024AB 74 3F            [12] 1423 	mov	a,#(___str_1 >> 8)
      0024AD C0 E0            [24] 1424 	push	acc
      0024AF 12 37 0C         [24] 1425 	lcall	_printf_tiny
      0024B2 15 81            [12] 1426 	dec	sp
      0024B4 15 81            [12] 1427 	dec	sp
      0024B6 D0 07            [24] 1428 	pop	ar7
                                   1429 ;	i2c.c:242: flag=1;
      0024B8 90 00 05         [24] 1430 	mov	dptr,#_i2c_EEPROM_Write_flag_65536_123
      0024BB 74 01            [12] 1431 	mov	a,#0x01
      0024BD F0               [24] 1432 	movx	@dptr,a
                                   1433 ;	i2c.c:247: }
      0024BE                       1434 00205$:
                                   1435 ;	i2c.c:184: for(i=0;i<3;i++)
      0024BE 0F               [12] 1436 	inc	r7
      0024BF BF 03 00         [24] 1437 	cjne	r7,#0x03,00503$
      0024C2                       1438 00503$:
      0024C2 50 03            [24] 1439 	jnc	00504$
      0024C4 02 22 7E         [24] 1440 	ljmp	00204$
      0024C7                       1441 00504$:
      0024C7 02 22 2F         [24] 1442 	ljmp	00150$
                                   1443 ;	i2c.c:252: for(i=0;i<3;i++)
      0024CA                       1444 00245$:
      0024CA 7F 00            [12] 1445 	mov	r7,#0x00
      0024CC                       1446 00206$:
                                   1447 ;	i2c.c:254: address = address+((get_address_int[i])*powf(16,2-i));
      0024CC EF               [12] 1448 	mov	a,r7
      0024CD 75 F0 02         [24] 1449 	mov	b,#0x02
      0024D0 A4               [48] 1450 	mul	ab
      0024D1 24 0C            [12] 1451 	add	a,#_i2c_EEPROM_Write_get_address_int_65536_123
      0024D3 F5 82            [12] 1452 	mov	dpl,a
      0024D5 74 00            [12] 1453 	mov	a,#(_i2c_EEPROM_Write_get_address_int_65536_123 >> 8)
      0024D7 35 F0            [12] 1454 	addc	a,b
      0024D9 F5 83            [12] 1455 	mov	dph,a
      0024DB E0               [24] 1456 	movx	a,@dptr
      0024DC FD               [12] 1457 	mov	r5,a
      0024DD A3               [24] 1458 	inc	dptr
      0024DE E0               [24] 1459 	movx	a,@dptr
      0024DF FE               [12] 1460 	mov	r6,a
      0024E0 8F 03            [24] 1461 	mov	ar3,r7
      0024E2 7C 00            [12] 1462 	mov	r4,#0x00
      0024E4 74 02            [12] 1463 	mov	a,#0x02
      0024E6 C3               [12] 1464 	clr	c
      0024E7 9B               [12] 1465 	subb	a,r3
      0024E8 FB               [12] 1466 	mov	r3,a
      0024E9 E4               [12] 1467 	clr	a
      0024EA 9C               [12] 1468 	subb	a,r4
      0024EB FC               [12] 1469 	mov	r4,a
      0024EC 8B 82            [24] 1470 	mov	dpl,r3
      0024EE 8C 83            [24] 1471 	mov	dph,r4
      0024F0 C0 07            [24] 1472 	push	ar7
      0024F2 C0 06            [24] 1473 	push	ar6
      0024F4 C0 05            [24] 1474 	push	ar5
      0024F6 12 39 AD         [24] 1475 	lcall	___sint2fs
      0024F9 A9 82            [24] 1476 	mov	r1,dpl
      0024FB AA 83            [24] 1477 	mov	r2,dph
      0024FD AB F0            [24] 1478 	mov	r3,b
      0024FF FC               [12] 1479 	mov	r4,a
      002500 90 00 57         [24] 1480 	mov	dptr,#_powf_PARM_2
      002503 E9               [12] 1481 	mov	a,r1
      002504 F0               [24] 1482 	movx	@dptr,a
      002505 EA               [12] 1483 	mov	a,r2
      002506 A3               [24] 1484 	inc	dptr
      002507 F0               [24] 1485 	movx	@dptr,a
      002508 EB               [12] 1486 	mov	a,r3
      002509 A3               [24] 1487 	inc	dptr
      00250A F0               [24] 1488 	movx	@dptr,a
      00250B EC               [12] 1489 	mov	a,r4
      00250C A3               [24] 1490 	inc	dptr
      00250D F0               [24] 1491 	movx	@dptr,a
      00250E 90 00 00         [24] 1492 	mov	dptr,#0x0000
      002511 75 F0 80         [24] 1493 	mov	b,#0x80
      002514 74 41            [12] 1494 	mov	a,#0x41
      002516 12 38 35         [24] 1495 	lcall	_powf
      002519 85 82 08         [24] 1496 	mov	_i2c_EEPROM_Write_sloc0_1_0,dpl
      00251C 85 83 09         [24] 1497 	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 1),dph
      00251F 85 F0 0A         [24] 1498 	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 2),b
      002522 F5 0B            [12] 1499 	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 3),a
      002524 D0 05            [24] 1500 	pop	ar5
      002526 D0 06            [24] 1501 	pop	ar6
      002528 8D 82            [24] 1502 	mov	dpl,r5
      00252A 8E 83            [24] 1503 	mov	dph,r6
      00252C 12 39 BA         [24] 1504 	lcall	___uint2fs
      00252F A8 82            [24] 1505 	mov	r0,dpl
      002531 AC 83            [24] 1506 	mov	r4,dph
      002533 AD F0            [24] 1507 	mov	r5,b
      002535 FE               [12] 1508 	mov	r6,a
      002536 C0 08            [24] 1509 	push	_i2c_EEPROM_Write_sloc0_1_0
      002538 C0 09            [24] 1510 	push	(_i2c_EEPROM_Write_sloc0_1_0 + 1)
      00253A C0 0A            [24] 1511 	push	(_i2c_EEPROM_Write_sloc0_1_0 + 2)
      00253C C0 0B            [24] 1512 	push	(_i2c_EEPROM_Write_sloc0_1_0 + 3)
      00253E 88 82            [24] 1513 	mov	dpl,r0
      002540 8C 83            [24] 1514 	mov	dph,r4
      002542 8D F0            [24] 1515 	mov	b,r5
      002544 EE               [12] 1516 	mov	a,r6
      002545 12 36 08         [24] 1517 	lcall	___fsmul
      002548 85 82 08         [24] 1518 	mov	_i2c_EEPROM_Write_sloc0_1_0,dpl
      00254B 85 83 09         [24] 1519 	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 1),dph
      00254E 85 F0 0A         [24] 1520 	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 2),b
      002551 F5 0B            [12] 1521 	mov	(_i2c_EEPROM_Write_sloc0_1_0 + 3),a
      002553 E5 81            [12] 1522 	mov	a,sp
      002555 24 FC            [12] 1523 	add	a,#0xfc
      002557 F5 81            [12] 1524 	mov	sp,a
      002559 90 00 07         [24] 1525 	mov	dptr,#_i2c_EEPROM_Write_address_65536_123
      00255C E0               [24] 1526 	movx	a,@dptr
      00255D F9               [12] 1527 	mov	r1,a
      00255E A3               [24] 1528 	inc	dptr
      00255F E0               [24] 1529 	movx	a,@dptr
      002560 FA               [12] 1530 	mov	r2,a
      002561 89 82            [24] 1531 	mov	dpl,r1
      002563 8A 83            [24] 1532 	mov	dph,r2
      002565 12 39 BA         [24] 1533 	lcall	___uint2fs
      002568 A8 82            [24] 1534 	mov	r0,dpl
      00256A A9 83            [24] 1535 	mov	r1,dph
      00256C AA F0            [24] 1536 	mov	r2,b
      00256E FE               [12] 1537 	mov	r6,a
      00256F C0 08            [24] 1538 	push	_i2c_EEPROM_Write_sloc0_1_0
      002571 C0 09            [24] 1539 	push	(_i2c_EEPROM_Write_sloc0_1_0 + 1)
      002573 C0 0A            [24] 1540 	push	(_i2c_EEPROM_Write_sloc0_1_0 + 2)
      002575 C0 0B            [24] 1541 	push	(_i2c_EEPROM_Write_sloc0_1_0 + 3)
      002577 88 82            [24] 1542 	mov	dpl,r0
      002579 89 83            [24] 1543 	mov	dph,r1
      00257B 8A F0            [24] 1544 	mov	b,r2
      00257D EE               [12] 1545 	mov	a,r6
      00257E 12 39 54         [24] 1546 	lcall	___fsadd
      002581 AB 82            [24] 1547 	mov	r3,dpl
      002583 AC 83            [24] 1548 	mov	r4,dph
      002585 AD F0            [24] 1549 	mov	r5,b
      002587 FE               [12] 1550 	mov	r6,a
      002588 E5 81            [12] 1551 	mov	a,sp
      00258A 24 FC            [12] 1552 	add	a,#0xfc
      00258C F5 81            [12] 1553 	mov	sp,a
      00258E 8B 82            [24] 1554 	mov	dpl,r3
      002590 8C 83            [24] 1555 	mov	dph,r4
      002592 8D F0            [24] 1556 	mov	b,r5
      002594 EE               [12] 1557 	mov	a,r6
      002595 12 39 C6         [24] 1558 	lcall	___fs2uint
      002598 E5 82            [12] 1559 	mov	a,dpl
      00259A 85 83 F0         [24] 1560 	mov	b,dph
      00259D D0 07            [24] 1561 	pop	ar7
      00259F 90 00 07         [24] 1562 	mov	dptr,#_i2c_EEPROM_Write_address_65536_123
      0025A2 F0               [24] 1563 	movx	@dptr,a
      0025A3 E5 F0            [12] 1564 	mov	a,b
      0025A5 A3               [24] 1565 	inc	dptr
      0025A6 F0               [24] 1566 	movx	@dptr,a
                                   1567 ;	i2c.c:252: for(i=0;i<3;i++)
      0025A7 0F               [12] 1568 	inc	r7
      0025A8 BF 03 00         [24] 1569 	cjne	r7,#0x03,00505$
      0025AB                       1570 00505$:
      0025AB 50 03            [24] 1571 	jnc	00506$
      0025AD 02 24 CC         [24] 1572 	ljmp	00206$
      0025B0                       1573 00506$:
                                   1574 ;	i2c.c:258: control_byte = ((0xA0)|(address >> 7)&(0xfe));
      0025B0 90 00 07         [24] 1575 	mov	dptr,#_i2c_EEPROM_Write_address_65536_123
      0025B3 E0               [24] 1576 	movx	a,@dptr
      0025B4 FE               [12] 1577 	mov	r6,a
      0025B5 A3               [24] 1578 	inc	dptr
      0025B6 E0               [24] 1579 	movx	a,@dptr
      0025B7 FF               [12] 1580 	mov	r7,a
      0025B8 8E 04            [24] 1581 	mov	ar4,r6
      0025BA A2 E7            [12] 1582 	mov	c,acc.7
      0025BC CC               [12] 1583 	xch	a,r4
      0025BD 33               [12] 1584 	rlc	a
      0025BE CC               [12] 1585 	xch	a,r4
      0025BF 33               [12] 1586 	rlc	a
      0025C0 CC               [12] 1587 	xch	a,r4
      0025C1 54 01            [12] 1588 	anl	a,#0x01
      0025C3 FD               [12] 1589 	mov	r5,a
      0025C4 74 FE            [12] 1590 	mov	a,#0xfe
      0025C6 5C               [12] 1591 	anl	a,r4
      0025C7 44 A0            [12] 1592 	orl	a,#0xa0
      0025C9 F5 08            [12] 1593 	mov	_i2c_EEPROM_Write_sloc0_1_0,a
                                   1594 ;	i2c.c:261: address_byte = (uint8_t)address;
                                   1595 ;	i2c.c:264: while(flag1)
      0025CB                       1596 00198$:
      0025CB 90 00 06         [24] 1597 	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
      0025CE E0               [24] 1598 	movx	a,@dptr
      0025CF 70 03            [24] 1599 	jnz	00507$
      0025D1 02 28 27         [24] 1600 	ljmp	00273$
      0025D4                       1601 00507$:
                                   1602 ;	i2c.c:266: flag1=0;
      0025D4 90 00 06         [24] 1603 	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
      0025D7 E4               [12] 1604 	clr	a
      0025D8 F0               [24] 1605 	movx	@dptr,a
                                   1606 ;	i2c.c:267: printf_tiny("\n\rEnter the data you want to write(*Note:DATA SHOULD BE BETWEEN 0x00 and 0xFF)\n\r");
      0025D9 C0 06            [24] 1607 	push	ar6
      0025DB 74 60            [12] 1608 	mov	a,#___str_2
      0025DD C0 E0            [24] 1609 	push	acc
      0025DF 74 3F            [12] 1610 	mov	a,#(___str_2 >> 8)
      0025E1 C0 E0            [24] 1611 	push	acc
      0025E3 12 37 0C         [24] 1612 	lcall	_printf_tiny
      0025E6 15 81            [12] 1613 	dec	sp
      0025E8 15 81            [12] 1614 	dec	sp
      0025EA D0 06            [24] 1615 	pop	ar6
                                   1616 ;	i2c.c:269: for(i=0;i<2;i++)
      0025EC 7F 00            [12] 1617 	mov	r7,#0x00
      0025EE                       1618 00208$:
                                   1619 ;	i2c.c:271: get_data[i]=getchar();
      0025EE EF               [12] 1620 	mov	a,r7
      0025EF 24 14            [12] 1621 	add	a,#_i2c_EEPROM_Write_get_data_65536_123
      0025F1 FB               [12] 1622 	mov	r3,a
      0025F2 E4               [12] 1623 	clr	a
      0025F3 34 00            [12] 1624 	addc	a,#(_i2c_EEPROM_Write_get_data_65536_123 >> 8)
      0025F5 FC               [12] 1625 	mov	r4,a
      0025F6 C0 07            [24] 1626 	push	ar7
      0025F8 C0 06            [24] 1627 	push	ar6
      0025FA C0 04            [24] 1628 	push	ar4
      0025FC C0 03            [24] 1629 	push	ar3
      0025FE 12 34 3F         [24] 1630 	lcall	_getchar
      002601 A9 82            [24] 1631 	mov	r1,dpl
      002603 D0 03            [24] 1632 	pop	ar3
      002605 D0 04            [24] 1633 	pop	ar4
      002607 8B 82            [24] 1634 	mov	dpl,r3
      002609 8C 83            [24] 1635 	mov	dph,r4
      00260B E9               [12] 1636 	mov	a,r1
      00260C F0               [24] 1637 	movx	@dptr,a
                                   1638 ;	i2c.c:272: putchar(get_data[i]);
      00260D 7C 00            [12] 1639 	mov	r4,#0x00
      00260F 89 82            [24] 1640 	mov	dpl,r1
      002611 8C 83            [24] 1641 	mov	dph,r4
      002613 12 34 20         [24] 1642 	lcall	_putchar
      002616 D0 06            [24] 1643 	pop	ar6
      002618 D0 07            [24] 1644 	pop	ar7
                                   1645 ;	i2c.c:269: for(i=0;i<2;i++)
      00261A 0F               [12] 1646 	inc	r7
      00261B BF 02 00         [24] 1647 	cjne	r7,#0x02,00508$
      00261E                       1648 00508$:
      00261E 40 CE            [24] 1649 	jc	00208$
                                   1650 ;	i2c.c:275: for(i=0;i<2;i++)
      002620 7F 00            [12] 1651 	mov	r7,#0x00
      002622                       1652 00210$:
                                   1653 ;	i2c.c:277: switch(i)
      002622 BF 00 02         [24] 1654 	cjne	r7,#0x00,00510$
      002625 80 09            [24] 1655 	sjmp	00155$
      002627                       1656 00510$:
      002627 BF 01 03         [24] 1657 	cjne	r7,#0x01,00511$
      00262A 02 27 2B         [24] 1658 	ljmp	00175$
      00262D                       1659 00511$:
      00262D 02 28 1B         [24] 1660 	ljmp	00211$
                                   1661 ;	i2c.c:279: case 0:
      002630                       1662 00155$:
                                   1663 ;	i2c.c:280: if(((get_data[i]>='0') && (get_data[i]<='9')) ||  ((get_data[i]>='A') && (get_data[i]<='F')) || ((get_data[i]>='a') && (get_data[i]<='f')))
      002630 EF               [12] 1664 	mov	a,r7
      002631 24 14            [12] 1665 	add	a,#_i2c_EEPROM_Write_get_data_65536_123
      002633 FB               [12] 1666 	mov	r3,a
      002634 E4               [12] 1667 	clr	a
      002635 34 00            [12] 1668 	addc	a,#(_i2c_EEPROM_Write_get_data_65536_123 >> 8)
      002637 FC               [12] 1669 	mov	r4,a
      002638 8B 82            [24] 1670 	mov	dpl,r3
      00263A 8C 83            [24] 1671 	mov	dph,r4
      00263C E0               [24] 1672 	movx	a,@dptr
      00263D FA               [12] 1673 	mov	r2,a
      00263E BA 30 00         [24] 1674 	cjne	r2,#0x30,00512$
      002641                       1675 00512$:
      002641 40 05            [24] 1676 	jc	00172$
      002643 EA               [12] 1677 	mov	a,r2
      002644 24 C6            [12] 1678 	add	a,#0xff - 0x39
      002646 50 26            [24] 1679 	jnc	00167$
      002648                       1680 00172$:
      002648 8B 82            [24] 1681 	mov	dpl,r3
      00264A 8C 83            [24] 1682 	mov	dph,r4
      00264C E0               [24] 1683 	movx	a,@dptr
      00264D FA               [12] 1684 	mov	r2,a
      00264E BA 41 00         [24] 1685 	cjne	r2,#0x41,00515$
      002651                       1686 00515$:
      002651 40 05            [24] 1687 	jc	00174$
      002653 EA               [12] 1688 	mov	a,r2
      002654 24 B9            [12] 1689 	add	a,#0xff - 0x46
      002656 50 16            [24] 1690 	jnc	00167$
      002658                       1691 00174$:
      002658 8B 82            [24] 1692 	mov	dpl,r3
      00265A 8C 83            [24] 1693 	mov	dph,r4
      00265C E0               [24] 1694 	movx	a,@dptr
      00265D FA               [12] 1695 	mov	r2,a
      00265E BA 61 00         [24] 1696 	cjne	r2,#0x61,00518$
      002661                       1697 00518$:
      002661 50 03            [24] 1698 	jnc	00519$
      002663 02 27 0B         [24] 1699 	ljmp	00168$
      002666                       1700 00519$:
      002666 EA               [12] 1701 	mov	a,r2
      002667 24 99            [12] 1702 	add	a,#0xff - 0x66
      002669 50 03            [24] 1703 	jnc	00520$
      00266B 02 27 0B         [24] 1704 	ljmp	00168$
      00266E                       1705 00520$:
      00266E                       1706 00167$:
                                   1707 ;	i2c.c:282: if((get_data[i]>=48) && (get_data[i]<=57))
      00266E 8B 82            [24] 1708 	mov	dpl,r3
      002670 8C 83            [24] 1709 	mov	dph,r4
      002672 E0               [24] 1710 	movx	a,@dptr
      002673 FA               [12] 1711 	mov	r2,a
      002674 BA 30 00         [24] 1712 	cjne	r2,#0x30,00521$
      002677                       1713 00521$:
      002677 40 28            [24] 1714 	jc	00164$
      002679 EA               [12] 1715 	mov	a,r2
      00267A 24 C6            [12] 1716 	add	a,#0xff - 0x39
      00267C 40 23            [24] 1717 	jc	00164$
                                   1718 ;	i2c.c:284: get_data_int[i]=get_data[i]-48;
      00267E EF               [12] 1719 	mov	a,r7
      00267F 75 F0 02         [24] 1720 	mov	b,#0x02
      002682 A4               [48] 1721 	mul	ab
      002683 24 16            [12] 1722 	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
      002685 F5 82            [12] 1723 	mov	dpl,a
      002687 74 00            [12] 1724 	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
      002689 35 F0            [12] 1725 	addc	a,b
      00268B F5 83            [12] 1726 	mov	dph,a
      00268D 8A 01            [24] 1727 	mov	ar1,r2
      00268F 7A 00            [12] 1728 	mov	r2,#0x00
      002691 E9               [12] 1729 	mov	a,r1
      002692 24 D0            [12] 1730 	add	a,#0xd0
      002694 F9               [12] 1731 	mov	r1,a
      002695 EA               [12] 1732 	mov	a,r2
      002696 34 FF            [12] 1733 	addc	a,#0xff
      002698 FA               [12] 1734 	mov	r2,a
      002699 E9               [12] 1735 	mov	a,r1
      00269A F0               [24] 1736 	movx	@dptr,a
      00269B EA               [12] 1737 	mov	a,r2
      00269C A3               [24] 1738 	inc	dptr
      00269D F0               [24] 1739 	movx	@dptr,a
      00269E 02 28 1B         [24] 1740 	ljmp	00211$
      0026A1                       1741 00164$:
                                   1742 ;	i2c.c:286: else if((get_data[i]>=65) && (get_data[i]<=70))
      0026A1 8B 82            [24] 1743 	mov	dpl,r3
      0026A3 8C 83            [24] 1744 	mov	dph,r4
      0026A5 E0               [24] 1745 	movx	a,@dptr
      0026A6 FA               [12] 1746 	mov	r2,a
      0026A7 BA 41 00         [24] 1747 	cjne	r2,#0x41,00524$
      0026AA                       1748 00524$:
      0026AA 40 28            [24] 1749 	jc	00160$
      0026AC EA               [12] 1750 	mov	a,r2
      0026AD 24 B9            [12] 1751 	add	a,#0xff - 0x46
      0026AF 40 23            [24] 1752 	jc	00160$
                                   1753 ;	i2c.c:288: get_data_int[i]=get_data[i]-55;
      0026B1 EF               [12] 1754 	mov	a,r7
      0026B2 75 F0 02         [24] 1755 	mov	b,#0x02
      0026B5 A4               [48] 1756 	mul	ab
      0026B6 24 16            [12] 1757 	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
      0026B8 F5 82            [12] 1758 	mov	dpl,a
      0026BA 74 00            [12] 1759 	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
      0026BC 35 F0            [12] 1760 	addc	a,b
      0026BE F5 83            [12] 1761 	mov	dph,a
      0026C0 8A 01            [24] 1762 	mov	ar1,r2
      0026C2 7A 00            [12] 1763 	mov	r2,#0x00
      0026C4 E9               [12] 1764 	mov	a,r1
      0026C5 24 C9            [12] 1765 	add	a,#0xc9
      0026C7 F9               [12] 1766 	mov	r1,a
      0026C8 EA               [12] 1767 	mov	a,r2
      0026C9 34 FF            [12] 1768 	addc	a,#0xff
      0026CB FA               [12] 1769 	mov	r2,a
      0026CC E9               [12] 1770 	mov	a,r1
      0026CD F0               [24] 1771 	movx	@dptr,a
      0026CE EA               [12] 1772 	mov	a,r2
      0026CF A3               [24] 1773 	inc	dptr
      0026D0 F0               [24] 1774 	movx	@dptr,a
      0026D1 02 28 1B         [24] 1775 	ljmp	00211$
      0026D4                       1776 00160$:
                                   1777 ;	i2c.c:290: else if((get_data[i]>=97) && (get_data[i]<=102))
      0026D4 8B 82            [24] 1778 	mov	dpl,r3
      0026D6 8C 83            [24] 1779 	mov	dph,r4
      0026D8 E0               [24] 1780 	movx	a,@dptr
      0026D9 FC               [12] 1781 	mov	r4,a
      0026DA BC 61 00         [24] 1782 	cjne	r4,#0x61,00527$
      0026DD                       1783 00527$:
      0026DD 50 03            [24] 1784 	jnc	00528$
      0026DF 02 28 1B         [24] 1785 	ljmp	00211$
      0026E2                       1786 00528$:
      0026E2 EC               [12] 1787 	mov	a,r4
      0026E3 24 99            [12] 1788 	add	a,#0xff - 0x66
      0026E5 50 03            [24] 1789 	jnc	00529$
      0026E7 02 28 1B         [24] 1790 	ljmp	00211$
      0026EA                       1791 00529$:
                                   1792 ;	i2c.c:292: get_data_int[i]=get_data[i]-87;
      0026EA EF               [12] 1793 	mov	a,r7
      0026EB 75 F0 02         [24] 1794 	mov	b,#0x02
      0026EE A4               [48] 1795 	mul	ab
      0026EF 24 16            [12] 1796 	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
      0026F1 F5 82            [12] 1797 	mov	dpl,a
      0026F3 74 00            [12] 1798 	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
      0026F5 35 F0            [12] 1799 	addc	a,b
      0026F7 F5 83            [12] 1800 	mov	dph,a
      0026F9 7B 00            [12] 1801 	mov	r3,#0x00
      0026FB EC               [12] 1802 	mov	a,r4
      0026FC 24 A9            [12] 1803 	add	a,#0xa9
      0026FE FC               [12] 1804 	mov	r4,a
      0026FF EB               [12] 1805 	mov	a,r3
      002700 34 FF            [12] 1806 	addc	a,#0xff
      002702 FB               [12] 1807 	mov	r3,a
      002703 EC               [12] 1808 	mov	a,r4
      002704 F0               [24] 1809 	movx	@dptr,a
      002705 EB               [12] 1810 	mov	a,r3
      002706 A3               [24] 1811 	inc	dptr
      002707 F0               [24] 1812 	movx	@dptr,a
      002708 02 28 1B         [24] 1813 	ljmp	00211$
      00270B                       1814 00168$:
                                   1815 ;	i2c.c:297: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
      00270B C0 07            [24] 1816 	push	ar7
      00270D C0 06            [24] 1817 	push	ar6
      00270F 74 32            [12] 1818 	mov	a,#___str_1
      002711 C0 E0            [24] 1819 	push	acc
      002713 74 3F            [12] 1820 	mov	a,#(___str_1 >> 8)
      002715 C0 E0            [24] 1821 	push	acc
      002717 12 37 0C         [24] 1822 	lcall	_printf_tiny
      00271A 15 81            [12] 1823 	dec	sp
      00271C 15 81            [12] 1824 	dec	sp
      00271E D0 06            [24] 1825 	pop	ar6
      002720 D0 07            [24] 1826 	pop	ar7
                                   1827 ;	i2c.c:298: flag1=1;
      002722 90 00 06         [24] 1828 	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
      002725 74 01            [12] 1829 	mov	a,#0x01
      002727 F0               [24] 1830 	movx	@dptr,a
                                   1831 ;	i2c.c:300: break;
      002728 02 28 1B         [24] 1832 	ljmp	00211$
                                   1833 ;	i2c.c:302: case 1:
      00272B                       1834 00175$:
                                   1835 ;	i2c.c:303: if(((get_data[i]>='0') && (get_data[i]<='9')) ||  ((get_data[i]>='A') && (get_data[i]<='F')) || ((get_data[i]>='a') && (get_data[i]<='f')))
      00272B EF               [12] 1836 	mov	a,r7
      00272C 24 14            [12] 1837 	add	a,#_i2c_EEPROM_Write_get_data_65536_123
      00272E FB               [12] 1838 	mov	r3,a
      00272F E4               [12] 1839 	clr	a
      002730 34 00            [12] 1840 	addc	a,#(_i2c_EEPROM_Write_get_data_65536_123 >> 8)
      002732 FC               [12] 1841 	mov	r4,a
      002733 8B 82            [24] 1842 	mov	dpl,r3
      002735 8C 83            [24] 1843 	mov	dph,r4
      002737 E0               [24] 1844 	movx	a,@dptr
      002738 FA               [12] 1845 	mov	r2,a
      002739 BA 30 00         [24] 1846 	cjne	r2,#0x30,00530$
      00273C                       1847 00530$:
      00273C 40 05            [24] 1848 	jc	00192$
      00273E EA               [12] 1849 	mov	a,r2
      00273F 24 C6            [12] 1850 	add	a,#0xff - 0x39
      002741 50 26            [24] 1851 	jnc	00187$
      002743                       1852 00192$:
      002743 8B 82            [24] 1853 	mov	dpl,r3
      002745 8C 83            [24] 1854 	mov	dph,r4
      002747 E0               [24] 1855 	movx	a,@dptr
      002748 FA               [12] 1856 	mov	r2,a
      002749 BA 41 00         [24] 1857 	cjne	r2,#0x41,00533$
      00274C                       1858 00533$:
      00274C 40 05            [24] 1859 	jc	00194$
      00274E EA               [12] 1860 	mov	a,r2
      00274F 24 B9            [12] 1861 	add	a,#0xff - 0x46
      002751 50 16            [24] 1862 	jnc	00187$
      002753                       1863 00194$:
      002753 8B 82            [24] 1864 	mov	dpl,r3
      002755 8C 83            [24] 1865 	mov	dph,r4
      002757 E0               [24] 1866 	movx	a,@dptr
      002758 FA               [12] 1867 	mov	r2,a
      002759 BA 61 00         [24] 1868 	cjne	r2,#0x61,00536$
      00275C                       1869 00536$:
      00275C 50 03            [24] 1870 	jnc	00537$
      00275E 02 27 FE         [24] 1871 	ljmp	00188$
      002761                       1872 00537$:
      002761 EA               [12] 1873 	mov	a,r2
      002762 24 99            [12] 1874 	add	a,#0xff - 0x66
      002764 50 03            [24] 1875 	jnc	00538$
      002766 02 27 FE         [24] 1876 	ljmp	00188$
      002769                       1877 00538$:
      002769                       1878 00187$:
                                   1879 ;	i2c.c:305: if((get_data[i]>=48) && (get_data[i]<=57))
      002769 8B 82            [24] 1880 	mov	dpl,r3
      00276B 8C 83            [24] 1881 	mov	dph,r4
      00276D E0               [24] 1882 	movx	a,@dptr
      00276E FA               [12] 1883 	mov	r2,a
      00276F BA 30 00         [24] 1884 	cjne	r2,#0x30,00539$
      002772                       1885 00539$:
      002772 40 28            [24] 1886 	jc	00184$
      002774 EA               [12] 1887 	mov	a,r2
      002775 24 C6            [12] 1888 	add	a,#0xff - 0x39
      002777 40 23            [24] 1889 	jc	00184$
                                   1890 ;	i2c.c:307: get_data_int[i]=get_data[i]-48;
      002779 EF               [12] 1891 	mov	a,r7
      00277A 75 F0 02         [24] 1892 	mov	b,#0x02
      00277D A4               [48] 1893 	mul	ab
      00277E 24 16            [12] 1894 	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
      002780 F5 82            [12] 1895 	mov	dpl,a
      002782 74 00            [12] 1896 	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
      002784 35 F0            [12] 1897 	addc	a,b
      002786 F5 83            [12] 1898 	mov	dph,a
      002788 8A 01            [24] 1899 	mov	ar1,r2
      00278A 7A 00            [12] 1900 	mov	r2,#0x00
      00278C E9               [12] 1901 	mov	a,r1
      00278D 24 D0            [12] 1902 	add	a,#0xd0
      00278F F9               [12] 1903 	mov	r1,a
      002790 EA               [12] 1904 	mov	a,r2
      002791 34 FF            [12] 1905 	addc	a,#0xff
      002793 FA               [12] 1906 	mov	r2,a
      002794 E9               [12] 1907 	mov	a,r1
      002795 F0               [24] 1908 	movx	@dptr,a
      002796 EA               [12] 1909 	mov	a,r2
      002797 A3               [24] 1910 	inc	dptr
      002798 F0               [24] 1911 	movx	@dptr,a
      002799 02 28 1B         [24] 1912 	ljmp	00211$
      00279C                       1913 00184$:
                                   1914 ;	i2c.c:309: else if((get_data[i]>=65) && (get_data[i]<=70))
      00279C 8B 82            [24] 1915 	mov	dpl,r3
      00279E 8C 83            [24] 1916 	mov	dph,r4
      0027A0 E0               [24] 1917 	movx	a,@dptr
      0027A1 FA               [12] 1918 	mov	r2,a
      0027A2 BA 41 00         [24] 1919 	cjne	r2,#0x41,00542$
      0027A5                       1920 00542$:
      0027A5 40 27            [24] 1921 	jc	00180$
      0027A7 EA               [12] 1922 	mov	a,r2
      0027A8 24 B9            [12] 1923 	add	a,#0xff - 0x46
      0027AA 40 22            [24] 1924 	jc	00180$
                                   1925 ;	i2c.c:311: get_data_int[i]=get_data[i]-55;
      0027AC EF               [12] 1926 	mov	a,r7
      0027AD 75 F0 02         [24] 1927 	mov	b,#0x02
      0027B0 A4               [48] 1928 	mul	ab
      0027B1 24 16            [12] 1929 	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
      0027B3 F5 82            [12] 1930 	mov	dpl,a
      0027B5 74 00            [12] 1931 	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
      0027B7 35 F0            [12] 1932 	addc	a,b
      0027B9 F5 83            [12] 1933 	mov	dph,a
      0027BB 8A 01            [24] 1934 	mov	ar1,r2
      0027BD 7A 00            [12] 1935 	mov	r2,#0x00
      0027BF E9               [12] 1936 	mov	a,r1
      0027C0 24 C9            [12] 1937 	add	a,#0xc9
      0027C2 F9               [12] 1938 	mov	r1,a
      0027C3 EA               [12] 1939 	mov	a,r2
      0027C4 34 FF            [12] 1940 	addc	a,#0xff
      0027C6 FA               [12] 1941 	mov	r2,a
      0027C7 E9               [12] 1942 	mov	a,r1
      0027C8 F0               [24] 1943 	movx	@dptr,a
      0027C9 EA               [12] 1944 	mov	a,r2
      0027CA A3               [24] 1945 	inc	dptr
      0027CB F0               [24] 1946 	movx	@dptr,a
      0027CC 80 4D            [24] 1947 	sjmp	00211$
      0027CE                       1948 00180$:
                                   1949 ;	i2c.c:313: else if((get_data[i]>=97) && (get_data[i]<=102))
      0027CE 8B 82            [24] 1950 	mov	dpl,r3
      0027D0 8C 83            [24] 1951 	mov	dph,r4
      0027D2 E0               [24] 1952 	movx	a,@dptr
      0027D3 FC               [12] 1953 	mov	r4,a
      0027D4 BC 61 00         [24] 1954 	cjne	r4,#0x61,00545$
      0027D7                       1955 00545$:
      0027D7 40 42            [24] 1956 	jc	00211$
      0027D9 EC               [12] 1957 	mov	a,r4
      0027DA 24 99            [12] 1958 	add	a,#0xff - 0x66
      0027DC 40 3D            [24] 1959 	jc	00211$
                                   1960 ;	i2c.c:315: get_data_int[i]=get_data[i]-87;
      0027DE EF               [12] 1961 	mov	a,r7
      0027DF 75 F0 02         [24] 1962 	mov	b,#0x02
      0027E2 A4               [48] 1963 	mul	ab
      0027E3 24 16            [12] 1964 	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
      0027E5 F5 82            [12] 1965 	mov	dpl,a
      0027E7 74 00            [12] 1966 	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
      0027E9 35 F0            [12] 1967 	addc	a,b
      0027EB F5 83            [12] 1968 	mov	dph,a
      0027ED 7B 00            [12] 1969 	mov	r3,#0x00
      0027EF EC               [12] 1970 	mov	a,r4
      0027F0 24 A9            [12] 1971 	add	a,#0xa9
      0027F2 FC               [12] 1972 	mov	r4,a
      0027F3 EB               [12] 1973 	mov	a,r3
      0027F4 34 FF            [12] 1974 	addc	a,#0xff
      0027F6 FB               [12] 1975 	mov	r3,a
      0027F7 EC               [12] 1976 	mov	a,r4
      0027F8 F0               [24] 1977 	movx	@dptr,a
      0027F9 EB               [12] 1978 	mov	a,r3
      0027FA A3               [24] 1979 	inc	dptr
      0027FB F0               [24] 1980 	movx	@dptr,a
      0027FC 80 1D            [24] 1981 	sjmp	00211$
      0027FE                       1982 00188$:
                                   1983 ;	i2c.c:320: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
      0027FE C0 07            [24] 1984 	push	ar7
      002800 C0 06            [24] 1985 	push	ar6
      002802 74 32            [12] 1986 	mov	a,#___str_1
      002804 C0 E0            [24] 1987 	push	acc
      002806 74 3F            [12] 1988 	mov	a,#(___str_1 >> 8)
      002808 C0 E0            [24] 1989 	push	acc
      00280A 12 37 0C         [24] 1990 	lcall	_printf_tiny
      00280D 15 81            [12] 1991 	dec	sp
      00280F 15 81            [12] 1992 	dec	sp
      002811 D0 06            [24] 1993 	pop	ar6
      002813 D0 07            [24] 1994 	pop	ar7
                                   1995 ;	i2c.c:321: flag1=1;
      002815 90 00 06         [24] 1996 	mov	dptr,#_i2c_EEPROM_Write_flag1_65536_123
      002818 74 01            [12] 1997 	mov	a,#0x01
      00281A F0               [24] 1998 	movx	@dptr,a
                                   1999 ;	i2c.c:326: }
      00281B                       2000 00211$:
                                   2001 ;	i2c.c:275: for(i=0;i<2;i++)
      00281B 0F               [12] 2002 	inc	r7
      00281C BF 02 00         [24] 2003 	cjne	r7,#0x02,00548$
      00281F                       2004 00548$:
      00281F 50 03            [24] 2005 	jnc	00549$
      002821 02 26 22         [24] 2006 	ljmp	00210$
      002824                       2007 00549$:
      002824 02 25 CB         [24] 2008 	ljmp	00198$
                                   2009 ;	i2c.c:331: for(i=0;i<2;i++)
      002827                       2010 00273$:
      002827 7F 00            [12] 2011 	mov	r7,#0x00
      002829                       2012 00212$:
                                   2013 ;	i2c.c:333: data = data +((get_data_int[i])*powf(16,1-i));
      002829 C0 06            [24] 2014 	push	ar6
      00282B EF               [12] 2015 	mov	a,r7
      00282C 75 F0 02         [24] 2016 	mov	b,#0x02
      00282F A4               [48] 2017 	mul	ab
      002830 24 16            [12] 2018 	add	a,#_i2c_EEPROM_Write_get_data_int_65536_123
      002832 F5 82            [12] 2019 	mov	dpl,a
      002834 74 00            [12] 2020 	mov	a,#(_i2c_EEPROM_Write_get_data_int_65536_123 >> 8)
      002836 35 F0            [12] 2021 	addc	a,b
      002838 F5 83            [12] 2022 	mov	dph,a
      00283A E0               [24] 2023 	movx	a,@dptr
      00283B FB               [12] 2024 	mov	r3,a
      00283C A3               [24] 2025 	inc	dptr
      00283D E0               [24] 2026 	movx	a,@dptr
      00283E FC               [12] 2027 	mov	r4,a
      00283F 8F 01            [24] 2028 	mov	ar1,r7
      002841 7A 00            [12] 2029 	mov	r2,#0x00
      002843 74 01            [12] 2030 	mov	a,#0x01
      002845 C3               [12] 2031 	clr	c
      002846 99               [12] 2032 	subb	a,r1
      002847 F9               [12] 2033 	mov	r1,a
      002848 E4               [12] 2034 	clr	a
      002849 9A               [12] 2035 	subb	a,r2
      00284A FA               [12] 2036 	mov	r2,a
      00284B 89 82            [24] 2037 	mov	dpl,r1
      00284D 8A 83            [24] 2038 	mov	dph,r2
      00284F C0 07            [24] 2039 	push	ar7
      002851 C0 04            [24] 2040 	push	ar4
      002853 C0 03            [24] 2041 	push	ar3
      002855 12 39 AD         [24] 2042 	lcall	___sint2fs
      002858 A8 82            [24] 2043 	mov	r0,dpl
      00285A A9 83            [24] 2044 	mov	r1,dph
      00285C AA F0            [24] 2045 	mov	r2,b
      00285E FE               [12] 2046 	mov	r6,a
      00285F D0 03            [24] 2047 	pop	ar3
      002861 D0 04            [24] 2048 	pop	ar4
      002863 90 00 57         [24] 2049 	mov	dptr,#_powf_PARM_2
      002866 E8               [12] 2050 	mov	a,r0
      002867 F0               [24] 2051 	movx	@dptr,a
      002868 E9               [12] 2052 	mov	a,r1
      002869 A3               [24] 2053 	inc	dptr
      00286A F0               [24] 2054 	movx	@dptr,a
      00286B EA               [12] 2055 	mov	a,r2
      00286C A3               [24] 2056 	inc	dptr
      00286D F0               [24] 2057 	movx	@dptr,a
      00286E EE               [12] 2058 	mov	a,r6
      00286F A3               [24] 2059 	inc	dptr
      002870 F0               [24] 2060 	movx	@dptr,a
      002871 90 00 00         [24] 2061 	mov	dptr,#0x0000
      002874 75 F0 80         [24] 2062 	mov	b,#0x80
      002877 74 41            [12] 2063 	mov	a,#0x41
      002879 C0 06            [24] 2064 	push	ar6
      00287B C0 04            [24] 2065 	push	ar4
      00287D C0 03            [24] 2066 	push	ar3
      00287F 12 38 35         [24] 2067 	lcall	_powf
      002882 85 82 0C         [24] 2068 	mov	_i2c_EEPROM_Write_sloc1_1_0,dpl
      002885 85 83 0D         [24] 2069 	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 1),dph
      002888 85 F0 0E         [24] 2070 	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 2),b
      00288B F5 0F            [12] 2071 	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 3),a
      00288D D0 03            [24] 2072 	pop	ar3
      00288F D0 04            [24] 2073 	pop	ar4
      002891 D0 06            [24] 2074 	pop	ar6
      002893 8B 82            [24] 2075 	mov	dpl,r3
      002895 8C 83            [24] 2076 	mov	dph,r4
      002897 12 39 BA         [24] 2077 	lcall	___uint2fs
      00289A AB 82            [24] 2078 	mov	r3,dpl
      00289C AC 83            [24] 2079 	mov	r4,dph
      00289E AD F0            [24] 2080 	mov	r5,b
      0028A0 FE               [12] 2081 	mov	r6,a
      0028A1 C0 06            [24] 2082 	push	ar6
      0028A3 C0 0C            [24] 2083 	push	_i2c_EEPROM_Write_sloc1_1_0
      0028A5 C0 0D            [24] 2084 	push	(_i2c_EEPROM_Write_sloc1_1_0 + 1)
      0028A7 C0 0E            [24] 2085 	push	(_i2c_EEPROM_Write_sloc1_1_0 + 2)
      0028A9 C0 0F            [24] 2086 	push	(_i2c_EEPROM_Write_sloc1_1_0 + 3)
      0028AB 8B 82            [24] 2087 	mov	dpl,r3
      0028AD 8C 83            [24] 2088 	mov	dph,r4
      0028AF 8D F0            [24] 2089 	mov	b,r5
      0028B1 EE               [12] 2090 	mov	a,r6
      0028B2 12 36 08         [24] 2091 	lcall	___fsmul
      0028B5 85 82 0C         [24] 2092 	mov	_i2c_EEPROM_Write_sloc1_1_0,dpl
      0028B8 85 83 0D         [24] 2093 	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 1),dph
      0028BB 85 F0 0E         [24] 2094 	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 2),b
      0028BE F5 0F            [12] 2095 	mov	(_i2c_EEPROM_Write_sloc1_1_0 + 3),a
      0028C0 E5 81            [12] 2096 	mov	a,sp
      0028C2 24 FC            [12] 2097 	add	a,#0xfc
      0028C4 F5 81            [12] 2098 	mov	sp,a
      0028C6 D0 06            [24] 2099 	pop	ar6
      0028C8 90 00 12         [24] 2100 	mov	dptr,#_i2c_EEPROM_Write_data_65536_123
      0028CB E0               [24] 2101 	movx	a,@dptr
      0028CC F9               [12] 2102 	mov	r1,a
      0028CD A3               [24] 2103 	inc	dptr
      0028CE E0               [24] 2104 	movx	a,@dptr
      0028CF FA               [12] 2105 	mov	r2,a
      0028D0 89 82            [24] 2106 	mov	dpl,r1
      0028D2 8A 83            [24] 2107 	mov	dph,r2
      0028D4 12 39 BA         [24] 2108 	lcall	___uint2fs
      0028D7 A8 82            [24] 2109 	mov	r0,dpl
      0028D9 A9 83            [24] 2110 	mov	r1,dph
      0028DB AA F0            [24] 2111 	mov	r2,b
      0028DD FE               [12] 2112 	mov	r6,a
      0028DE C0 0C            [24] 2113 	push	_i2c_EEPROM_Write_sloc1_1_0
      0028E0 C0 0D            [24] 2114 	push	(_i2c_EEPROM_Write_sloc1_1_0 + 1)
      0028E2 C0 0E            [24] 2115 	push	(_i2c_EEPROM_Write_sloc1_1_0 + 2)
      0028E4 C0 0F            [24] 2116 	push	(_i2c_EEPROM_Write_sloc1_1_0 + 3)
      0028E6 88 82            [24] 2117 	mov	dpl,r0
      0028E8 89 83            [24] 2118 	mov	dph,r1
      0028EA 8A F0            [24] 2119 	mov	b,r2
      0028EC EE               [12] 2120 	mov	a,r6
      0028ED 12 39 54         [24] 2121 	lcall	___fsadd
      0028F0 AB 82            [24] 2122 	mov	r3,dpl
      0028F2 AC 83            [24] 2123 	mov	r4,dph
      0028F4 AD F0            [24] 2124 	mov	r5,b
      0028F6 FE               [12] 2125 	mov	r6,a
      0028F7 E5 81            [12] 2126 	mov	a,sp
      0028F9 24 FC            [12] 2127 	add	a,#0xfc
      0028FB F5 81            [12] 2128 	mov	sp,a
      0028FD 8B 82            [24] 2129 	mov	dpl,r3
      0028FF 8C 83            [24] 2130 	mov	dph,r4
      002901 8D F0            [24] 2131 	mov	b,r5
      002903 EE               [12] 2132 	mov	a,r6
      002904 C0 06            [24] 2133 	push	ar6
      002906 12 39 C6         [24] 2134 	lcall	___fs2uint
      002909 E5 82            [12] 2135 	mov	a,dpl
      00290B 85 83 F0         [24] 2136 	mov	b,dph
      00290E D0 06            [24] 2137 	pop	ar6
      002910 D0 07            [24] 2138 	pop	ar7
      002912 90 00 12         [24] 2139 	mov	dptr,#_i2c_EEPROM_Write_data_65536_123
      002915 F0               [24] 2140 	movx	@dptr,a
      002916 E5 F0            [12] 2141 	mov	a,b
      002918 A3               [24] 2142 	inc	dptr
      002919 F0               [24] 2143 	movx	@dptr,a
                                   2144 ;	i2c.c:331: for(i=0;i<2;i++)
      00291A 0F               [12] 2145 	inc	r7
      00291B BF 02 00         [24] 2146 	cjne	r7,#0x02,00550$
      00291E                       2147 00550$:
      00291E D0 06            [24] 2148 	pop	ar6
      002920 50 03            [24] 2149 	jnc	00551$
      002922 02 28 29         [24] 2150 	ljmp	00212$
      002925                       2151 00551$:
                                   2152 ;	i2c.c:336: i2c_start();            // 1. Master issues START condition
      002925 C0 06            [24] 2153 	push	ar6
      002927 12 20 A1         [24] 2154 	lcall	_i2c_start
                                   2155 ;	i2c.c:337: i2c_Write_Byte(control_byte);
      00292A 85 08 82         [24] 2156 	mov	dpl,_i2c_EEPROM_Write_sloc0_1_0
      00292D 12 21 52         [24] 2157 	lcall	_i2c_Write_Byte
      002930 D0 06            [24] 2158 	pop	ar6
                                   2159 ;	i2c.c:338: i2c_Write_Byte(address_byte); // 4. Master sends memory address
      002932 8E 82            [24] 2160 	mov	dpl,r6
      002934 12 21 52         [24] 2161 	lcall	_i2c_Write_Byte
                                   2162 ;	i2c.c:339: i2c_Write_Byte(data);        // 6. Master sends data to be written to memory
      002937 90 00 12         [24] 2163 	mov	dptr,#_i2c_EEPROM_Write_data_65536_123
      00293A E0               [24] 2164 	movx	a,@dptr
      00293B FE               [12] 2165 	mov	r6,a
      00293C A3               [24] 2166 	inc	dptr
      00293D E0               [24] 2167 	movx	a,@dptr
      00293E 8E 82            [24] 2168 	mov	dpl,r6
      002940 12 21 52         [24] 2169 	lcall	_i2c_Write_Byte
                                   2170 ;	i2c.c:340: i2c_stop();             // 8. Master issues STOP condition
                                   2171 ;	i2c.c:341: }
      002943 02 20 B3         [24] 2172 	ljmp	_i2c_stop
                                   2173 ;------------------------------------------------------------
                                   2174 ;Allocation info for local variables in function 'i2c_EEPROM_Read'
                                   2175 ;------------------------------------------------------------
                                   2176 ;sloc0                     Allocated with name '_i2c_EEPROM_Read_sloc0_1_0'
                                   2177 ;flag                      Allocated with name '_i2c_EEPROM_Read_flag_65536_162'
                                   2178 ;address                   Allocated with name '_i2c_EEPROM_Read_address_65536_162'
                                   2179 ;byte_received             Allocated with name '_i2c_EEPROM_Read_byte_received_65536_162'
                                   2180 ;get_address               Allocated with name '_i2c_EEPROM_Read_get_address_65536_162'
                                   2181 ;get_address_int           Allocated with name '_i2c_EEPROM_Read_get_address_int_65536_162'
                                   2182 ;i                         Allocated with name '_i2c_EEPROM_Read_i_65536_162'
                                   2183 ;control_byte              Allocated with name '_i2c_EEPROM_Read_control_byte_65536_162'
                                   2184 ;address_byte              Allocated with name '_i2c_EEPROM_Read_address_byte_65536_162'
                                   2185 ;write_readbyte            Allocated with name '_i2c_EEPROM_Read_write_readbyte_65536_162'
                                   2186 ;------------------------------------------------------------
                                   2187 ;	i2c.c:348: void i2c_EEPROM_Read()
                                   2188 ;	-----------------------------------------
                                   2189 ;	 function i2c_EEPROM_Read
                                   2190 ;	-----------------------------------------
      002946                       2191 _i2c_EEPROM_Read:
                                   2192 ;	i2c.c:350: uint8_t flag=1;
      002946 90 00 1A         [24] 2193 	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
      002949 74 01            [12] 2194 	mov	a,#0x01
      00294B F0               [24] 2195 	movx	@dptr,a
                                   2196 ;	i2c.c:351: uint16_t address=0;
      00294C 90 00 1B         [24] 2197 	mov	dptr,#_i2c_EEPROM_Read_address_65536_162
      00294F E4               [12] 2198 	clr	a
      002950 F0               [24] 2199 	movx	@dptr,a
      002951 A3               [24] 2200 	inc	dptr
      002952 F0               [24] 2201 	movx	@dptr,a
                                   2202 ;	i2c.c:361: while(flag)
      002953                       2203 00150$:
      002953 90 00 1A         [24] 2204 	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
      002956 E0               [24] 2205 	movx	a,@dptr
      002957 70 03            [24] 2206 	jnz	00289$
      002959 02 2B EE         [24] 2207 	ljmp	00191$
      00295C                       2208 00289$:
                                   2209 ;	i2c.c:363: flag=0;
      00295C 90 00 1A         [24] 2210 	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
      00295F E4               [12] 2211 	clr	a
      002960 F0               [24] 2212 	movx	@dptr,a
                                   2213 ;	i2c.c:364: printf_tiny("\n\rEnter the address between 0x00-0x7ff\n\r");
      002961 74 09            [12] 2214 	mov	a,#___str_0
      002963 C0 E0            [24] 2215 	push	acc
      002965 74 3F            [12] 2216 	mov	a,#(___str_0 >> 8)
      002967 C0 E0            [24] 2217 	push	acc
      002969 12 37 0C         [24] 2218 	lcall	_printf_tiny
      00296C 15 81            [12] 2219 	dec	sp
      00296E 15 81            [12] 2220 	dec	sp
                                   2221 ;	i2c.c:365: for(i=0;i<3;i++)
      002970 7F 00            [12] 2222 	mov	r7,#0x00
      002972                       2223 00154$:
                                   2224 ;	i2c.c:367: get_address[i]=getchar();
      002972 EF               [12] 2225 	mov	a,r7
      002973 24 1D            [12] 2226 	add	a,#_i2c_EEPROM_Read_get_address_65536_162
      002975 FD               [12] 2227 	mov	r5,a
      002976 E4               [12] 2228 	clr	a
      002977 34 00            [12] 2229 	addc	a,#(_i2c_EEPROM_Read_get_address_65536_162 >> 8)
      002979 FE               [12] 2230 	mov	r6,a
      00297A C0 07            [24] 2231 	push	ar7
      00297C C0 06            [24] 2232 	push	ar6
      00297E C0 05            [24] 2233 	push	ar5
      002980 12 34 3F         [24] 2234 	lcall	_getchar
      002983 AB 82            [24] 2235 	mov	r3,dpl
      002985 D0 05            [24] 2236 	pop	ar5
      002987 D0 06            [24] 2237 	pop	ar6
      002989 8D 82            [24] 2238 	mov	dpl,r5
      00298B 8E 83            [24] 2239 	mov	dph,r6
      00298D EB               [12] 2240 	mov	a,r3
      00298E F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	i2c.c:368: putchar(get_address[i]);
      00298F 7E 00            [12] 2243 	mov	r6,#0x00
      002991 8B 82            [24] 2244 	mov	dpl,r3
      002993 8E 83            [24] 2245 	mov	dph,r6
      002995 12 34 20         [24] 2246 	lcall	_putchar
      002998 D0 07            [24] 2247 	pop	ar7
                                   2248 ;	i2c.c:365: for(i=0;i<3;i++)
      00299A 0F               [12] 2249 	inc	r7
      00299B BF 03 00         [24] 2250 	cjne	r7,#0x03,00290$
      00299E                       2251 00290$:
      00299E 40 D2            [24] 2252 	jc	00154$
                                   2253 ;	i2c.c:371: for(i=0;i<3;i++)
      0029A0 7F 00            [12] 2254 	mov	r7,#0x00
      0029A2                       2255 00156$:
                                   2256 ;	i2c.c:373: switch(i)
      0029A2 BF 00 02         [24] 2257 	cjne	r7,#0x00,00292$
      0029A5 80 0E            [24] 2258 	sjmp	00102$
      0029A7                       2259 00292$:
      0029A7 BF 01 02         [24] 2260 	cjne	r7,#0x01,00293$
      0029AA 80 5C            [24] 2261 	sjmp	00107$
      0029AC                       2262 00293$:
      0029AC BF 02 03         [24] 2263 	cjne	r7,#0x02,00294$
      0029AF 02 2A FB         [24] 2264 	ljmp	00127$
      0029B2                       2265 00294$:
      0029B2 02 2B E2         [24] 2266 	ljmp	00157$
                                   2267 ;	i2c.c:375: case 0:
      0029B5                       2268 00102$:
                                   2269 ;	i2c.c:376: if((get_address[i]>=48) && (get_address[i]<=55))
      0029B5 EF               [12] 2270 	mov	a,r7
      0029B6 24 1D            [12] 2271 	add	a,#_i2c_EEPROM_Read_get_address_65536_162
      0029B8 F5 82            [12] 2272 	mov	dpl,a
      0029BA E4               [12] 2273 	clr	a
      0029BB 34 00            [12] 2274 	addc	a,#(_i2c_EEPROM_Read_get_address_65536_162 >> 8)
      0029BD F5 83            [12] 2275 	mov	dph,a
      0029BF E0               [24] 2276 	movx	a,@dptr
      0029C0 FE               [12] 2277 	mov	r6,a
      0029C1 BE 30 00         [24] 2278 	cjne	r6,#0x30,00295$
      0029C4                       2279 00295$:
      0029C4 40 26            [24] 2280 	jc	00104$
      0029C6 EE               [12] 2281 	mov	a,r6
      0029C7 24 C8            [12] 2282 	add	a,#0xff - 0x37
      0029C9 40 21            [24] 2283 	jc	00104$
                                   2284 ;	i2c.c:378: get_address_int[i]= get_address[i]-48;
      0029CB EF               [12] 2285 	mov	a,r7
      0029CC 75 F0 02         [24] 2286 	mov	b,#0x02
      0029CF A4               [48] 2287 	mul	ab
      0029D0 24 20            [12] 2288 	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
      0029D2 F5 82            [12] 2289 	mov	dpl,a
      0029D4 74 00            [12] 2290 	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
      0029D6 35 F0            [12] 2291 	addc	a,b
      0029D8 F5 83            [12] 2292 	mov	dph,a
      0029DA 7D 00            [12] 2293 	mov	r5,#0x00
      0029DC EE               [12] 2294 	mov	a,r6
      0029DD 24 D0            [12] 2295 	add	a,#0xd0
      0029DF FE               [12] 2296 	mov	r6,a
      0029E0 ED               [12] 2297 	mov	a,r5
      0029E1 34 FF            [12] 2298 	addc	a,#0xff
      0029E3 FD               [12] 2299 	mov	r5,a
      0029E4 EE               [12] 2300 	mov	a,r6
      0029E5 F0               [24] 2301 	movx	@dptr,a
      0029E6 ED               [12] 2302 	mov	a,r5
      0029E7 A3               [24] 2303 	inc	dptr
      0029E8 F0               [24] 2304 	movx	@dptr,a
      0029E9 02 2B E2         [24] 2305 	ljmp	00157$
      0029EC                       2306 00104$:
                                   2307 ;	i2c.c:382: printf_tiny("\n\rInvalid Input! Please enter again\n\r");
      0029EC C0 07            [24] 2308 	push	ar7
      0029EE 74 B1            [12] 2309 	mov	a,#___str_3
      0029F0 C0 E0            [24] 2310 	push	acc
      0029F2 74 3F            [12] 2311 	mov	a,#(___str_3 >> 8)
      0029F4 C0 E0            [24] 2312 	push	acc
      0029F6 12 37 0C         [24] 2313 	lcall	_printf_tiny
      0029F9 15 81            [12] 2314 	dec	sp
      0029FB 15 81            [12] 2315 	dec	sp
      0029FD D0 07            [24] 2316 	pop	ar7
                                   2317 ;	i2c.c:383: flag=1;
      0029FF 90 00 1A         [24] 2318 	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
      002A02 74 01            [12] 2319 	mov	a,#0x01
      002A04 F0               [24] 2320 	movx	@dptr,a
                                   2321 ;	i2c.c:385: break;
      002A05 02 2B E2         [24] 2322 	ljmp	00157$
                                   2323 ;	i2c.c:387: case 1:
      002A08                       2324 00107$:
                                   2325 ;	i2c.c:388: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
      002A08 EF               [12] 2326 	mov	a,r7
      002A09 24 1D            [12] 2327 	add	a,#_i2c_EEPROM_Read_get_address_65536_162
      002A0B FD               [12] 2328 	mov	r5,a
      002A0C E4               [12] 2329 	clr	a
      002A0D 34 00            [12] 2330 	addc	a,#(_i2c_EEPROM_Read_get_address_65536_162 >> 8)
      002A0F FE               [12] 2331 	mov	r6,a
      002A10 8D 82            [24] 2332 	mov	dpl,r5
      002A12 8E 83            [24] 2333 	mov	dph,r6
      002A14 E0               [24] 2334 	movx	a,@dptr
      002A15 FC               [12] 2335 	mov	r4,a
      002A16 BC 30 00         [24] 2336 	cjne	r4,#0x30,00298$
      002A19                       2337 00298$:
      002A19 40 05            [24] 2338 	jc	00124$
      002A1B EC               [12] 2339 	mov	a,r4
      002A1C 24 C6            [12] 2340 	add	a,#0xff - 0x39
      002A1E 50 26            [24] 2341 	jnc	00119$
      002A20                       2342 00124$:
      002A20 8D 82            [24] 2343 	mov	dpl,r5
      002A22 8E 83            [24] 2344 	mov	dph,r6
      002A24 E0               [24] 2345 	movx	a,@dptr
      002A25 FC               [12] 2346 	mov	r4,a
      002A26 BC 41 00         [24] 2347 	cjne	r4,#0x41,00301$
      002A29                       2348 00301$:
      002A29 40 05            [24] 2349 	jc	00126$
      002A2B EC               [12] 2350 	mov	a,r4
      002A2C 24 B9            [12] 2351 	add	a,#0xff - 0x46
      002A2E 50 16            [24] 2352 	jnc	00119$
      002A30                       2353 00126$:
      002A30 8D 82            [24] 2354 	mov	dpl,r5
      002A32 8E 83            [24] 2355 	mov	dph,r6
      002A34 E0               [24] 2356 	movx	a,@dptr
      002A35 FC               [12] 2357 	mov	r4,a
      002A36 BC 61 00         [24] 2358 	cjne	r4,#0x61,00304$
      002A39                       2359 00304$:
      002A39 50 03            [24] 2360 	jnc	00305$
      002A3B 02 2A DF         [24] 2361 	ljmp	00120$
      002A3E                       2362 00305$:
      002A3E EC               [12] 2363 	mov	a,r4
      002A3F 24 99            [12] 2364 	add	a,#0xff - 0x66
      002A41 50 03            [24] 2365 	jnc	00306$
      002A43 02 2A DF         [24] 2366 	ljmp	00120$
      002A46                       2367 00306$:
      002A46                       2368 00119$:
                                   2369 ;	i2c.c:390: if((get_address[i]>=48) && (get_address[i]<=57))
      002A46 8D 82            [24] 2370 	mov	dpl,r5
      002A48 8E 83            [24] 2371 	mov	dph,r6
      002A4A E0               [24] 2372 	movx	a,@dptr
      002A4B FC               [12] 2373 	mov	r4,a
      002A4C BC 30 00         [24] 2374 	cjne	r4,#0x30,00307$
      002A4F                       2375 00307$:
      002A4F 40 26            [24] 2376 	jc	00116$
      002A51 EC               [12] 2377 	mov	a,r4
      002A52 24 C6            [12] 2378 	add	a,#0xff - 0x39
      002A54 40 21            [24] 2379 	jc	00116$
                                   2380 ;	i2c.c:392: get_address_int[i]=get_address[i]-48;
      002A56 EF               [12] 2381 	mov	a,r7
      002A57 75 F0 02         [24] 2382 	mov	b,#0x02
      002A5A A4               [48] 2383 	mul	ab
      002A5B 24 20            [12] 2384 	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
      002A5D F5 82            [12] 2385 	mov	dpl,a
      002A5F 74 00            [12] 2386 	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
      002A61 35 F0            [12] 2387 	addc	a,b
      002A63 F5 83            [12] 2388 	mov	dph,a
      002A65 7B 00            [12] 2389 	mov	r3,#0x00
      002A67 EC               [12] 2390 	mov	a,r4
      002A68 24 D0            [12] 2391 	add	a,#0xd0
      002A6A FC               [12] 2392 	mov	r4,a
      002A6B EB               [12] 2393 	mov	a,r3
      002A6C 34 FF            [12] 2394 	addc	a,#0xff
      002A6E FB               [12] 2395 	mov	r3,a
      002A6F EC               [12] 2396 	mov	a,r4
      002A70 F0               [24] 2397 	movx	@dptr,a
      002A71 EB               [12] 2398 	mov	a,r3
      002A72 A3               [24] 2399 	inc	dptr
      002A73 F0               [24] 2400 	movx	@dptr,a
      002A74 02 2B E2         [24] 2401 	ljmp	00157$
      002A77                       2402 00116$:
                                   2403 ;	i2c.c:394: else if((get_address[i]>=65) && (get_address[i]<=70))
      002A77 8D 82            [24] 2404 	mov	dpl,r5
      002A79 8E 83            [24] 2405 	mov	dph,r6
      002A7B E0               [24] 2406 	movx	a,@dptr
      002A7C FC               [12] 2407 	mov	r4,a
      002A7D BC 41 00         [24] 2408 	cjne	r4,#0x41,00310$
      002A80                       2409 00310$:
      002A80 40 26            [24] 2410 	jc	00112$
      002A82 EC               [12] 2411 	mov	a,r4
      002A83 24 B9            [12] 2412 	add	a,#0xff - 0x46
      002A85 40 21            [24] 2413 	jc	00112$
                                   2414 ;	i2c.c:396: get_address_int[i]=get_address[i]-55;
      002A87 EF               [12] 2415 	mov	a,r7
      002A88 75 F0 02         [24] 2416 	mov	b,#0x02
      002A8B A4               [48] 2417 	mul	ab
      002A8C 24 20            [12] 2418 	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
      002A8E F5 82            [12] 2419 	mov	dpl,a
      002A90 74 00            [12] 2420 	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
      002A92 35 F0            [12] 2421 	addc	a,b
      002A94 F5 83            [12] 2422 	mov	dph,a
      002A96 7B 00            [12] 2423 	mov	r3,#0x00
      002A98 EC               [12] 2424 	mov	a,r4
      002A99 24 C9            [12] 2425 	add	a,#0xc9
      002A9B FC               [12] 2426 	mov	r4,a
      002A9C EB               [12] 2427 	mov	a,r3
      002A9D 34 FF            [12] 2428 	addc	a,#0xff
      002A9F FB               [12] 2429 	mov	r3,a
      002AA0 EC               [12] 2430 	mov	a,r4
      002AA1 F0               [24] 2431 	movx	@dptr,a
      002AA2 EB               [12] 2432 	mov	a,r3
      002AA3 A3               [24] 2433 	inc	dptr
      002AA4 F0               [24] 2434 	movx	@dptr,a
      002AA5 02 2B E2         [24] 2435 	ljmp	00157$
      002AA8                       2436 00112$:
                                   2437 ;	i2c.c:398: else if((get_address[i]>=97) && (get_address[i]<=102))
      002AA8 8D 82            [24] 2438 	mov	dpl,r5
      002AAA 8E 83            [24] 2439 	mov	dph,r6
      002AAC E0               [24] 2440 	movx	a,@dptr
      002AAD FE               [12] 2441 	mov	r6,a
      002AAE BE 61 00         [24] 2442 	cjne	r6,#0x61,00313$
      002AB1                       2443 00313$:
      002AB1 50 03            [24] 2444 	jnc	00314$
      002AB3 02 2B E2         [24] 2445 	ljmp	00157$
      002AB6                       2446 00314$:
      002AB6 EE               [12] 2447 	mov	a,r6
      002AB7 24 99            [12] 2448 	add	a,#0xff - 0x66
      002AB9 50 03            [24] 2449 	jnc	00315$
      002ABB 02 2B E2         [24] 2450 	ljmp	00157$
      002ABE                       2451 00315$:
                                   2452 ;	i2c.c:400: get_address_int[i]=get_address[i]-87;
      002ABE EF               [12] 2453 	mov	a,r7
      002ABF 75 F0 02         [24] 2454 	mov	b,#0x02
      002AC2 A4               [48] 2455 	mul	ab
      002AC3 24 20            [12] 2456 	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
      002AC5 F5 82            [12] 2457 	mov	dpl,a
      002AC7 74 00            [12] 2458 	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
      002AC9 35 F0            [12] 2459 	addc	a,b
      002ACB F5 83            [12] 2460 	mov	dph,a
      002ACD 7D 00            [12] 2461 	mov	r5,#0x00
      002ACF EE               [12] 2462 	mov	a,r6
      002AD0 24 A9            [12] 2463 	add	a,#0xa9
      002AD2 FE               [12] 2464 	mov	r6,a
      002AD3 ED               [12] 2465 	mov	a,r5
      002AD4 34 FF            [12] 2466 	addc	a,#0xff
      002AD6 FD               [12] 2467 	mov	r5,a
      002AD7 EE               [12] 2468 	mov	a,r6
      002AD8 F0               [24] 2469 	movx	@dptr,a
      002AD9 ED               [12] 2470 	mov	a,r5
      002ADA A3               [24] 2471 	inc	dptr
      002ADB F0               [24] 2472 	movx	@dptr,a
      002ADC 02 2B E2         [24] 2473 	ljmp	00157$
      002ADF                       2474 00120$:
                                   2475 ;	i2c.c:405: printf_tiny("\n\rInvalid Input! Please enter again\n\r");
      002ADF C0 07            [24] 2476 	push	ar7
      002AE1 74 B1            [12] 2477 	mov	a,#___str_3
      002AE3 C0 E0            [24] 2478 	push	acc
      002AE5 74 3F            [12] 2479 	mov	a,#(___str_3 >> 8)
      002AE7 C0 E0            [24] 2480 	push	acc
      002AE9 12 37 0C         [24] 2481 	lcall	_printf_tiny
      002AEC 15 81            [12] 2482 	dec	sp
      002AEE 15 81            [12] 2483 	dec	sp
      002AF0 D0 07            [24] 2484 	pop	ar7
                                   2485 ;	i2c.c:406: flag=1;
      002AF2 90 00 1A         [24] 2486 	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
      002AF5 74 01            [12] 2487 	mov	a,#0x01
      002AF7 F0               [24] 2488 	movx	@dptr,a
                                   2489 ;	i2c.c:408: break;
      002AF8 02 2B E2         [24] 2490 	ljmp	00157$
                                   2491 ;	i2c.c:410: case 2:
      002AFB                       2492 00127$:
                                   2493 ;	i2c.c:411: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
      002AFB EF               [12] 2494 	mov	a,r7
      002AFC 24 1D            [12] 2495 	add	a,#_i2c_EEPROM_Read_get_address_65536_162
      002AFE FD               [12] 2496 	mov	r5,a
      002AFF E4               [12] 2497 	clr	a
      002B00 34 00            [12] 2498 	addc	a,#(_i2c_EEPROM_Read_get_address_65536_162 >> 8)
      002B02 FE               [12] 2499 	mov	r6,a
      002B03 8D 82            [24] 2500 	mov	dpl,r5
      002B05 8E 83            [24] 2501 	mov	dph,r6
      002B07 E0               [24] 2502 	movx	a,@dptr
      002B08 FC               [12] 2503 	mov	r4,a
      002B09 BC 30 00         [24] 2504 	cjne	r4,#0x30,00316$
      002B0C                       2505 00316$:
      002B0C 40 05            [24] 2506 	jc	00144$
      002B0E EC               [12] 2507 	mov	a,r4
      002B0F 24 C6            [12] 2508 	add	a,#0xff - 0x39
      002B11 50 26            [24] 2509 	jnc	00139$
      002B13                       2510 00144$:
      002B13 8D 82            [24] 2511 	mov	dpl,r5
      002B15 8E 83            [24] 2512 	mov	dph,r6
      002B17 E0               [24] 2513 	movx	a,@dptr
      002B18 FC               [12] 2514 	mov	r4,a
      002B19 BC 41 00         [24] 2515 	cjne	r4,#0x41,00319$
      002B1C                       2516 00319$:
      002B1C 40 05            [24] 2517 	jc	00146$
      002B1E EC               [12] 2518 	mov	a,r4
      002B1F 24 B9            [12] 2519 	add	a,#0xff - 0x46
      002B21 50 16            [24] 2520 	jnc	00139$
      002B23                       2521 00146$:
      002B23 8D 82            [24] 2522 	mov	dpl,r5
      002B25 8E 83            [24] 2523 	mov	dph,r6
      002B27 E0               [24] 2524 	movx	a,@dptr
      002B28 FC               [12] 2525 	mov	r4,a
      002B29 BC 61 00         [24] 2526 	cjne	r4,#0x61,00322$
      002B2C                       2527 00322$:
      002B2C 50 03            [24] 2528 	jnc	00323$
      002B2E 02 2B C9         [24] 2529 	ljmp	00140$
      002B31                       2530 00323$:
      002B31 EC               [12] 2531 	mov	a,r4
      002B32 24 99            [12] 2532 	add	a,#0xff - 0x66
      002B34 50 03            [24] 2533 	jnc	00324$
      002B36 02 2B C9         [24] 2534 	ljmp	00140$
      002B39                       2535 00324$:
      002B39                       2536 00139$:
                                   2537 ;	i2c.c:413: if((get_address[i]>=48) && (get_address[i]<=57))
      002B39 8D 82            [24] 2538 	mov	dpl,r5
      002B3B 8E 83            [24] 2539 	mov	dph,r6
      002B3D E0               [24] 2540 	movx	a,@dptr
      002B3E FC               [12] 2541 	mov	r4,a
      002B3F BC 30 00         [24] 2542 	cjne	r4,#0x30,00325$
      002B42                       2543 00325$:
      002B42 40 25            [24] 2544 	jc	00136$
      002B44 EC               [12] 2545 	mov	a,r4
      002B45 24 C6            [12] 2546 	add	a,#0xff - 0x39
      002B47 40 20            [24] 2547 	jc	00136$
                                   2548 ;	i2c.c:415: get_address_int[i]=get_address[i]-48;
      002B49 EF               [12] 2549 	mov	a,r7
      002B4A 75 F0 02         [24] 2550 	mov	b,#0x02
      002B4D A4               [48] 2551 	mul	ab
      002B4E 24 20            [12] 2552 	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
      002B50 F5 82            [12] 2553 	mov	dpl,a
      002B52 74 00            [12] 2554 	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
      002B54 35 F0            [12] 2555 	addc	a,b
      002B56 F5 83            [12] 2556 	mov	dph,a
      002B58 7B 00            [12] 2557 	mov	r3,#0x00
      002B5A EC               [12] 2558 	mov	a,r4
      002B5B 24 D0            [12] 2559 	add	a,#0xd0
      002B5D FC               [12] 2560 	mov	r4,a
      002B5E EB               [12] 2561 	mov	a,r3
      002B5F 34 FF            [12] 2562 	addc	a,#0xff
      002B61 FB               [12] 2563 	mov	r3,a
      002B62 EC               [12] 2564 	mov	a,r4
      002B63 F0               [24] 2565 	movx	@dptr,a
      002B64 EB               [12] 2566 	mov	a,r3
      002B65 A3               [24] 2567 	inc	dptr
      002B66 F0               [24] 2568 	movx	@dptr,a
      002B67 80 79            [24] 2569 	sjmp	00157$
      002B69                       2570 00136$:
                                   2571 ;	i2c.c:417: else if((get_address[i]>=65) && (get_address[i]<=70))
      002B69 8D 82            [24] 2572 	mov	dpl,r5
      002B6B 8E 83            [24] 2573 	mov	dph,r6
      002B6D E0               [24] 2574 	movx	a,@dptr
      002B6E FC               [12] 2575 	mov	r4,a
      002B6F BC 41 00         [24] 2576 	cjne	r4,#0x41,00328$
      002B72                       2577 00328$:
      002B72 40 25            [24] 2578 	jc	00132$
      002B74 EC               [12] 2579 	mov	a,r4
      002B75 24 B9            [12] 2580 	add	a,#0xff - 0x46
      002B77 40 20            [24] 2581 	jc	00132$
                                   2582 ;	i2c.c:419: get_address_int[i]=get_address[i]-55;
      002B79 EF               [12] 2583 	mov	a,r7
      002B7A 75 F0 02         [24] 2584 	mov	b,#0x02
      002B7D A4               [48] 2585 	mul	ab
      002B7E 24 20            [12] 2586 	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
      002B80 F5 82            [12] 2587 	mov	dpl,a
      002B82 74 00            [12] 2588 	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
      002B84 35 F0            [12] 2589 	addc	a,b
      002B86 F5 83            [12] 2590 	mov	dph,a
      002B88 7B 00            [12] 2591 	mov	r3,#0x00
      002B8A EC               [12] 2592 	mov	a,r4
      002B8B 24 C9            [12] 2593 	add	a,#0xc9
      002B8D FC               [12] 2594 	mov	r4,a
      002B8E EB               [12] 2595 	mov	a,r3
      002B8F 34 FF            [12] 2596 	addc	a,#0xff
      002B91 FB               [12] 2597 	mov	r3,a
      002B92 EC               [12] 2598 	mov	a,r4
      002B93 F0               [24] 2599 	movx	@dptr,a
      002B94 EB               [12] 2600 	mov	a,r3
      002B95 A3               [24] 2601 	inc	dptr
      002B96 F0               [24] 2602 	movx	@dptr,a
      002B97 80 49            [24] 2603 	sjmp	00157$
      002B99                       2604 00132$:
                                   2605 ;	i2c.c:421: else if((get_address[i]>=97) && (get_address[i]<=102))
      002B99 8D 82            [24] 2606 	mov	dpl,r5
      002B9B 8E 83            [24] 2607 	mov	dph,r6
      002B9D E0               [24] 2608 	movx	a,@dptr
      002B9E FE               [12] 2609 	mov	r6,a
      002B9F BE 61 00         [24] 2610 	cjne	r6,#0x61,00331$
      002BA2                       2611 00331$:
      002BA2 40 3E            [24] 2612 	jc	00157$
      002BA4 EE               [12] 2613 	mov	a,r6
      002BA5 24 99            [12] 2614 	add	a,#0xff - 0x66
      002BA7 40 39            [24] 2615 	jc	00157$
                                   2616 ;	i2c.c:423: get_address_int[i]=get_address[i]-87;
      002BA9 EF               [12] 2617 	mov	a,r7
      002BAA 75 F0 02         [24] 2618 	mov	b,#0x02
      002BAD A4               [48] 2619 	mul	ab
      002BAE 24 20            [12] 2620 	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
      002BB0 F5 82            [12] 2621 	mov	dpl,a
      002BB2 74 00            [12] 2622 	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
      002BB4 35 F0            [12] 2623 	addc	a,b
      002BB6 F5 83            [12] 2624 	mov	dph,a
      002BB8 7D 00            [12] 2625 	mov	r5,#0x00
      002BBA EE               [12] 2626 	mov	a,r6
      002BBB 24 A9            [12] 2627 	add	a,#0xa9
      002BBD FE               [12] 2628 	mov	r6,a
      002BBE ED               [12] 2629 	mov	a,r5
      002BBF 34 FF            [12] 2630 	addc	a,#0xff
      002BC1 FD               [12] 2631 	mov	r5,a
      002BC2 EE               [12] 2632 	mov	a,r6
      002BC3 F0               [24] 2633 	movx	@dptr,a
      002BC4 ED               [12] 2634 	mov	a,r5
      002BC5 A3               [24] 2635 	inc	dptr
      002BC6 F0               [24] 2636 	movx	@dptr,a
      002BC7 80 19            [24] 2637 	sjmp	00157$
      002BC9                       2638 00140$:
                                   2639 ;	i2c.c:428: printf_tiny("\n\rInvalid Input! Please enter again\n\r");
      002BC9 C0 07            [24] 2640 	push	ar7
      002BCB 74 B1            [12] 2641 	mov	a,#___str_3
      002BCD C0 E0            [24] 2642 	push	acc
      002BCF 74 3F            [12] 2643 	mov	a,#(___str_3 >> 8)
      002BD1 C0 E0            [24] 2644 	push	acc
      002BD3 12 37 0C         [24] 2645 	lcall	_printf_tiny
      002BD6 15 81            [12] 2646 	dec	sp
      002BD8 15 81            [12] 2647 	dec	sp
      002BDA D0 07            [24] 2648 	pop	ar7
                                   2649 ;	i2c.c:429: flag=1;
      002BDC 90 00 1A         [24] 2650 	mov	dptr,#_i2c_EEPROM_Read_flag_65536_162
      002BDF 74 01            [12] 2651 	mov	a,#0x01
      002BE1 F0               [24] 2652 	movx	@dptr,a
                                   2653 ;	i2c.c:434: }
      002BE2                       2654 00157$:
                                   2655 ;	i2c.c:371: for(i=0;i<3;i++)
      002BE2 0F               [12] 2656 	inc	r7
      002BE3 BF 03 00         [24] 2657 	cjne	r7,#0x03,00334$
      002BE6                       2658 00334$:
      002BE6 50 03            [24] 2659 	jnc	00335$
      002BE8 02 29 A2         [24] 2660 	ljmp	00156$
      002BEB                       2661 00335$:
      002BEB 02 29 53         [24] 2662 	ljmp	00150$
                                   2663 ;	i2c.c:439: for(i=0;i<3;i++)
      002BEE                       2664 00191$:
      002BEE 7F 00            [12] 2665 	mov	r7,#0x00
      002BF0                       2666 00158$:
                                   2667 ;	i2c.c:441: address = address+((get_address_int[i])*powf(16,2-i));
      002BF0 EF               [12] 2668 	mov	a,r7
      002BF1 75 F0 02         [24] 2669 	mov	b,#0x02
      002BF4 A4               [48] 2670 	mul	ab
      002BF5 24 20            [12] 2671 	add	a,#_i2c_EEPROM_Read_get_address_int_65536_162
      002BF7 F5 82            [12] 2672 	mov	dpl,a
      002BF9 74 00            [12] 2673 	mov	a,#(_i2c_EEPROM_Read_get_address_int_65536_162 >> 8)
      002BFB 35 F0            [12] 2674 	addc	a,b
      002BFD F5 83            [12] 2675 	mov	dph,a
      002BFF E0               [24] 2676 	movx	a,@dptr
      002C00 FD               [12] 2677 	mov	r5,a
      002C01 A3               [24] 2678 	inc	dptr
      002C02 E0               [24] 2679 	movx	a,@dptr
      002C03 FE               [12] 2680 	mov	r6,a
      002C04 8F 03            [24] 2681 	mov	ar3,r7
      002C06 7C 00            [12] 2682 	mov	r4,#0x00
      002C08 74 02            [12] 2683 	mov	a,#0x02
      002C0A C3               [12] 2684 	clr	c
      002C0B 9B               [12] 2685 	subb	a,r3
      002C0C FB               [12] 2686 	mov	r3,a
      002C0D E4               [12] 2687 	clr	a
      002C0E 9C               [12] 2688 	subb	a,r4
      002C0F FC               [12] 2689 	mov	r4,a
      002C10 8B 82            [24] 2690 	mov	dpl,r3
      002C12 8C 83            [24] 2691 	mov	dph,r4
      002C14 C0 07            [24] 2692 	push	ar7
      002C16 C0 06            [24] 2693 	push	ar6
      002C18 C0 05            [24] 2694 	push	ar5
      002C1A 12 39 AD         [24] 2695 	lcall	___sint2fs
      002C1D A9 82            [24] 2696 	mov	r1,dpl
      002C1F AA 83            [24] 2697 	mov	r2,dph
      002C21 AB F0            [24] 2698 	mov	r3,b
      002C23 FC               [12] 2699 	mov	r4,a
      002C24 90 00 57         [24] 2700 	mov	dptr,#_powf_PARM_2
      002C27 E9               [12] 2701 	mov	a,r1
      002C28 F0               [24] 2702 	movx	@dptr,a
      002C29 EA               [12] 2703 	mov	a,r2
      002C2A A3               [24] 2704 	inc	dptr
      002C2B F0               [24] 2705 	movx	@dptr,a
      002C2C EB               [12] 2706 	mov	a,r3
      002C2D A3               [24] 2707 	inc	dptr
      002C2E F0               [24] 2708 	movx	@dptr,a
      002C2F EC               [12] 2709 	mov	a,r4
      002C30 A3               [24] 2710 	inc	dptr
      002C31 F0               [24] 2711 	movx	@dptr,a
      002C32 90 00 00         [24] 2712 	mov	dptr,#0x0000
      002C35 75 F0 80         [24] 2713 	mov	b,#0x80
      002C38 74 41            [12] 2714 	mov	a,#0x41
      002C3A 12 38 35         [24] 2715 	lcall	_powf
      002C3D 85 82 10         [24] 2716 	mov	_i2c_EEPROM_Read_sloc0_1_0,dpl
      002C40 85 83 11         [24] 2717 	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 1),dph
      002C43 85 F0 12         [24] 2718 	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 2),b
      002C46 F5 13            [12] 2719 	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 3),a
      002C48 D0 05            [24] 2720 	pop	ar5
      002C4A D0 06            [24] 2721 	pop	ar6
      002C4C 8D 82            [24] 2722 	mov	dpl,r5
      002C4E 8E 83            [24] 2723 	mov	dph,r6
      002C50 12 39 BA         [24] 2724 	lcall	___uint2fs
      002C53 A8 82            [24] 2725 	mov	r0,dpl
      002C55 AC 83            [24] 2726 	mov	r4,dph
      002C57 AD F0            [24] 2727 	mov	r5,b
      002C59 FE               [12] 2728 	mov	r6,a
      002C5A C0 10            [24] 2729 	push	_i2c_EEPROM_Read_sloc0_1_0
      002C5C C0 11            [24] 2730 	push	(_i2c_EEPROM_Read_sloc0_1_0 + 1)
      002C5E C0 12            [24] 2731 	push	(_i2c_EEPROM_Read_sloc0_1_0 + 2)
      002C60 C0 13            [24] 2732 	push	(_i2c_EEPROM_Read_sloc0_1_0 + 3)
      002C62 88 82            [24] 2733 	mov	dpl,r0
      002C64 8C 83            [24] 2734 	mov	dph,r4
      002C66 8D F0            [24] 2735 	mov	b,r5
      002C68 EE               [12] 2736 	mov	a,r6
      002C69 12 36 08         [24] 2737 	lcall	___fsmul
      002C6C 85 82 10         [24] 2738 	mov	_i2c_EEPROM_Read_sloc0_1_0,dpl
      002C6F 85 83 11         [24] 2739 	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 1),dph
      002C72 85 F0 12         [24] 2740 	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 2),b
      002C75 F5 13            [12] 2741 	mov	(_i2c_EEPROM_Read_sloc0_1_0 + 3),a
      002C77 E5 81            [12] 2742 	mov	a,sp
      002C79 24 FC            [12] 2743 	add	a,#0xfc
      002C7B F5 81            [12] 2744 	mov	sp,a
      002C7D 90 00 1B         [24] 2745 	mov	dptr,#_i2c_EEPROM_Read_address_65536_162
      002C80 E0               [24] 2746 	movx	a,@dptr
      002C81 F9               [12] 2747 	mov	r1,a
      002C82 A3               [24] 2748 	inc	dptr
      002C83 E0               [24] 2749 	movx	a,@dptr
      002C84 FA               [12] 2750 	mov	r2,a
      002C85 89 82            [24] 2751 	mov	dpl,r1
      002C87 8A 83            [24] 2752 	mov	dph,r2
      002C89 12 39 BA         [24] 2753 	lcall	___uint2fs
      002C8C A8 82            [24] 2754 	mov	r0,dpl
      002C8E A9 83            [24] 2755 	mov	r1,dph
      002C90 AA F0            [24] 2756 	mov	r2,b
      002C92 FE               [12] 2757 	mov	r6,a
      002C93 C0 10            [24] 2758 	push	_i2c_EEPROM_Read_sloc0_1_0
      002C95 C0 11            [24] 2759 	push	(_i2c_EEPROM_Read_sloc0_1_0 + 1)
      002C97 C0 12            [24] 2760 	push	(_i2c_EEPROM_Read_sloc0_1_0 + 2)
      002C99 C0 13            [24] 2761 	push	(_i2c_EEPROM_Read_sloc0_1_0 + 3)
      002C9B 88 82            [24] 2762 	mov	dpl,r0
      002C9D 89 83            [24] 2763 	mov	dph,r1
      002C9F 8A F0            [24] 2764 	mov	b,r2
      002CA1 EE               [12] 2765 	mov	a,r6
      002CA2 12 39 54         [24] 2766 	lcall	___fsadd
      002CA5 AB 82            [24] 2767 	mov	r3,dpl
      002CA7 AC 83            [24] 2768 	mov	r4,dph
      002CA9 AD F0            [24] 2769 	mov	r5,b
      002CAB FE               [12] 2770 	mov	r6,a
      002CAC E5 81            [12] 2771 	mov	a,sp
      002CAE 24 FC            [12] 2772 	add	a,#0xfc
      002CB0 F5 81            [12] 2773 	mov	sp,a
      002CB2 8B 82            [24] 2774 	mov	dpl,r3
      002CB4 8C 83            [24] 2775 	mov	dph,r4
      002CB6 8D F0            [24] 2776 	mov	b,r5
      002CB8 EE               [12] 2777 	mov	a,r6
      002CB9 12 39 C6         [24] 2778 	lcall	___fs2uint
      002CBC E5 82            [12] 2779 	mov	a,dpl
      002CBE 85 83 F0         [24] 2780 	mov	b,dph
      002CC1 D0 07            [24] 2781 	pop	ar7
      002CC3 90 00 1B         [24] 2782 	mov	dptr,#_i2c_EEPROM_Read_address_65536_162
      002CC6 F0               [24] 2783 	movx	@dptr,a
      002CC7 E5 F0            [12] 2784 	mov	a,b
      002CC9 A3               [24] 2785 	inc	dptr
      002CCA F0               [24] 2786 	movx	@dptr,a
                                   2787 ;	i2c.c:439: for(i=0;i<3;i++)
      002CCB 0F               [12] 2788 	inc	r7
      002CCC BF 03 00         [24] 2789 	cjne	r7,#0x03,00336$
      002CCF                       2790 00336$:
      002CCF 50 03            [24] 2791 	jnc	00337$
      002CD1 02 2B F0         [24] 2792 	ljmp	00158$
      002CD4                       2793 00337$:
                                   2794 ;	i2c.c:444: control_byte = ((0xA0)|(address >> 7)&(0xfe));
      002CD4 90 00 1B         [24] 2795 	mov	dptr,#_i2c_EEPROM_Read_address_65536_162
      002CD7 E0               [24] 2796 	movx	a,@dptr
      002CD8 FE               [12] 2797 	mov	r6,a
      002CD9 A3               [24] 2798 	inc	dptr
      002CDA E0               [24] 2799 	movx	a,@dptr
      002CDB 8E 04            [24] 2800 	mov	ar4,r6
      002CDD A2 E7            [12] 2801 	mov	c,acc.7
      002CDF CC               [12] 2802 	xch	a,r4
      002CE0 33               [12] 2803 	rlc	a
      002CE1 CC               [12] 2804 	xch	a,r4
      002CE2 33               [12] 2805 	rlc	a
      002CE3 CC               [12] 2806 	xch	a,r4
      002CE4 54 01            [12] 2807 	anl	a,#0x01
      002CE6 74 FE            [12] 2808 	mov	a,#0xfe
      002CE8 5C               [12] 2809 	anl	a,r4
      002CE9 44 A0            [12] 2810 	orl	a,#0xa0
      002CEB FD               [12] 2811 	mov	r5,a
                                   2812 ;	i2c.c:445: write_readbyte = ((0xA0)|(address >> 7)|(0x01));
      002CEC 43 04 A1         [24] 2813 	orl	ar4,#0xa1
                                   2814 ;	i2c.c:448: address_byte = (uint8_t)address;
                                   2815 ;	i2c.c:451: i2c_start(); // 1. Master issues START condition
      002CEF C0 06            [24] 2816 	push	ar6
      002CF1 C0 05            [24] 2817 	push	ar5
      002CF3 C0 04            [24] 2818 	push	ar4
      002CF5 12 20 A1         [24] 2819 	lcall	_i2c_start
      002CF8 D0 04            [24] 2820 	pop	ar4
      002CFA D0 05            [24] 2821 	pop	ar5
                                   2822 ;	i2c.c:454: i2c_Write_Byte(control_byte); // 2. Master sends Device Address with Write option (0xA0)
      002CFC 8D 82            [24] 2823 	mov	dpl,r5
      002CFE C0 04            [24] 2824 	push	ar4
      002D00 12 21 52         [24] 2825 	lcall	_i2c_Write_Byte
      002D03 D0 04            [24] 2826 	pop	ar4
      002D05 D0 06            [24] 2827 	pop	ar6
                                   2828 ;	i2c.c:457: i2c_Write_Byte(address_byte); // 4. Master sends Buffer/Register Address
      002D07 8E 82            [24] 2829 	mov	dpl,r6
      002D09 C0 04            [24] 2830 	push	ar4
      002D0B 12 21 52         [24] 2831 	lcall	_i2c_Write_Byte
                                   2832 ;	i2c.c:459: i2c_Restart(); // 6. Master issues RESTART condition
      002D0E 12 21 03         [24] 2833 	lcall	_i2c_Restart
      002D11 D0 04            [24] 2834 	pop	ar4
                                   2835 ;	i2c.c:462: i2c_Write_Byte(write_readbyte); // 7. Master issues Slave Address with Read Option (0xA1)
      002D13 8C 82            [24] 2836 	mov	dpl,r4
      002D15 12 21 52         [24] 2837 	lcall	_i2c_Write_Byte
                                   2838 ;	i2c.c:465: byte_received = i2c_Read_Byte(); // 9. Master reads data from Slave
      002D18 12 21 C3         [24] 2839 	lcall	_i2c_Read_Byte
                                   2840 ;	i2c.c:468: i2c_NoAck(); // 10. Master issues NACK
      002D1B 12 20 EB         [24] 2841 	lcall	_i2c_NoAck
                                   2842 ;	i2c.c:471: i2c_stop(); // 11. Master issues STOP condition
                                   2843 ;	i2c.c:473: }
      002D1E 02 20 B3         [24] 2844 	ljmp	_i2c_stop
                                   2845 ;------------------------------------------------------------
                                   2846 ;Allocation info for local variables in function 'hex_addresses'
                                   2847 ;------------------------------------------------------------
                                   2848 ;sloc0                     Allocated with name '_hex_addresses_sloc0_1_0'
                                   2849 ;flag                      Allocated with name '_hex_addresses_flag_65536_183'
                                   2850 ;i                         Allocated with name '_hex_addresses_i_65536_183'
                                   2851 ;address                   Allocated with name '_hex_addresses_address_65536_183'
                                   2852 ;get_address               Allocated with name '_hex_addresses_get_address_65536_183'
                                   2853 ;get_address_int           Allocated with name '_hex_addresses_get_address_int_65536_183'
                                   2854 ;------------------------------------------------------------
                                   2855 ;	i2c.c:477: uint16_t hex_addresses()
                                   2856 ;	-----------------------------------------
                                   2857 ;	 function hex_addresses
                                   2858 ;	-----------------------------------------
      002D21                       2859 _hex_addresses:
                                   2860 ;	i2c.c:479: int flag=1;
      002D21 90 00 26         [24] 2861 	mov	dptr,#_hex_addresses_flag_65536_183
      002D24 74 01            [12] 2862 	mov	a,#0x01
      002D26 F0               [24] 2863 	movx	@dptr,a
      002D27 E4               [12] 2864 	clr	a
      002D28 A3               [24] 2865 	inc	dptr
      002D29 F0               [24] 2866 	movx	@dptr,a
                                   2867 ;	i2c.c:481: uint16_t address=0;            //to store the inputed address from the user in a single integer form
      002D2A 90 00 28         [24] 2868 	mov	dptr,#_hex_addresses_address_65536_183
      002D2D F0               [24] 2869 	movx	@dptr,a
      002D2E A3               [24] 2870 	inc	dptr
      002D2F F0               [24] 2871 	movx	@dptr,a
                                   2872 ;	i2c.c:486: while(flag)
      002D30                       2873 00150$:
      002D30 90 00 26         [24] 2874 	mov	dptr,#_hex_addresses_flag_65536_183
      002D33 E0               [24] 2875 	movx	a,@dptr
      002D34 F5 F0            [12] 2876 	mov	b,a
      002D36 A3               [24] 2877 	inc	dptr
      002D37 E0               [24] 2878 	movx	a,@dptr
      002D38 45 F0            [12] 2879 	orl	a,b
      002D3A 70 03            [24] 2880 	jnz	00289$
      002D3C 02 2F CD         [24] 2881 	ljmp	00191$
      002D3F                       2882 00289$:
                                   2883 ;	i2c.c:488: flag=0;
      002D3F 90 00 26         [24] 2884 	mov	dptr,#_hex_addresses_flag_65536_183
      002D42 E4               [12] 2885 	clr	a
      002D43 F0               [24] 2886 	movx	@dptr,a
      002D44 A3               [24] 2887 	inc	dptr
      002D45 F0               [24] 2888 	movx	@dptr,a
                                   2889 ;	i2c.c:489: for(i=0;i<3;i++)
      002D46 7F 00            [12] 2890 	mov	r7,#0x00
      002D48                       2891 00154$:
                                   2892 ;	i2c.c:491: get_address[i]=getchar();
      002D48 EF               [12] 2893 	mov	a,r7
      002D49 24 2A            [12] 2894 	add	a,#_hex_addresses_get_address_65536_183
      002D4B FD               [12] 2895 	mov	r5,a
      002D4C E4               [12] 2896 	clr	a
      002D4D 34 00            [12] 2897 	addc	a,#(_hex_addresses_get_address_65536_183 >> 8)
      002D4F FE               [12] 2898 	mov	r6,a
      002D50 C0 07            [24] 2899 	push	ar7
      002D52 C0 06            [24] 2900 	push	ar6
      002D54 C0 05            [24] 2901 	push	ar5
      002D56 12 34 3F         [24] 2902 	lcall	_getchar
      002D59 AB 82            [24] 2903 	mov	r3,dpl
      002D5B D0 05            [24] 2904 	pop	ar5
      002D5D D0 06            [24] 2905 	pop	ar6
      002D5F 8D 82            [24] 2906 	mov	dpl,r5
      002D61 8E 83            [24] 2907 	mov	dph,r6
      002D63 EB               [12] 2908 	mov	a,r3
      002D64 F0               [24] 2909 	movx	@dptr,a
                                   2910 ;	i2c.c:492: putchar(get_address[i]);
      002D65 7E 00            [12] 2911 	mov	r6,#0x00
      002D67 8B 82            [24] 2912 	mov	dpl,r3
      002D69 8E 83            [24] 2913 	mov	dph,r6
      002D6B 12 34 20         [24] 2914 	lcall	_putchar
      002D6E D0 07            [24] 2915 	pop	ar7
                                   2916 ;	i2c.c:489: for(i=0;i<3;i++)
      002D70 0F               [12] 2917 	inc	r7
      002D71 BF 03 00         [24] 2918 	cjne	r7,#0x03,00290$
      002D74                       2919 00290$:
      002D74 40 D2            [24] 2920 	jc	00154$
                                   2921 ;	i2c.c:495: for(i=0;i<3;i++)
      002D76 7F 00            [12] 2922 	mov	r7,#0x00
      002D78                       2923 00156$:
                                   2924 ;	i2c.c:497: switch(i)
      002D78 BF 00 02         [24] 2925 	cjne	r7,#0x00,00292$
      002D7B 80 0E            [24] 2926 	sjmp	00102$
      002D7D                       2927 00292$:
      002D7D BF 01 02         [24] 2928 	cjne	r7,#0x01,00293$
      002D80 80 5F            [24] 2929 	sjmp	00107$
      002D82                       2930 00293$:
      002D82 BF 02 03         [24] 2931 	cjne	r7,#0x02,00294$
      002D85 02 2E D7         [24] 2932 	ljmp	00127$
      002D88                       2933 00294$:
      002D88 02 2F C1         [24] 2934 	ljmp	00157$
                                   2935 ;	i2c.c:499: case 0:
      002D8B                       2936 00102$:
                                   2937 ;	i2c.c:500: if((get_address[i]>=48) && (get_address[i]<=55))
      002D8B EF               [12] 2938 	mov	a,r7
      002D8C 24 2A            [12] 2939 	add	a,#_hex_addresses_get_address_65536_183
      002D8E F5 82            [12] 2940 	mov	dpl,a
      002D90 E4               [12] 2941 	clr	a
      002D91 34 00            [12] 2942 	addc	a,#(_hex_addresses_get_address_65536_183 >> 8)
      002D93 F5 83            [12] 2943 	mov	dph,a
      002D95 E0               [24] 2944 	movx	a,@dptr
      002D96 FE               [12] 2945 	mov	r6,a
      002D97 BE 30 00         [24] 2946 	cjne	r6,#0x30,00295$
      002D9A                       2947 00295$:
      002D9A 40 26            [24] 2948 	jc	00104$
      002D9C EE               [12] 2949 	mov	a,r6
      002D9D 24 C8            [12] 2950 	add	a,#0xff - 0x37
      002D9F 40 21            [24] 2951 	jc	00104$
                                   2952 ;	i2c.c:502: get_address_int[i]= get_address[i]-48;
      002DA1 EF               [12] 2953 	mov	a,r7
      002DA2 75 F0 02         [24] 2954 	mov	b,#0x02
      002DA5 A4               [48] 2955 	mul	ab
      002DA6 24 2D            [12] 2956 	add	a,#_hex_addresses_get_address_int_65536_183
      002DA8 F5 82            [12] 2957 	mov	dpl,a
      002DAA 74 00            [12] 2958 	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
      002DAC 35 F0            [12] 2959 	addc	a,b
      002DAE F5 83            [12] 2960 	mov	dph,a
      002DB0 7D 00            [12] 2961 	mov	r5,#0x00
      002DB2 EE               [12] 2962 	mov	a,r6
      002DB3 24 D0            [12] 2963 	add	a,#0xd0
      002DB5 FE               [12] 2964 	mov	r6,a
      002DB6 ED               [12] 2965 	mov	a,r5
      002DB7 34 FF            [12] 2966 	addc	a,#0xff
      002DB9 FD               [12] 2967 	mov	r5,a
      002DBA EE               [12] 2968 	mov	a,r6
      002DBB F0               [24] 2969 	movx	@dptr,a
      002DBC ED               [12] 2970 	mov	a,r5
      002DBD A3               [24] 2971 	inc	dptr
      002DBE F0               [24] 2972 	movx	@dptr,a
      002DBF 02 2F C1         [24] 2973 	ljmp	00157$
      002DC2                       2974 00104$:
                                   2975 ;	i2c.c:506: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
      002DC2 C0 07            [24] 2976 	push	ar7
      002DC4 74 32            [12] 2977 	mov	a,#___str_1
      002DC6 C0 E0            [24] 2978 	push	acc
      002DC8 74 3F            [12] 2979 	mov	a,#(___str_1 >> 8)
      002DCA C0 E0            [24] 2980 	push	acc
      002DCC 12 37 0C         [24] 2981 	lcall	_printf_tiny
      002DCF 15 81            [12] 2982 	dec	sp
      002DD1 15 81            [12] 2983 	dec	sp
      002DD3 D0 07            [24] 2984 	pop	ar7
                                   2985 ;	i2c.c:507: flag=1;
      002DD5 90 00 26         [24] 2986 	mov	dptr,#_hex_addresses_flag_65536_183
      002DD8 74 01            [12] 2987 	mov	a,#0x01
      002DDA F0               [24] 2988 	movx	@dptr,a
      002DDB E4               [12] 2989 	clr	a
      002DDC A3               [24] 2990 	inc	dptr
      002DDD F0               [24] 2991 	movx	@dptr,a
                                   2992 ;	i2c.c:509: break;
      002DDE 02 2F C1         [24] 2993 	ljmp	00157$
                                   2994 ;	i2c.c:511: case 1:
      002DE1                       2995 00107$:
                                   2996 ;	i2c.c:512: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
      002DE1 EF               [12] 2997 	mov	a,r7
      002DE2 24 2A            [12] 2998 	add	a,#_hex_addresses_get_address_65536_183
      002DE4 FD               [12] 2999 	mov	r5,a
      002DE5 E4               [12] 3000 	clr	a
      002DE6 34 00            [12] 3001 	addc	a,#(_hex_addresses_get_address_65536_183 >> 8)
      002DE8 FE               [12] 3002 	mov	r6,a
      002DE9 8D 82            [24] 3003 	mov	dpl,r5
      002DEB 8E 83            [24] 3004 	mov	dph,r6
      002DED E0               [24] 3005 	movx	a,@dptr
      002DEE FC               [12] 3006 	mov	r4,a
      002DEF BC 30 00         [24] 3007 	cjne	r4,#0x30,00298$
      002DF2                       3008 00298$:
      002DF2 40 05            [24] 3009 	jc	00124$
      002DF4 EC               [12] 3010 	mov	a,r4
      002DF5 24 C6            [12] 3011 	add	a,#0xff - 0x39
      002DF7 50 26            [24] 3012 	jnc	00119$
      002DF9                       3013 00124$:
      002DF9 8D 82            [24] 3014 	mov	dpl,r5
      002DFB 8E 83            [24] 3015 	mov	dph,r6
      002DFD E0               [24] 3016 	movx	a,@dptr
      002DFE FC               [12] 3017 	mov	r4,a
      002DFF BC 41 00         [24] 3018 	cjne	r4,#0x41,00301$
      002E02                       3019 00301$:
      002E02 40 05            [24] 3020 	jc	00126$
      002E04 EC               [12] 3021 	mov	a,r4
      002E05 24 B9            [12] 3022 	add	a,#0xff - 0x46
      002E07 50 16            [24] 3023 	jnc	00119$
      002E09                       3024 00126$:
      002E09 8D 82            [24] 3025 	mov	dpl,r5
      002E0B 8E 83            [24] 3026 	mov	dph,r6
      002E0D E0               [24] 3027 	movx	a,@dptr
      002E0E FC               [12] 3028 	mov	r4,a
      002E0F BC 61 00         [24] 3029 	cjne	r4,#0x61,00304$
      002E12                       3030 00304$:
      002E12 50 03            [24] 3031 	jnc	00305$
      002E14 02 2E B8         [24] 3032 	ljmp	00120$
      002E17                       3033 00305$:
      002E17 EC               [12] 3034 	mov	a,r4
      002E18 24 99            [12] 3035 	add	a,#0xff - 0x66
      002E1A 50 03            [24] 3036 	jnc	00306$
      002E1C 02 2E B8         [24] 3037 	ljmp	00120$
      002E1F                       3038 00306$:
      002E1F                       3039 00119$:
                                   3040 ;	i2c.c:514: if((get_address[i]>=48) && (get_address[i]<=57))
      002E1F 8D 82            [24] 3041 	mov	dpl,r5
      002E21 8E 83            [24] 3042 	mov	dph,r6
      002E23 E0               [24] 3043 	movx	a,@dptr
      002E24 FC               [12] 3044 	mov	r4,a
      002E25 BC 30 00         [24] 3045 	cjne	r4,#0x30,00307$
      002E28                       3046 00307$:
      002E28 40 26            [24] 3047 	jc	00116$
      002E2A EC               [12] 3048 	mov	a,r4
      002E2B 24 C6            [12] 3049 	add	a,#0xff - 0x39
      002E2D 40 21            [24] 3050 	jc	00116$
                                   3051 ;	i2c.c:516: get_address_int[i]=get_address[i]-48;
      002E2F EF               [12] 3052 	mov	a,r7
      002E30 75 F0 02         [24] 3053 	mov	b,#0x02
      002E33 A4               [48] 3054 	mul	ab
      002E34 24 2D            [12] 3055 	add	a,#_hex_addresses_get_address_int_65536_183
      002E36 F5 82            [12] 3056 	mov	dpl,a
      002E38 74 00            [12] 3057 	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
      002E3A 35 F0            [12] 3058 	addc	a,b
      002E3C F5 83            [12] 3059 	mov	dph,a
      002E3E 7B 00            [12] 3060 	mov	r3,#0x00
      002E40 EC               [12] 3061 	mov	a,r4
      002E41 24 D0            [12] 3062 	add	a,#0xd0
      002E43 FC               [12] 3063 	mov	r4,a
      002E44 EB               [12] 3064 	mov	a,r3
      002E45 34 FF            [12] 3065 	addc	a,#0xff
      002E47 FB               [12] 3066 	mov	r3,a
      002E48 EC               [12] 3067 	mov	a,r4
      002E49 F0               [24] 3068 	movx	@dptr,a
      002E4A EB               [12] 3069 	mov	a,r3
      002E4B A3               [24] 3070 	inc	dptr
      002E4C F0               [24] 3071 	movx	@dptr,a
      002E4D 02 2F C1         [24] 3072 	ljmp	00157$
      002E50                       3073 00116$:
                                   3074 ;	i2c.c:518: else if((get_address[i]>=65) && (get_address[i]<=70))
      002E50 8D 82            [24] 3075 	mov	dpl,r5
      002E52 8E 83            [24] 3076 	mov	dph,r6
      002E54 E0               [24] 3077 	movx	a,@dptr
      002E55 FC               [12] 3078 	mov	r4,a
      002E56 BC 41 00         [24] 3079 	cjne	r4,#0x41,00310$
      002E59                       3080 00310$:
      002E59 40 26            [24] 3081 	jc	00112$
      002E5B EC               [12] 3082 	mov	a,r4
      002E5C 24 B9            [12] 3083 	add	a,#0xff - 0x46
      002E5E 40 21            [24] 3084 	jc	00112$
                                   3085 ;	i2c.c:520: get_address_int[i]=get_address[i]-55;
      002E60 EF               [12] 3086 	mov	a,r7
      002E61 75 F0 02         [24] 3087 	mov	b,#0x02
      002E64 A4               [48] 3088 	mul	ab
      002E65 24 2D            [12] 3089 	add	a,#_hex_addresses_get_address_int_65536_183
      002E67 F5 82            [12] 3090 	mov	dpl,a
      002E69 74 00            [12] 3091 	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
      002E6B 35 F0            [12] 3092 	addc	a,b
      002E6D F5 83            [12] 3093 	mov	dph,a
      002E6F 7B 00            [12] 3094 	mov	r3,#0x00
      002E71 EC               [12] 3095 	mov	a,r4
      002E72 24 C9            [12] 3096 	add	a,#0xc9
      002E74 FC               [12] 3097 	mov	r4,a
      002E75 EB               [12] 3098 	mov	a,r3
      002E76 34 FF            [12] 3099 	addc	a,#0xff
      002E78 FB               [12] 3100 	mov	r3,a
      002E79 EC               [12] 3101 	mov	a,r4
      002E7A F0               [24] 3102 	movx	@dptr,a
      002E7B EB               [12] 3103 	mov	a,r3
      002E7C A3               [24] 3104 	inc	dptr
      002E7D F0               [24] 3105 	movx	@dptr,a
      002E7E 02 2F C1         [24] 3106 	ljmp	00157$
      002E81                       3107 00112$:
                                   3108 ;	i2c.c:522: else if((get_address[i]>=97) && (get_address[i]<=102))
      002E81 8D 82            [24] 3109 	mov	dpl,r5
      002E83 8E 83            [24] 3110 	mov	dph,r6
      002E85 E0               [24] 3111 	movx	a,@dptr
      002E86 FE               [12] 3112 	mov	r6,a
      002E87 BE 61 00         [24] 3113 	cjne	r6,#0x61,00313$
      002E8A                       3114 00313$:
      002E8A 50 03            [24] 3115 	jnc	00314$
      002E8C 02 2F C1         [24] 3116 	ljmp	00157$
      002E8F                       3117 00314$:
      002E8F EE               [12] 3118 	mov	a,r6
      002E90 24 99            [12] 3119 	add	a,#0xff - 0x66
      002E92 50 03            [24] 3120 	jnc	00315$
      002E94 02 2F C1         [24] 3121 	ljmp	00157$
      002E97                       3122 00315$:
                                   3123 ;	i2c.c:524: get_address_int[i]=get_address[i]-87;
      002E97 EF               [12] 3124 	mov	a,r7
      002E98 75 F0 02         [24] 3125 	mov	b,#0x02
      002E9B A4               [48] 3126 	mul	ab
      002E9C 24 2D            [12] 3127 	add	a,#_hex_addresses_get_address_int_65536_183
      002E9E F5 82            [12] 3128 	mov	dpl,a
      002EA0 74 00            [12] 3129 	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
      002EA2 35 F0            [12] 3130 	addc	a,b
      002EA4 F5 83            [12] 3131 	mov	dph,a
      002EA6 7D 00            [12] 3132 	mov	r5,#0x00
      002EA8 EE               [12] 3133 	mov	a,r6
      002EA9 24 A9            [12] 3134 	add	a,#0xa9
      002EAB FE               [12] 3135 	mov	r6,a
      002EAC ED               [12] 3136 	mov	a,r5
      002EAD 34 FF            [12] 3137 	addc	a,#0xff
      002EAF FD               [12] 3138 	mov	r5,a
      002EB0 EE               [12] 3139 	mov	a,r6
      002EB1 F0               [24] 3140 	movx	@dptr,a
      002EB2 ED               [12] 3141 	mov	a,r5
      002EB3 A3               [24] 3142 	inc	dptr
      002EB4 F0               [24] 3143 	movx	@dptr,a
      002EB5 02 2F C1         [24] 3144 	ljmp	00157$
      002EB8                       3145 00120$:
                                   3146 ;	i2c.c:529: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
      002EB8 C0 07            [24] 3147 	push	ar7
      002EBA 74 32            [12] 3148 	mov	a,#___str_1
      002EBC C0 E0            [24] 3149 	push	acc
      002EBE 74 3F            [12] 3150 	mov	a,#(___str_1 >> 8)
      002EC0 C0 E0            [24] 3151 	push	acc
      002EC2 12 37 0C         [24] 3152 	lcall	_printf_tiny
      002EC5 15 81            [12] 3153 	dec	sp
      002EC7 15 81            [12] 3154 	dec	sp
      002EC9 D0 07            [24] 3155 	pop	ar7
                                   3156 ;	i2c.c:530: flag=1;
      002ECB 90 00 26         [24] 3157 	mov	dptr,#_hex_addresses_flag_65536_183
      002ECE 74 01            [12] 3158 	mov	a,#0x01
      002ED0 F0               [24] 3159 	movx	@dptr,a
      002ED1 E4               [12] 3160 	clr	a
      002ED2 A3               [24] 3161 	inc	dptr
      002ED3 F0               [24] 3162 	movx	@dptr,a
                                   3163 ;	i2c.c:532: break;
      002ED4 02 2F C1         [24] 3164 	ljmp	00157$
                                   3165 ;	i2c.c:534: case 2:
      002ED7                       3166 00127$:
                                   3167 ;	i2c.c:535: if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
      002ED7 EF               [12] 3168 	mov	a,r7
      002ED8 24 2A            [12] 3169 	add	a,#_hex_addresses_get_address_65536_183
      002EDA FD               [12] 3170 	mov	r5,a
      002EDB E4               [12] 3171 	clr	a
      002EDC 34 00            [12] 3172 	addc	a,#(_hex_addresses_get_address_65536_183 >> 8)
      002EDE FE               [12] 3173 	mov	r6,a
      002EDF 8D 82            [24] 3174 	mov	dpl,r5
      002EE1 8E 83            [24] 3175 	mov	dph,r6
      002EE3 E0               [24] 3176 	movx	a,@dptr
      002EE4 FC               [12] 3177 	mov	r4,a
      002EE5 BC 30 00         [24] 3178 	cjne	r4,#0x30,00316$
      002EE8                       3179 00316$:
      002EE8 40 05            [24] 3180 	jc	00144$
      002EEA EC               [12] 3181 	mov	a,r4
      002EEB 24 C6            [12] 3182 	add	a,#0xff - 0x39
      002EED 50 26            [24] 3183 	jnc	00139$
      002EEF                       3184 00144$:
      002EEF 8D 82            [24] 3185 	mov	dpl,r5
      002EF1 8E 83            [24] 3186 	mov	dph,r6
      002EF3 E0               [24] 3187 	movx	a,@dptr
      002EF4 FC               [12] 3188 	mov	r4,a
      002EF5 BC 41 00         [24] 3189 	cjne	r4,#0x41,00319$
      002EF8                       3190 00319$:
      002EF8 40 05            [24] 3191 	jc	00146$
      002EFA EC               [12] 3192 	mov	a,r4
      002EFB 24 B9            [12] 3193 	add	a,#0xff - 0x46
      002EFD 50 16            [24] 3194 	jnc	00139$
      002EFF                       3195 00146$:
      002EFF 8D 82            [24] 3196 	mov	dpl,r5
      002F01 8E 83            [24] 3197 	mov	dph,r6
      002F03 E0               [24] 3198 	movx	a,@dptr
      002F04 FC               [12] 3199 	mov	r4,a
      002F05 BC 61 00         [24] 3200 	cjne	r4,#0x61,00322$
      002F08                       3201 00322$:
      002F08 50 03            [24] 3202 	jnc	00323$
      002F0A 02 2F A5         [24] 3203 	ljmp	00140$
      002F0D                       3204 00323$:
      002F0D EC               [12] 3205 	mov	a,r4
      002F0E 24 99            [12] 3206 	add	a,#0xff - 0x66
      002F10 50 03            [24] 3207 	jnc	00324$
      002F12 02 2F A5         [24] 3208 	ljmp	00140$
      002F15                       3209 00324$:
      002F15                       3210 00139$:
                                   3211 ;	i2c.c:537: if((get_address[i]>=48) && (get_address[i]<=57))
      002F15 8D 82            [24] 3212 	mov	dpl,r5
      002F17 8E 83            [24] 3213 	mov	dph,r6
      002F19 E0               [24] 3214 	movx	a,@dptr
      002F1A FC               [12] 3215 	mov	r4,a
      002F1B BC 30 00         [24] 3216 	cjne	r4,#0x30,00325$
      002F1E                       3217 00325$:
      002F1E 40 25            [24] 3218 	jc	00136$
      002F20 EC               [12] 3219 	mov	a,r4
      002F21 24 C6            [12] 3220 	add	a,#0xff - 0x39
      002F23 40 20            [24] 3221 	jc	00136$
                                   3222 ;	i2c.c:539: get_address_int[i]=get_address[i]-48;
      002F25 EF               [12] 3223 	mov	a,r7
      002F26 75 F0 02         [24] 3224 	mov	b,#0x02
      002F29 A4               [48] 3225 	mul	ab
      002F2A 24 2D            [12] 3226 	add	a,#_hex_addresses_get_address_int_65536_183
      002F2C F5 82            [12] 3227 	mov	dpl,a
      002F2E 74 00            [12] 3228 	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
      002F30 35 F0            [12] 3229 	addc	a,b
      002F32 F5 83            [12] 3230 	mov	dph,a
      002F34 7B 00            [12] 3231 	mov	r3,#0x00
      002F36 EC               [12] 3232 	mov	a,r4
      002F37 24 D0            [12] 3233 	add	a,#0xd0
      002F39 FC               [12] 3234 	mov	r4,a
      002F3A EB               [12] 3235 	mov	a,r3
      002F3B 34 FF            [12] 3236 	addc	a,#0xff
      002F3D FB               [12] 3237 	mov	r3,a
      002F3E EC               [12] 3238 	mov	a,r4
      002F3F F0               [24] 3239 	movx	@dptr,a
      002F40 EB               [12] 3240 	mov	a,r3
      002F41 A3               [24] 3241 	inc	dptr
      002F42 F0               [24] 3242 	movx	@dptr,a
      002F43 80 7C            [24] 3243 	sjmp	00157$
      002F45                       3244 00136$:
                                   3245 ;	i2c.c:541: else if((get_address[i]>=65) && (get_address[i]<=70))
      002F45 8D 82            [24] 3246 	mov	dpl,r5
      002F47 8E 83            [24] 3247 	mov	dph,r6
      002F49 E0               [24] 3248 	movx	a,@dptr
      002F4A FC               [12] 3249 	mov	r4,a
      002F4B BC 41 00         [24] 3250 	cjne	r4,#0x41,00328$
      002F4E                       3251 00328$:
      002F4E 40 25            [24] 3252 	jc	00132$
      002F50 EC               [12] 3253 	mov	a,r4
      002F51 24 B9            [12] 3254 	add	a,#0xff - 0x46
      002F53 40 20            [24] 3255 	jc	00132$
                                   3256 ;	i2c.c:543: get_address_int[i]=get_address[i]-55;
      002F55 EF               [12] 3257 	mov	a,r7
      002F56 75 F0 02         [24] 3258 	mov	b,#0x02
      002F59 A4               [48] 3259 	mul	ab
      002F5A 24 2D            [12] 3260 	add	a,#_hex_addresses_get_address_int_65536_183
      002F5C F5 82            [12] 3261 	mov	dpl,a
      002F5E 74 00            [12] 3262 	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
      002F60 35 F0            [12] 3263 	addc	a,b
      002F62 F5 83            [12] 3264 	mov	dph,a
      002F64 7B 00            [12] 3265 	mov	r3,#0x00
      002F66 EC               [12] 3266 	mov	a,r4
      002F67 24 C9            [12] 3267 	add	a,#0xc9
      002F69 FC               [12] 3268 	mov	r4,a
      002F6A EB               [12] 3269 	mov	a,r3
      002F6B 34 FF            [12] 3270 	addc	a,#0xff
      002F6D FB               [12] 3271 	mov	r3,a
      002F6E EC               [12] 3272 	mov	a,r4
      002F6F F0               [24] 3273 	movx	@dptr,a
      002F70 EB               [12] 3274 	mov	a,r3
      002F71 A3               [24] 3275 	inc	dptr
      002F72 F0               [24] 3276 	movx	@dptr,a
      002F73 80 4C            [24] 3277 	sjmp	00157$
      002F75                       3278 00132$:
                                   3279 ;	i2c.c:545: else if((get_address[i]>=97) && (get_address[i]<=102))
      002F75 8D 82            [24] 3280 	mov	dpl,r5
      002F77 8E 83            [24] 3281 	mov	dph,r6
      002F79 E0               [24] 3282 	movx	a,@dptr
      002F7A FE               [12] 3283 	mov	r6,a
      002F7B BE 61 00         [24] 3284 	cjne	r6,#0x61,00331$
      002F7E                       3285 00331$:
      002F7E 40 41            [24] 3286 	jc	00157$
      002F80 EE               [12] 3287 	mov	a,r6
      002F81 24 99            [12] 3288 	add	a,#0xff - 0x66
      002F83 40 3C            [24] 3289 	jc	00157$
                                   3290 ;	i2c.c:547: get_address_int[i]=get_address[i]-87;
      002F85 EF               [12] 3291 	mov	a,r7
      002F86 75 F0 02         [24] 3292 	mov	b,#0x02
      002F89 A4               [48] 3293 	mul	ab
      002F8A 24 2D            [12] 3294 	add	a,#_hex_addresses_get_address_int_65536_183
      002F8C F5 82            [12] 3295 	mov	dpl,a
      002F8E 74 00            [12] 3296 	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
      002F90 35 F0            [12] 3297 	addc	a,b
      002F92 F5 83            [12] 3298 	mov	dph,a
      002F94 7D 00            [12] 3299 	mov	r5,#0x00
      002F96 EE               [12] 3300 	mov	a,r6
      002F97 24 A9            [12] 3301 	add	a,#0xa9
      002F99 FE               [12] 3302 	mov	r6,a
      002F9A ED               [12] 3303 	mov	a,r5
      002F9B 34 FF            [12] 3304 	addc	a,#0xff
      002F9D FD               [12] 3305 	mov	r5,a
      002F9E EE               [12] 3306 	mov	a,r6
      002F9F F0               [24] 3307 	movx	@dptr,a
      002FA0 ED               [12] 3308 	mov	a,r5
      002FA1 A3               [24] 3309 	inc	dptr
      002FA2 F0               [24] 3310 	movx	@dptr,a
      002FA3 80 1C            [24] 3311 	sjmp	00157$
      002FA5                       3312 00140$:
                                   3313 ;	i2c.c:552: printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
      002FA5 C0 07            [24] 3314 	push	ar7
      002FA7 74 32            [12] 3315 	mov	a,#___str_1
      002FA9 C0 E0            [24] 3316 	push	acc
      002FAB 74 3F            [12] 3317 	mov	a,#(___str_1 >> 8)
      002FAD C0 E0            [24] 3318 	push	acc
      002FAF 12 37 0C         [24] 3319 	lcall	_printf_tiny
      002FB2 15 81            [12] 3320 	dec	sp
      002FB4 15 81            [12] 3321 	dec	sp
      002FB6 D0 07            [24] 3322 	pop	ar7
                                   3323 ;	i2c.c:553: flag=1;
      002FB8 90 00 26         [24] 3324 	mov	dptr,#_hex_addresses_flag_65536_183
      002FBB 74 01            [12] 3325 	mov	a,#0x01
      002FBD F0               [24] 3326 	movx	@dptr,a
      002FBE E4               [12] 3327 	clr	a
      002FBF A3               [24] 3328 	inc	dptr
      002FC0 F0               [24] 3329 	movx	@dptr,a
                                   3330 ;	i2c.c:558: }
      002FC1                       3331 00157$:
                                   3332 ;	i2c.c:495: for(i=0;i<3;i++)
      002FC1 0F               [12] 3333 	inc	r7
      002FC2 BF 03 00         [24] 3334 	cjne	r7,#0x03,00334$
      002FC5                       3335 00334$:
      002FC5 50 03            [24] 3336 	jnc	00335$
      002FC7 02 2D 78         [24] 3337 	ljmp	00156$
      002FCA                       3338 00335$:
      002FCA 02 2D 30         [24] 3339 	ljmp	00150$
                                   3340 ;	i2c.c:565: for(i=0;i<3;i++)
      002FCD                       3341 00191$:
      002FCD 7F 00            [12] 3342 	mov	r7,#0x00
      002FCF                       3343 00158$:
                                   3344 ;	i2c.c:567: address = address +((get_address_int[i])*powf(16,2-i));
      002FCF EF               [12] 3345 	mov	a,r7
      002FD0 75 F0 02         [24] 3346 	mov	b,#0x02
      002FD3 A4               [48] 3347 	mul	ab
      002FD4 24 2D            [12] 3348 	add	a,#_hex_addresses_get_address_int_65536_183
      002FD6 F5 82            [12] 3349 	mov	dpl,a
      002FD8 74 00            [12] 3350 	mov	a,#(_hex_addresses_get_address_int_65536_183 >> 8)
      002FDA 35 F0            [12] 3351 	addc	a,b
      002FDC F5 83            [12] 3352 	mov	dph,a
      002FDE E0               [24] 3353 	movx	a,@dptr
      002FDF FD               [12] 3354 	mov	r5,a
      002FE0 A3               [24] 3355 	inc	dptr
      002FE1 E0               [24] 3356 	movx	a,@dptr
      002FE2 FE               [12] 3357 	mov	r6,a
      002FE3 8F 03            [24] 3358 	mov	ar3,r7
      002FE5 7C 00            [12] 3359 	mov	r4,#0x00
      002FE7 74 02            [12] 3360 	mov	a,#0x02
      002FE9 C3               [12] 3361 	clr	c
      002FEA 9B               [12] 3362 	subb	a,r3
      002FEB FB               [12] 3363 	mov	r3,a
      002FEC E4               [12] 3364 	clr	a
      002FED 9C               [12] 3365 	subb	a,r4
      002FEE FC               [12] 3366 	mov	r4,a
      002FEF 8B 82            [24] 3367 	mov	dpl,r3
      002FF1 8C 83            [24] 3368 	mov	dph,r4
      002FF3 C0 07            [24] 3369 	push	ar7
      002FF5 C0 06            [24] 3370 	push	ar6
      002FF7 C0 05            [24] 3371 	push	ar5
      002FF9 12 39 AD         [24] 3372 	lcall	___sint2fs
      002FFC A9 82            [24] 3373 	mov	r1,dpl
      002FFE AA 83            [24] 3374 	mov	r2,dph
      003000 AB F0            [24] 3375 	mov	r3,b
      003002 FC               [12] 3376 	mov	r4,a
      003003 90 00 57         [24] 3377 	mov	dptr,#_powf_PARM_2
      003006 E9               [12] 3378 	mov	a,r1
      003007 F0               [24] 3379 	movx	@dptr,a
      003008 EA               [12] 3380 	mov	a,r2
      003009 A3               [24] 3381 	inc	dptr
      00300A F0               [24] 3382 	movx	@dptr,a
      00300B EB               [12] 3383 	mov	a,r3
      00300C A3               [24] 3384 	inc	dptr
      00300D F0               [24] 3385 	movx	@dptr,a
      00300E EC               [12] 3386 	mov	a,r4
      00300F A3               [24] 3387 	inc	dptr
      003010 F0               [24] 3388 	movx	@dptr,a
      003011 90 00 00         [24] 3389 	mov	dptr,#0x0000
      003014 75 F0 80         [24] 3390 	mov	b,#0x80
      003017 74 41            [12] 3391 	mov	a,#0x41
      003019 12 38 35         [24] 3392 	lcall	_powf
      00301C 85 82 14         [24] 3393 	mov	_hex_addresses_sloc0_1_0,dpl
      00301F 85 83 15         [24] 3394 	mov	(_hex_addresses_sloc0_1_0 + 1),dph
      003022 85 F0 16         [24] 3395 	mov	(_hex_addresses_sloc0_1_0 + 2),b
      003025 F5 17            [12] 3396 	mov	(_hex_addresses_sloc0_1_0 + 3),a
      003027 D0 05            [24] 3397 	pop	ar5
      003029 D0 06            [24] 3398 	pop	ar6
      00302B 8D 82            [24] 3399 	mov	dpl,r5
      00302D 8E 83            [24] 3400 	mov	dph,r6
      00302F 12 39 BA         [24] 3401 	lcall	___uint2fs
      003032 A8 82            [24] 3402 	mov	r0,dpl
      003034 AC 83            [24] 3403 	mov	r4,dph
      003036 AD F0            [24] 3404 	mov	r5,b
      003038 FE               [12] 3405 	mov	r6,a
      003039 C0 14            [24] 3406 	push	_hex_addresses_sloc0_1_0
      00303B C0 15            [24] 3407 	push	(_hex_addresses_sloc0_1_0 + 1)
      00303D C0 16            [24] 3408 	push	(_hex_addresses_sloc0_1_0 + 2)
      00303F C0 17            [24] 3409 	push	(_hex_addresses_sloc0_1_0 + 3)
      003041 88 82            [24] 3410 	mov	dpl,r0
      003043 8C 83            [24] 3411 	mov	dph,r4
      003045 8D F0            [24] 3412 	mov	b,r5
      003047 EE               [12] 3413 	mov	a,r6
      003048 12 36 08         [24] 3414 	lcall	___fsmul
      00304B 85 82 14         [24] 3415 	mov	_hex_addresses_sloc0_1_0,dpl
      00304E 85 83 15         [24] 3416 	mov	(_hex_addresses_sloc0_1_0 + 1),dph
      003051 85 F0 16         [24] 3417 	mov	(_hex_addresses_sloc0_1_0 + 2),b
      003054 F5 17            [12] 3418 	mov	(_hex_addresses_sloc0_1_0 + 3),a
      003056 E5 81            [12] 3419 	mov	a,sp
      003058 24 FC            [12] 3420 	add	a,#0xfc
      00305A F5 81            [12] 3421 	mov	sp,a
      00305C 90 00 28         [24] 3422 	mov	dptr,#_hex_addresses_address_65536_183
      00305F E0               [24] 3423 	movx	a,@dptr
      003060 F9               [12] 3424 	mov	r1,a
      003061 A3               [24] 3425 	inc	dptr
      003062 E0               [24] 3426 	movx	a,@dptr
      003063 FA               [12] 3427 	mov	r2,a
      003064 89 82            [24] 3428 	mov	dpl,r1
      003066 8A 83            [24] 3429 	mov	dph,r2
      003068 12 39 BA         [24] 3430 	lcall	___uint2fs
      00306B A8 82            [24] 3431 	mov	r0,dpl
      00306D A9 83            [24] 3432 	mov	r1,dph
      00306F AA F0            [24] 3433 	mov	r2,b
      003071 FE               [12] 3434 	mov	r6,a
      003072 C0 14            [24] 3435 	push	_hex_addresses_sloc0_1_0
      003074 C0 15            [24] 3436 	push	(_hex_addresses_sloc0_1_0 + 1)
      003076 C0 16            [24] 3437 	push	(_hex_addresses_sloc0_1_0 + 2)
      003078 C0 17            [24] 3438 	push	(_hex_addresses_sloc0_1_0 + 3)
      00307A 88 82            [24] 3439 	mov	dpl,r0
      00307C 89 83            [24] 3440 	mov	dph,r1
      00307E 8A F0            [24] 3441 	mov	b,r2
      003080 EE               [12] 3442 	mov	a,r6
      003081 12 39 54         [24] 3443 	lcall	___fsadd
      003084 AB 82            [24] 3444 	mov	r3,dpl
      003086 AC 83            [24] 3445 	mov	r4,dph
      003088 AD F0            [24] 3446 	mov	r5,b
      00308A FE               [12] 3447 	mov	r6,a
      00308B E5 81            [12] 3448 	mov	a,sp
      00308D 24 FC            [12] 3449 	add	a,#0xfc
      00308F F5 81            [12] 3450 	mov	sp,a
      003091 8B 82            [24] 3451 	mov	dpl,r3
      003093 8C 83            [24] 3452 	mov	dph,r4
      003095 8D F0            [24] 3453 	mov	b,r5
      003097 EE               [12] 3454 	mov	a,r6
      003098 12 39 C6         [24] 3455 	lcall	___fs2uint
      00309B E5 82            [12] 3456 	mov	a,dpl
      00309D 85 83 F0         [24] 3457 	mov	b,dph
      0030A0 D0 07            [24] 3458 	pop	ar7
      0030A2 90 00 28         [24] 3459 	mov	dptr,#_hex_addresses_address_65536_183
      0030A5 F0               [24] 3460 	movx	@dptr,a
      0030A6 E5 F0            [12] 3461 	mov	a,b
      0030A8 A3               [24] 3462 	inc	dptr
      0030A9 F0               [24] 3463 	movx	@dptr,a
                                   3464 ;	i2c.c:565: for(i=0;i<3;i++)
      0030AA 0F               [12] 3465 	inc	r7
      0030AB BF 03 00         [24] 3466 	cjne	r7,#0x03,00336$
      0030AE                       3467 00336$:
      0030AE 50 03            [24] 3468 	jnc	00337$
      0030B0 02 2F CF         [24] 3469 	ljmp	00158$
      0030B3                       3470 00337$:
                                   3471 ;	i2c.c:569: return (address);
      0030B3 90 00 28         [24] 3472 	mov	dptr,#_hex_addresses_address_65536_183
      0030B6 E0               [24] 3473 	movx	a,@dptr
      0030B7 FE               [12] 3474 	mov	r6,a
      0030B8 A3               [24] 3475 	inc	dptr
      0030B9 E0               [24] 3476 	movx	a,@dptr
                                   3477 ;	i2c.c:570: }
      0030BA 8E 82            [24] 3478 	mov	dpl,r6
      0030BC F5 83            [12] 3479 	mov	dph,a
      0030BE 22               [24] 3480 	ret
                                   3481 ;------------------------------------------------------------
                                   3482 ;Allocation info for local variables in function 'hex_data'
                                   3483 ;------------------------------------------------------------
                                   3484 ;rec_addr                  Allocated with name '_hex_data_rec_addr_65536_204'
                                   3485 ;byte_received             Allocated with name '_hex_data_byte_received_65536_205'
                                   3486 ;control_byte              Allocated with name '_hex_data_control_byte_65536_205'
                                   3487 ;address_byte              Allocated with name '_hex_data_address_byte_65536_205'
                                   3488 ;write_readbyte            Allocated with name '_hex_data_write_readbyte_65536_205'
                                   3489 ;------------------------------------------------------------
                                   3490 ;	i2c.c:572: uint16_t hex_data(uint16_t rec_addr)
                                   3491 ;	-----------------------------------------
                                   3492 ;	 function hex_data
                                   3493 ;	-----------------------------------------
      0030BF                       3494 _hex_data:
      0030BF AF 83            [24] 3495 	mov	r7,dph
      0030C1 E5 82            [12] 3496 	mov	a,dpl
      0030C3 90 00 33         [24] 3497 	mov	dptr,#_hex_data_rec_addr_65536_204
      0030C6 F0               [24] 3498 	movx	@dptr,a
      0030C7 EF               [12] 3499 	mov	a,r7
      0030C8 A3               [24] 3500 	inc	dptr
      0030C9 F0               [24] 3501 	movx	@dptr,a
                                   3502 ;	i2c.c:580: control_byte = ((0xA0)|(rec_addr >> 7)&(0xfe));
      0030CA 90 00 33         [24] 3503 	mov	dptr,#_hex_data_rec_addr_65536_204
      0030CD E0               [24] 3504 	movx	a,@dptr
      0030CE FE               [12] 3505 	mov	r6,a
      0030CF A3               [24] 3506 	inc	dptr
      0030D0 E0               [24] 3507 	movx	a,@dptr
      0030D1 8E 04            [24] 3508 	mov	ar4,r6
      0030D3 A2 E7            [12] 3509 	mov	c,acc.7
      0030D5 CC               [12] 3510 	xch	a,r4
      0030D6 33               [12] 3511 	rlc	a
      0030D7 CC               [12] 3512 	xch	a,r4
      0030D8 33               [12] 3513 	rlc	a
      0030D9 CC               [12] 3514 	xch	a,r4
      0030DA 54 01            [12] 3515 	anl	a,#0x01
      0030DC 74 FE            [12] 3516 	mov	a,#0xfe
      0030DE 5C               [12] 3517 	anl	a,r4
      0030DF 44 A0            [12] 3518 	orl	a,#0xa0
      0030E1 FD               [12] 3519 	mov	r5,a
                                   3520 ;	i2c.c:581: write_readbyte = ((0xA0)|(rec_addr >> 7)|(0x01));
      0030E2 43 04 A1         [24] 3521 	orl	ar4,#0xa1
                                   3522 ;	i2c.c:584: address_byte = (uint8_t)rec_addr;
                                   3523 ;	i2c.c:586: i2c_start();
      0030E5 C0 06            [24] 3524 	push	ar6
      0030E7 C0 05            [24] 3525 	push	ar5
      0030E9 C0 04            [24] 3526 	push	ar4
      0030EB 12 20 A1         [24] 3527 	lcall	_i2c_start
      0030EE D0 04            [24] 3528 	pop	ar4
      0030F0 D0 05            [24] 3529 	pop	ar5
                                   3530 ;	i2c.c:588: i2c_Write_Byte(control_byte);
      0030F2 8D 82            [24] 3531 	mov	dpl,r5
      0030F4 C0 04            [24] 3532 	push	ar4
      0030F6 12 21 52         [24] 3533 	lcall	_i2c_Write_Byte
      0030F9 D0 04            [24] 3534 	pop	ar4
      0030FB D0 06            [24] 3535 	pop	ar6
                                   3536 ;	i2c.c:590: i2c_Write_Byte(address_byte);
      0030FD 8E 82            [24] 3537 	mov	dpl,r6
      0030FF C0 04            [24] 3538 	push	ar4
      003101 12 21 52         [24] 3539 	lcall	_i2c_Write_Byte
                                   3540 ;	i2c.c:592: i2c_Restart();
      003104 12 21 03         [24] 3541 	lcall	_i2c_Restart
      003107 D0 04            [24] 3542 	pop	ar4
                                   3543 ;	i2c.c:594: i2c_Write_Byte(write_readbyte);
      003109 8C 82            [24] 3544 	mov	dpl,r4
      00310B 12 21 52         [24] 3545 	lcall	_i2c_Write_Byte
                                   3546 ;	i2c.c:596: byte_received = i2c_Read_Byte();
      00310E 12 21 C3         [24] 3547 	lcall	_i2c_Read_Byte
      003111 AF 82            [24] 3548 	mov	r7,dpl
      003113 7E 00            [12] 3549 	mov	r6,#0x00
                                   3550 ;	i2c.c:598: i2c_NoAck();
      003115 C0 07            [24] 3551 	push	ar7
      003117 C0 06            [24] 3552 	push	ar6
      003119 12 20 EB         [24] 3553 	lcall	_i2c_NoAck
                                   3554 ;	i2c.c:600: i2c_stop();
      00311C 12 20 B3         [24] 3555 	lcall	_i2c_stop
      00311F D0 06            [24] 3556 	pop	ar6
      003121 D0 07            [24] 3557 	pop	ar7
                                   3558 ;	i2c.c:602: return(byte_received);
      003123 8F 82            [24] 3559 	mov	dpl,r7
      003125 8E 83            [24] 3560 	mov	dph,r6
                                   3561 ;	i2c.c:603: }
      003127 22               [24] 3562 	ret
                                   3563 ;------------------------------------------------------------
                                   3564 ;Allocation info for local variables in function 'hex_dump'
                                   3565 ;------------------------------------------------------------
                                   3566 ;sloc0                     Allocated with name '_hex_dump_sloc0_1_0'
                                   3567 ;first_address             Allocated with name '_hex_dump_first_address_65536_206'
                                   3568 ;second_address            Allocated with name '_hex_dump_second_address_65536_206'
                                   3569 ;counter                   Allocated with name '_hex_dump_counter_65536_206'
                                   3570 ;count                     Allocated with name '_hex_dump_count_65536_206'
                                   3571 ;flag                      Allocated with name '_hex_dump_flag_65536_206'
                                   3572 ;temp_data                 Allocated with name '_hex_dump_temp_data_65536_206'
                                   3573 ;------------------------------------------------------------
                                   3574 ;	i2c.c:609: void hex_dump()
                                   3575 ;	-----------------------------------------
                                   3576 ;	 function hex_dump
                                   3577 ;	-----------------------------------------
      003128                       3578 _hex_dump:
                                   3579 ;	i2c.c:614: int count=0;
      003128 90 00 35         [24] 3580 	mov	dptr,#_hex_dump_count_65536_206
      00312B E4               [12] 3581 	clr	a
      00312C F0               [24] 3582 	movx	@dptr,a
      00312D A3               [24] 3583 	inc	dptr
      00312E F0               [24] 3584 	movx	@dptr,a
                                   3585 ;	i2c.c:615: int flag=0;
      00312F 90 00 37         [24] 3586 	mov	dptr,#_hex_dump_flag_65536_206
      003132 F0               [24] 3587 	movx	@dptr,a
      003133 A3               [24] 3588 	inc	dptr
      003134 F0               [24] 3589 	movx	@dptr,a
                                   3590 ;	i2c.c:618: printf_tiny("\n\rEnter the FIRST address between 0x00-0x7ff\n\r");
      003135 74 D7            [12] 3591 	mov	a,#___str_4
      003137 C0 E0            [24] 3592 	push	acc
      003139 74 3F            [12] 3593 	mov	a,#(___str_4 >> 8)
      00313B C0 E0            [24] 3594 	push	acc
      00313D 12 37 0C         [24] 3595 	lcall	_printf_tiny
      003140 15 81            [12] 3596 	dec	sp
      003142 15 81            [12] 3597 	dec	sp
                                   3598 ;	i2c.c:619: first_address=hex_addresses();
      003144 12 2D 21         [24] 3599 	lcall	_hex_addresses
      003147 AE 82            [24] 3600 	mov	r6,dpl
      003149 AF 83            [24] 3601 	mov	r7,dph
                                   3602 ;	i2c.c:620: printf_tiny("\n\rEnter the SECOND address between 0x00-0x7ff\n\r");
      00314B C0 07            [24] 3603 	push	ar7
      00314D C0 06            [24] 3604 	push	ar6
      00314F 74 06            [12] 3605 	mov	a,#___str_5
      003151 C0 E0            [24] 3606 	push	acc
      003153 74 40            [12] 3607 	mov	a,#(___str_5 >> 8)
      003155 C0 E0            [24] 3608 	push	acc
      003157 12 37 0C         [24] 3609 	lcall	_printf_tiny
      00315A 15 81            [12] 3610 	dec	sp
      00315C 15 81            [12] 3611 	dec	sp
                                   3612 ;	i2c.c:621: second_address=hex_addresses();
      00315E 12 2D 21         [24] 3613 	lcall	_hex_addresses
      003161 AC 82            [24] 3614 	mov	r4,dpl
      003163 AD 83            [24] 3615 	mov	r5,dph
      003165 D0 06            [24] 3616 	pop	ar6
      003167 D0 07            [24] 3617 	pop	ar7
                                   3618 ;	i2c.c:623: if(first_address <= second_address)
      003169 C3               [12] 3619 	clr	c
      00316A EC               [12] 3620 	mov	a,r4
      00316B 9E               [12] 3621 	subb	a,r6
      00316C ED               [12] 3622 	mov	a,r5
      00316D 9F               [12] 3623 	subb	a,r7
      00316E 40 2A            [24] 3624 	jc	00102$
                                   3625 ;	i2c.c:625: flag=1;
      003170 90 00 37         [24] 3626 	mov	dptr,#_hex_dump_flag_65536_206
      003173 74 01            [12] 3627 	mov	a,#0x01
      003175 F0               [24] 3628 	movx	@dptr,a
      003176 E4               [12] 3629 	clr	a
      003177 A3               [24] 3630 	inc	dptr
      003178 F0               [24] 3631 	movx	@dptr,a
                                   3632 ;	i2c.c:626: printf_tiny("\n\rValid input\n\r");
      003179 C0 07            [24] 3633 	push	ar7
      00317B C0 06            [24] 3634 	push	ar6
      00317D C0 05            [24] 3635 	push	ar5
      00317F C0 04            [24] 3636 	push	ar4
      003181 74 36            [12] 3637 	mov	a,#___str_6
      003183 C0 E0            [24] 3638 	push	acc
      003185 74 40            [12] 3639 	mov	a,#(___str_6 >> 8)
      003187 C0 E0            [24] 3640 	push	acc
      003189 12 37 0C         [24] 3641 	lcall	_printf_tiny
      00318C 15 81            [12] 3642 	dec	sp
      00318E 15 81            [12] 3643 	dec	sp
      003190 D0 04            [24] 3644 	pop	ar4
      003192 D0 05            [24] 3645 	pop	ar5
      003194 D0 06            [24] 3646 	pop	ar6
      003196 D0 07            [24] 3647 	pop	ar7
      003198 80 1F            [24] 3648 	sjmp	00103$
      00319A                       3649 00102$:
                                   3650 ;	i2c.c:631: printf_tiny("\n\rInvalid Entries! Please enter address for hex dump again\n\r");
      00319A C0 07            [24] 3651 	push	ar7
      00319C C0 06            [24] 3652 	push	ar6
      00319E C0 05            [24] 3653 	push	ar5
      0031A0 C0 04            [24] 3654 	push	ar4
      0031A2 74 46            [12] 3655 	mov	a,#___str_7
      0031A4 C0 E0            [24] 3656 	push	acc
      0031A6 74 40            [12] 3657 	mov	a,#(___str_7 >> 8)
      0031A8 C0 E0            [24] 3658 	push	acc
      0031AA 12 37 0C         [24] 3659 	lcall	_printf_tiny
      0031AD 15 81            [12] 3660 	dec	sp
      0031AF 15 81            [12] 3661 	dec	sp
      0031B1 D0 04            [24] 3662 	pop	ar4
      0031B3 D0 05            [24] 3663 	pop	ar5
      0031B5 D0 06            [24] 3664 	pop	ar6
      0031B7 D0 07            [24] 3665 	pop	ar7
      0031B9                       3666 00103$:
                                   3667 ;	i2c.c:634: if(flag == 1)
      0031B9 90 00 37         [24] 3668 	mov	dptr,#_hex_dump_flag_65536_206
      0031BC E0               [24] 3669 	movx	a,@dptr
      0031BD FA               [12] 3670 	mov	r2,a
      0031BE A3               [24] 3671 	inc	dptr
      0031BF E0               [24] 3672 	movx	a,@dptr
      0031C0 FB               [12] 3673 	mov	r3,a
      0031C1 BA 01 05         [24] 3674 	cjne	r2,#0x01,00150$
      0031C4 BB 00 02         [24] 3675 	cjne	r3,#0x00,00150$
      0031C7 80 01            [24] 3676 	sjmp	00151$
      0031C9                       3677 00150$:
      0031C9 22               [24] 3678 	ret
      0031CA                       3679 00151$:
                                   3680 ;	i2c.c:636: for(counter =(first_address);counter <= (second_address); (counter)++)
      0031CA 8E 02            [24] 3681 	mov	ar2,r6
      0031CC 8F 03            [24] 3682 	mov	ar3,r7
      0031CE                       3683 00116$:
      0031CE 8A 00            [24] 3684 	mov	ar0,r2
      0031D0 8B 01            [24] 3685 	mov	ar1,r3
      0031D2 C3               [12] 3686 	clr	c
      0031D3 EC               [12] 3687 	mov	a,r4
      0031D4 98               [12] 3688 	subb	a,r0
      0031D5 ED               [12] 3689 	mov	a,r5
      0031D6 99               [12] 3690 	subb	a,r1
      0031D7 50 01            [24] 3691 	jnc	00152$
      0031D9 22               [24] 3692 	ret
      0031DA                       3693 00152$:
                                   3694 ;	i2c.c:638: if(counter==first_address)
      0031DA E8               [12] 3695 	mov	a,r0
      0031DB B5 06 5B         [24] 3696 	cjne	a,ar6,00110$
      0031DE E9               [12] 3697 	mov	a,r1
      0031DF B5 07 57         [24] 3698 	cjne	a,ar7,00110$
                                   3699 ;	i2c.c:640: temp_data=hex_data(first_address);
      0031E2 C0 04            [24] 3700 	push	ar4
      0031E4 C0 05            [24] 3701 	push	ar5
      0031E6 8E 82            [24] 3702 	mov	dpl,r6
      0031E8 8F 83            [24] 3703 	mov	dph,r7
      0031EA C0 07            [24] 3704 	push	ar7
      0031EC C0 06            [24] 3705 	push	ar6
      0031EE C0 03            [24] 3706 	push	ar3
      0031F0 C0 02            [24] 3707 	push	ar2
      0031F2 12 30 BF         [24] 3708 	lcall	_hex_data
      0031F5 AC 82            [24] 3709 	mov	r4,dpl
      0031F7 AD 83            [24] 3710 	mov	r5,dph
      0031F9 D0 02            [24] 3711 	pop	ar2
      0031FB D0 03            [24] 3712 	pop	ar3
      0031FD D0 06            [24] 3713 	pop	ar6
      0031FF D0 07            [24] 3714 	pop	ar7
                                   3715 ;	i2c.c:641: printf_tiny("\n\r%x\>>   %x",first_address,temp_data);
      003201 C0 07            [24] 3716 	push	ar7
      003203 C0 06            [24] 3717 	push	ar6
      003205 C0 05            [24] 3718 	push	ar5
      003207 C0 04            [24] 3719 	push	ar4
      003209 C0 03            [24] 3720 	push	ar3
      00320B C0 02            [24] 3721 	push	ar2
      00320D C0 04            [24] 3722 	push	ar4
      00320F C0 05            [24] 3723 	push	ar5
      003211 C0 06            [24] 3724 	push	ar6
      003213 C0 07            [24] 3725 	push	ar7
      003215 74 83            [12] 3726 	mov	a,#___str_8
      003217 C0 E0            [24] 3727 	push	acc
      003219 74 40            [12] 3728 	mov	a,#(___str_8 >> 8)
      00321B C0 E0            [24] 3729 	push	acc
      00321D 12 37 0C         [24] 3730 	lcall	_printf_tiny
      003220 E5 81            [12] 3731 	mov	a,sp
      003222 24 FA            [12] 3732 	add	a,#0xfa
      003224 F5 81            [12] 3733 	mov	sp,a
      003226 D0 02            [24] 3734 	pop	ar2
      003228 D0 03            [24] 3735 	pop	ar3
      00322A D0 04            [24] 3736 	pop	ar4
      00322C D0 05            [24] 3737 	pop	ar5
      00322E D0 06            [24] 3738 	pop	ar6
      003230 D0 07            [24] 3739 	pop	ar7
      003232 D0 05            [24] 3740 	pop	ar5
      003234 D0 04            [24] 3741 	pop	ar4
      003236 02 32 FD         [24] 3742 	ljmp	00117$
      003239                       3743 00110$:
                                   3744 ;	i2c.c:643: else if(count != 15)
      003239 90 00 35         [24] 3745 	mov	dptr,#_hex_dump_count_65536_206
      00323C E0               [24] 3746 	movx	a,@dptr
      00323D F5 18            [12] 3747 	mov	_hex_dump_sloc0_1_0,a
      00323F A3               [24] 3748 	inc	dptr
      003240 E0               [24] 3749 	movx	a,@dptr
      003241 F5 19            [12] 3750 	mov	(_hex_dump_sloc0_1_0 + 1),a
      003243 74 0F            [12] 3751 	mov	a,#0x0f
      003245 B5 18 06         [24] 3752 	cjne	a,_hex_dump_sloc0_1_0,00155$
      003248 E4               [12] 3753 	clr	a
      003249 B5 19 02         [24] 3754 	cjne	a,(_hex_dump_sloc0_1_0 + 1),00155$
      00324C 80 57            [24] 3755 	sjmp	00107$
      00324E                       3756 00155$:
                                   3757 ;	i2c.c:645: temp_data=hex_data(counter);
      00324E C0 04            [24] 3758 	push	ar4
      003250 C0 05            [24] 3759 	push	ar5
      003252 88 82            [24] 3760 	mov	dpl,r0
      003254 89 83            [24] 3761 	mov	dph,r1
      003256 C0 07            [24] 3762 	push	ar7
      003258 C0 06            [24] 3763 	push	ar6
      00325A C0 03            [24] 3764 	push	ar3
      00325C C0 02            [24] 3765 	push	ar2
      00325E 12 30 BF         [24] 3766 	lcall	_hex_data
      003261 AC 82            [24] 3767 	mov	r4,dpl
      003263 AD 83            [24] 3768 	mov	r5,dph
      003265 D0 02            [24] 3769 	pop	ar2
      003267 D0 03            [24] 3770 	pop	ar3
                                   3771 ;	i2c.c:646: printf_tiny("   %x",temp_data);
      003269 C0 05            [24] 3772 	push	ar5
      00326B C0 04            [24] 3773 	push	ar4
      00326D C0 03            [24] 3774 	push	ar3
      00326F C0 02            [24] 3775 	push	ar2
      003271 C0 04            [24] 3776 	push	ar4
      003273 C0 05            [24] 3777 	push	ar5
      003275 74 8F            [12] 3778 	mov	a,#___str_9
      003277 C0 E0            [24] 3779 	push	acc
      003279 74 40            [12] 3780 	mov	a,#(___str_9 >> 8)
      00327B C0 E0            [24] 3781 	push	acc
      00327D 12 37 0C         [24] 3782 	lcall	_printf_tiny
      003280 E5 81            [12] 3783 	mov	a,sp
      003282 24 FC            [12] 3784 	add	a,#0xfc
      003284 F5 81            [12] 3785 	mov	sp,a
      003286 D0 02            [24] 3786 	pop	ar2
      003288 D0 03            [24] 3787 	pop	ar3
      00328A D0 04            [24] 3788 	pop	ar4
      00328C D0 05            [24] 3789 	pop	ar5
      00328E D0 06            [24] 3790 	pop	ar6
      003290 D0 07            [24] 3791 	pop	ar7
                                   3792 ;	i2c.c:647: count++;
      003292 90 00 35         [24] 3793 	mov	dptr,#_hex_dump_count_65536_206
      003295 74 01            [12] 3794 	mov	a,#0x01
      003297 25 18            [12] 3795 	add	a,_hex_dump_sloc0_1_0
      003299 F0               [24] 3796 	movx	@dptr,a
      00329A E4               [12] 3797 	clr	a
      00329B 35 19            [12] 3798 	addc	a,(_hex_dump_sloc0_1_0 + 1)
      00329D A3               [24] 3799 	inc	dptr
      00329E F0               [24] 3800 	movx	@dptr,a
      00329F D0 05            [24] 3801 	pop	ar5
      0032A1 D0 04            [24] 3802 	pop	ar4
      0032A3 80 58            [24] 3803 	sjmp	00117$
      0032A5                       3804 00107$:
                                   3805 ;	i2c.c:649: else if(count == 15)
      0032A5 74 0F            [12] 3806 	mov	a,#0x0f
      0032A7 B5 18 06         [24] 3807 	cjne	a,_hex_dump_sloc0_1_0,00156$
      0032AA E4               [12] 3808 	clr	a
      0032AB B5 19 02         [24] 3809 	cjne	a,(_hex_dump_sloc0_1_0 + 1),00156$
      0032AE 80 02            [24] 3810 	sjmp	00157$
      0032B0                       3811 00156$:
      0032B0 80 4B            [24] 3812 	sjmp	00117$
      0032B2                       3813 00157$:
                                   3814 ;	i2c.c:651: temp_data=hex_data(counter);
      0032B2 88 82            [24] 3815 	mov	dpl,r0
      0032B4 89 83            [24] 3816 	mov	dph,r1
      0032B6 C0 07            [24] 3817 	push	ar7
      0032B8 C0 06            [24] 3818 	push	ar6
      0032BA C0 05            [24] 3819 	push	ar5
      0032BC C0 04            [24] 3820 	push	ar4
      0032BE C0 03            [24] 3821 	push	ar3
      0032C0 C0 02            [24] 3822 	push	ar2
      0032C2 12 30 BF         [24] 3823 	lcall	_hex_data
      0032C5 A8 82            [24] 3824 	mov	r0,dpl
      0032C7 A9 83            [24] 3825 	mov	r1,dph
      0032C9 D0 02            [24] 3826 	pop	ar2
      0032CB D0 03            [24] 3827 	pop	ar3
                                   3828 ;	i2c.c:652: printf_tiny("\n\r%x>>   %x",counter,temp_data);
      0032CD C0 03            [24] 3829 	push	ar3
      0032CF C0 02            [24] 3830 	push	ar2
      0032D1 C0 00            [24] 3831 	push	ar0
      0032D3 C0 01            [24] 3832 	push	ar1
      0032D5 C0 02            [24] 3833 	push	ar2
      0032D7 C0 03            [24] 3834 	push	ar3
      0032D9 74 83            [12] 3835 	mov	a,#___str_8
      0032DB C0 E0            [24] 3836 	push	acc
      0032DD 74 40            [12] 3837 	mov	a,#(___str_8 >> 8)
      0032DF C0 E0            [24] 3838 	push	acc
      0032E1 12 37 0C         [24] 3839 	lcall	_printf_tiny
      0032E4 E5 81            [12] 3840 	mov	a,sp
      0032E6 24 FA            [12] 3841 	add	a,#0xfa
      0032E8 F5 81            [12] 3842 	mov	sp,a
      0032EA D0 02            [24] 3843 	pop	ar2
      0032EC D0 03            [24] 3844 	pop	ar3
      0032EE D0 04            [24] 3845 	pop	ar4
      0032F0 D0 05            [24] 3846 	pop	ar5
      0032F2 D0 06            [24] 3847 	pop	ar6
      0032F4 D0 07            [24] 3848 	pop	ar7
                                   3849 ;	i2c.c:653: count=0;
      0032F6 90 00 35         [24] 3850 	mov	dptr,#_hex_dump_count_65536_206
      0032F9 E4               [12] 3851 	clr	a
      0032FA F0               [24] 3852 	movx	@dptr,a
      0032FB A3               [24] 3853 	inc	dptr
      0032FC F0               [24] 3854 	movx	@dptr,a
      0032FD                       3855 00117$:
                                   3856 ;	i2c.c:636: for(counter =(first_address);counter <= (second_address); (counter)++)
      0032FD 0A               [12] 3857 	inc	r2
      0032FE BA 00 01         [24] 3858 	cjne	r2,#0x00,00158$
      003301 0B               [12] 3859 	inc	r3
      003302                       3860 00158$:
                                   3861 ;	i2c.c:659: }
      003302 02 31 CE         [24] 3862 	ljmp	00116$
                                   3863 	.area CSEG    (CODE)
                                   3864 	.area CONST   (CODE)
                                   3865 	.area CONST   (CODE)
      003F09                       3866 ___str_0:
      003F09 0A                    3867 	.db 0x0a
      003F0A 0D                    3868 	.db 0x0d
      003F0B 45 6E 74 65 72 20 74  3869 	.ascii "Enter the address between 0x00-0x7ff"
             68 65 20 61 64 64 72
             65 73 73 20 62 65 74
             77 65 65 6E 20 30 78
             30 30 2D 30 78 37 66
             66
      003F2F 0A                    3870 	.db 0x0a
      003F30 0D                    3871 	.db 0x0d
      003F31 00                    3872 	.db 0x00
                                   3873 	.area CSEG    (CODE)
                                   3874 	.area CONST   (CODE)
      003F32                       3875 ___str_1:
      003F32 0A                    3876 	.db 0x0a
      003F33 0D                    3877 	.db 0x0d
      003F34 49 6E 76 61 6C 69 64  3878 	.ascii "Invalid Input by user! Please enter again"
             20 49 6E 70 75 74 20
             62 79 20 75 73 65 72
             21 20 50 6C 65 61 73
             65 20 65 6E 74 65 72
             20 61 67 61 69 6E
      003F5D 0A                    3879 	.db 0x0a
      003F5E 0D                    3880 	.db 0x0d
      003F5F 00                    3881 	.db 0x00
                                   3882 	.area CSEG    (CODE)
                                   3883 	.area CONST   (CODE)
      003F60                       3884 ___str_2:
      003F60 0A                    3885 	.db 0x0a
      003F61 0D                    3886 	.db 0x0d
      003F62 45 6E 74 65 72 20 74  3887 	.ascii "Enter the data you want to write(*Note:DATA SHOULD BE BETWEE"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 28 2A 4E
             6F 74 65 3A 44 41 54
             41 20 53 48 4F 55 4C
             44 20 42 45 20 42 45
             54 57 45 45
      003F9E 4E 20 30 78 30 30 20  3888 	.ascii "N 0x00 and 0xFF)"
             61 6E 64 20 30 78 46
             46 29
      003FAE 0A                    3889 	.db 0x0a
      003FAF 0D                    3890 	.db 0x0d
      003FB0 00                    3891 	.db 0x00
                                   3892 	.area CSEG    (CODE)
                                   3893 	.area CONST   (CODE)
      003FB1                       3894 ___str_3:
      003FB1 0A                    3895 	.db 0x0a
      003FB2 0D                    3896 	.db 0x0d
      003FB3 49 6E 76 61 6C 69 64  3897 	.ascii "Invalid Input! Please enter again"
             20 49 6E 70 75 74 21
             20 50 6C 65 61 73 65
             20 65 6E 74 65 72 20
             61 67 61 69 6E
      003FD4 0A                    3898 	.db 0x0a
      003FD5 0D                    3899 	.db 0x0d
      003FD6 00                    3900 	.db 0x00
                                   3901 	.area CSEG    (CODE)
                                   3902 	.area CONST   (CODE)
      003FD7                       3903 ___str_4:
      003FD7 0A                    3904 	.db 0x0a
      003FD8 0D                    3905 	.db 0x0d
      003FD9 45 6E 74 65 72 20 74  3906 	.ascii "Enter the FIRST address between 0x00-0x7ff"
             68 65 20 46 49 52 53
             54 20 61 64 64 72 65
             73 73 20 62 65 74 77
             65 65 6E 20 30 78 30
             30 2D 30 78 37 66 66
      004003 0A                    3907 	.db 0x0a
      004004 0D                    3908 	.db 0x0d
      004005 00                    3909 	.db 0x00
                                   3910 	.area CSEG    (CODE)
                                   3911 	.area CONST   (CODE)
      004006                       3912 ___str_5:
      004006 0A                    3913 	.db 0x0a
      004007 0D                    3914 	.db 0x0d
      004008 45 6E 74 65 72 20 74  3915 	.ascii "Enter the SECOND address between 0x00-0x7ff"
             68 65 20 53 45 43 4F
             4E 44 20 61 64 64 72
             65 73 73 20 62 65 74
             77 65 65 6E 20 30 78
             30 30 2D 30 78 37 66
             66
      004033 0A                    3916 	.db 0x0a
      004034 0D                    3917 	.db 0x0d
      004035 00                    3918 	.db 0x00
                                   3919 	.area CSEG    (CODE)
                                   3920 	.area CONST   (CODE)
      004036                       3921 ___str_6:
      004036 0A                    3922 	.db 0x0a
      004037 0D                    3923 	.db 0x0d
      004038 56 61 6C 69 64 20 69  3924 	.ascii "Valid input"
             6E 70 75 74
      004043 0A                    3925 	.db 0x0a
      004044 0D                    3926 	.db 0x0d
      004045 00                    3927 	.db 0x00
                                   3928 	.area CSEG    (CODE)
                                   3929 	.area CONST   (CODE)
      004046                       3930 ___str_7:
      004046 0A                    3931 	.db 0x0a
      004047 0D                    3932 	.db 0x0d
      004048 49 6E 76 61 6C 69 64  3933 	.ascii "Invalid Entries! Please enter address for hex dump again"
             20 45 6E 74 72 69 65
             73 21 20 50 6C 65 61
             73 65 20 65 6E 74 65
             72 20 61 64 64 72 65
             73 73 20 66 6F 72 20
             68 65 78 20 64 75 6D
             70 20 61 67 61 69 6E
      004080 0A                    3934 	.db 0x0a
      004081 0D                    3935 	.db 0x0d
      004082 00                    3936 	.db 0x00
                                   3937 	.area CSEG    (CODE)
                                   3938 	.area CONST   (CODE)
      004083                       3939 ___str_8:
      004083 0A                    3940 	.db 0x0a
      004084 0D                    3941 	.db 0x0d
      004085 25 78 3E 3E 20 20 20  3942 	.ascii "%x>>   %x"
             25 78
      00408E 00                    3943 	.db 0x00
                                   3944 	.area CSEG    (CODE)
                                   3945 	.area CONST   (CODE)
      00408F                       3946 ___str_9:
      00408F 20 20 20 25 78        3947 	.ascii "   %x"
      004094 00                    3948 	.db 0x00
                                   3949 	.area CSEG    (CODE)
                                   3950 	.area XINIT   (CODE)
                                   3951 	.area CABS    (ABS,CODE)
