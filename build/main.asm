;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Mon Jan 28 11:57:39 2019
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _charToint_PARM_2
	.globl _ledtable2
	.globl _ledtable
	.globl _UART1_Routine
	.globl _main
	.globl _Timer0Init
	.globl _timer0_isr
	.globl _memset
	.globl _ds_int2bcd
	.globl _ds_init
	.globl _ds_writebyte
	.globl _ds_readburst
	.globl _ds_ram_config_init
	.globl _getADCResult8
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CR
	.globl _CF
	.globl _PADC
	.globl _PLVD
	.globl _PPCA
	.globl _EADC
	.globl _ELVD
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PWMFDCR
	.globl _PWMIF
	.globl _PWMCR
	.globl _PWMCFG
	.globl _CMPCR2
	.globl _CMPCR1
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _PCA_PWM2
	.globl _PCA_PWM1
	.globl _PCA_PWM0
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CH
	.globl _CL
	.globl _CMOD
	.globl _CCON
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _SPDAT
	.globl _SPCTL
	.globl _SPSTAT
	.globl _ADC_RESL
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _SADEN
	.globl _SADDR
	.globl _S4BUF
	.globl _S4CON
	.globl _S3BUF
	.globl _S3CON
	.globl _S2BUF
	.globl _S2CON
	.globl _WDT_CONTR
	.globl _WKTCH
	.globl _WKTCL
	.globl _T2L
	.globl _T2H
	.globl _T3L
	.globl _T3H
	.globl _T4L
	.globl _T4H
	.globl _T3T4M
	.globl _T4T3M
	.globl _INT_CLKO
	.globl _IP2
	.globl _IE2
	.globl _P_SW2
	.globl _P1ASF
	.globl _BUS_SPEED
	.globl _CLK_DIV
	.globl _P_SW1
	.globl _AUXR1
	.globl _AUXR
	.globl _P7M1
	.globl _P7M0
	.globl _P6M1
	.globl _P6M0
	.globl _P5M1
	.globl _P5M0
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _P4
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _S2_PRESSED
	.globl _S2_LONG
	.globl _S1_PRESSED
	.globl _S1_LONG
	.globl _cfg_changed
	.globl _rtc_pm
	.globl _flash_23
	.globl _flash_01
	.globl _loop_gate
	.globl _blinker_ntp
	.globl _blinker1
	.globl _blinker_fast
	.globl _blinker_slow
	.globl _blinker_slowest
	.globl _rReady
	.globl _busy
	.globl _dot3
	.globl _dot2
	.globl _dot1
	.globl _dot0
	.globl _CONF_SW_MMDD
	.globl _CONF_CHIME_ON
	.globl _CONF_ALARM_ON
	.globl _CONF_C_F
	.globl _H12_12
	.globl _H12_PM
	.globl _H12_TH
	.globl _rec_data
	.globl _buffer_t
	.globl _ev
	.globl _i
	.globl _tmp
	.globl _pRec
	.globl _btemp
	.globl _pm
	.globl _h0
	.globl _tt
	.globl _ww
	.globl _ss
	.globl _mm
	.globl _hh
	.globl _event
	.globl _switchcount
	.globl _debounce
	.globl _rtc_ss_bcd
	.globl _rtc_mm_bcd
	.globl _rtc_hh_bcd
	.globl _kmode
	.globl _dmode
	.globl _count_timeout
	.globl _count_20000
	.globl _ntpUpdated
	.globl _count_5000
	.globl _count_1000
	.globl _count_100
	.globl _displaycounter
	.globl _lightval
	.globl _count
	.globl _nT
	.globl _nW
	.globl _nS
	.globl _nM
	.globl _nH
	.globl _rec_num
	.globl _dbuf
	.globl _tmpbuf
	.globl _cfg_table
	.globl _rtc_table
	.globl _intToBCD
	.globl _intToChar
	.globl _charToint
	.globl _clear_rec_data
	.globl _SendData
	.globl _SendString
	.globl _serial_init
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_P4	=	0x00c0
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P2M0	=	0x0096
_P2M1	=	0x0095
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_P5M0	=	0x00ca
_P5M1	=	0x00c9
_P6M0	=	0x00cc
_P6M1	=	0x00cb
_P7M0	=	0x00e2
_P7M1	=	0x00e1
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_P_SW1	=	0x00a2
_CLK_DIV	=	0x0097
_BUS_SPEED	=	0x00a1
_P1ASF	=	0x009d
_P_SW2	=	0x00ba
_IE2	=	0x00af
_IP2	=	0x00b5
_INT_CLKO	=	0x008f
_T4T3M	=	0x00d1
_T3T4M	=	0x00d1
_T4H	=	0x00d2
_T4L	=	0x00d3
_T3H	=	0x00d4
_T3L	=	0x00d5
_T2H	=	0x00d6
_T2L	=	0x00d7
_WKTCL	=	0x00aa
_WKTCH	=	0x00ab
_WDT_CONTR	=	0x00c1
_S2CON	=	0x009a
_S2BUF	=	0x009b
_S3CON	=	0x00ac
_S3BUF	=	0x00ad
_S4CON	=	0x0084
_S4BUF	=	0x0085
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0x00bd
_ADC_RESL	=	0x00be
_SPSTAT	=	0x00cd
_SPCTL	=	0x00ce
_SPDAT	=	0x00cf
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CL	=	0x00e9
_CH	=	0x00f9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_PCA_PWM0	=	0x00f2
_PCA_PWM1	=	0x00f3
_PCA_PWM2	=	0x00f4
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CMPCR1	=	0x00e6
_CMPCR2	=	0x00e7
_PWMCFG	=	0x00f1
_PWMCR	=	0x00f5
_PWMIF	=	0x00f6
_PWMFDCR	=	0x00f7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_ELVD	=	0x00ae
_EADC	=	0x00ad
_PPCA	=	0x00bf
_PLVD	=	0x00be
_PADC	=	0x00bd
_CF	=	0x00df
_CR	=	0x00de
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_rtc_table	=	0x0024
_cfg_table	=	0x002c
_tmpbuf::
	.ds 4
_dbuf::
	.ds 4
_rec_num::
	.ds 1
_nH::
	.ds 1
_nM::
	.ds 1
_nS::
	.ds 1
_nW::
	.ds 1
_nT::
	.ds 1
_count::
	.ds 1
_lightval::
	.ds 1
_displaycounter::
	.ds 1
_count_100::
	.ds 1
_count_1000::
	.ds 2
_count_5000::
	.ds 2
_ntpUpdated::
	.ds 2
_count_20000::
	.ds 2
_count_timeout::
	.ds 2
_dmode::
	.ds 1
_kmode::
	.ds 1
_rtc_hh_bcd::
	.ds 1
_rtc_mm_bcd::
	.ds 1
_rtc_ss_bcd::
	.ds 1
_debounce::
	.ds 2
_switchcount::
	.ds 2
_event::
	.ds 1
_hh::
	.ds 1
_mm::
	.ds 1
_ss::
	.ds 1
_ww::
	.ds 1
_tt::
	.ds 1
_h0::
	.ds 1
_pm::
	.ds 1
_btemp::
	.ds 1
_pRec::
	.ds 3
_tmp::
	.ds 1
_i::
	.ds 1
_ev::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_charToint_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_buffer_t::
	.ds 12
_rec_data::
	.ds 12
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_H12_TH	=	0x0034
_H12_PM	=	0x0035
_H12_12	=	0x0037
_CONF_C_F	=	0x0060
_CONF_ALARM_ON	=	0x0061
_CONF_CHIME_ON	=	0x0062
_CONF_SW_MMDD	=	0x006e
_dot0::
	.ds 1
_dot1::
	.ds 1
_dot2::
	.ds 1
_dot3::
	.ds 1
_busy::
	.ds 1
_rReady::
	.ds 1
_blinker_slowest::
	.ds 1
_blinker_slow::
	.ds 1
_blinker_fast::
	.ds 1
_blinker1::
	.ds 1
_blinker_ntp::
	.ds 1
_loop_gate::
	.ds 1
_flash_01::
	.ds 1
_flash_23::
	.ds 1
_rtc_pm::
	.ds 1
_cfg_changed::
	.ds 1
_S1_LONG::
	.ds 1
_S1_PRESSED::
	.ds 1
_S2_LONG::
	.ds 1
_S2_PRESSED::
	.ds 1
_main_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_isr
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_UART1_Routine
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	src/main.c:38: volatile uint8_t rec_num = 0;
	mov	_rec_num,#0x00
;	src/main.c:163: uint8_t dmode = M_NORMAL;     // display mode state
	mov	_dmode,#0x00
;	src/main.c:164: uint8_t kmode = K_NORMAL;
	mov	_kmode,#0x00
;	src/main.c:407: uint8_t hh = 0;
	mov	_hh,#0x00
;	src/main.c:408: uint8_t mm = 0;
	mov	_mm,#0x00
;	src/main.c:409: uint8_t ss = 0;
	mov	_ss,#0x00
;	src/main.c:411: uint8_t ww = 0;
	mov	_ww,#0x00
;	src/main.c:412: uint8_t tt = 0;
	mov	_tt,#0x00
;	src/main.c:415: uint8_t h0 = 0;
	mov	_h0,#0x00
;	src/main.c:416: uint8_t pm = 0;
	mov	_pm,#0x00
;	src/main.c:418: char btemp = 0;
	mov	_btemp,#0x00
;	src/main.c:419: char * pRec = 0;
	clr	a
	mov	_pRec,a
	mov	(_pRec + 1),a
;	1-genFromRTrack replaced	mov	(_pRec + 2),#0x00
	mov	(_pRec + 2),a
;	src/main.c:422: uint8_t i = 0;
;	1-genFromRTrack replaced	mov	_i,#0x00
	mov	_i,a
;	src/main.c:33: __idata char buffer_t[BSIZE] =  "test\n";
	mov	r0,#_buffer_t
	mov	@r0,#0x74
	mov	r0,#(_buffer_t + 0x0001)
	mov	@r0,#0x65
	mov	r0,#(_buffer_t + 0x0002)
	mov	@r0,#0x73
	mov	r0,#(_buffer_t + 0x0003)
	mov	@r0,#0x74
	mov	r0,#(_buffer_t + 0x0004)
	mov	@r0,#0x0A
	mov	r0,#(_buffer_t + 0x0005)
	mov	@r0,#0x00
	mov	r0,#(_buffer_t + 0x0006)
	mov	@r0,#0x00
	mov	r0,#(_buffer_t + 0x0007)
	mov	@r0,#0x00
	mov	r0,#(_buffer_t + 0x0008)
	mov	@r0,#0x00
	mov	r0,#(_buffer_t + 0x0009)
	mov	@r0,#0x00
	mov	r0,#(_buffer_t + 0x000a)
	mov	@r0,#0x00
	mov	r0,#(_buffer_t + 0x000b)
	mov	@r0,#0x00
;	src/main.c:36: volatile __bit  rReady = 0;
	clr	_rReady
;	src/main.c:181: __bit cfg_changed = 1;
	setb	_cfg_changed
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;tmp                       Allocated to registers r6 
;ev                        Allocated to registers r7 
;digit                     Allocated to registers r6 
;s                         Allocated to registers 
;s                         Allocated to registers 
;------------------------------------------------------------
;	src/main.c:212: void timer0_isr() __interrupt 1 __using 1
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	b
	push	psw
	mov	psw,#0x08
;	src/main.c:215: enum Event ev = EV_NONE;
	mov	r7,#0x00
;	src/main.c:218: uint8_t digit = displaycounter % (uint8_t) 4;
	mov	a,#0x03
	anl	a,_displaycounter
	mov	r6,a
;	src/main.c:221: LED_DIGITS_OFF();
	orl	_P3,#0x3C
;	src/main.c:224: if (displaycounter % lightval < 4 ) {
	mov	b,_lightval
	mov	a,_displaycounter
	div	ab
	mov	r5,b
	cjne	r5,#0x04,00224$
00224$:
	jnc	00102$
;	src/main.c:226: LED_SEGMENT_PORT = dbuf[digit];
	mov	a,r6
	add	a,#_dbuf
	mov	r1,a
	mov	_P2,@r1
;	src/main.c:230: tmp = ~((1<<LED_DIGITS_PORT_BASE) << digit);
	mov	b,r6
	inc	b
	mov	a,#0x04
	sjmp	00228$
00226$:
	add	a,acc
00228$:
	djnz	b,00226$
;	src/main.c:231: LED_DIGITS_PORT &= tmp;
	cpl	a
	mov	r6,a
	anl	_P3,a
00102$:
;	src/main.c:233: displaycounter++;
	inc	_displaycounter
;	src/main.c:236: if (count_100 == 100) {
	mov	a,#0x64
	cjne	a,_count_100,00229$
	sjmp	00230$
00229$:
	ljmp	00143$
00230$:
;	src/main.c:237: count_100 = 0;
	mov	_count_100,#0x00
;	src/main.c:239: if (count_1000 == 1000) {
	mov	a,#0xE8
	cjne	a,_count_1000,00110$
	mov	a,#0x03
	cjne	a,(_count_1000 + 1),00110$
;	src/main.c:240: count_1000 = 0;
	clr	a
	mov	_count_1000,a
	mov	(_count_1000 + 1),a
;	src/main.c:241: blinker_fast = !blinker_fast;
	cpl	_blinker_fast
;	src/main.c:242: loop_gate = 1;
	setb	_loop_gate
;	src/main.c:244: if (count_5000 == 5000) {
	mov	a,#0x88
	cjne	a,_count_5000,00110$
	mov	a,#0x13
	cjne	a,(_count_5000 + 1),00110$
;	src/main.c:245: count_5000 = 0;
	clr	a
	mov	_count_5000,a
	mov	(_count_5000 + 1),a
;	src/main.c:246: blinker_slow = !blinker_slow;
	cpl	_blinker_slow
;	src/main.c:249: if (count_20000 == 20000) {
	mov	a,#0x20
	cjne	a,_count_20000,00106$
	mov	a,#0x4E
	cjne	a,(_count_20000 + 1),00106$
;	src/main.c:250: ntpUpdated+=2; 
	mov	a,#0x02
	add	a,_ntpUpdated
	mov	_ntpUpdated,a
	clr	a
	addc	a,(_ntpUpdated + 1)
	mov	(_ntpUpdated + 1),a
;	src/main.c:251: if (ntpUpdated > 15000) { ntpUpdated = 15000;}// last ntp update time counter
	clr	c
	mov	a,#0x98
	subb	a,_ntpUpdated
	mov	a,#(0x3A ^ 0x80)
	mov	b,(_ntpUpdated + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	mov	_ntpUpdated,#0x98
	mov	(_ntpUpdated + 1),#0x3A
00104$:
;	src/main.c:252: count_20000 = 0;
	clr	a
	mov	_count_20000,a
	mov	(_count_20000 + 1),a
00106$:
;	src/main.c:255: blinker_slowest = count_20000 < 5000;
	clr	c
	mov	a,_count_20000
	subb	a,#0x88
	mov	a,(_count_20000 + 1)
	xrl	a,#0x80
	subb	a,#0x93
	mov	_blinker_slowest,c
00110$:
;	src/main.c:289: MONITOR_S(1);
	mov	a,_debounce
	add	a,_debounce
	mov	r6,a
	mov	c,_P3_1
	clr	a
	rlc	a
	mov	r5,a
	orl	a,r6
	mov	_debounce,a
	mov	a,_debounce
	jnz	00118$
	setb	_S1_PRESSED
	jb	_S1_LONG,00119$
	mov	a,_switchcount
	mov	r6,a
	inc	a
	mov	_switchcount,a
	sjmp	00119$
00118$:
	jnb	_S1_PRESSED,00119$
	jb	_S1_LONG,00114$
	mov	r7,#0x01
00114$:
	clr	_S1_PRESSED
	clr	_S1_LONG
	mov	_switchcount,#0x00
00119$:
	mov	a,_switchcount
	add	a,#0xff - 0x50
	jnc	00121$
	setb	_S1_LONG
	mov	_switchcount,#0x00
	mov	r7,#0x02
00121$:
;	src/main.c:290: MONITOR_S(2);
	mov	a,(_debounce + 0x0001)
	add	a,acc
	mov	r6,a
	mov	c,_P3_0
	clr	a
	rlc	a
	mov	r5,a
	orl	a,r6
	mov	(_debounce + 0x0001),a
	mov	a,(_debounce + 0x0001)
	jnz	00129$
	setb	_S2_PRESSED
	jb	_S2_LONG,00130$
	mov	a,(_switchcount + 0x0001)
	mov	r6,a
	inc	a
	mov	(_switchcount + 0x0001),a
	sjmp	00130$
00129$:
	jnb	_S2_PRESSED,00130$
	jb	_S2_LONG,00125$
	mov	r7,#0x03
00125$:
	clr	_S2_PRESSED
	clr	_S2_LONG
	mov	(_switchcount + 0x0001),#0x00
00130$:
	mov	a,(_switchcount + 0x0001)
	add	a,#0xff - 0x50
	jnc	00132$
	setb	_S2_LONG
	mov	(_switchcount + 0x0001),#0x00
	mov	r7,#0x04
00132$:
;	src/main.c:295: if (ev == EV_S1_LONG && S2_PRESSED) {
	cjne	r7,#0x02,00137$
	jnb	_S2_PRESSED,00137$
;	src/main.c:296: S2_LONG = 1;
	setb	_S2_LONG
;	src/main.c:297: switchcount[1] = 0;
	mov	(_switchcount + 0x0001),#0x00
;	src/main.c:298: ev = EV_S1S2_LONG;
	mov	r7,#0x05
	sjmp	00138$
00137$:
;	src/main.c:299: } else if (ev == EV_S2_LONG && S1_PRESSED) {
	cjne	r7,#0x04,00138$
	jnb	_S1_PRESSED,00138$
;	src/main.c:300: S1_LONG = 1;
	setb	_S1_LONG
;	src/main.c:301: switchcount[0] = 0;
	mov	_switchcount,#0x00
;	src/main.c:302: ev = EV_S1S2_LONG;
	mov	r7,#0x05
00138$:
;	src/main.c:304: if (event == EV_NONE) {
	mov	a,_event
	jnz	00143$
;	src/main.c:305: event = ev;
	mov	_event,r7
00143$:
;	src/main.c:308: count_100++;
	inc	_count_100
;	src/main.c:309: count_1000++;
	mov	a,#0x01
	add	a,_count_1000
	mov	_count_1000,a
	clr	a
	addc	a,(_count_1000 + 1)
	mov	(_count_1000 + 1),a
;	src/main.c:310: count_5000++;
	mov	a,#0x01
	add	a,_count_5000
	mov	_count_5000,a
	clr	a
	addc	a,(_count_5000 + 1)
	mov	(_count_5000 + 1),a
;	src/main.c:311: count_20000++;
	mov	a,#0x01
	add	a,_count_20000
	mov	_count_20000,a
	clr	a
	addc	a,(_count_20000 + 1)
	mov	(_count_20000 + 1),a
;	src/main.c:313: if (count_timeout != 0) {
	mov	a,_count_timeout
	orl	a,(_count_timeout + 1)
	jz	00150$
;	src/main.c:314: count_timeout--;
	dec	_count_timeout
	mov	a,#0xFF
	cjne	a,_count_timeout,00256$
	dec	(_count_timeout + 1)
00256$:
;	src/main.c:315: if (count_timeout == 0) {
	mov	a,_count_timeout
	orl	a,(_count_timeout + 1)
	jnz	00150$
;	src/main.c:316: if (event == EV_NONE) {
	mov	a,_event
	jnz	00150$
;	src/main.c:317: event = EV_TIMEOUT;
	mov	_event,#0x06
00150$:
	pop	psw
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0Init'
;------------------------------------------------------------
;	src/main.c:355: void Timer0Init(void)		//100us @ 11.0592MHz
;	-----------------------------------------
;	 function Timer0Init
;	-----------------------------------------
_Timer0Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:361: TL0 = 0xA4;		// Initial timer value
	mov	_TL0,#0xA4
;	src/main.c:362: TH0 = 0xFF;		// Initial timer value
	mov	_TH0,#0xFF
;	src/main.c:363: TF0 = 0;		// Clear overflow flag
	clr	_TF0
;	src/main.c:364: TR0 = 1;		// Timer0 start run
	setb	_TR0
;	src/main.c:365: ET0 = 1;        // Enable timer0 interrupt
	setb	_ET0
;	src/main.c:366: EA = 1;         // Enable global interrupt
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;pRec                      Allocated to registers 
;btemp                     Allocated to registers r5 
;tmp                       Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:425: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:429: P1M1 |= (1<<ADC_LIGHT) | (1<<ADC_TEMP);
	orl	_P1M1,#0xC0
;	src/main.c:430: P1M0 |= (1<<ADC_LIGHT) | (1<<ADC_TEMP);
	orl	_P1M0,#0xC0
;	src/main.c:433: ds_init();
	lcall	_ds_init
;	src/main.c:435: ds_ram_config_init();
	lcall	_ds_ram_config_init
;	src/main.c:440: Timer0Init(); // display refresh & switch read
	lcall	_Timer0Init
;	src/main.c:448: serial_init ();
	lcall	_serial_init
;	src/main.c:450: SBUF = IE;
	mov	_SBUF,_IE
;	src/main.c:452: memset(buffer_t, 0, BSIZE);
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x0C
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#_buffer_t
	mov	b,#0x40
	lcall	_memset
;	src/main.c:453: memset(rec_data, 0, BSIZE);
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x0C
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#_rec_data
	mov	b,#0x40
	lcall	_memset
;	src/main.c:457: SendString("reset\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_SendString
;	src/main.c:459: clear_rec_data();
	lcall	_clear_rec_data
;	src/main.c:461: blinker1 = blinker_slow;
	mov	c,_blinker_slow
	mov	_blinker1,c
;	src/main.c:462: blinker_ntp = blinker_fast;
	mov	c,_blinker_fast
	mov	_blinker_ntp,c
;	src/main.c:465: while (1)
00189$:
;	src/main.c:470: if (loop_gate) {
	jnb	_loop_gate,00109$
;	src/main.c:472: ev = event;
	mov	_ev,_event
;	src/main.c:473: event = EV_NONE;
	mov	_event,#0x00
;	src/main.c:477: if (count % (uint8_t) 4 == 0) {
	mov	a,_count
	anl	a,#0x03
	jz	00317$
	sjmp	00104$
00317$:
;	src/main.c:480: lightval = getADCResult8(ADC_LIGHT) >> 3;
	mov	dpl,#0x06
	lcall	_getADCResult8
	mov	a,dpl
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1F
;	src/main.c:482: if (lightval < 4) {
	mov	_lightval,a
	clr	c
	subb	a,#0x04
	jnc	00104$
;	src/main.c:483: lightval = 4;
	mov	_lightval,#0x04
00104$:
;	src/main.c:488: ds_readburst();
	lcall	_ds_readburst
;	src/main.c:491: rtc_hh_bcd = rtc_table[DS_ADDR_HOUR];
	mov	_rtc_hh_bcd,(_rtc_table + 0x0002)
;	src/main.c:492: if (H12_12) {
	jnb	_H12_12,00106$
;	src/main.c:493: rtc_hh_bcd &= DS_MASK_HOUR12;
	anl	_rtc_hh_bcd,#0x1F
	sjmp	00107$
00106$:
;	src/main.c:495: rtc_hh_bcd &= DS_MASK_HOUR24;
	anl	_rtc_hh_bcd,#0x3F
00107$:
;	src/main.c:497: rtc_pm = H12_12 && H12_PM;
	jnb	_H12_12,00195$
	jb	_H12_PM,00196$
00195$:
	clr	_main_sloc0_1_0
	sjmp	00197$
00196$:
	setb	_main_sloc0_1_0
00197$:
	mov	c,_main_sloc0_1_0
	mov	_rtc_pm,c
;	src/main.c:498: rtc_mm_bcd = rtc_table[DS_ADDR_MINUTES] & DS_MASK_MINUTES;
	mov	a,#0x7F
	anl	a,(_rtc_table + 0x0001)
	mov	_rtc_mm_bcd,a
;	src/main.c:500: rtc_ss_bcd = rtc_table[DS_ADDR_SECONDS] & DS_MASK_MINUTES;
	mov	a,#0x7F
	anl	a,_rtc_table
	mov	_rtc_ss_bcd,a
00109$:
;	src/main.c:510: hh = rtc_hh_bcd;
	mov	_hh,_rtc_hh_bcd
;	src/main.c:511: mm = rtc_mm_bcd;
	mov	_mm,_rtc_mm_bcd
;	src/main.c:512: ss = rtc_ss_bcd;
	mov	_ss,_rtc_ss_bcd
;	src/main.c:515: if (RI){
	jnb	_RI,00117$
;	src/main.c:516: tmp = SBUF;
	mov	_tmp,_SBUF
;	src/main.c:517: RI = 0; 
	clr	_RI
;	src/main.c:519: if (tmp != 0) {
	mov	a,_tmp
	jz	00117$
;	src/main.c:520: rec_data[rec_num] = tmp;
	mov	a,_rec_num
	add	a,#_rec_data
	mov	r0,a
	mov	@r0,_tmp
;	src/main.c:523: if (rec_data[rec_num] == '*') { // " " = 32
	mov	a,_rec_num
	add	a,#_rec_data
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x2A,00112$
;	src/main.c:524: rReady = 1;
	setb	_rReady
;	src/main.c:526: for (i=0;i<BSIZE;i++) {
	mov	_i,#0x00
00191$:
;	src/main.c:527: char * pRec = rec_data;
;	src/main.c:528: char btemp = *(pRec+i);
	mov	a,_i
	add	a,#_rec_data
	mov	r5,a
	clr	a
	addc	a,#(_rec_data >> 8)
	mov	r6,a
	mov	r7,#0x40
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	src/main.c:529: buffer_t[i] = btemp;
	mov	a,_i
	add	a,#_buffer_t
	mov	r0,a
	mov	@r0,ar5
;	src/main.c:538: rec_data[i] = 0;
	mov	a,_i
	add	a,#_rec_data
	mov	r0,a
	mov	@r0,#0x00
;	src/main.c:526: for (i=0;i<BSIZE;i++) {
	inc	_i
	mov	a,#0x100 - 0x0C
	add	a,_i
	jnc	00191$
;	src/main.c:540: rec_num = 0;
	mov	_rec_num,#0x00
;	src/main.c:545: SendString(buffer_t);
	mov	dptr,#_buffer_t
	mov	b,#0x40
	lcall	_SendString
	sjmp	00117$
00112$:
;	src/main.c:548: rec_num++;
	inc	_rec_num
00117$:
;	src/main.c:555: if (loop_gate) {
	jb	_loop_gate,00327$
	ljmp	00189$
00327$:
;	src/main.c:556: clearTmpDisplay();
	clr	_dot0
	clr	_dot1
	clr	_dot2
	clr	_dot3
	mov	(_tmpbuf + 0x0003),#0x10
	mov	(_tmpbuf + 0x0002),#0x10
	mov	(_tmpbuf + 0x0001),#0x10
	mov	_tmpbuf,#0x10
;	src/main.c:558: if (rReady == 1) {
	jb	_rReady,00328$
	ljmp	00129$
00328$:
;	src/main.c:559: if ( (buffer_t[0]=='H') && (buffer_t[3]=='M') && (buffer_t[6]=='S')) {
	mov	r0,#_buffer_t
	mov	ar7,@r0
	cjne	r7,#0x48,00329$
	sjmp	00330$
00329$:
	ljmp	00121$
00330$:
	mov	r0,#(_buffer_t + 0x0003)
	mov	ar7,@r0
	cjne	r7,#0x4D,00331$
	sjmp	00332$
00331$:
	ljmp	00121$
00332$:
	mov	r0,#(_buffer_t + 0x0006)
	mov	ar7,@r0
	cjne	r7,#0x53,00121$
;	src/main.c:560: nH = charToint(buffer_t[1], buffer_t[2]);
	mov	r0,#(_buffer_t + 0x0001)
	mov	dpl,@r0
	mov	r0,#(_buffer_t + 0x0002)
	mov	_charToint_PARM_2,@r0
	lcall	_charToint
	mov	_nH,dpl
;	src/main.c:561: nM = charToint(buffer_t[4], buffer_t[5]);
	mov	r0,#(_buffer_t + 0x0004)
	mov	dpl,@r0
	mov	r0,#(_buffer_t + 0x0005)
	mov	_charToint_PARM_2,@r0
	lcall	_charToint
	mov	_nM,dpl
;	src/main.c:562: nS = charToint(buffer_t[7], buffer_t[8]);
	mov	r0,#(_buffer_t + 0x0007)
	mov	dpl,@r0
	mov	r0,#(_buffer_t + 0x0008)
	mov	_charToint_PARM_2,@r0
	lcall	_charToint
	mov	_nS,dpl
;	src/main.c:565: hh = intToBCD (nH);
	mov	dpl,_nH
	lcall	_intToBCD
	mov	_hh,dpl
;	src/main.c:566: ds_writebyte(DS_ADDR_HOUR, hh);
	mov	_ds_writebyte_PARM_2,_hh
	mov	dpl,#0x02
	lcall	_ds_writebyte
;	src/main.c:568: mm = intToBCD (nM);
	mov	dpl,_nM
	lcall	_intToBCD
	mov	_mm,dpl
;	src/main.c:569: ds_writebyte(DS_ADDR_MINUTES, mm);
	mov	_ds_writebyte_PARM_2,_mm
	mov	dpl,#0x01
	lcall	_ds_writebyte
;	src/main.c:571: ss = intToBCD (nS);
	mov	dpl,_nS
	lcall	_intToBCD
	mov	_ss,dpl
;	src/main.c:572: ds_writebyte(DS_ADDR_SECONDS, ds_int2bcd(nS));
	mov	dpl,_nS
	lcall	_ds_int2bcd
	mov	_ds_writebyte_PARM_2,dpl
	mov	dpl,#0x00
	lcall	_ds_writebyte
;	src/main.c:574: ntpUpdated = 0;
	clr	a
	mov	_ntpUpdated,a
	mov	(_ntpUpdated + 1),a
;	src/main.c:575: SendData('+');
	mov	dpl,#0x2B
	lcall	_SendData
;	src/main.c:577: dotdisplay(1, blinker_fast);
	jnb	_blinker_fast,00121$
	setb	_dot1
00121$:
;	src/main.c:580: if ( (buffer_t[0]=='W') && (buffer_t[3]=='T') && (buffer_t[6]=='U')) {
	mov	r0,#_buffer_t
	mov	ar7,@r0
	cjne	r7,#0x57,00125$
	mov	r0,#(_buffer_t + 0x0003)
	mov	ar7,@r0
	cjne	r7,#0x54,00125$
	mov	r0,#(_buffer_t + 0x0006)
	mov	ar7,@r0
	cjne	r7,#0x55,00125$
;	src/main.c:581: nW = charToint(buffer_t[1], buffer_t[2]);
	mov	r0,#(_buffer_t + 0x0001)
	mov	dpl,@r0
	mov	r0,#(_buffer_t + 0x0002)
	mov	_charToint_PARM_2,@r0
	lcall	_charToint
	mov	_nW,dpl
;	src/main.c:582: nT = charToint(buffer_t[4], buffer_t[5]);
	mov	r0,#(_buffer_t + 0x0004)
	mov	dpl,@r0
	mov	r0,#(_buffer_t + 0x0005)
	mov	_charToint_PARM_2,@r0
	lcall	_charToint
	mov	_nT,dpl
;	src/main.c:585: ww = intToBCD (nW);
	mov	dpl,_nW
	lcall	_intToBCD
	mov	_ww,dpl
;	src/main.c:586: tt = intToBCD (nT);
	mov	dpl,_nT
	lcall	_intToBCD
	mov	_tt,dpl
;	src/main.c:587: SendData('o');
	mov	dpl,#0x6F
	lcall	_SendData
00125$:
;	src/main.c:591: rReady = 0;
	clr	_rReady
00129$:
;	src/main.c:607: if (ntpUpdated>ntpTimout) {
	clr	c
	mov	a,#0x1E
	subb	a,_ntpUpdated
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_ntpUpdated + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00133$
;	src/main.c:608: blinker_ntp = blinker_fast;
	mov	c,_blinker_fast
	mov	_blinker_ntp,c
;	src/main.c:609: dotdisplay(0, blinker_ntp);
	jnb	_blinker_ntp,00134$
	setb	_dot0
	sjmp	00134$
00133$:
;	src/main.c:611: blinker_ntp = blinker_slow;
	mov	c,_blinker_slow
	mov	_blinker_ntp,c
00134$:
;	src/main.c:617: switch (kmode) {
	mov	r7,_kmode
	cjne	r7,#0x00,00344$
	sjmp	00135$
00344$:
	mov	a,#0x05
;	src/main.c:619: case K_NORMAL:
	cjne	a,_kmode,00144$
	sjmp	00138$
00135$:
;	src/main.c:621: if (ev == EV_S1_SHORT) {
	mov	a,#0x01
	cjne	a,_ev,00144$
;	src/main.c:622: kmode = K_TEMP_DISP;
	mov	_kmode,#0x05
;	src/main.c:623: dmode = M_TEMP_DISP;
	mov	_dmode,#0x03
;	src/main.c:625: break;
;	src/main.c:627: case K_TEMP_DISP:
	sjmp	00144$
00138$:
;	src/main.c:628: if (count_timeout == 0) {
	mov	a,_count_timeout
	orl	a,(_count_timeout + 1)
	jnz	00140$
;	src/main.c:629: count_timeout = TIMEOUT_LONG;
	mov	_count_timeout,#0xFF
	mov	(_count_timeout + 1),#0xFF
00140$:
;	src/main.c:631: if (ev == EV_S1_SHORT  || ev == EV_TIMEOUT ) {
	mov	a,#0x01
	cjne	a,_ev,00349$
	sjmp	00141$
00349$:
	mov	a,#0x06
	cjne	a,_ev,00144$
00141$:
;	src/main.c:632: count_timeout = 0;
	clr	a
	mov	_count_timeout,a
	mov	(_count_timeout + 1),a
;	src/main.c:633: kmode = K_NORMAL;
;	1-genFromRTrack replaced	mov	_kmode,#0x00
	mov	_kmode,a
;	src/main.c:634: dmode = M_NORMAL;
;	1-genFromRTrack replaced	mov	_dmode,#0x00
	mov	_dmode,a
;	src/main.c:638: }
00144$:
;	src/main.c:640: if ( (kmode == K_TEMP_DISP) || (ss>=85) && (ss<=89) ) {
	mov	a,#0x05
	cjne	a,_kmode,00352$
	sjmp	00145$
00352$:
	mov	a,#0x100 - 0x55
	add	a,_ss
	jnc	00146$
	mov	a,_ss
	add	a,#0xff - 0x59
	jc	00146$
00145$:
;	src/main.c:641: dmode = M_TEMP_DISP;
	mov	_dmode,#0x03
	sjmp	00147$
00146$:
;	src/main.c:643: dmode = M_NORMAL;
	mov	_dmode,#0x00
00147$:
;	src/main.c:648: switch (dmode) {
	mov	r7,_dmode
	cjne	r7,#0x00,00355$
	sjmp	00150$
00355$:
	mov	a,#0x03
;	src/main.c:649: case M_NORMAL:
	cjne	a,_dmode,00177$
	sjmp	00166$
00150$:
;	src/main.c:651: h0 = hh >> 4;
	mov	a,_hh
	swap	a
	anl	a,#0x0F
	mov	_h0,a
;	src/main.c:653: if (H12_12 && h0 == 0) {
	jnb	_H12_12,00152$
	mov	a,_h0
	jnz	00152$
;	src/main.c:654: h0 = LED_BLANK;
	mov	_h0,#0x10
00152$:
;	src/main.c:657: filldisplay(0, h0, 0);
	mov	_tmpbuf,_h0
;	src/main.c:658: filldisplay(1, hh & 0x0F, 0);
	mov	a,#0x0F
	anl	a,_hh
	mov	(_tmpbuf + 0x0001),a
;	src/main.c:660: filldisplay(2, mm >> 4, 0);
	mov	a,_mm
	swap	a
	anl	a,#0x0F
	mov	r7,a
	mov	(_tmpbuf + 0x0002),r7
;	src/main.c:661: filldisplay(3, mm & 0x0F, 0);
	mov	a,#0x0F
	anl	a,_mm
	mov	(_tmpbuf + 0x0003),a
;	src/main.c:664: dotdisplay(1, blinker_slow);
	jnb	_blinker_slow,00163$
	setb	_dot1
00163$:
;	src/main.c:665: dotdisplay(2, blinker_slow);
	jnb	_blinker_slow,00177$
	setb	_dot2
;	src/main.c:668: break;
;	src/main.c:669: case M_TEMP_DISP:
	sjmp	00177$
00166$:
;	src/main.c:670: filldisplay(0, ww >> 4, 0);
	mov	a,_ww
	swap	a
	anl	a,#0x0F
	mov	r7,a
	mov	_tmpbuf,r7
;	src/main.c:671: filldisplay(1, ww & 0x0F, 0);
	mov	a,#0x0F
	anl	a,_ww
	mov	(_tmpbuf + 0x0001),a
;	src/main.c:673: filldisplay(2, tt >> 4, 0);
	mov	a,_tt
	swap	a
	anl	a,#0x0F
	mov	r7,a
	mov	(_tmpbuf + 0x0002),r7
;	src/main.c:674: filldisplay(3, tt & 0x0F, 0);
	mov	a,#0x0F
	anl	a,_tt
	mov	(_tmpbuf + 0x0003),a
;	src/main.c:677: dotdisplay(2, 1);
	setb	_dot2
;	src/main.c:684: }
00177$:
;	src/main.c:707: }
	setb	_main_sloc0_1_0
	jbc	ea,00361$
	clr	_main_sloc0_1_0
00361$:
;	src/main.c:706: updateTmpDisplay();
	mov	a,_tmpbuf
	mov	dptr,#_ledtable
	movc	a,@a+dptr
	mov	r7,a
	jnb	_dot0,00179$
	anl	ar7,#0x7F
00179$:
	mov	_dbuf,r7
	mov	a,(_tmpbuf + 0x0001)
	mov	dptr,#_ledtable
	movc	a,@a+dptr
	mov	r7,a
	jnb	_dot1,00181$
	anl	ar7,#0x7F
00181$:
	mov	(_dbuf + 0x0001),r7
	mov	a,(_tmpbuf + 0x0003)
	mov	dptr,#_ledtable
	movc	a,@a+dptr
	mov	r7,a
	jnb	_dot3,00183$
	anl	ar7,#0x7F
00183$:
	mov	(_dbuf + 0x0003),r7
	mov	a,(_tmpbuf + 0x0002)
	mov	dptr,#_ledtable2
	movc	a,@a+dptr
	mov	r7,a
	jnb	_dot2,00185$
	anl	ar7,#0x7F
00185$:
	mov	(_dbuf + 0x0002),r7
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	src/main.c:709: WDT_CLEAR();
	orl	_WDT_CONTR,#0x10
;	src/main.c:711: loop_gate = 0; // close gate
	clr	_loop_gate
;	src/main.c:712: count++;
	inc	_count
	ljmp	00189$
;------------------------------------------------------------
;Allocation info for local variables in function 'intToBCD'
;------------------------------------------------------------
;nn                        Allocated to registers 
;binaryInput               Allocated to registers r7 
;bcdResult                 Allocated to registers r6 
;shift                     Allocated to registers r5 
;------------------------------------------------------------
;	src/main.c:736: uint8_t intToBCD(uint8_t nn) {
;	-----------------------------------------
;	 function intToBCD
;	-----------------------------------------
_intToBCD:
	mov	r7,dpl
;	src/main.c:738: uint8_t bcdResult = 0;
	mov	r6,#0x00
;	src/main.c:741: while (binaryInput > 0) {
	mov	r5,#0x00
00101$:
	mov	a,r7
	jz	00103$
;	src/main.c:742: bcdResult |= (binaryInput % 10) << (shift++ << 2);
	mov	b,#0x0A
	mov	a,r7
	div	ab
	mov	r4,b
	mov	ar3,r5
	inc	r5
	mov	a,r3
	add	a,r3
	add	a,acc
	mov	r3,a
	mov	b,r3
	inc	b
	mov	a,r4
	sjmp	00116$
00114$:
	add	a,acc
00116$:
	djnz	b,00114$
	mov	r4,a
	orl	ar6,a
;	src/main.c:743: binaryInput /= 10;
	mov	b,#0x0A
	mov	a,r7
	div	ab
	mov	r7,a
	sjmp	00101$
00103$:
;	src/main.c:746: return bcdResult;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'intToChar'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:750: char intToChar (uint8_t n){
;	-----------------------------------------
;	 function intToChar
;	-----------------------------------------
_intToChar:
	mov	r7,dpl
;	src/main.c:751: if (n<10) {
	cjne	r7,#0x0A,00117$
00117$:
	clr	a
	rlc	a
	mov	r6,a
	jz	00102$
;	src/main.c:752: return n+48;	
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	ret
00102$:
;	src/main.c:754: if ( (n>=10) && (n<=15) ) {
	mov	a,r6
	jnz	00104$
	mov	a,r7
	add	a,#0xff - 0x0F
	jc	00104$
;	src/main.c:755: return (n-10)+65;	
	mov	a,#0x37
	add	a,r7
	mov	dpl,a
	ret
00104$:
;	src/main.c:757: return '!';
	mov	dpl,#0x21
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'charToint'
;------------------------------------------------------------
;l                         Allocated with name '_charToint_PARM_2'
;h                         Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:761: uint8_t charToint (char h, char l){
;	-----------------------------------------
;	 function charToint
;	-----------------------------------------
_charToint:
;	src/main.c:762: return ( (h-0x30)*10 ) + (l-0x30);	
	mov	a,dpl
	add	a,#0xD0
	mov	b,#0x0A
	mul	ab
	mov	r7,a
	mov	a,_charToint_PARM_2
	add	a,#0xD0
	add	a,r7
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART1_Routine'
;------------------------------------------------------------
;	src/main.c:769: void UART1_Routine(void) __interrupt 4 __using 1
;	-----------------------------------------
;	 function UART1_Routine
;	-----------------------------------------
_UART1_Routine:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
;	src/main.c:792: if (TI){
;	src/main.c:793: TI = 0;    //Clear transmit interrupt flag
	jbc	_TI,00108$
	sjmp	00103$
00108$:
;	src/main.c:794: busy = 0; //Clear transmit busy flag	
	clr	_busy
00103$:
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_rec_data'
;------------------------------------------------------------
;	src/main.c:813: void clear_rec_data()
;	-----------------------------------------
;	 function clear_rec_data
;	-----------------------------------------
_clear_rec_data:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:815: memset(rec_data, 0, sizeof(rec_data));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x0C
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#_rec_data
	mov	b,#0x40
	lcall	_memset
;	src/main.c:816: rec_num = 0;
	mov	_rec_num,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendData'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:824: void SendData(unsigned char dat)
;	-----------------------------------------
;	 function SendData
;	-----------------------------------------
_SendData:
	mov	r7,dpl
;	src/main.c:826: while (busy);    //Wait for the completion of the previous data is sent
00101$:
	jb	_busy,00101$
;	src/main.c:827: ACC = dat;    //Calculate the even parity bit P (PSW.0)
	mov	_ACC,r7
;	src/main.c:829: busy = 1;
	setb	_busy
;	src/main.c:830: SBUF = ACC;    //Send data to UART buffer
	mov	_SBUF,_ACC
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendString'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	src/main.c:838: void SendString(char *s)
;	-----------------------------------------
;	 function SendString
;	-----------------------------------------
_SendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/main.c:840: while (*s)    //Check the end of the string
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	src/main.c:842: SendData(*s++);    //Send current char and increment string ptr
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_SendData
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_init'
;------------------------------------------------------------
;	src/main.c:850: void serial_init (){
;	-----------------------------------------
;	 function serial_init
;	-----------------------------------------
_serial_init:
;	src/main.c:855: ACC = P_SW1;
	mov	_ACC,_P_SW1
;	src/main.c:856: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=1 S1_S1=0
	mov	r7,_ACC
	mov	a,#0x3F
	anl	a,r7
	mov	_ACC,a
;	src/main.c:857: ACC |= S1_S0;               //(P3.6/RxD_2, P3.7/TxD_2)
	orl	_ACC,#0x40
;	src/main.c:858: P_SW1 = ACC;
	mov	_P_SW1,_ACC
;	src/main.c:867: SCON = 0x50;                
	mov	_SCON,#0x50
;	src/main.c:874: T2L = ( (uint8_t)(65536-(FOSC/BAUD/4)) & 0xFF);  
	mov	_T2L,#0xD0
;	src/main.c:875: T2H = (65536 - (FOSC/4/BAUD))>>8;
	mov	_T2H,#0xFF
;	src/main.c:876: AUXR = 0x14;                
	mov	_AUXR,#0x14
;	src/main.c:877: AUXR |= 0x01;               
	orl	_AUXR,#0x01
;	src/main.c:881: EA = 1;
	setb	_EA
;	src/main.c:882: ES = 1;
	setb	_ES
;	src/main.c:884: RI = 0;
	clr	_RI
;	src/main.c:885: TI = 0;
	clr	_TI
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ledtable:
	.db #0xC0	; 192
	.db #0xF9	; 249
	.db #0xA4	; 164
	.db #0xB0	; 176
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0xF8	; 248
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0xC6	; 198
	.db #0xA1	; 161
	.db #0x86	; 134
	.db #0x8E	; 142
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0x8B	; 139
	.db #0x7F	; 127
_ledtable2:
	.db #0xC0	; 192
	.db #0xCF	; 207
	.db #0xA4	; 164
	.db #0x86	; 134
	.db #0x8B	; 139
	.db #0x92	; 146
	.db #0x90	; 144
	.db #0xC7	; 199
	.db #0x80	; 128
	.db #0x82	; 130
	.db #0x81	; 129
	.db #0x98	; 152
	.db #0xF0	; 240
	.db #0x8C	; 140
	.db #0xB0	; 176
	.db #0xB1	; 177
	.db #0xFF	; 255
	.db #0xBF	; 191
	.db #0x99	; 153
	.db #0x7F	; 127
___str_0:
	.ascii "reset"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
