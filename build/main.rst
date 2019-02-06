                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Mon Jan 28 11:57:39 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _charToint_PARM_2
                                     13 	.globl _ledtable2
                                     14 	.globl _ledtable
                                     15 	.globl _UART1_Routine
                                     16 	.globl _main
                                     17 	.globl _Timer0Init
                                     18 	.globl _timer0_isr
                                     19 	.globl _memset
                                     20 	.globl _ds_int2bcd
                                     21 	.globl _ds_init
                                     22 	.globl _ds_writebyte
                                     23 	.globl _ds_readburst
                                     24 	.globl _ds_ram_config_init
                                     25 	.globl _getADCResult8
                                     26 	.globl _CCF0
                                     27 	.globl _CCF1
                                     28 	.globl _CCF2
                                     29 	.globl _CR
                                     30 	.globl _CF
                                     31 	.globl _PADC
                                     32 	.globl _PLVD
                                     33 	.globl _PPCA
                                     34 	.globl _EADC
                                     35 	.globl _ELVD
                                     36 	.globl _P4_7
                                     37 	.globl _P4_6
                                     38 	.globl _P4_5
                                     39 	.globl _P4_4
                                     40 	.globl _P4_3
                                     41 	.globl _P4_2
                                     42 	.globl _P4_1
                                     43 	.globl _P4_0
                                     44 	.globl _CY
                                     45 	.globl _AC
                                     46 	.globl _F0
                                     47 	.globl _RS1
                                     48 	.globl _RS0
                                     49 	.globl _OV
                                     50 	.globl _F1
                                     51 	.globl _P
                                     52 	.globl _PS
                                     53 	.globl _PT1
                                     54 	.globl _PX1
                                     55 	.globl _PT0
                                     56 	.globl _PX0
                                     57 	.globl _RD
                                     58 	.globl _WR
                                     59 	.globl _T1
                                     60 	.globl _T0
                                     61 	.globl _INT1
                                     62 	.globl _INT0
                                     63 	.globl _TXD
                                     64 	.globl _RXD
                                     65 	.globl _P3_7
                                     66 	.globl _P3_6
                                     67 	.globl _P3_5
                                     68 	.globl _P3_4
                                     69 	.globl _P3_3
                                     70 	.globl _P3_2
                                     71 	.globl _P3_1
                                     72 	.globl _P3_0
                                     73 	.globl _EA
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _SM0
                                     88 	.globl _SM1
                                     89 	.globl _SM2
                                     90 	.globl _REN
                                     91 	.globl _TB8
                                     92 	.globl _RB8
                                     93 	.globl _TI
                                     94 	.globl _RI
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _TF1
                                    104 	.globl _TR1
                                    105 	.globl _TF0
                                    106 	.globl _TR0
                                    107 	.globl _IE1
                                    108 	.globl _IT1
                                    109 	.globl _IE0
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _PWMFDCR
                                    120 	.globl _PWMIF
                                    121 	.globl _PWMCR
                                    122 	.globl _PWMCFG
                                    123 	.globl _CMPCR2
                                    124 	.globl _CMPCR1
                                    125 	.globl _CCAP2H
                                    126 	.globl _CCAP1H
                                    127 	.globl _CCAP0H
                                    128 	.globl _PCA_PWM2
                                    129 	.globl _PCA_PWM1
                                    130 	.globl _PCA_PWM0
                                    131 	.globl _CCAP2L
                                    132 	.globl _CCAP1L
                                    133 	.globl _CCAP0L
                                    134 	.globl _CCAPM2
                                    135 	.globl _CCAPM1
                                    136 	.globl _CCAPM0
                                    137 	.globl _CH
                                    138 	.globl _CL
                                    139 	.globl _CMOD
                                    140 	.globl _CCON
                                    141 	.globl _IAP_CONTR
                                    142 	.globl _IAP_TRIG
                                    143 	.globl _IAP_CMD
                                    144 	.globl _IAP_ADDRL
                                    145 	.globl _IAP_ADDRH
                                    146 	.globl _IAP_DATA
                                    147 	.globl _SPDAT
                                    148 	.globl _SPCTL
                                    149 	.globl _SPSTAT
                                    150 	.globl _ADC_RESL
                                    151 	.globl _ADC_RES
                                    152 	.globl _ADC_CONTR
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _S4BUF
                                    156 	.globl _S4CON
                                    157 	.globl _S3BUF
                                    158 	.globl _S3CON
                                    159 	.globl _S2BUF
                                    160 	.globl _S2CON
                                    161 	.globl _WDT_CONTR
                                    162 	.globl _WKTCH
                                    163 	.globl _WKTCL
                                    164 	.globl _T2L
                                    165 	.globl _T2H
                                    166 	.globl _T3L
                                    167 	.globl _T3H
                                    168 	.globl _T4L
                                    169 	.globl _T4H
                                    170 	.globl _T3T4M
                                    171 	.globl _T4T3M
                                    172 	.globl _INT_CLKO
                                    173 	.globl _IP2
                                    174 	.globl _IE2
                                    175 	.globl _P_SW2
                                    176 	.globl _P1ASF
                                    177 	.globl _BUS_SPEED
                                    178 	.globl _CLK_DIV
                                    179 	.globl _P_SW1
                                    180 	.globl _AUXR1
                                    181 	.globl _AUXR
                                    182 	.globl _P7M1
                                    183 	.globl _P7M0
                                    184 	.globl _P6M1
                                    185 	.globl _P6M0
                                    186 	.globl _P5M1
                                    187 	.globl _P5M0
                                    188 	.globl _P4M1
                                    189 	.globl _P4M0
                                    190 	.globl _P3M1
                                    191 	.globl _P3M0
                                    192 	.globl _P2M1
                                    193 	.globl _P2M0
                                    194 	.globl _P1M1
                                    195 	.globl _P1M0
                                    196 	.globl _P0M1
                                    197 	.globl _P0M0
                                    198 	.globl _P4
                                    199 	.globl _B
                                    200 	.globl _ACC
                                    201 	.globl _PSW
                                    202 	.globl _IP
                                    203 	.globl _P3
                                    204 	.globl _IE
                                    205 	.globl _P2
                                    206 	.globl _SBUF
                                    207 	.globl _SCON
                                    208 	.globl _P1
                                    209 	.globl _TH1
                                    210 	.globl _TH0
                                    211 	.globl _TL1
                                    212 	.globl _TL0
                                    213 	.globl _TMOD
                                    214 	.globl _TCON
                                    215 	.globl _PCON
                                    216 	.globl _DPH
                                    217 	.globl _DPL
                                    218 	.globl _SP
                                    219 	.globl _P0
                                    220 	.globl _S2_PRESSED
                                    221 	.globl _S2_LONG
                                    222 	.globl _S1_PRESSED
                                    223 	.globl _S1_LONG
                                    224 	.globl _cfg_changed
                                    225 	.globl _rtc_pm
                                    226 	.globl _flash_23
                                    227 	.globl _flash_01
                                    228 	.globl _loop_gate
                                    229 	.globl _blinker_ntp
                                    230 	.globl _blinker1
                                    231 	.globl _blinker_fast
                                    232 	.globl _blinker_slow
                                    233 	.globl _blinker_slowest
                                    234 	.globl _rReady
                                    235 	.globl _busy
                                    236 	.globl _dot3
                                    237 	.globl _dot2
                                    238 	.globl _dot1
                                    239 	.globl _dot0
                                    240 	.globl _CONF_SW_MMDD
                                    241 	.globl _CONF_CHIME_ON
                                    242 	.globl _CONF_ALARM_ON
                                    243 	.globl _CONF_C_F
                                    244 	.globl _H12_12
                                    245 	.globl _H12_PM
                                    246 	.globl _H12_TH
                                    247 	.globl _rec_data
                                    248 	.globl _buffer_t
                                    249 	.globl _ev
                                    250 	.globl _i
                                    251 	.globl _tmp
                                    252 	.globl _pRec
                                    253 	.globl _btemp
                                    254 	.globl _pm
                                    255 	.globl _h0
                                    256 	.globl _tt
                                    257 	.globl _ww
                                    258 	.globl _ss
                                    259 	.globl _mm
                                    260 	.globl _hh
                                    261 	.globl _event
                                    262 	.globl _switchcount
                                    263 	.globl _debounce
                                    264 	.globl _rtc_ss_bcd
                                    265 	.globl _rtc_mm_bcd
                                    266 	.globl _rtc_hh_bcd
                                    267 	.globl _kmode
                                    268 	.globl _dmode
                                    269 	.globl _count_timeout
                                    270 	.globl _count_20000
                                    271 	.globl _ntpUpdated
                                    272 	.globl _count_5000
                                    273 	.globl _count_1000
                                    274 	.globl _count_100
                                    275 	.globl _displaycounter
                                    276 	.globl _lightval
                                    277 	.globl _count
                                    278 	.globl _nT
                                    279 	.globl _nW
                                    280 	.globl _nS
                                    281 	.globl _nM
                                    282 	.globl _nH
                                    283 	.globl _rec_num
                                    284 	.globl _dbuf
                                    285 	.globl _tmpbuf
                                    286 	.globl _cfg_table
                                    287 	.globl _rtc_table
                                    288 	.globl _intToBCD
                                    289 	.globl _intToChar
                                    290 	.globl _charToint
                                    291 	.globl _clear_rec_data
                                    292 	.globl _SendData
                                    293 	.globl _SendString
                                    294 	.globl _serial_init
                                    295 ;--------------------------------------------------------
                                    296 ; special function registers
                                    297 ;--------------------------------------------------------
                                    298 	.area RSEG    (ABS,DATA)
      000000                        299 	.org 0x0000
                           000080   300 _P0	=	0x0080
                           000081   301 _SP	=	0x0081
                           000082   302 _DPL	=	0x0082
                           000083   303 _DPH	=	0x0083
                           000087   304 _PCON	=	0x0087
                           000088   305 _TCON	=	0x0088
                           000089   306 _TMOD	=	0x0089
                           00008A   307 _TL0	=	0x008a
                           00008B   308 _TL1	=	0x008b
                           00008C   309 _TH0	=	0x008c
                           00008D   310 _TH1	=	0x008d
                           000090   311 _P1	=	0x0090
                           000098   312 _SCON	=	0x0098
                           000099   313 _SBUF	=	0x0099
                           0000A0   314 _P2	=	0x00a0
                           0000A8   315 _IE	=	0x00a8
                           0000B0   316 _P3	=	0x00b0
                           0000B8   317 _IP	=	0x00b8
                           0000D0   318 _PSW	=	0x00d0
                           0000E0   319 _ACC	=	0x00e0
                           0000F0   320 _B	=	0x00f0
                           0000C0   321 _P4	=	0x00c0
                           000094   322 _P0M0	=	0x0094
                           000093   323 _P0M1	=	0x0093
                           000092   324 _P1M0	=	0x0092
                           000091   325 _P1M1	=	0x0091
                           000096   326 _P2M0	=	0x0096
                           000095   327 _P2M1	=	0x0095
                           0000B2   328 _P3M0	=	0x00b2
                           0000B1   329 _P3M1	=	0x00b1
                           0000B4   330 _P4M0	=	0x00b4
                           0000B3   331 _P4M1	=	0x00b3
                           0000CA   332 _P5M0	=	0x00ca
                           0000C9   333 _P5M1	=	0x00c9
                           0000CC   334 _P6M0	=	0x00cc
                           0000CB   335 _P6M1	=	0x00cb
                           0000E2   336 _P7M0	=	0x00e2
                           0000E1   337 _P7M1	=	0x00e1
                           00008E   338 _AUXR	=	0x008e
                           0000A2   339 _AUXR1	=	0x00a2
                           0000A2   340 _P_SW1	=	0x00a2
                           000097   341 _CLK_DIV	=	0x0097
                           0000A1   342 _BUS_SPEED	=	0x00a1
                           00009D   343 _P1ASF	=	0x009d
                           0000BA   344 _P_SW2	=	0x00ba
                           0000AF   345 _IE2	=	0x00af
                           0000B5   346 _IP2	=	0x00b5
                           00008F   347 _INT_CLKO	=	0x008f
                           0000D1   348 _T4T3M	=	0x00d1
                           0000D1   349 _T3T4M	=	0x00d1
                           0000D2   350 _T4H	=	0x00d2
                           0000D3   351 _T4L	=	0x00d3
                           0000D4   352 _T3H	=	0x00d4
                           0000D5   353 _T3L	=	0x00d5
                           0000D6   354 _T2H	=	0x00d6
                           0000D7   355 _T2L	=	0x00d7
                           0000AA   356 _WKTCL	=	0x00aa
                           0000AB   357 _WKTCH	=	0x00ab
                           0000C1   358 _WDT_CONTR	=	0x00c1
                           00009A   359 _S2CON	=	0x009a
                           00009B   360 _S2BUF	=	0x009b
                           0000AC   361 _S3CON	=	0x00ac
                           0000AD   362 _S3BUF	=	0x00ad
                           000084   363 _S4CON	=	0x0084
                           000085   364 _S4BUF	=	0x0085
                           0000A9   365 _SADDR	=	0x00a9
                           0000B9   366 _SADEN	=	0x00b9
                           0000BC   367 _ADC_CONTR	=	0x00bc
                           0000BD   368 _ADC_RES	=	0x00bd
                           0000BE   369 _ADC_RESL	=	0x00be
                           0000CD   370 _SPSTAT	=	0x00cd
                           0000CE   371 _SPCTL	=	0x00ce
                           0000CF   372 _SPDAT	=	0x00cf
                           0000C2   373 _IAP_DATA	=	0x00c2
                           0000C3   374 _IAP_ADDRH	=	0x00c3
                           0000C4   375 _IAP_ADDRL	=	0x00c4
                           0000C5   376 _IAP_CMD	=	0x00c5
                           0000C6   377 _IAP_TRIG	=	0x00c6
                           0000C7   378 _IAP_CONTR	=	0x00c7
                           0000D8   379 _CCON	=	0x00d8
                           0000D9   380 _CMOD	=	0x00d9
                           0000E9   381 _CL	=	0x00e9
                           0000F9   382 _CH	=	0x00f9
                           0000DA   383 _CCAPM0	=	0x00da
                           0000DB   384 _CCAPM1	=	0x00db
                           0000DC   385 _CCAPM2	=	0x00dc
                           0000EA   386 _CCAP0L	=	0x00ea
                           0000EB   387 _CCAP1L	=	0x00eb
                           0000EC   388 _CCAP2L	=	0x00ec
                           0000F2   389 _PCA_PWM0	=	0x00f2
                           0000F3   390 _PCA_PWM1	=	0x00f3
                           0000F4   391 _PCA_PWM2	=	0x00f4
                           0000FA   392 _CCAP0H	=	0x00fa
                           0000FB   393 _CCAP1H	=	0x00fb
                           0000FC   394 _CCAP2H	=	0x00fc
                           0000E6   395 _CMPCR1	=	0x00e6
                           0000E7   396 _CMPCR2	=	0x00e7
                           0000F1   397 _PWMCFG	=	0x00f1
                           0000F5   398 _PWMCR	=	0x00f5
                           0000F6   399 _PWMIF	=	0x00f6
                           0000F7   400 _PWMFDCR	=	0x00f7
                                    401 ;--------------------------------------------------------
                                    402 ; special function bits
                                    403 ;--------------------------------------------------------
                                    404 	.area RSEG    (ABS,DATA)
      000000                        405 	.org 0x0000
                           000080   406 _P0_0	=	0x0080
                           000081   407 _P0_1	=	0x0081
                           000082   408 _P0_2	=	0x0082
                           000083   409 _P0_3	=	0x0083
                           000084   410 _P0_4	=	0x0084
                           000085   411 _P0_5	=	0x0085
                           000086   412 _P0_6	=	0x0086
                           000087   413 _P0_7	=	0x0087
                           000088   414 _IT0	=	0x0088
                           000089   415 _IE0	=	0x0089
                           00008A   416 _IT1	=	0x008a
                           00008B   417 _IE1	=	0x008b
                           00008C   418 _TR0	=	0x008c
                           00008D   419 _TF0	=	0x008d
                           00008E   420 _TR1	=	0x008e
                           00008F   421 _TF1	=	0x008f
                           000090   422 _P1_0	=	0x0090
                           000091   423 _P1_1	=	0x0091
                           000092   424 _P1_2	=	0x0092
                           000093   425 _P1_3	=	0x0093
                           000094   426 _P1_4	=	0x0094
                           000095   427 _P1_5	=	0x0095
                           000096   428 _P1_6	=	0x0096
                           000097   429 _P1_7	=	0x0097
                           000098   430 _RI	=	0x0098
                           000099   431 _TI	=	0x0099
                           00009A   432 _RB8	=	0x009a
                           00009B   433 _TB8	=	0x009b
                           00009C   434 _REN	=	0x009c
                           00009D   435 _SM2	=	0x009d
                           00009E   436 _SM1	=	0x009e
                           00009F   437 _SM0	=	0x009f
                           0000A0   438 _P2_0	=	0x00a0
                           0000A1   439 _P2_1	=	0x00a1
                           0000A2   440 _P2_2	=	0x00a2
                           0000A3   441 _P2_3	=	0x00a3
                           0000A4   442 _P2_4	=	0x00a4
                           0000A5   443 _P2_5	=	0x00a5
                           0000A6   444 _P2_6	=	0x00a6
                           0000A7   445 _P2_7	=	0x00a7
                           0000A8   446 _EX0	=	0x00a8
                           0000A9   447 _ET0	=	0x00a9
                           0000AA   448 _EX1	=	0x00aa
                           0000AB   449 _ET1	=	0x00ab
                           0000AC   450 _ES	=	0x00ac
                           0000AF   451 _EA	=	0x00af
                           0000B0   452 _P3_0	=	0x00b0
                           0000B1   453 _P3_1	=	0x00b1
                           0000B2   454 _P3_2	=	0x00b2
                           0000B3   455 _P3_3	=	0x00b3
                           0000B4   456 _P3_4	=	0x00b4
                           0000B5   457 _P3_5	=	0x00b5
                           0000B6   458 _P3_6	=	0x00b6
                           0000B7   459 _P3_7	=	0x00b7
                           0000B0   460 _RXD	=	0x00b0
                           0000B1   461 _TXD	=	0x00b1
                           0000B2   462 _INT0	=	0x00b2
                           0000B3   463 _INT1	=	0x00b3
                           0000B4   464 _T0	=	0x00b4
                           0000B5   465 _T1	=	0x00b5
                           0000B6   466 _WR	=	0x00b6
                           0000B7   467 _RD	=	0x00b7
                           0000B8   468 _PX0	=	0x00b8
                           0000B9   469 _PT0	=	0x00b9
                           0000BA   470 _PX1	=	0x00ba
                           0000BB   471 _PT1	=	0x00bb
                           0000BC   472 _PS	=	0x00bc
                           0000D0   473 _P	=	0x00d0
                           0000D1   474 _F1	=	0x00d1
                           0000D2   475 _OV	=	0x00d2
                           0000D3   476 _RS0	=	0x00d3
                           0000D4   477 _RS1	=	0x00d4
                           0000D5   478 _F0	=	0x00d5
                           0000D6   479 _AC	=	0x00d6
                           0000D7   480 _CY	=	0x00d7
                           0000C0   481 _P4_0	=	0x00c0
                           0000C1   482 _P4_1	=	0x00c1
                           0000C2   483 _P4_2	=	0x00c2
                           0000C3   484 _P4_3	=	0x00c3
                           0000C4   485 _P4_4	=	0x00c4
                           0000C5   486 _P4_5	=	0x00c5
                           0000C6   487 _P4_6	=	0x00c6
                           0000C7   488 _P4_7	=	0x00c7
                           0000AE   489 _ELVD	=	0x00ae
                           0000AD   490 _EADC	=	0x00ad
                           0000BF   491 _PPCA	=	0x00bf
                           0000BE   492 _PLVD	=	0x00be
                           0000BD   493 _PADC	=	0x00bd
                           0000DF   494 _CF	=	0x00df
                           0000DE   495 _CR	=	0x00de
                           0000DA   496 _CCF2	=	0x00da
                           0000D9   497 _CCF1	=	0x00d9
                           0000D8   498 _CCF0	=	0x00d8
                                    499 ;--------------------------------------------------------
                                    500 ; overlayable register banks
                                    501 ;--------------------------------------------------------
                                    502 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        503 	.ds 8
                                    504 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        505 	.ds 8
                                    506 ;--------------------------------------------------------
                                    507 ; internal ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area DSEG    (DATA)
                           000024   510 _rtc_table	=	0x0024
                           00002C   511 _cfg_table	=	0x002c
      000030                        512 _tmpbuf::
      000030                        513 	.ds 4
      000034                        514 _dbuf::
      000034                        515 	.ds 4
      000038                        516 _rec_num::
      000038                        517 	.ds 1
      000039                        518 _nH::
      000039                        519 	.ds 1
      00003A                        520 _nM::
      00003A                        521 	.ds 1
      00003B                        522 _nS::
      00003B                        523 	.ds 1
      00003C                        524 _nW::
      00003C                        525 	.ds 1
      00003D                        526 _nT::
      00003D                        527 	.ds 1
      00003E                        528 _count::
      00003E                        529 	.ds 1
      00003F                        530 _lightval::
      00003F                        531 	.ds 1
      000040                        532 _displaycounter::
      000040                        533 	.ds 1
      000041                        534 _count_100::
      000041                        535 	.ds 1
      000042                        536 _count_1000::
      000042                        537 	.ds 2
      000044                        538 _count_5000::
      000044                        539 	.ds 2
      000046                        540 _ntpUpdated::
      000046                        541 	.ds 2
      000048                        542 _count_20000::
      000048                        543 	.ds 2
      00004A                        544 _count_timeout::
      00004A                        545 	.ds 2
      00004C                        546 _dmode::
      00004C                        547 	.ds 1
      00004D                        548 _kmode::
      00004D                        549 	.ds 1
      00004E                        550 _rtc_hh_bcd::
      00004E                        551 	.ds 1
      00004F                        552 _rtc_mm_bcd::
      00004F                        553 	.ds 1
      000050                        554 _rtc_ss_bcd::
      000050                        555 	.ds 1
      000051                        556 _debounce::
      000051                        557 	.ds 2
      000053                        558 _switchcount::
      000053                        559 	.ds 2
      000055                        560 _event::
      000055                        561 	.ds 1
      000056                        562 _hh::
      000056                        563 	.ds 1
      000057                        564 _mm::
      000057                        565 	.ds 1
      000058                        566 _ss::
      000058                        567 	.ds 1
      000059                        568 _ww::
      000059                        569 	.ds 1
      00005A                        570 _tt::
      00005A                        571 	.ds 1
      00005B                        572 _h0::
      00005B                        573 	.ds 1
      00005C                        574 _pm::
      00005C                        575 	.ds 1
      00005D                        576 _btemp::
      00005D                        577 	.ds 1
      00005E                        578 _pRec::
      00005E                        579 	.ds 3
      000061                        580 _tmp::
      000061                        581 	.ds 1
      000062                        582 _i::
      000062                        583 	.ds 1
      000063                        584 _ev::
      000063                        585 	.ds 1
                                    586 ;--------------------------------------------------------
                                    587 ; overlayable items in internal ram 
                                    588 ;--------------------------------------------------------
                                    589 	.area	OSEG    (OVR,DATA)
                                    590 	.area	OSEG    (OVR,DATA)
                                    591 	.area	OSEG    (OVR,DATA)
      000065                        592 _charToint_PARM_2:
      000065                        593 	.ds 1
                                    594 	.area	OSEG    (OVR,DATA)
                                    595 ;--------------------------------------------------------
                                    596 ; Stack segment in internal ram 
                                    597 ;--------------------------------------------------------
                                    598 	.area	SSEG
      000080                        599 __start__stack:
      000080                        600 	.ds	1
                                    601 
                                    602 ;--------------------------------------------------------
                                    603 ; indirectly addressable internal ram data
                                    604 ;--------------------------------------------------------
                                    605 	.area ISEG    (DATA)
      000068                        606 _buffer_t::
      000068                        607 	.ds 12
      000074                        608 _rec_data::
      000074                        609 	.ds 12
                                    610 ;--------------------------------------------------------
                                    611 ; absolute internal ram data
                                    612 ;--------------------------------------------------------
                                    613 	.area IABS    (ABS,DATA)
                                    614 	.area IABS    (ABS,DATA)
                                    615 ;--------------------------------------------------------
                                    616 ; bit data
                                    617 ;--------------------------------------------------------
                                    618 	.area BSEG    (BIT)
                           000034   619 _H12_TH	=	0x0034
                           000035   620 _H12_PM	=	0x0035
                           000037   621 _H12_12	=	0x0037
                           000060   622 _CONF_C_F	=	0x0060
                           000061   623 _CONF_ALARM_ON	=	0x0061
                           000062   624 _CONF_CHIME_ON	=	0x0062
                           00006E   625 _CONF_SW_MMDD	=	0x006e
      000000                        626 _dot0::
      000000                        627 	.ds 1
      000001                        628 _dot1::
      000001                        629 	.ds 1
      000002                        630 _dot2::
      000002                        631 	.ds 1
      000003                        632 _dot3::
      000003                        633 	.ds 1
      000004                        634 _busy::
      000004                        635 	.ds 1
      000005                        636 _rReady::
      000005                        637 	.ds 1
      000006                        638 _blinker_slowest::
      000006                        639 	.ds 1
      000007                        640 _blinker_slow::
      000007                        641 	.ds 1
      000008                        642 _blinker_fast::
      000008                        643 	.ds 1
      000009                        644 _blinker1::
      000009                        645 	.ds 1
      00000A                        646 _blinker_ntp::
      00000A                        647 	.ds 1
      00000B                        648 _loop_gate::
      00000B                        649 	.ds 1
      00000C                        650 _flash_01::
      00000C                        651 	.ds 1
      00000D                        652 _flash_23::
      00000D                        653 	.ds 1
      00000E                        654 _rtc_pm::
      00000E                        655 	.ds 1
      00000F                        656 _cfg_changed::
      00000F                        657 	.ds 1
      000010                        658 _S1_LONG::
      000010                        659 	.ds 1
      000011                        660 _S1_PRESSED::
      000011                        661 	.ds 1
      000012                        662 _S2_LONG::
      000012                        663 	.ds 1
      000013                        664 _S2_PRESSED::
      000013                        665 	.ds 1
      000014                        666 _main_sloc0_1_0:
      000014                        667 	.ds 1
                                    668 ;--------------------------------------------------------
                                    669 ; paged external ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area PSEG    (PAG,XDATA)
                                    672 ;--------------------------------------------------------
                                    673 ; external ram data
                                    674 ;--------------------------------------------------------
                                    675 	.area XSEG    (XDATA)
                                    676 ;--------------------------------------------------------
                                    677 ; absolute external ram data
                                    678 ;--------------------------------------------------------
                                    679 	.area XABS    (ABS,XDATA)
                                    680 ;--------------------------------------------------------
                                    681 ; external initialized ram data
                                    682 ;--------------------------------------------------------
                                    683 	.area XISEG   (XDATA)
                                    684 	.area HOME    (CODE)
                                    685 	.area GSINIT0 (CODE)
                                    686 	.area GSINIT1 (CODE)
                                    687 	.area GSINIT2 (CODE)
                                    688 	.area GSINIT3 (CODE)
                                    689 	.area GSINIT4 (CODE)
                                    690 	.area GSINIT5 (CODE)
                                    691 	.area GSINIT  (CODE)
                                    692 	.area GSFINAL (CODE)
                                    693 	.area CSEG    (CODE)
                                    694 ;--------------------------------------------------------
                                    695 ; interrupt vector 
                                    696 ;--------------------------------------------------------
                                    697 	.area HOME    (CODE)
      000000                        698 __interrupt_vect:
      000000 02 00 29         [24]  699 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  700 	reti
      000004                        701 	.ds	7
      00000B 02 00 E3         [24]  702 	ljmp	_timer0_isr
      00000E                        703 	.ds	5
      000013 32               [24]  704 	reti
      000014                        705 	.ds	7
      00001B 32               [24]  706 	reti
      00001C                        707 	.ds	7
      000023 02 06 0B         [24]  708 	ljmp	_UART1_Routine
                                    709 ;--------------------------------------------------------
                                    710 ; global & static initialisations
                                    711 ;--------------------------------------------------------
                                    712 	.area HOME    (CODE)
                                    713 	.area GSINIT  (CODE)
                                    714 	.area GSFINAL (CODE)
                                    715 	.area GSINIT  (CODE)
                                    716 	.globl __sdcc_gsinit_startup
                                    717 	.globl __sdcc_program_startup
                                    718 	.globl __start__stack
                                    719 	.globl __mcs51_genXINIT
                                    720 	.globl __mcs51_genXRAMCLEAR
                                    721 	.globl __mcs51_genRAMCLEAR
                                    722 ;	src/main.c:38: volatile uint8_t rec_num = 0;
      000082 75 38 00         [24]  723 	mov	_rec_num,#0x00
                                    724 ;	src/main.c:163: uint8_t dmode = M_NORMAL;     // display mode state
      000085 75 4C 00         [24]  725 	mov	_dmode,#0x00
                                    726 ;	src/main.c:164: uint8_t kmode = K_NORMAL;
      000088 75 4D 00         [24]  727 	mov	_kmode,#0x00
                                    728 ;	src/main.c:407: uint8_t hh = 0;
      00008B 75 56 00         [24]  729 	mov	_hh,#0x00
                                    730 ;	src/main.c:408: uint8_t mm = 0;
      00008E 75 57 00         [24]  731 	mov	_mm,#0x00
                                    732 ;	src/main.c:409: uint8_t ss = 0;
      000091 75 58 00         [24]  733 	mov	_ss,#0x00
                                    734 ;	src/main.c:411: uint8_t ww = 0;
      000094 75 59 00         [24]  735 	mov	_ww,#0x00
                                    736 ;	src/main.c:412: uint8_t tt = 0;
      000097 75 5A 00         [24]  737 	mov	_tt,#0x00
                                    738 ;	src/main.c:415: uint8_t h0 = 0;
      00009A 75 5B 00         [24]  739 	mov	_h0,#0x00
                                    740 ;	src/main.c:416: uint8_t pm = 0;
      00009D 75 5C 00         [24]  741 	mov	_pm,#0x00
                                    742 ;	src/main.c:418: char btemp = 0;
      0000A0 75 5D 00         [24]  743 	mov	_btemp,#0x00
                                    744 ;	src/main.c:419: char * pRec = 0;
      0000A3 E4               [12]  745 	clr	a
      0000A4 F5 5E            [12]  746 	mov	_pRec,a
      0000A6 F5 5F            [12]  747 	mov	(_pRec + 1),a
                                    748 ;	1-genFromRTrack replaced	mov	(_pRec + 2),#0x00
      0000A8 F5 60            [12]  749 	mov	(_pRec + 2),a
                                    750 ;	src/main.c:422: uint8_t i = 0;
                                    751 ;	1-genFromRTrack replaced	mov	_i,#0x00
      0000AA F5 62            [12]  752 	mov	_i,a
                                    753 ;	src/main.c:33: __idata char buffer_t[BSIZE] =  "test\n";
      0000AC 78 68            [12]  754 	mov	r0,#_buffer_t
      0000AE 76 74            [12]  755 	mov	@r0,#0x74
      0000B0 78 69            [12]  756 	mov	r0,#(_buffer_t + 0x0001)
      0000B2 76 65            [12]  757 	mov	@r0,#0x65
      0000B4 78 6A            [12]  758 	mov	r0,#(_buffer_t + 0x0002)
      0000B6 76 73            [12]  759 	mov	@r0,#0x73
      0000B8 78 6B            [12]  760 	mov	r0,#(_buffer_t + 0x0003)
      0000BA 76 74            [12]  761 	mov	@r0,#0x74
      0000BC 78 6C            [12]  762 	mov	r0,#(_buffer_t + 0x0004)
      0000BE 76 0A            [12]  763 	mov	@r0,#0x0A
      0000C0 78 6D            [12]  764 	mov	r0,#(_buffer_t + 0x0005)
      0000C2 76 00            [12]  765 	mov	@r0,#0x00
      0000C4 78 6E            [12]  766 	mov	r0,#(_buffer_t + 0x0006)
      0000C6 76 00            [12]  767 	mov	@r0,#0x00
      0000C8 78 6F            [12]  768 	mov	r0,#(_buffer_t + 0x0007)
      0000CA 76 00            [12]  769 	mov	@r0,#0x00
      0000CC 78 70            [12]  770 	mov	r0,#(_buffer_t + 0x0008)
      0000CE 76 00            [12]  771 	mov	@r0,#0x00
      0000D0 78 71            [12]  772 	mov	r0,#(_buffer_t + 0x0009)
      0000D2 76 00            [12]  773 	mov	@r0,#0x00
      0000D4 78 72            [12]  774 	mov	r0,#(_buffer_t + 0x000a)
      0000D6 76 00            [12]  775 	mov	@r0,#0x00
      0000D8 78 73            [12]  776 	mov	r0,#(_buffer_t + 0x000b)
      0000DA 76 00            [12]  777 	mov	@r0,#0x00
                                    778 ;	src/main.c:36: volatile __bit  rReady = 0;
      0000DC C2 05            [12]  779 	clr	_rReady
                                    780 ;	src/main.c:181: __bit cfg_changed = 1;
      0000DE D2 0F            [12]  781 	setb	_cfg_changed
                                    782 	.area GSFINAL (CODE)
      0000E0 02 00 26         [24]  783 	ljmp	__sdcc_program_startup
                                    784 ;--------------------------------------------------------
                                    785 ; Home
                                    786 ;--------------------------------------------------------
                                    787 	.area HOME    (CODE)
                                    788 	.area HOME    (CODE)
      000026                        789 __sdcc_program_startup:
      000026 02 02 76         [24]  790 	ljmp	_main
                                    791 ;	return from main will return to caller
                                    792 ;--------------------------------------------------------
                                    793 ; code
                                    794 ;--------------------------------------------------------
                                    795 	.area CSEG    (CODE)
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'timer0_isr'
                                    798 ;------------------------------------------------------------
                                    799 ;tmp                       Allocated to registers r6 
                                    800 ;ev                        Allocated to registers r7 
                                    801 ;digit                     Allocated to registers r6 
                                    802 ;s                         Allocated to registers 
                                    803 ;s                         Allocated to registers 
                                    804 ;------------------------------------------------------------
                                    805 ;	src/main.c:212: void timer0_isr() __interrupt 1 __using 1
                                    806 ;	-----------------------------------------
                                    807 ;	 function timer0_isr
                                    808 ;	-----------------------------------------
      0000E3                        809 _timer0_isr:
                           00000F   810 	ar7 = 0x0F
                           00000E   811 	ar6 = 0x0E
                           00000D   812 	ar5 = 0x0D
                           00000C   813 	ar4 = 0x0C
                           00000B   814 	ar3 = 0x0B
                           00000A   815 	ar2 = 0x0A
                           000009   816 	ar1 = 0x09
                           000008   817 	ar0 = 0x08
      0000E3 C0 E0            [24]  818 	push	acc
      0000E5 C0 F0            [24]  819 	push	b
      0000E7 C0 D0            [24]  820 	push	psw
      0000E9 75 D0 08         [24]  821 	mov	psw,#0x08
                                    822 ;	src/main.c:215: enum Event ev = EV_NONE;
      0000EC 7F 00            [12]  823 	mov	r7,#0x00
                                    824 ;	src/main.c:218: uint8_t digit = displaycounter % (uint8_t) 4;
      0000EE 74 03            [12]  825 	mov	a,#0x03
      0000F0 55 40            [12]  826 	anl	a,_displaycounter
      0000F2 FE               [12]  827 	mov	r6,a
                                    828 ;	src/main.c:221: LED_DIGITS_OFF();
      0000F3 43 B0 3C         [24]  829 	orl	_P3,#0x3C
                                    830 ;	src/main.c:224: if (displaycounter % lightval < 4 ) {
      0000F6 85 3F F0         [24]  831 	mov	b,_lightval
      0000F9 E5 40            [12]  832 	mov	a,_displaycounter
      0000FB 84               [48]  833 	div	ab
      0000FC AD F0            [24]  834 	mov	r5,b
      0000FE BD 04 00         [24]  835 	cjne	r5,#0x04,00224$
      000101                        836 00224$:
      000101 50 17            [24]  837 	jnc	00102$
                                    838 ;	src/main.c:226: LED_SEGMENT_PORT = dbuf[digit];
      000103 EE               [12]  839 	mov	a,r6
      000104 24 34            [12]  840 	add	a,#_dbuf
      000106 F9               [12]  841 	mov	r1,a
      000107 87 A0            [24]  842 	mov	_P2,@r1
                                    843 ;	src/main.c:230: tmp = ~((1<<LED_DIGITS_PORT_BASE) << digit);
      000109 8E F0            [24]  844 	mov	b,r6
      00010B 05 F0            [12]  845 	inc	b
      00010D 74 04            [12]  846 	mov	a,#0x04
      00010F 80 02            [24]  847 	sjmp	00228$
      000111                        848 00226$:
      000111 25 E0            [12]  849 	add	a,acc
      000113                        850 00228$:
      000113 D5 F0 FB         [24]  851 	djnz	b,00226$
                                    852 ;	src/main.c:231: LED_DIGITS_PORT &= tmp;
      000116 F4               [12]  853 	cpl	a
      000117 FE               [12]  854 	mov	r6,a
      000118 52 B0            [12]  855 	anl	_P3,a
      00011A                        856 00102$:
                                    857 ;	src/main.c:233: displaycounter++;
      00011A 05 40            [12]  858 	inc	_displaycounter
                                    859 ;	src/main.c:236: if (count_100 == 100) {
      00011C 74 64            [12]  860 	mov	a,#0x64
      00011E B5 41 02         [24]  861 	cjne	a,_count_100,00229$
      000121 80 03            [24]  862 	sjmp	00230$
      000123                        863 00229$:
      000123 02 02 21         [24]  864 	ljmp	00143$
      000126                        865 00230$:
                                    866 ;	src/main.c:237: count_100 = 0;
      000126 75 41 00         [24]  867 	mov	_count_100,#0x00
                                    868 ;	src/main.c:239: if (count_1000 == 1000) {
      000129 74 E8            [12]  869 	mov	a,#0xE8
      00012B B5 42 5D         [24]  870 	cjne	a,_count_1000,00110$
      00012E 74 03            [12]  871 	mov	a,#0x03
      000130 B5 43 58         [24]  872 	cjne	a,(_count_1000 + 1),00110$
                                    873 ;	src/main.c:240: count_1000 = 0;
      000133 E4               [12]  874 	clr	a
      000134 F5 42            [12]  875 	mov	_count_1000,a
      000136 F5 43            [12]  876 	mov	(_count_1000 + 1),a
                                    877 ;	src/main.c:241: blinker_fast = !blinker_fast;
      000138 B2 08            [12]  878 	cpl	_blinker_fast
                                    879 ;	src/main.c:242: loop_gate = 1;
      00013A D2 0B            [12]  880 	setb	_loop_gate
                                    881 ;	src/main.c:244: if (count_5000 == 5000) {
      00013C 74 88            [12]  882 	mov	a,#0x88
      00013E B5 44 4A         [24]  883 	cjne	a,_count_5000,00110$
      000141 74 13            [12]  884 	mov	a,#0x13
      000143 B5 45 45         [24]  885 	cjne	a,(_count_5000 + 1),00110$
                                    886 ;	src/main.c:245: count_5000 = 0;
      000146 E4               [12]  887 	clr	a
      000147 F5 44            [12]  888 	mov	_count_5000,a
      000149 F5 45            [12]  889 	mov	(_count_5000 + 1),a
                                    890 ;	src/main.c:246: blinker_slow = !blinker_slow;
      00014B B2 07            [12]  891 	cpl	_blinker_slow
                                    892 ;	src/main.c:249: if (count_20000 == 20000) {
      00014D 74 20            [12]  893 	mov	a,#0x20
      00014F B5 48 2C         [24]  894 	cjne	a,_count_20000,00106$
      000152 74 4E            [12]  895 	mov	a,#0x4E
      000154 B5 49 27         [24]  896 	cjne	a,(_count_20000 + 1),00106$
                                    897 ;	src/main.c:250: ntpUpdated+=2; 
      000157 74 02            [12]  898 	mov	a,#0x02
      000159 25 46            [12]  899 	add	a,_ntpUpdated
      00015B F5 46            [12]  900 	mov	_ntpUpdated,a
      00015D E4               [12]  901 	clr	a
      00015E 35 47            [12]  902 	addc	a,(_ntpUpdated + 1)
      000160 F5 47            [12]  903 	mov	(_ntpUpdated + 1),a
                                    904 ;	src/main.c:251: if (ntpUpdated > 15000) { ntpUpdated = 15000;}// last ntp update time counter
      000162 C3               [12]  905 	clr	c
      000163 74 98            [12]  906 	mov	a,#0x98
      000165 95 46            [12]  907 	subb	a,_ntpUpdated
      000167 74 BA            [12]  908 	mov	a,#(0x3A ^ 0x80)
      000169 85 47 F0         [24]  909 	mov	b,(_ntpUpdated + 1)
      00016C 63 F0 80         [24]  910 	xrl	b,#0x80
      00016F 95 F0            [12]  911 	subb	a,b
      000171 50 06            [24]  912 	jnc	00104$
      000173 75 46 98         [24]  913 	mov	_ntpUpdated,#0x98
      000176 75 47 3A         [24]  914 	mov	(_ntpUpdated + 1),#0x3A
      000179                        915 00104$:
                                    916 ;	src/main.c:252: count_20000 = 0;
      000179 E4               [12]  917 	clr	a
      00017A F5 48            [12]  918 	mov	_count_20000,a
      00017C F5 49            [12]  919 	mov	(_count_20000 + 1),a
      00017E                        920 00106$:
                                    921 ;	src/main.c:255: blinker_slowest = count_20000 < 5000;
      00017E C3               [12]  922 	clr	c
      00017F E5 48            [12]  923 	mov	a,_count_20000
      000181 94 88            [12]  924 	subb	a,#0x88
      000183 E5 49            [12]  925 	mov	a,(_count_20000 + 1)
      000185 64 80            [12]  926 	xrl	a,#0x80
      000187 94 93            [12]  927 	subb	a,#0x93
      000189 92 06            [24]  928 	mov	_blinker_slowest,c
      00018B                        929 00110$:
                                    930 ;	src/main.c:289: MONITOR_S(1);
      00018B E5 51            [12]  931 	mov	a,_debounce
      00018D 25 51            [12]  932 	add	a,_debounce
      00018F FE               [12]  933 	mov	r6,a
      000190 A2 B1            [12]  934 	mov	c,_P3_1
      000192 E4               [12]  935 	clr	a
      000193 33               [12]  936 	rlc	a
      000194 FD               [12]  937 	mov	r5,a
      000195 4E               [12]  938 	orl	a,r6
      000196 F5 51            [12]  939 	mov	_debounce,a
      000198 E5 51            [12]  940 	mov	a,_debounce
      00019A 70 0D            [24]  941 	jnz	00118$
      00019C D2 11            [12]  942 	setb	_S1_PRESSED
      00019E 20 10 17         [24]  943 	jb	_S1_LONG,00119$
      0001A1 E5 53            [12]  944 	mov	a,_switchcount
      0001A3 FE               [12]  945 	mov	r6,a
      0001A4 04               [12]  946 	inc	a
      0001A5 F5 53            [12]  947 	mov	_switchcount,a
      0001A7 80 0F            [24]  948 	sjmp	00119$
      0001A9                        949 00118$:
      0001A9 30 11 0C         [24]  950 	jnb	_S1_PRESSED,00119$
      0001AC 20 10 02         [24]  951 	jb	_S1_LONG,00114$
      0001AF 7F 01            [12]  952 	mov	r7,#0x01
      0001B1                        953 00114$:
      0001B1 C2 11            [12]  954 	clr	_S1_PRESSED
      0001B3 C2 10            [12]  955 	clr	_S1_LONG
      0001B5 75 53 00         [24]  956 	mov	_switchcount,#0x00
      0001B8                        957 00119$:
      0001B8 E5 53            [12]  958 	mov	a,_switchcount
      0001BA 24 AF            [12]  959 	add	a,#0xff - 0x50
      0001BC 50 07            [24]  960 	jnc	00121$
      0001BE D2 10            [12]  961 	setb	_S1_LONG
      0001C0 75 53 00         [24]  962 	mov	_switchcount,#0x00
      0001C3 7F 02            [12]  963 	mov	r7,#0x02
      0001C5                        964 00121$:
                                    965 ;	src/main.c:290: MONITOR_S(2);
      0001C5 E5 52            [12]  966 	mov	a,(_debounce + 0x0001)
      0001C7 25 E0            [12]  967 	add	a,acc
      0001C9 FE               [12]  968 	mov	r6,a
      0001CA A2 B0            [12]  969 	mov	c,_P3_0
      0001CC E4               [12]  970 	clr	a
      0001CD 33               [12]  971 	rlc	a
      0001CE FD               [12]  972 	mov	r5,a
      0001CF 4E               [12]  973 	orl	a,r6
      0001D0 F5 52            [12]  974 	mov	(_debounce + 0x0001),a
      0001D2 E5 52            [12]  975 	mov	a,(_debounce + 0x0001)
      0001D4 70 0D            [24]  976 	jnz	00129$
      0001D6 D2 13            [12]  977 	setb	_S2_PRESSED
      0001D8 20 12 17         [24]  978 	jb	_S2_LONG,00130$
      0001DB E5 54            [12]  979 	mov	a,(_switchcount + 0x0001)
      0001DD FE               [12]  980 	mov	r6,a
      0001DE 04               [12]  981 	inc	a
      0001DF F5 54            [12]  982 	mov	(_switchcount + 0x0001),a
      0001E1 80 0F            [24]  983 	sjmp	00130$
      0001E3                        984 00129$:
      0001E3 30 13 0C         [24]  985 	jnb	_S2_PRESSED,00130$
      0001E6 20 12 02         [24]  986 	jb	_S2_LONG,00125$
      0001E9 7F 03            [12]  987 	mov	r7,#0x03
      0001EB                        988 00125$:
      0001EB C2 13            [12]  989 	clr	_S2_PRESSED
      0001ED C2 12            [12]  990 	clr	_S2_LONG
      0001EF 75 54 00         [24]  991 	mov	(_switchcount + 0x0001),#0x00
      0001F2                        992 00130$:
      0001F2 E5 54            [12]  993 	mov	a,(_switchcount + 0x0001)
      0001F4 24 AF            [12]  994 	add	a,#0xff - 0x50
      0001F6 50 07            [24]  995 	jnc	00132$
      0001F8 D2 12            [12]  996 	setb	_S2_LONG
      0001FA 75 54 00         [24]  997 	mov	(_switchcount + 0x0001),#0x00
      0001FD 7F 04            [12]  998 	mov	r7,#0x04
      0001FF                        999 00132$:
                                   1000 ;	src/main.c:295: if (ev == EV_S1_LONG && S2_PRESSED) {
      0001FF BF 02 0C         [24] 1001 	cjne	r7,#0x02,00137$
      000202 30 13 09         [24] 1002 	jnb	_S2_PRESSED,00137$
                                   1003 ;	src/main.c:296: S2_LONG = 1;
      000205 D2 12            [12] 1004 	setb	_S2_LONG
                                   1005 ;	src/main.c:297: switchcount[1] = 0;
      000207 75 54 00         [24] 1006 	mov	(_switchcount + 0x0001),#0x00
                                   1007 ;	src/main.c:298: ev = EV_S1S2_LONG;
      00020A 7F 05            [12] 1008 	mov	r7,#0x05
      00020C 80 0D            [24] 1009 	sjmp	00138$
      00020E                       1010 00137$:
                                   1011 ;	src/main.c:299: } else if (ev == EV_S2_LONG && S1_PRESSED) {
      00020E BF 04 0A         [24] 1012 	cjne	r7,#0x04,00138$
      000211 30 11 07         [24] 1013 	jnb	_S1_PRESSED,00138$
                                   1014 ;	src/main.c:300: S1_LONG = 1;
      000214 D2 10            [12] 1015 	setb	_S1_LONG
                                   1016 ;	src/main.c:301: switchcount[0] = 0;
      000216 75 53 00         [24] 1017 	mov	_switchcount,#0x00
                                   1018 ;	src/main.c:302: ev = EV_S1S2_LONG;
      000219 7F 05            [12] 1019 	mov	r7,#0x05
      00021B                       1020 00138$:
                                   1021 ;	src/main.c:304: if (event == EV_NONE) {
      00021B E5 55            [12] 1022 	mov	a,_event
      00021D 70 02            [24] 1023 	jnz	00143$
                                   1024 ;	src/main.c:305: event = ev;
      00021F 8F 55            [24] 1025 	mov	_event,r7
      000221                       1026 00143$:
                                   1027 ;	src/main.c:308: count_100++;
      000221 05 41            [12] 1028 	inc	_count_100
                                   1029 ;	src/main.c:309: count_1000++;
      000223 74 01            [12] 1030 	mov	a,#0x01
      000225 25 42            [12] 1031 	add	a,_count_1000
      000227 F5 42            [12] 1032 	mov	_count_1000,a
      000229 E4               [12] 1033 	clr	a
      00022A 35 43            [12] 1034 	addc	a,(_count_1000 + 1)
      00022C F5 43            [12] 1035 	mov	(_count_1000 + 1),a
                                   1036 ;	src/main.c:310: count_5000++;
      00022E 74 01            [12] 1037 	mov	a,#0x01
      000230 25 44            [12] 1038 	add	a,_count_5000
      000232 F5 44            [12] 1039 	mov	_count_5000,a
      000234 E4               [12] 1040 	clr	a
      000235 35 45            [12] 1041 	addc	a,(_count_5000 + 1)
      000237 F5 45            [12] 1042 	mov	(_count_5000 + 1),a
                                   1043 ;	src/main.c:311: count_20000++;
      000239 74 01            [12] 1044 	mov	a,#0x01
      00023B 25 48            [12] 1045 	add	a,_count_20000
      00023D F5 48            [12] 1046 	mov	_count_20000,a
      00023F E4               [12] 1047 	clr	a
      000240 35 49            [12] 1048 	addc	a,(_count_20000 + 1)
      000242 F5 49            [12] 1049 	mov	(_count_20000 + 1),a
                                   1050 ;	src/main.c:313: if (count_timeout != 0) {
      000244 E5 4A            [12] 1051 	mov	a,_count_timeout
      000246 45 4B            [12] 1052 	orl	a,(_count_timeout + 1)
      000248 60 16            [24] 1053 	jz	00150$
                                   1054 ;	src/main.c:314: count_timeout--;
      00024A 15 4A            [12] 1055 	dec	_count_timeout
      00024C 74 FF            [12] 1056 	mov	a,#0xFF
      00024E B5 4A 02         [24] 1057 	cjne	a,_count_timeout,00256$
      000251 15 4B            [12] 1058 	dec	(_count_timeout + 1)
      000253                       1059 00256$:
                                   1060 ;	src/main.c:315: if (count_timeout == 0) {
      000253 E5 4A            [12] 1061 	mov	a,_count_timeout
      000255 45 4B            [12] 1062 	orl	a,(_count_timeout + 1)
      000257 70 07            [24] 1063 	jnz	00150$
                                   1064 ;	src/main.c:316: if (event == EV_NONE) {
      000259 E5 55            [12] 1065 	mov	a,_event
      00025B 70 03            [24] 1066 	jnz	00150$
                                   1067 ;	src/main.c:317: event = EV_TIMEOUT;
      00025D 75 55 06         [24] 1068 	mov	_event,#0x06
      000260                       1069 00150$:
      000260 D0 D0            [24] 1070 	pop	psw
      000262 D0 F0            [24] 1071 	pop	b
      000264 D0 E0            [24] 1072 	pop	acc
      000266 32               [24] 1073 	reti
                                   1074 ;	eliminated unneeded push/pop dpl
                                   1075 ;	eliminated unneeded push/pop dph
                                   1076 ;------------------------------------------------------------
                                   1077 ;Allocation info for local variables in function 'Timer0Init'
                                   1078 ;------------------------------------------------------------
                                   1079 ;	src/main.c:355: void Timer0Init(void)		//100us @ 11.0592MHz
                                   1080 ;	-----------------------------------------
                                   1081 ;	 function Timer0Init
                                   1082 ;	-----------------------------------------
      000267                       1083 _Timer0Init:
                           000007  1084 	ar7 = 0x07
                           000006  1085 	ar6 = 0x06
                           000005  1086 	ar5 = 0x05
                           000004  1087 	ar4 = 0x04
                           000003  1088 	ar3 = 0x03
                           000002  1089 	ar2 = 0x02
                           000001  1090 	ar1 = 0x01
                           000000  1091 	ar0 = 0x00
                                   1092 ;	src/main.c:361: TL0 = 0xA4;		// Initial timer value
      000267 75 8A A4         [24] 1093 	mov	_TL0,#0xA4
                                   1094 ;	src/main.c:362: TH0 = 0xFF;		// Initial timer value
      00026A 75 8C FF         [24] 1095 	mov	_TH0,#0xFF
                                   1096 ;	src/main.c:363: TF0 = 0;		// Clear overflow flag
      00026D C2 8D            [12] 1097 	clr	_TF0
                                   1098 ;	src/main.c:364: TR0 = 1;		// Timer0 start run
      00026F D2 8C            [12] 1099 	setb	_TR0
                                   1100 ;	src/main.c:365: ET0 = 1;        // Enable timer0 interrupt
      000271 D2 A9            [12] 1101 	setb	_ET0
                                   1102 ;	src/main.c:366: EA = 1;         // Enable global interrupt
      000273 D2 AF            [12] 1103 	setb	_EA
      000275 22               [24] 1104 	ret
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'main'
                                   1107 ;------------------------------------------------------------
                                   1108 ;pRec                      Allocated to registers 
                                   1109 ;btemp                     Allocated to registers r5 
                                   1110 ;tmp                       Allocated to registers r7 
                                   1111 ;------------------------------------------------------------
                                   1112 ;	src/main.c:425: int main()
                                   1113 ;	-----------------------------------------
                                   1114 ;	 function main
                                   1115 ;	-----------------------------------------
      000276                       1116 _main:
                                   1117 ;	src/main.c:429: P1M1 |= (1<<ADC_LIGHT) | (1<<ADC_TEMP);
      000276 43 91 C0         [24] 1118 	orl	_P1M1,#0xC0
                                   1119 ;	src/main.c:430: P1M0 |= (1<<ADC_LIGHT) | (1<<ADC_TEMP);
      000279 43 92 C0         [24] 1120 	orl	_P1M0,#0xC0
                                   1121 ;	src/main.c:433: ds_init();
      00027C 12 07 BE         [24] 1122 	lcall	_ds_init
                                   1123 ;	src/main.c:435: ds_ram_config_init();
      00027F 12 06 D8         [24] 1124 	lcall	_ds_ram_config_init
                                   1125 ;	src/main.c:440: Timer0Init(); // display refresh & switch read
      000282 12 02 67         [24] 1126 	lcall	_Timer0Init
                                   1127 ;	src/main.c:448: serial_init ();
      000285 12 06 61         [24] 1128 	lcall	_serial_init
                                   1129 ;	src/main.c:450: SBUF = IE;
      000288 85 A8 99         [24] 1130 	mov	_SBUF,_IE
                                   1131 ;	src/main.c:452: memset(buffer_t, 0, BSIZE);
      00028B 75 65 00         [24] 1132 	mov	_memset_PARM_2,#0x00
      00028E 75 66 0C         [24] 1133 	mov	_memset_PARM_3,#0x0C
      000291 75 67 00         [24] 1134 	mov	(_memset_PARM_3 + 1),#0x00
      000294 90 00 68         [24] 1135 	mov	dptr,#_buffer_t
      000297 75 F0 40         [24] 1136 	mov	b,#0x40
      00029A 12 09 BE         [24] 1137 	lcall	_memset
                                   1138 ;	src/main.c:453: memset(rec_data, 0, BSIZE);
      00029D 75 65 00         [24] 1139 	mov	_memset_PARM_2,#0x00
      0002A0 75 66 0C         [24] 1140 	mov	_memset_PARM_3,#0x0C
      0002A3 75 67 00         [24] 1141 	mov	(_memset_PARM_3 + 1),#0x00
      0002A6 90 00 74         [24] 1142 	mov	dptr,#_rec_data
      0002A9 75 F0 40         [24] 1143 	mov	b,#0x40
      0002AC 12 09 BE         [24] 1144 	lcall	_memset
                                   1145 ;	src/main.c:457: SendString("reset\n");
      0002AF 90 0A 40         [24] 1146 	mov	dptr,#___str_0
      0002B2 75 F0 80         [24] 1147 	mov	b,#0x80
      0002B5 12 06 36         [24] 1148 	lcall	_SendString
                                   1149 ;	src/main.c:459: clear_rec_data();
      0002B8 12 06 13         [24] 1150 	lcall	_clear_rec_data
                                   1151 ;	src/main.c:461: blinker1 = blinker_slow;
      0002BB A2 07            [12] 1152 	mov	c,_blinker_slow
      0002BD 92 09            [24] 1153 	mov	_blinker1,c
                                   1154 ;	src/main.c:462: blinker_ntp = blinker_fast;
      0002BF A2 08            [12] 1155 	mov	c,_blinker_fast
      0002C1 92 0A            [24] 1156 	mov	_blinker_ntp,c
                                   1157 ;	src/main.c:465: while (1)
      0002C3                       1158 00189$:
                                   1159 ;	src/main.c:470: if (loop_gate) {
      0002C3 30 0B 52         [24] 1160 	jnb	_loop_gate,00109$
                                   1161 ;	src/main.c:472: ev = event;
      0002C6 85 55 63         [24] 1162 	mov	_ev,_event
                                   1163 ;	src/main.c:473: event = EV_NONE;
      0002C9 75 55 00         [24] 1164 	mov	_event,#0x00
                                   1165 ;	src/main.c:477: if (count % (uint8_t) 4 == 0) {
      0002CC E5 3E            [12] 1166 	mov	a,_count
      0002CE 54 03            [12] 1167 	anl	a,#0x03
      0002D0 60 02            [24] 1168 	jz	00317$
      0002D2 80 17            [24] 1169 	sjmp	00104$
      0002D4                       1170 00317$:
                                   1171 ;	src/main.c:480: lightval = getADCResult8(ADC_LIGHT) >> 3;
      0002D4 75 82 06         [24] 1172 	mov	dpl,#0x06
      0002D7 12 06 C0         [24] 1173 	lcall	_getADCResult8
      0002DA E5 82            [12] 1174 	mov	a,dpl
      0002DC FF               [12] 1175 	mov	r7,a
      0002DD C4               [12] 1176 	swap	a
      0002DE 23               [12] 1177 	rl	a
      0002DF 54 1F            [12] 1178 	anl	a,#0x1F
                                   1179 ;	src/main.c:482: if (lightval < 4) {
      0002E1 F5 3F            [12] 1180 	mov	_lightval,a
      0002E3 C3               [12] 1181 	clr	c
      0002E4 94 04            [12] 1182 	subb	a,#0x04
      0002E6 50 03            [24] 1183 	jnc	00104$
                                   1184 ;	src/main.c:483: lightval = 4;
      0002E8 75 3F 04         [24] 1185 	mov	_lightval,#0x04
      0002EB                       1186 00104$:
                                   1187 ;	src/main.c:488: ds_readburst();
      0002EB 12 07 7F         [24] 1188 	lcall	_ds_readburst
                                   1189 ;	src/main.c:491: rtc_hh_bcd = rtc_table[DS_ADDR_HOUR];
      0002EE 85 26 4E         [24] 1190 	mov	_rtc_hh_bcd,(_rtc_table + 0x0002)
                                   1191 ;	src/main.c:492: if (H12_12) {
      0002F1 30 37 05         [24] 1192 	jnb	_H12_12,00106$
                                   1193 ;	src/main.c:493: rtc_hh_bcd &= DS_MASK_HOUR12;
      0002F4 53 4E 1F         [24] 1194 	anl	_rtc_hh_bcd,#0x1F
      0002F7 80 03            [24] 1195 	sjmp	00107$
      0002F9                       1196 00106$:
                                   1197 ;	src/main.c:495: rtc_hh_bcd &= DS_MASK_HOUR24;
      0002F9 53 4E 3F         [24] 1198 	anl	_rtc_hh_bcd,#0x3F
      0002FC                       1199 00107$:
                                   1200 ;	src/main.c:497: rtc_pm = H12_12 && H12_PM;
      0002FC 30 37 03         [24] 1201 	jnb	_H12_12,00195$
      0002FF 20 35 04         [24] 1202 	jb	_H12_PM,00196$
      000302                       1203 00195$:
      000302 C2 14            [12] 1204 	clr	_main_sloc0_1_0
      000304 80 02            [24] 1205 	sjmp	00197$
      000306                       1206 00196$:
      000306 D2 14            [12] 1207 	setb	_main_sloc0_1_0
      000308                       1208 00197$:
      000308 A2 14            [12] 1209 	mov	c,_main_sloc0_1_0
      00030A 92 0E            [24] 1210 	mov	_rtc_pm,c
                                   1211 ;	src/main.c:498: rtc_mm_bcd = rtc_table[DS_ADDR_MINUTES] & DS_MASK_MINUTES;
      00030C 74 7F            [12] 1212 	mov	a,#0x7F
      00030E 55 25            [12] 1213 	anl	a,(_rtc_table + 0x0001)
      000310 F5 4F            [12] 1214 	mov	_rtc_mm_bcd,a
                                   1215 ;	src/main.c:500: rtc_ss_bcd = rtc_table[DS_ADDR_SECONDS] & DS_MASK_MINUTES;
      000312 74 7F            [12] 1216 	mov	a,#0x7F
      000314 55 24            [12] 1217 	anl	a,_rtc_table
      000316 F5 50            [12] 1218 	mov	_rtc_ss_bcd,a
      000318                       1219 00109$:
                                   1220 ;	src/main.c:510: hh = rtc_hh_bcd;
      000318 85 4E 56         [24] 1221 	mov	_hh,_rtc_hh_bcd
                                   1222 ;	src/main.c:511: mm = rtc_mm_bcd;
      00031B 85 4F 57         [24] 1223 	mov	_mm,_rtc_mm_bcd
                                   1224 ;	src/main.c:512: ss = rtc_ss_bcd;
      00031E 85 50 58         [24] 1225 	mov	_ss,_rtc_ss_bcd
                                   1226 ;	src/main.c:515: if (RI){
      000321 30 98 5A         [24] 1227 	jnb	_RI,00117$
                                   1228 ;	src/main.c:516: tmp = SBUF;
      000324 85 99 61         [24] 1229 	mov	_tmp,_SBUF
                                   1230 ;	src/main.c:517: RI = 0; 
      000327 C2 98            [12] 1231 	clr	_RI
                                   1232 ;	src/main.c:519: if (tmp != 0) {
      000329 E5 61            [12] 1233 	mov	a,_tmp
      00032B 60 51            [24] 1234 	jz	00117$
                                   1235 ;	src/main.c:520: rec_data[rec_num] = tmp;
      00032D E5 38            [12] 1236 	mov	a,_rec_num
      00032F 24 74            [12] 1237 	add	a,#_rec_data
      000331 F8               [12] 1238 	mov	r0,a
      000332 A6 61            [24] 1239 	mov	@r0,_tmp
                                   1240 ;	src/main.c:523: if (rec_data[rec_num] == '*') { // " " = 32
      000334 E5 38            [12] 1241 	mov	a,_rec_num
      000336 24 74            [12] 1242 	add	a,#_rec_data
      000338 F9               [12] 1243 	mov	r1,a
      000339 87 07            [24] 1244 	mov	ar7,@r1
      00033B BF 2A 3E         [24] 1245 	cjne	r7,#0x2A,00112$
                                   1246 ;	src/main.c:524: rReady = 1;
      00033E D2 05            [12] 1247 	setb	_rReady
                                   1248 ;	src/main.c:526: for (i=0;i<BSIZE;i++) {
      000340 75 62 00         [24] 1249 	mov	_i,#0x00
      000343                       1250 00191$:
                                   1251 ;	src/main.c:527: char * pRec = rec_data;
                                   1252 ;	src/main.c:528: char btemp = *(pRec+i);
      000343 E5 62            [12] 1253 	mov	a,_i
      000345 24 74            [12] 1254 	add	a,#_rec_data
      000347 FD               [12] 1255 	mov	r5,a
      000348 E4               [12] 1256 	clr	a
      000349 34 00            [12] 1257 	addc	a,#(_rec_data >> 8)
      00034B FE               [12] 1258 	mov	r6,a
      00034C 7F 40            [12] 1259 	mov	r7,#0x40
      00034E 8D 82            [24] 1260 	mov	dpl,r5
      000350 8E 83            [24] 1261 	mov	dph,r6
      000352 8F F0            [24] 1262 	mov	b,r7
      000354 12 09 F8         [24] 1263 	lcall	__gptrget
      000357 FD               [12] 1264 	mov	r5,a
                                   1265 ;	src/main.c:529: buffer_t[i] = btemp;
      000358 E5 62            [12] 1266 	mov	a,_i
      00035A 24 68            [12] 1267 	add	a,#_buffer_t
      00035C F8               [12] 1268 	mov	r0,a
      00035D A6 05            [24] 1269 	mov	@r0,ar5
                                   1270 ;	src/main.c:538: rec_data[i] = 0;
      00035F E5 62            [12] 1271 	mov	a,_i
      000361 24 74            [12] 1272 	add	a,#_rec_data
      000363 F8               [12] 1273 	mov	r0,a
      000364 76 00            [12] 1274 	mov	@r0,#0x00
                                   1275 ;	src/main.c:526: for (i=0;i<BSIZE;i++) {
      000366 05 62            [12] 1276 	inc	_i
      000368 74 F4            [12] 1277 	mov	a,#0x100 - 0x0C
      00036A 25 62            [12] 1278 	add	a,_i
      00036C 50 D5            [24] 1279 	jnc	00191$
                                   1280 ;	src/main.c:540: rec_num = 0;
      00036E 75 38 00         [24] 1281 	mov	_rec_num,#0x00
                                   1282 ;	src/main.c:545: SendString(buffer_t);
      000371 90 00 68         [24] 1283 	mov	dptr,#_buffer_t
      000374 75 F0 40         [24] 1284 	mov	b,#0x40
      000377 12 06 36         [24] 1285 	lcall	_SendString
      00037A 80 02            [24] 1286 	sjmp	00117$
      00037C                       1287 00112$:
                                   1288 ;	src/main.c:548: rec_num++;
      00037C 05 38            [12] 1289 	inc	_rec_num
      00037E                       1290 00117$:
                                   1291 ;	src/main.c:555: if (loop_gate) {
      00037E 20 0B 03         [24] 1292 	jb	_loop_gate,00327$
      000381 02 02 C3         [24] 1293 	ljmp	00189$
      000384                       1294 00327$:
                                   1295 ;	src/main.c:556: clearTmpDisplay();
      000384 C2 00            [12] 1296 	clr	_dot0
      000386 C2 01            [12] 1297 	clr	_dot1
      000388 C2 02            [12] 1298 	clr	_dot2
      00038A C2 03            [12] 1299 	clr	_dot3
      00038C 75 33 10         [24] 1300 	mov	(_tmpbuf + 0x0003),#0x10
      00038F 75 32 10         [24] 1301 	mov	(_tmpbuf + 0x0002),#0x10
      000392 75 31 10         [24] 1302 	mov	(_tmpbuf + 0x0001),#0x10
      000395 75 30 10         [24] 1303 	mov	_tmpbuf,#0x10
                                   1304 ;	src/main.c:558: if (rReady == 1) {
      000398 20 05 03         [24] 1305 	jb	_rReady,00328$
      00039B 02 04 7E         [24] 1306 	ljmp	00129$
      00039E                       1307 00328$:
                                   1308 ;	src/main.c:559: if ( (buffer_t[0]=='H') && (buffer_t[3]=='M') && (buffer_t[6]=='S')) {
      00039E 78 68            [12] 1309 	mov	r0,#_buffer_t
      0003A0 86 07            [24] 1310 	mov	ar7,@r0
      0003A2 BF 48 02         [24] 1311 	cjne	r7,#0x48,00329$
      0003A5 80 03            [24] 1312 	sjmp	00330$
      0003A7                       1313 00329$:
      0003A7 02 04 33         [24] 1314 	ljmp	00121$
      0003AA                       1315 00330$:
      0003AA 78 6B            [12] 1316 	mov	r0,#(_buffer_t + 0x0003)
      0003AC 86 07            [24] 1317 	mov	ar7,@r0
      0003AE BF 4D 02         [24] 1318 	cjne	r7,#0x4D,00331$
      0003B1 80 03            [24] 1319 	sjmp	00332$
      0003B3                       1320 00331$:
      0003B3 02 04 33         [24] 1321 	ljmp	00121$
      0003B6                       1322 00332$:
      0003B6 78 6E            [12] 1323 	mov	r0,#(_buffer_t + 0x0006)
      0003B8 86 07            [24] 1324 	mov	ar7,@r0
      0003BA BF 53 76         [24] 1325 	cjne	r7,#0x53,00121$
                                   1326 ;	src/main.c:560: nH = charToint(buffer_t[1], buffer_t[2]);
      0003BD 78 69            [12] 1327 	mov	r0,#(_buffer_t + 0x0001)
      0003BF 86 82            [24] 1328 	mov	dpl,@r0
      0003C1 78 6A            [12] 1329 	mov	r0,#(_buffer_t + 0x0002)
      0003C3 86 65            [24] 1330 	mov	_charToint_PARM_2,@r0
      0003C5 12 05 FA         [24] 1331 	lcall	_charToint
      0003C8 85 82 39         [24] 1332 	mov	_nH,dpl
                                   1333 ;	src/main.c:561: nM = charToint(buffer_t[4], buffer_t[5]);
      0003CB 78 6C            [12] 1334 	mov	r0,#(_buffer_t + 0x0004)
      0003CD 86 82            [24] 1335 	mov	dpl,@r0
      0003CF 78 6D            [12] 1336 	mov	r0,#(_buffer_t + 0x0005)
      0003D1 86 65            [24] 1337 	mov	_charToint_PARM_2,@r0
      0003D3 12 05 FA         [24] 1338 	lcall	_charToint
      0003D6 85 82 3A         [24] 1339 	mov	_nM,dpl
                                   1340 ;	src/main.c:562: nS = charToint(buffer_t[7], buffer_t[8]);
      0003D9 78 6F            [12] 1341 	mov	r0,#(_buffer_t + 0x0007)
      0003DB 86 82            [24] 1342 	mov	dpl,@r0
      0003DD 78 70            [12] 1343 	mov	r0,#(_buffer_t + 0x0008)
      0003DF 86 65            [24] 1344 	mov	_charToint_PARM_2,@r0
      0003E1 12 05 FA         [24] 1345 	lcall	_charToint
      0003E4 85 82 3B         [24] 1346 	mov	_nS,dpl
                                   1347 ;	src/main.c:565: hh = intToBCD (nH);
      0003E7 85 39 82         [24] 1348 	mov	dpl,_nH
      0003EA 12 05 A6         [24] 1349 	lcall	_intToBCD
      0003ED 85 82 56         [24] 1350 	mov	_hh,dpl
                                   1351 ;	src/main.c:566: ds_writebyte(DS_ADDR_HOUR, hh);
      0003F0 85 56 64         [24] 1352 	mov	_ds_writebyte_PARM_2,_hh
      0003F3 75 82 02         [24] 1353 	mov	dpl,#0x02
      0003F6 12 07 9E         [24] 1354 	lcall	_ds_writebyte
                                   1355 ;	src/main.c:568: mm = intToBCD (nM);
      0003F9 85 3A 82         [24] 1356 	mov	dpl,_nM
      0003FC 12 05 A6         [24] 1357 	lcall	_intToBCD
      0003FF 85 82 57         [24] 1358 	mov	_mm,dpl
                                   1359 ;	src/main.c:569: ds_writebyte(DS_ADDR_MINUTES, mm);
      000402 85 57 64         [24] 1360 	mov	_ds_writebyte_PARM_2,_mm
      000405 75 82 01         [24] 1361 	mov	dpl,#0x01
      000408 12 07 9E         [24] 1362 	lcall	_ds_writebyte
                                   1363 ;	src/main.c:571: ss = intToBCD (nS);
      00040B 85 3B 82         [24] 1364 	mov	dpl,_nS
      00040E 12 05 A6         [24] 1365 	lcall	_intToBCD
      000411 85 82 58         [24] 1366 	mov	_ss,dpl
                                   1367 ;	src/main.c:572: ds_writebyte(DS_ADDR_SECONDS, ds_int2bcd(nS));
      000414 85 3B 82         [24] 1368 	mov	dpl,_nS
      000417 12 09 8E         [24] 1369 	lcall	_ds_int2bcd
      00041A 85 82 64         [24] 1370 	mov	_ds_writebyte_PARM_2,dpl
      00041D 75 82 00         [24] 1371 	mov	dpl,#0x00
      000420 12 07 9E         [24] 1372 	lcall	_ds_writebyte
                                   1373 ;	src/main.c:574: ntpUpdated = 0;
      000423 E4               [12] 1374 	clr	a
      000424 F5 46            [12] 1375 	mov	_ntpUpdated,a
      000426 F5 47            [12] 1376 	mov	(_ntpUpdated + 1),a
                                   1377 ;	src/main.c:575: SendData('+');
      000428 75 82 2B         [24] 1378 	mov	dpl,#0x2B
      00042B 12 06 29         [24] 1379 	lcall	_SendData
                                   1380 ;	src/main.c:577: dotdisplay(1, blinker_fast);
      00042E 30 08 02         [24] 1381 	jnb	_blinker_fast,00121$
      000431 D2 01            [12] 1382 	setb	_dot1
      000433                       1383 00121$:
                                   1384 ;	src/main.c:580: if ( (buffer_t[0]=='W') && (buffer_t[3]=='T') && (buffer_t[6]=='U')) {
      000433 78 68            [12] 1385 	mov	r0,#_buffer_t
      000435 86 07            [24] 1386 	mov	ar7,@r0
      000437 BF 57 42         [24] 1387 	cjne	r7,#0x57,00125$
      00043A 78 6B            [12] 1388 	mov	r0,#(_buffer_t + 0x0003)
      00043C 86 07            [24] 1389 	mov	ar7,@r0
      00043E BF 54 3B         [24] 1390 	cjne	r7,#0x54,00125$
      000441 78 6E            [12] 1391 	mov	r0,#(_buffer_t + 0x0006)
      000443 86 07            [24] 1392 	mov	ar7,@r0
      000445 BF 55 34         [24] 1393 	cjne	r7,#0x55,00125$
                                   1394 ;	src/main.c:581: nW = charToint(buffer_t[1], buffer_t[2]);
      000448 78 69            [12] 1395 	mov	r0,#(_buffer_t + 0x0001)
      00044A 86 82            [24] 1396 	mov	dpl,@r0
      00044C 78 6A            [12] 1397 	mov	r0,#(_buffer_t + 0x0002)
      00044E 86 65            [24] 1398 	mov	_charToint_PARM_2,@r0
      000450 12 05 FA         [24] 1399 	lcall	_charToint
      000453 85 82 3C         [24] 1400 	mov	_nW,dpl
                                   1401 ;	src/main.c:582: nT = charToint(buffer_t[4], buffer_t[5]);
      000456 78 6C            [12] 1402 	mov	r0,#(_buffer_t + 0x0004)
      000458 86 82            [24] 1403 	mov	dpl,@r0
      00045A 78 6D            [12] 1404 	mov	r0,#(_buffer_t + 0x0005)
      00045C 86 65            [24] 1405 	mov	_charToint_PARM_2,@r0
      00045E 12 05 FA         [24] 1406 	lcall	_charToint
      000461 85 82 3D         [24] 1407 	mov	_nT,dpl
                                   1408 ;	src/main.c:585: ww = intToBCD (nW);
      000464 85 3C 82         [24] 1409 	mov	dpl,_nW
      000467 12 05 A6         [24] 1410 	lcall	_intToBCD
      00046A 85 82 59         [24] 1411 	mov	_ww,dpl
                                   1412 ;	src/main.c:586: tt = intToBCD (nT);
      00046D 85 3D 82         [24] 1413 	mov	dpl,_nT
      000470 12 05 A6         [24] 1414 	lcall	_intToBCD
      000473 85 82 5A         [24] 1415 	mov	_tt,dpl
                                   1416 ;	src/main.c:587: SendData('o');
      000476 75 82 6F         [24] 1417 	mov	dpl,#0x6F
      000479 12 06 29         [24] 1418 	lcall	_SendData
      00047C                       1419 00125$:
                                   1420 ;	src/main.c:591: rReady = 0;
      00047C C2 05            [12] 1421 	clr	_rReady
      00047E                       1422 00129$:
                                   1423 ;	src/main.c:607: if (ntpUpdated>ntpTimout) {
      00047E C3               [12] 1424 	clr	c
      00047F 74 1E            [12] 1425 	mov	a,#0x1E
      000481 95 46            [12] 1426 	subb	a,_ntpUpdated
      000483 74 80            [12] 1427 	mov	a,#(0x00 ^ 0x80)
      000485 85 47 F0         [24] 1428 	mov	b,(_ntpUpdated + 1)
      000488 63 F0 80         [24] 1429 	xrl	b,#0x80
      00048B 95 F0            [12] 1430 	subb	a,b
      00048D 50 0B            [24] 1431 	jnc	00133$
                                   1432 ;	src/main.c:608: blinker_ntp = blinker_fast;
      00048F A2 08            [12] 1433 	mov	c,_blinker_fast
      000491 92 0A            [24] 1434 	mov	_blinker_ntp,c
                                   1435 ;	src/main.c:609: dotdisplay(0, blinker_ntp);
      000493 30 0A 08         [24] 1436 	jnb	_blinker_ntp,00134$
      000496 D2 00            [12] 1437 	setb	_dot0
      000498 80 04            [24] 1438 	sjmp	00134$
      00049A                       1439 00133$:
                                   1440 ;	src/main.c:611: blinker_ntp = blinker_slow;
      00049A A2 07            [12] 1441 	mov	c,_blinker_slow
      00049C 92 0A            [24] 1442 	mov	_blinker_ntp,c
      00049E                       1443 00134$:
                                   1444 ;	src/main.c:617: switch (kmode) {
      00049E AF 4D            [24] 1445 	mov	r7,_kmode
      0004A0 BF 00 02         [24] 1446 	cjne	r7,#0x00,00344$
      0004A3 80 07            [24] 1447 	sjmp	00135$
      0004A5                       1448 00344$:
      0004A5 74 05            [12] 1449 	mov	a,#0x05
                                   1450 ;	src/main.c:619: case K_NORMAL:
      0004A7 B5 4D 30         [24] 1451 	cjne	a,_kmode,00144$
      0004AA 80 0D            [24] 1452 	sjmp	00138$
      0004AC                       1453 00135$:
                                   1454 ;	src/main.c:621: if (ev == EV_S1_SHORT) {
      0004AC 74 01            [12] 1455 	mov	a,#0x01
      0004AE B5 63 29         [24] 1456 	cjne	a,_ev,00144$
                                   1457 ;	src/main.c:622: kmode = K_TEMP_DISP;
      0004B1 75 4D 05         [24] 1458 	mov	_kmode,#0x05
                                   1459 ;	src/main.c:623: dmode = M_TEMP_DISP;
      0004B4 75 4C 03         [24] 1460 	mov	_dmode,#0x03
                                   1461 ;	src/main.c:625: break;
                                   1462 ;	src/main.c:627: case K_TEMP_DISP:
      0004B7 80 21            [24] 1463 	sjmp	00144$
      0004B9                       1464 00138$:
                                   1465 ;	src/main.c:628: if (count_timeout == 0) {
      0004B9 E5 4A            [12] 1466 	mov	a,_count_timeout
      0004BB 45 4B            [12] 1467 	orl	a,(_count_timeout + 1)
      0004BD 70 06            [24] 1468 	jnz	00140$
                                   1469 ;	src/main.c:629: count_timeout = TIMEOUT_LONG;
      0004BF 75 4A FF         [24] 1470 	mov	_count_timeout,#0xFF
      0004C2 75 4B FF         [24] 1471 	mov	(_count_timeout + 1),#0xFF
      0004C5                       1472 00140$:
                                   1473 ;	src/main.c:631: if (ev == EV_S1_SHORT  || ev == EV_TIMEOUT ) {
      0004C5 74 01            [12] 1474 	mov	a,#0x01
      0004C7 B5 63 02         [24] 1475 	cjne	a,_ev,00349$
      0004CA 80 05            [24] 1476 	sjmp	00141$
      0004CC                       1477 00349$:
      0004CC 74 06            [12] 1478 	mov	a,#0x06
      0004CE B5 63 09         [24] 1479 	cjne	a,_ev,00144$
      0004D1                       1480 00141$:
                                   1481 ;	src/main.c:632: count_timeout = 0;
      0004D1 E4               [12] 1482 	clr	a
      0004D2 F5 4A            [12] 1483 	mov	_count_timeout,a
      0004D4 F5 4B            [12] 1484 	mov	(_count_timeout + 1),a
                                   1485 ;	src/main.c:633: kmode = K_NORMAL;
                                   1486 ;	1-genFromRTrack replaced	mov	_kmode,#0x00
      0004D6 F5 4D            [12] 1487 	mov	_kmode,a
                                   1488 ;	src/main.c:634: dmode = M_NORMAL;
                                   1489 ;	1-genFromRTrack replaced	mov	_dmode,#0x00
      0004D8 F5 4C            [12] 1490 	mov	_dmode,a
                                   1491 ;	src/main.c:638: }
      0004DA                       1492 00144$:
                                   1493 ;	src/main.c:640: if ( (kmode == K_TEMP_DISP) || (ss>=85) && (ss<=89) ) {
      0004DA 74 05            [12] 1494 	mov	a,#0x05
      0004DC B5 4D 02         [24] 1495 	cjne	a,_kmode,00352$
      0004DF 80 0C            [24] 1496 	sjmp	00145$
      0004E1                       1497 00352$:
      0004E1 74 AB            [12] 1498 	mov	a,#0x100 - 0x55
      0004E3 25 58            [12] 1499 	add	a,_ss
      0004E5 50 0B            [24] 1500 	jnc	00146$
      0004E7 E5 58            [12] 1501 	mov	a,_ss
      0004E9 24 A6            [12] 1502 	add	a,#0xff - 0x59
      0004EB 40 05            [24] 1503 	jc	00146$
      0004ED                       1504 00145$:
                                   1505 ;	src/main.c:641: dmode = M_TEMP_DISP;
      0004ED 75 4C 03         [24] 1506 	mov	_dmode,#0x03
      0004F0 80 03            [24] 1507 	sjmp	00147$
      0004F2                       1508 00146$:
                                   1509 ;	src/main.c:643: dmode = M_NORMAL;
      0004F2 75 4C 00         [24] 1510 	mov	_dmode,#0x00
      0004F5                       1511 00147$:
                                   1512 ;	src/main.c:648: switch (dmode) {
      0004F5 AF 4C            [24] 1513 	mov	r7,_dmode
      0004F7 BF 00 02         [24] 1514 	cjne	r7,#0x00,00355$
      0004FA 80 07            [24] 1515 	sjmp	00150$
      0004FC                       1516 00355$:
      0004FC 74 03            [12] 1517 	mov	a,#0x03
                                   1518 ;	src/main.c:649: case M_NORMAL:
      0004FE B5 4C 54         [24] 1519 	cjne	a,_dmode,00177$
      000501 80 34            [24] 1520 	sjmp	00166$
      000503                       1521 00150$:
                                   1522 ;	src/main.c:651: h0 = hh >> 4;
      000503 E5 56            [12] 1523 	mov	a,_hh
      000505 C4               [12] 1524 	swap	a
      000506 54 0F            [12] 1525 	anl	a,#0x0F
      000508 F5 5B            [12] 1526 	mov	_h0,a
                                   1527 ;	src/main.c:653: if (H12_12 && h0 == 0) {
      00050A 30 37 07         [24] 1528 	jnb	_H12_12,00152$
      00050D E5 5B            [12] 1529 	mov	a,_h0
      00050F 70 03            [24] 1530 	jnz	00152$
                                   1531 ;	src/main.c:654: h0 = LED_BLANK;
      000511 75 5B 10         [24] 1532 	mov	_h0,#0x10
      000514                       1533 00152$:
                                   1534 ;	src/main.c:657: filldisplay(0, h0, 0);
      000514 85 5B 30         [24] 1535 	mov	_tmpbuf,_h0
                                   1536 ;	src/main.c:658: filldisplay(1, hh & 0x0F, 0);
      000517 74 0F            [12] 1537 	mov	a,#0x0F
      000519 55 56            [12] 1538 	anl	a,_hh
      00051B F5 31            [12] 1539 	mov	(_tmpbuf + 0x0001),a
                                   1540 ;	src/main.c:660: filldisplay(2, mm >> 4, 0);
      00051D E5 57            [12] 1541 	mov	a,_mm
      00051F C4               [12] 1542 	swap	a
      000520 54 0F            [12] 1543 	anl	a,#0x0F
      000522 FF               [12] 1544 	mov	r7,a
      000523 8F 32            [24] 1545 	mov	(_tmpbuf + 0x0002),r7
                                   1546 ;	src/main.c:661: filldisplay(3, mm & 0x0F, 0);
      000525 74 0F            [12] 1547 	mov	a,#0x0F
      000527 55 57            [12] 1548 	anl	a,_mm
      000529 F5 33            [12] 1549 	mov	(_tmpbuf + 0x0003),a
                                   1550 ;	src/main.c:664: dotdisplay(1, blinker_slow);
      00052B 30 07 02         [24] 1551 	jnb	_blinker_slow,00163$
      00052E D2 01            [12] 1552 	setb	_dot1
      000530                       1553 00163$:
                                   1554 ;	src/main.c:665: dotdisplay(2, blinker_slow);
      000530 30 07 22         [24] 1555 	jnb	_blinker_slow,00177$
      000533 D2 02            [12] 1556 	setb	_dot2
                                   1557 ;	src/main.c:668: break;
                                   1558 ;	src/main.c:669: case M_TEMP_DISP:
      000535 80 1E            [24] 1559 	sjmp	00177$
      000537                       1560 00166$:
                                   1561 ;	src/main.c:670: filldisplay(0, ww >> 4, 0);
      000537 E5 59            [12] 1562 	mov	a,_ww
      000539 C4               [12] 1563 	swap	a
      00053A 54 0F            [12] 1564 	anl	a,#0x0F
      00053C FF               [12] 1565 	mov	r7,a
      00053D 8F 30            [24] 1566 	mov	_tmpbuf,r7
                                   1567 ;	src/main.c:671: filldisplay(1, ww & 0x0F, 0);
      00053F 74 0F            [12] 1568 	mov	a,#0x0F
      000541 55 59            [12] 1569 	anl	a,_ww
      000543 F5 31            [12] 1570 	mov	(_tmpbuf + 0x0001),a
                                   1571 ;	src/main.c:673: filldisplay(2, tt >> 4, 0);
      000545 E5 5A            [12] 1572 	mov	a,_tt
      000547 C4               [12] 1573 	swap	a
      000548 54 0F            [12] 1574 	anl	a,#0x0F
      00054A FF               [12] 1575 	mov	r7,a
      00054B 8F 32            [24] 1576 	mov	(_tmpbuf + 0x0002),r7
                                   1577 ;	src/main.c:674: filldisplay(3, tt & 0x0F, 0);
      00054D 74 0F            [12] 1578 	mov	a,#0x0F
      00054F 55 5A            [12] 1579 	anl	a,_tt
      000551 F5 33            [12] 1580 	mov	(_tmpbuf + 0x0003),a
                                   1581 ;	src/main.c:677: dotdisplay(2, 1);
      000553 D2 02            [12] 1582 	setb	_dot2
                                   1583 ;	src/main.c:684: }
      000555                       1584 00177$:
                                   1585 ;	src/main.c:707: }
      000555 D2 14            [12] 1586 	setb	_main_sloc0_1_0
      000557 10 AF 02         [24] 1587 	jbc	ea,00361$
      00055A C2 14            [12] 1588 	clr	_main_sloc0_1_0
      00055C                       1589 00361$:
                                   1590 ;	src/main.c:706: updateTmpDisplay();
      00055C E5 30            [12] 1591 	mov	a,_tmpbuf
      00055E 90 0A 18         [24] 1592 	mov	dptr,#_ledtable
      000561 93               [24] 1593 	movc	a,@a+dptr
      000562 FF               [12] 1594 	mov	r7,a
      000563 30 00 03         [24] 1595 	jnb	_dot0,00179$
      000566 53 07 7F         [24] 1596 	anl	ar7,#0x7F
      000569                       1597 00179$:
      000569 8F 34            [24] 1598 	mov	_dbuf,r7
      00056B E5 31            [12] 1599 	mov	a,(_tmpbuf + 0x0001)
      00056D 90 0A 18         [24] 1600 	mov	dptr,#_ledtable
      000570 93               [24] 1601 	movc	a,@a+dptr
      000571 FF               [12] 1602 	mov	r7,a
      000572 30 01 03         [24] 1603 	jnb	_dot1,00181$
      000575 53 07 7F         [24] 1604 	anl	ar7,#0x7F
      000578                       1605 00181$:
      000578 8F 35            [24] 1606 	mov	(_dbuf + 0x0001),r7
      00057A E5 33            [12] 1607 	mov	a,(_tmpbuf + 0x0003)
      00057C 90 0A 18         [24] 1608 	mov	dptr,#_ledtable
      00057F 93               [24] 1609 	movc	a,@a+dptr
      000580 FF               [12] 1610 	mov	r7,a
      000581 30 03 03         [24] 1611 	jnb	_dot3,00183$
      000584 53 07 7F         [24] 1612 	anl	ar7,#0x7F
      000587                       1613 00183$:
      000587 8F 37            [24] 1614 	mov	(_dbuf + 0x0003),r7
      000589 E5 32            [12] 1615 	mov	a,(_tmpbuf + 0x0002)
      00058B 90 0A 2C         [24] 1616 	mov	dptr,#_ledtable2
      00058E 93               [24] 1617 	movc	a,@a+dptr
      00058F FF               [12] 1618 	mov	r7,a
      000590 30 02 03         [24] 1619 	jnb	_dot2,00185$
      000593 53 07 7F         [24] 1620 	anl	ar7,#0x7F
      000596                       1621 00185$:
      000596 8F 36            [24] 1622 	mov	(_dbuf + 0x0002),r7
      000598 A2 14            [12] 1623 	mov	c,_main_sloc0_1_0
      00059A 92 AF            [24] 1624 	mov	ea,c
                                   1625 ;	src/main.c:709: WDT_CLEAR();
      00059C 43 C1 10         [24] 1626 	orl	_WDT_CONTR,#0x10
                                   1627 ;	src/main.c:711: loop_gate = 0; // close gate
      00059F C2 0B            [12] 1628 	clr	_loop_gate
                                   1629 ;	src/main.c:712: count++;
      0005A1 05 3E            [12] 1630 	inc	_count
      0005A3 02 02 C3         [24] 1631 	ljmp	00189$
                                   1632 ;------------------------------------------------------------
                                   1633 ;Allocation info for local variables in function 'intToBCD'
                                   1634 ;------------------------------------------------------------
                                   1635 ;nn                        Allocated to registers 
                                   1636 ;binaryInput               Allocated to registers r7 
                                   1637 ;bcdResult                 Allocated to registers r6 
                                   1638 ;shift                     Allocated to registers r5 
                                   1639 ;------------------------------------------------------------
                                   1640 ;	src/main.c:736: uint8_t intToBCD(uint8_t nn) {
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function intToBCD
                                   1643 ;	-----------------------------------------
      0005A6                       1644 _intToBCD:
      0005A6 AF 82            [24] 1645 	mov	r7,dpl
                                   1646 ;	src/main.c:738: uint8_t bcdResult = 0;
      0005A8 7E 00            [12] 1647 	mov	r6,#0x00
                                   1648 ;	src/main.c:741: while (binaryInput > 0) {
      0005AA 7D 00            [12] 1649 	mov	r5,#0x00
      0005AC                       1650 00101$:
      0005AC EF               [12] 1651 	mov	a,r7
      0005AD 60 26            [24] 1652 	jz	00103$
                                   1653 ;	src/main.c:742: bcdResult |= (binaryInput % 10) << (shift++ << 2);
      0005AF 75 F0 0A         [24] 1654 	mov	b,#0x0A
      0005B2 EF               [12] 1655 	mov	a,r7
      0005B3 84               [48] 1656 	div	ab
      0005B4 AC F0            [24] 1657 	mov	r4,b
      0005B6 8D 03            [24] 1658 	mov	ar3,r5
      0005B8 0D               [12] 1659 	inc	r5
      0005B9 EB               [12] 1660 	mov	a,r3
      0005BA 2B               [12] 1661 	add	a,r3
      0005BB 25 E0            [12] 1662 	add	a,acc
      0005BD FB               [12] 1663 	mov	r3,a
      0005BE 8B F0            [24] 1664 	mov	b,r3
      0005C0 05 F0            [12] 1665 	inc	b
      0005C2 EC               [12] 1666 	mov	a,r4
      0005C3 80 02            [24] 1667 	sjmp	00116$
      0005C5                       1668 00114$:
      0005C5 25 E0            [12] 1669 	add	a,acc
      0005C7                       1670 00116$:
      0005C7 D5 F0 FB         [24] 1671 	djnz	b,00114$
      0005CA FC               [12] 1672 	mov	r4,a
      0005CB 42 06            [12] 1673 	orl	ar6,a
                                   1674 ;	src/main.c:743: binaryInput /= 10;
      0005CD 75 F0 0A         [24] 1675 	mov	b,#0x0A
      0005D0 EF               [12] 1676 	mov	a,r7
      0005D1 84               [48] 1677 	div	ab
      0005D2 FF               [12] 1678 	mov	r7,a
      0005D3 80 D7            [24] 1679 	sjmp	00101$
      0005D5                       1680 00103$:
                                   1681 ;	src/main.c:746: return bcdResult;
      0005D5 8E 82            [24] 1682 	mov	dpl,r6
      0005D7 22               [24] 1683 	ret
                                   1684 ;------------------------------------------------------------
                                   1685 ;Allocation info for local variables in function 'intToChar'
                                   1686 ;------------------------------------------------------------
                                   1687 ;n                         Allocated to registers r7 
                                   1688 ;------------------------------------------------------------
                                   1689 ;	src/main.c:750: char intToChar (uint8_t n){
                                   1690 ;	-----------------------------------------
                                   1691 ;	 function intToChar
                                   1692 ;	-----------------------------------------
      0005D8                       1693 _intToChar:
      0005D8 AF 82            [24] 1694 	mov	r7,dpl
                                   1695 ;	src/main.c:751: if (n<10) {
      0005DA BF 0A 00         [24] 1696 	cjne	r7,#0x0A,00117$
      0005DD                       1697 00117$:
      0005DD E4               [12] 1698 	clr	a
      0005DE 33               [12] 1699 	rlc	a
      0005DF FE               [12] 1700 	mov	r6,a
      0005E0 60 06            [24] 1701 	jz	00102$
                                   1702 ;	src/main.c:752: return n+48;	
      0005E2 74 30            [12] 1703 	mov	a,#0x30
      0005E4 2F               [12] 1704 	add	a,r7
      0005E5 F5 82            [12] 1705 	mov	dpl,a
      0005E7 22               [24] 1706 	ret
      0005E8                       1707 00102$:
                                   1708 ;	src/main.c:754: if ( (n>=10) && (n<=15) ) {
      0005E8 EE               [12] 1709 	mov	a,r6
      0005E9 70 0B            [24] 1710 	jnz	00104$
      0005EB EF               [12] 1711 	mov	a,r7
      0005EC 24 F0            [12] 1712 	add	a,#0xff - 0x0F
      0005EE 40 06            [24] 1713 	jc	00104$
                                   1714 ;	src/main.c:755: return (n-10)+65;	
      0005F0 74 37            [12] 1715 	mov	a,#0x37
      0005F2 2F               [12] 1716 	add	a,r7
      0005F3 F5 82            [12] 1717 	mov	dpl,a
      0005F5 22               [24] 1718 	ret
      0005F6                       1719 00104$:
                                   1720 ;	src/main.c:757: return '!';
      0005F6 75 82 21         [24] 1721 	mov	dpl,#0x21
      0005F9 22               [24] 1722 	ret
                                   1723 ;------------------------------------------------------------
                                   1724 ;Allocation info for local variables in function 'charToint'
                                   1725 ;------------------------------------------------------------
                                   1726 ;l                         Allocated with name '_charToint_PARM_2'
                                   1727 ;h                         Allocated to registers r7 
                                   1728 ;------------------------------------------------------------
                                   1729 ;	src/main.c:761: uint8_t charToint (char h, char l){
                                   1730 ;	-----------------------------------------
                                   1731 ;	 function charToint
                                   1732 ;	-----------------------------------------
      0005FA                       1733 _charToint:
                                   1734 ;	src/main.c:762: return ( (h-0x30)*10 ) + (l-0x30);	
      0005FA E5 82            [12] 1735 	mov	a,dpl
      0005FC 24 D0            [12] 1736 	add	a,#0xD0
      0005FE 75 F0 0A         [24] 1737 	mov	b,#0x0A
      000601 A4               [48] 1738 	mul	ab
      000602 FF               [12] 1739 	mov	r7,a
      000603 E5 65            [12] 1740 	mov	a,_charToint_PARM_2
      000605 24 D0            [12] 1741 	add	a,#0xD0
      000607 2F               [12] 1742 	add	a,r7
      000608 F5 82            [12] 1743 	mov	dpl,a
      00060A 22               [24] 1744 	ret
                                   1745 ;------------------------------------------------------------
                                   1746 ;Allocation info for local variables in function 'UART1_Routine'
                                   1747 ;------------------------------------------------------------
                                   1748 ;	src/main.c:769: void UART1_Routine(void) __interrupt 4 __using 1
                                   1749 ;	-----------------------------------------
                                   1750 ;	 function UART1_Routine
                                   1751 ;	-----------------------------------------
      00060B                       1752 _UART1_Routine:
                           00000F  1753 	ar7 = 0x0F
                           00000E  1754 	ar6 = 0x0E
                           00000D  1755 	ar5 = 0x0D
                           00000C  1756 	ar4 = 0x0C
                           00000B  1757 	ar3 = 0x0B
                           00000A  1758 	ar2 = 0x0A
                           000009  1759 	ar1 = 0x09
                           000008  1760 	ar0 = 0x08
                                   1761 ;	src/main.c:792: if (TI){
                                   1762 ;	src/main.c:793: TI = 0;    //Clear transmit interrupt flag
      00060B 10 99 02         [24] 1763 	jbc	_TI,00108$
      00060E 80 02            [24] 1764 	sjmp	00103$
      000610                       1765 00108$:
                                   1766 ;	src/main.c:794: busy = 0; //Clear transmit busy flag	
      000610 C2 04            [12] 1767 	clr	_busy
      000612                       1768 00103$:
      000612 32               [24] 1769 	reti
                                   1770 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1771 ;	eliminated unneeded push/pop psw
                                   1772 ;	eliminated unneeded push/pop dpl
                                   1773 ;	eliminated unneeded push/pop dph
                                   1774 ;	eliminated unneeded push/pop b
                                   1775 ;	eliminated unneeded push/pop acc
                                   1776 ;------------------------------------------------------------
                                   1777 ;Allocation info for local variables in function 'clear_rec_data'
                                   1778 ;------------------------------------------------------------
                                   1779 ;	src/main.c:813: void clear_rec_data()
                                   1780 ;	-----------------------------------------
                                   1781 ;	 function clear_rec_data
                                   1782 ;	-----------------------------------------
      000613                       1783 _clear_rec_data:
                           000007  1784 	ar7 = 0x07
                           000006  1785 	ar6 = 0x06
                           000005  1786 	ar5 = 0x05
                           000004  1787 	ar4 = 0x04
                           000003  1788 	ar3 = 0x03
                           000002  1789 	ar2 = 0x02
                           000001  1790 	ar1 = 0x01
                           000000  1791 	ar0 = 0x00
                                   1792 ;	src/main.c:815: memset(rec_data, 0, sizeof(rec_data));
      000613 75 65 00         [24] 1793 	mov	_memset_PARM_2,#0x00
      000616 75 66 0C         [24] 1794 	mov	_memset_PARM_3,#0x0C
      000619 75 67 00         [24] 1795 	mov	(_memset_PARM_3 + 1),#0x00
      00061C 90 00 74         [24] 1796 	mov	dptr,#_rec_data
      00061F 75 F0 40         [24] 1797 	mov	b,#0x40
      000622 12 09 BE         [24] 1798 	lcall	_memset
                                   1799 ;	src/main.c:816: rec_num = 0;
      000625 75 38 00         [24] 1800 	mov	_rec_num,#0x00
      000628 22               [24] 1801 	ret
                                   1802 ;------------------------------------------------------------
                                   1803 ;Allocation info for local variables in function 'SendData'
                                   1804 ;------------------------------------------------------------
                                   1805 ;dat                       Allocated to registers r7 
                                   1806 ;------------------------------------------------------------
                                   1807 ;	src/main.c:824: void SendData(unsigned char dat)
                                   1808 ;	-----------------------------------------
                                   1809 ;	 function SendData
                                   1810 ;	-----------------------------------------
      000629                       1811 _SendData:
      000629 AF 82            [24] 1812 	mov	r7,dpl
                                   1813 ;	src/main.c:826: while (busy);    //Wait for the completion of the previous data is sent
      00062B                       1814 00101$:
      00062B 20 04 FD         [24] 1815 	jb	_busy,00101$
                                   1816 ;	src/main.c:827: ACC = dat;    //Calculate the even parity bit P (PSW.0)
      00062E 8F E0            [24] 1817 	mov	_ACC,r7
                                   1818 ;	src/main.c:829: busy = 1;
      000630 D2 04            [12] 1819 	setb	_busy
                                   1820 ;	src/main.c:830: SBUF = ACC;    //Send data to UART buffer
      000632 85 E0 99         [24] 1821 	mov	_SBUF,_ACC
      000635 22               [24] 1822 	ret
                                   1823 ;------------------------------------------------------------
                                   1824 ;Allocation info for local variables in function 'SendString'
                                   1825 ;------------------------------------------------------------
                                   1826 ;s                         Allocated to registers 
                                   1827 ;------------------------------------------------------------
                                   1828 ;	src/main.c:838: void SendString(char *s)
                                   1829 ;	-----------------------------------------
                                   1830 ;	 function SendString
                                   1831 ;	-----------------------------------------
      000636                       1832 _SendString:
      000636 AD 82            [24] 1833 	mov	r5,dpl
      000638 AE 83            [24] 1834 	mov	r6,dph
      00063A AF F0            [24] 1835 	mov	r7,b
                                   1836 ;	src/main.c:840: while (*s)    //Check the end of the string
      00063C                       1837 00101$:
      00063C 8D 82            [24] 1838 	mov	dpl,r5
      00063E 8E 83            [24] 1839 	mov	dph,r6
      000640 8F F0            [24] 1840 	mov	b,r7
      000642 12 09 F8         [24] 1841 	lcall	__gptrget
      000645 FC               [12] 1842 	mov	r4,a
      000646 60 18            [24] 1843 	jz	00104$
                                   1844 ;	src/main.c:842: SendData(*s++);    //Send current char and increment string ptr
      000648 8C 82            [24] 1845 	mov	dpl,r4
      00064A 0D               [12] 1846 	inc	r5
      00064B BD 00 01         [24] 1847 	cjne	r5,#0x00,00114$
      00064E 0E               [12] 1848 	inc	r6
      00064F                       1849 00114$:
      00064F C0 07            [24] 1850 	push	ar7
      000651 C0 06            [24] 1851 	push	ar6
      000653 C0 05            [24] 1852 	push	ar5
      000655 12 06 29         [24] 1853 	lcall	_SendData
      000658 D0 05            [24] 1854 	pop	ar5
      00065A D0 06            [24] 1855 	pop	ar6
      00065C D0 07            [24] 1856 	pop	ar7
      00065E 80 DC            [24] 1857 	sjmp	00101$
      000660                       1858 00104$:
      000660 22               [24] 1859 	ret
                                   1860 ;------------------------------------------------------------
                                   1861 ;Allocation info for local variables in function 'serial_init'
                                   1862 ;------------------------------------------------------------
                                   1863 ;	src/main.c:850: void serial_init (){
                                   1864 ;	-----------------------------------------
                                   1865 ;	 function serial_init
                                   1866 ;	-----------------------------------------
      000661                       1867 _serial_init:
                                   1868 ;	src/main.c:855: ACC = P_SW1;
      000661 85 A2 E0         [24] 1869 	mov	_ACC,_P_SW1
                                   1870 ;	src/main.c:856: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=1 S1_S1=0
      000664 AF E0            [24] 1871 	mov	r7,_ACC
      000666 74 3F            [12] 1872 	mov	a,#0x3F
      000668 5F               [12] 1873 	anl	a,r7
      000669 F5 E0            [12] 1874 	mov	_ACC,a
                                   1875 ;	src/main.c:857: ACC |= S1_S0;               //(P3.6/RxD_2, P3.7/TxD_2)
      00066B 43 E0 40         [24] 1876 	orl	_ACC,#0x40
                                   1877 ;	src/main.c:858: P_SW1 = ACC;
      00066E 85 E0 A2         [24] 1878 	mov	_P_SW1,_ACC
                                   1879 ;	src/main.c:867: SCON = 0x50;                
      000671 75 98 50         [24] 1880 	mov	_SCON,#0x50
                                   1881 ;	src/main.c:874: T2L = ( (uint8_t)(65536-(FOSC/BAUD/4)) & 0xFF);  
      000674 75 D7 D0         [24] 1882 	mov	_T2L,#0xD0
                                   1883 ;	src/main.c:875: T2H = (65536 - (FOSC/4/BAUD))>>8;
      000677 75 D6 FF         [24] 1884 	mov	_T2H,#0xFF
                                   1885 ;	src/main.c:876: AUXR = 0x14;                
      00067A 75 8E 14         [24] 1886 	mov	_AUXR,#0x14
                                   1887 ;	src/main.c:877: AUXR |= 0x01;               
      00067D 43 8E 01         [24] 1888 	orl	_AUXR,#0x01
                                   1889 ;	src/main.c:881: EA = 1;
      000680 D2 AF            [12] 1890 	setb	_EA
                                   1891 ;	src/main.c:882: ES = 1;
      000682 D2 AC            [12] 1892 	setb	_ES
                                   1893 ;	src/main.c:884: RI = 0;
      000684 C2 98            [12] 1894 	clr	_RI
                                   1895 ;	src/main.c:885: TI = 0;
      000686 C2 99            [12] 1896 	clr	_TI
      000688 22               [24] 1897 	ret
                                   1898 	.area CSEG    (CODE)
                                   1899 	.area CONST   (CODE)
      000A18                       1900 _ledtable:
      000A18 C0                    1901 	.db #0xC0	; 192
      000A19 F9                    1902 	.db #0xF9	; 249
      000A1A A4                    1903 	.db #0xA4	; 164
      000A1B B0                    1904 	.db #0xB0	; 176
      000A1C 99                    1905 	.db #0x99	; 153
      000A1D 92                    1906 	.db #0x92	; 146
      000A1E 82                    1907 	.db #0x82	; 130
      000A1F F8                    1908 	.db #0xF8	; 248
      000A20 80                    1909 	.db #0x80	; 128
      000A21 90                    1910 	.db #0x90	; 144
      000A22 88                    1911 	.db #0x88	; 136
      000A23 83                    1912 	.db #0x83	; 131
      000A24 C6                    1913 	.db #0xC6	; 198
      000A25 A1                    1914 	.db #0xA1	; 161
      000A26 86                    1915 	.db #0x86	; 134
      000A27 8E                    1916 	.db #0x8E	; 142
      000A28 FF                    1917 	.db #0xFF	; 255
      000A29 BF                    1918 	.db #0xBF	; 191
      000A2A 8B                    1919 	.db #0x8B	; 139
      000A2B 7F                    1920 	.db #0x7F	; 127
      000A2C                       1921 _ledtable2:
      000A2C C0                    1922 	.db #0xC0	; 192
      000A2D CF                    1923 	.db #0xCF	; 207
      000A2E A4                    1924 	.db #0xA4	; 164
      000A2F 86                    1925 	.db #0x86	; 134
      000A30 8B                    1926 	.db #0x8B	; 139
      000A31 92                    1927 	.db #0x92	; 146
      000A32 90                    1928 	.db #0x90	; 144
      000A33 C7                    1929 	.db #0xC7	; 199
      000A34 80                    1930 	.db #0x80	; 128
      000A35 82                    1931 	.db #0x82	; 130
      000A36 81                    1932 	.db #0x81	; 129
      000A37 98                    1933 	.db #0x98	; 152
      000A38 F0                    1934 	.db #0xF0	; 240
      000A39 8C                    1935 	.db #0x8C	; 140
      000A3A B0                    1936 	.db #0xB0	; 176
      000A3B B1                    1937 	.db #0xB1	; 177
      000A3C FF                    1938 	.db #0xFF	; 255
      000A3D BF                    1939 	.db #0xBF	; 191
      000A3E 99                    1940 	.db #0x99	; 153
      000A3F 7F                    1941 	.db #0x7F	; 127
      000A40                       1942 ___str_0:
      000A40 72 65 73 65 74        1943 	.ascii "reset"
      000A45 0A                    1944 	.db 0x0A
      000A46 00                    1945 	.db 0x00
                                   1946 	.area XINIT   (CODE)
                                   1947 	.area CABS    (ABS,CODE)
