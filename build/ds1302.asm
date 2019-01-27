;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Tue Jan 15 13:10:02 2019
;--------------------------------------------------------
	.module ds1302
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _readbyte
	.globl _sendbyte
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
	.globl _CONF_SW_MMDD
	.globl _CONF_CHIME_ON
	.globl _CONF_ALARM_ON
	.globl _CONF_C_F
	.globl _H12_12
	.globl _H12_PM
	.globl _H12_TH
	.globl _ds_writebyte_PARM_2
	.globl _cfg_table
	.globl _rtc_table
	.globl _ds_ram_config_init
	.globl _ds_ram_config_write
	.globl _ds_readbyte
	.globl _ds_readburst
	.globl _ds_writebyte
	.globl _ds_init
	.globl _ds_hours_12_24_toggle
	.globl _ds_hours_incr
	.globl _ds_minutes_incr
	.globl _ds_month_incr
	.globl _ds_day_incr
	.globl _ds_alarm_minutes_incr
	.globl _ds_alarm_hours_incr
	.globl _ds_alarm_on_toggle
	.globl _ds_date_mmdd_toggle
	.globl _ds_temperature_offset_incr
	.globl _ds_temperature_cf_toggle
	.globl _ds_weekday_incr
	.globl _ds_sec_zero
	.globl _ds_split2int
	.globl _ds_int2bcd
	.globl _ds_int2bcd_tens
	.globl _ds_int2bcd_ones
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_rtc_table	=	0x0024
_cfg_table	=	0x002c
_ds_writebyte_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_ram_config_init'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:17: void ds_ram_config_init() {
;	-----------------------------------------
;	 function ds_ram_config_init
;	-----------------------------------------
_ds_ram_config_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/ds1302.c:20: if ( (ds_readbyte( DS_CMD_RAM >> 1 | 0x00) != MAGIC_LO || ds_readbyte( DS_CMD_RAM >> 1 | 0x01) != MAGIC_HI) ) {
	mov	dpl,#0x20
	lcall	_ds_readbyte
	mov	r7,dpl
	cjne	r7,#0xA5,00101$
	mov	dpl,#0x21
	lcall	_ds_readbyte
	mov	r7,dpl
	cjne	r7,#0x5A,00118$
	sjmp	00110$
00118$:
00101$:
;	src/ds1302.c:22: ds_writebyte( DS_CMD_RAM >> 1 | 0x00, MAGIC_LO);
	mov	_ds_writebyte_PARM_2,#0xA5
	mov	dpl,#0x20
	lcall	_ds_writebyte
;	src/ds1302.c:23: ds_writebyte( DS_CMD_RAM >> 1 | 0x01, MAGIC_HI);
	mov	_ds_writebyte_PARM_2,#0x5A
	mov	dpl,#0x21
	lcall	_ds_writebyte
;	src/ds1302.c:25: ds_ram_config_write();	// OPTIMISE : Will generate a ljmp to ds_ram_config_write
;	src/ds1302.c:26: return;
;	src/ds1302.c:34: for (i = 0; i != 4; i++) {
	ljmp	_ds_ram_config_write
00110$:
	mov	r7,#0x22
	mov	r6,#0x00
00105$:
;	src/ds1302.c:35: cfg_table[i] = ds_readbyte(j);
	mov	a,r6
	add	a,#_cfg_table
	mov	r1,a
	mov	dpl,r7
	lcall	_ds_readbyte
	mov	a,dpl
	mov	@r1,a
;	src/ds1302.c:36: j++;
	inc	r7
;	src/ds1302.c:34: for (i = 0; i != 4; i++) {
	inc	r6
	cjne	r6,#0x04,00105$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_ram_config_write'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:40: void ds_ram_config_write() {
;	-----------------------------------------
;	 function ds_ram_config_write
;	-----------------------------------------
_ds_ram_config_write:
;	src/ds1302.c:43: for (i=0; i!=4; i++) {
	mov	r7,#0x22
	mov	r6,#0x00
00102$:
;	src/ds1302.c:44: ds_writebyte( j, cfg_table[i]);
	mov	a,r6
	add	a,#_cfg_table
	mov	r1,a
	mov	_ds_writebyte_PARM_2,@r1
	mov	dpl,r7
	lcall	_ds_writebyte
;	src/ds1302.c:45: j++;
	inc	r7
;	src/ds1302.c:43: for (i=0; i!=4; i++) {
	inc	r6
	cjne	r6,#0x04,00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;b                         Allocated to registers 
;------------------------------------------------------------
;	src/ds1302.c:49: void sendbyte(uint8_t b)
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
;	src/ds1302.c:67: __endasm;
	push ar7
	mov a,dpl
	mov r7,#8
	00001$:
	nop
	nop
	rrc a
	mov _P1_1,c
	setb _P1_2
	nop
	nop
	clr _P1_2
	djnz r7,00001$
	pop ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readbyte'
;------------------------------------------------------------
;	src/ds1302.c:70: uint8_t readbyte()
;	-----------------------------------------
;	 function readbyte
;	-----------------------------------------
_readbyte:
;	src/ds1302.c:88: __endasm;
	push ar7
	mov a,#0
	mov r7,#8
	00002$:
	nop
	nop
	mov c,_P1_1
	rrc a
	setb _P1_2
	nop
	nop
	clr _P1_2
	djnz r7,00002$
	mov dpl,a
	pop ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_readbyte'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:91: uint8_t ds_readbyte(uint8_t addr) {
;	-----------------------------------------
;	 function ds_readbyte
;	-----------------------------------------
_ds_readbyte:
	push	ar7
;	src/ds1302.c:94: b = DS_CMD | DS_CMD_CLOCK | addr << 1 | DS_CMD_READ;
	mov	a,dpl
	add	a,dpl
	mov	r7,a
	orl	ar7,#0x81
;	src/ds1302.c:95: DS_CE = 0;
	clr	_P1_0
;	src/ds1302.c:96: DS_SCLK = 0;
	clr	_P1_2
;	src/ds1302.c:97: DS_CE = 1;
	setb	_P1_0
;	src/ds1302.c:99: sendbyte(b);
	mov	dpl,r7
	lcall	_sendbyte
;	src/ds1302.c:101: b = readbyte();
	lcall	_readbyte
	mov	r7,dpl
;	src/ds1302.c:102: DS_CE = 0;
	clr	_P1_0
;	src/ds1302.c:103: return b;
	mov	dpl,r7
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_readburst'
;------------------------------------------------------------
;j                         Allocated to registers r7 
;b                         Allocated to registers 
;------------------------------------------------------------
;	src/ds1302.c:106: void ds_readburst() {
;	-----------------------------------------
;	 function ds_readburst
;	-----------------------------------------
_ds_readburst:
;	src/ds1302.c:110: DS_CE = 0;
	clr	_P1_0
;	src/ds1302.c:111: DS_SCLK = 0;
	clr	_P1_2
;	src/ds1302.c:112: DS_CE = 1;
	setb	_P1_0
;	src/ds1302.c:114: sendbyte(b);
	mov	dpl,#0xBF
	lcall	_sendbyte
;	src/ds1302.c:116: for (j = 0; j != 8; j++) {
	mov	r7,#0x00
00102$:
;	src/ds1302.c:117: rtc_table[j] = readbyte();
	mov	a,r7
	add	a,#_rtc_table
	mov	r1,a
	lcall	_readbyte
	mov	a,dpl
	mov	@r1,a
;	src/ds1302.c:116: for (j = 0; j != 8; j++) {
	inc	r7
	cjne	r7,#0x08,00102$
;	src/ds1302.c:119: DS_CE = 0;
	clr	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_writebyte'
;------------------------------------------------------------
;data                      Allocated with name '_ds_writebyte_PARM_2'
;addr                      Allocated to registers r7 
;b                         Allocated to registers 
;------------------------------------------------------------
;	src/ds1302.c:122: void ds_writebyte(uint8_t addr, uint8_t data) {
;	-----------------------------------------
;	 function ds_writebyte
;	-----------------------------------------
_ds_writebyte:
	push	ar7
;	src/ds1302.c:125: b = DS_CMD | DS_CMD_CLOCK | addr << 1 | DS_CMD_WRITE;
	mov	a,dpl
	add	a,dpl
	mov	r7,a
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
;	src/ds1302.c:126: DS_CE = 0;
	clr	_P1_0
;	src/ds1302.c:127: DS_SCLK = 0;
	clr	_P1_2
;	src/ds1302.c:128: DS_CE = 1;
	setb	_P1_0
;	src/ds1302.c:130: sendbyte(b);
	lcall	_sendbyte
;	src/ds1302.c:132: sendbyte(data);
	mov	dpl,_ds_writebyte_PARM_2
	lcall	_sendbyte
;	src/ds1302.c:134: DS_CE = 0;
	clr	_P1_0
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_init'
;------------------------------------------------------------
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:137: void ds_init() {
;	-----------------------------------------
;	 function ds_init
;	-----------------------------------------
_ds_init:
;	src/ds1302.c:138: uint8_t b = ds_readbyte(DS_ADDR_SECONDS);
	mov	dpl,#0x00
	lcall	_ds_readbyte
	mov	r7,dpl
;	src/ds1302.c:139: ds_writebyte(DS_ADDR_WP, 0); // clear WP
	mov	_ds_writebyte_PARM_2,#0x00
	mov	dpl,#0x07
	lcall	_ds_writebyte
;	src/ds1302.c:140: b &= ~(0b10000000);
	mov	a,#0x7F
	anl	a,r7
	mov	_ds_writebyte_PARM_2,a
;	src/ds1302.c:141: ds_writebyte(DS_ADDR_SECONDS, b); // clear CH
	mov	dpl,#0x00
	ljmp	_ds_writebyte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_hours_12_24_toggle'
;------------------------------------------------------------
;hours                     Allocated to registers r7 
;b                         Allocated to registers r6 
;------------------------------------------------------------
;	src/ds1302.c:154: void ds_hours_12_24_toggle() {
;	-----------------------------------------
;	 function ds_hours_12_24_toggle
;	-----------------------------------------
_ds_hours_12_24_toggle:
;	src/ds1302.c:157: if (H12_12) { // 12h->24h
	jnb	_H12_12,00113$
;	src/ds1302.c:158: hours = ds_split2int(rtc_table[DS_ADDR_HOUR] & DS_MASK_HOUR12); // hours in 12h format (1-11am 12pm 1-11pm 12am)
	mov	a,#0x1F
	anl	a,(_rtc_table + 0x0002)
	mov	dpl,a
	lcall	_ds_split2int
	mov	r7,dpl
;	src/ds1302.c:159: if (hours == 12) {
	cjne	r7,#0x0C,00106$
;	src/ds1302.c:160: if (!H12_PM) {
	jb	_H12_PM,00107$
;	src/ds1302.c:161: hours = 0;
	mov	r7,#0x00
	sjmp	00107$
00106$:
;	src/ds1302.c:164: if (H12_PM) {
	jnb	_H12_PM,00107$
;	src/ds1302.c:165: hours += 12;			 // to 24h format
	mov	a,#0x0C
	add	a,r7
	mov	r7,a
00107$:
;	src/ds1302.c:168: b = ds_int2bcd(hours);			 // clear hour_12_24 bit
	mov	dpl,r7
	lcall	_ds_int2bcd
	mov	r6,dpl
	sjmp	00114$
00113$:
;	src/ds1302.c:171: hours = ds_split2int(rtc_table[DS_ADDR_HOUR] & DS_MASK_HOUR24); // hours in 24h format (0-23, 0-11=>am , 12-23=>pm)
	mov	a,#0x3F
	anl	a,(_rtc_table + 0x0002)
	mov	dpl,a
	lcall	_ds_split2int
	mov	r7,dpl
;	src/ds1302.c:172: b = DS_MASK_1224_MODE;
	mov	r6,#0x80
;	src/ds1302.c:173: if (hours >= 12) { 	// pm
	cjne	r7,#0x0C,00140$
00140$:
	jc	00109$
;	src/ds1302.c:174: hours -= 12;
	mov	a,r7
	add	a,#0xF4
	mov	r7,a
;	src/ds1302.c:175: b |= DS_MASK_PM;
	mov	r6,#0xA0
00109$:
;	src/ds1302.c:177: if (hours == 0) {  		//12am
	mov	a,r7
	jnz	00111$
;	src/ds1302.c:178: hours = 12;
	mov	r7,#0x0C
00111$:
;	src/ds1302.c:180: b |= ds_int2bcd(hours);
	mov	dpl,r7
	push	ar6
	lcall	_ds_int2bcd
	mov	r7,dpl
	pop	ar6
	mov	a,r7
	orl	ar6,a
00114$:
;	src/ds1302.c:183: ds_writebyte(DS_ADDR_HOUR, b);
	mov	_ds_writebyte_PARM_2,r6
	mov	dpl,#0x02
	ljmp	_ds_writebyte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_hours_incr'
;------------------------------------------------------------
;hours                     Allocated to registers r7 
;b                         Allocated to registers r6 
;------------------------------------------------------------
;	src/ds1302.c:187: void ds_hours_incr() {
;	-----------------------------------------
;	 function ds_hours_incr
;	-----------------------------------------
_ds_hours_incr:
;	src/ds1302.c:189: if (!H12_12) {
	jb	_H12_12,00112$
;	src/ds1302.c:190: hours = ds_split2int(rtc_table[DS_ADDR_HOUR] & DS_MASK_HOUR24);	//24h format
	mov	a,#0x3F
	anl	a,(_rtc_table + 0x0002)
	mov	dpl,a
	lcall	_ds_split2int
	mov	r7,dpl
;	src/ds1302.c:191: INCR(hours, 0, 23);
	cjne	r7,#0x17,00132$
00132$:
	jnc	00102$
	inc	r7
	sjmp	00103$
00102$:
	mov	r7,#0x00
00103$:
;	src/ds1302.c:192: b = ds_int2bcd(hours);		// bit 7 = 0
	mov	dpl,r7
	lcall	_ds_int2bcd
	mov	r6,dpl
	sjmp	00113$
00112$:
;	src/ds1302.c:194: hours = ds_split2int(rtc_table[DS_ADDR_HOUR] & DS_MASK_HOUR12);	//12h format
	mov	a,#0x1F
	anl	a,(_rtc_table + 0x0002)
	mov	dpl,a
	lcall	_ds_split2int
	mov	r7,dpl
;	src/ds1302.c:195: INCR(hours, 1, 12);
	cjne	r7,#0x0C,00134$
00134$:
	jnc	00105$
	inc	r7
	sjmp	00106$
00105$:
	mov	r7,#0x01
00106$:
;	src/ds1302.c:196: if (hours == 12) {
	cjne	r7,#0x0C,00108$
;	src/ds1302.c:197: H12_PM = !H12_PM;
	cpl	_H12_PM
00108$:
;	src/ds1302.c:199: b = ds_int2bcd(hours) | DS_MASK_1224_MODE;
	mov	dpl,r7
	lcall	_ds_int2bcd
	mov	a,dpl
	orl	a,#0x80
	mov	r6,a
;	src/ds1302.c:200: if (H12_PM) {
	jnb	_H12_PM,00113$
;	src/ds1302.c:201: b |=  DS_MASK_PM;
	orl	ar6,#0x20
00113$:
;	src/ds1302.c:204: ds_writebyte(DS_ADDR_HOUR, b);
	mov	_ds_writebyte_PARM_2,r6
	mov	dpl,#0x02
	ljmp	_ds_writebyte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_minutes_incr'
;------------------------------------------------------------
;minutes                   Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:208: void ds_minutes_incr() {
;	-----------------------------------------
;	 function ds_minutes_incr
;	-----------------------------------------
_ds_minutes_incr:
;	src/ds1302.c:209: uint8_t minutes = ds_split2int(rtc_table[DS_ADDR_MINUTES] & DS_MASK_MINUTES);
	mov	a,#0x7F
	anl	a,(_rtc_table + 0x0001)
	mov	dpl,a
	lcall	_ds_split2int
	mov	r7,dpl
;	src/ds1302.c:210: INCR(minutes, 0, 59);
	cjne	r7,#0x3B,00109$
00109$:
	jnc	00102$
	inc	r7
	sjmp	00103$
00102$:
	mov	r7,#0x00
00103$:
;	src/ds1302.c:211: ds_writebyte(DS_ADDR_MINUTES, ds_int2bcd(minutes));
	mov	dpl,r7
	lcall	_ds_int2bcd
	mov	_ds_writebyte_PARM_2,dpl
	mov	dpl,#0x01
	ljmp	_ds_writebyte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_month_incr'
;------------------------------------------------------------
;month                     Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:215: void ds_month_incr() {
;	-----------------------------------------
;	 function ds_month_incr
;	-----------------------------------------
_ds_month_incr:
;	src/ds1302.c:216: uint8_t month = ds_split2int(rtc_table[DS_ADDR_MONTH] & DS_MASK_MONTH);
	mov	a,#0x1F
	anl	a,(_rtc_table + 0x0004)
	mov	dpl,a
	lcall	_ds_split2int
	mov	r7,dpl
;	src/ds1302.c:217: INCR(month, 1, 12);
	cjne	r7,#0x0C,00109$
00109$:
	jnc	00102$
	inc	r7
	sjmp	00103$
00102$:
	mov	r7,#0x01
00103$:
;	src/ds1302.c:218: ds_writebyte(DS_ADDR_MONTH, ds_int2bcd(month));
	mov	dpl,r7
	lcall	_ds_int2bcd
	mov	_ds_writebyte_PARM_2,dpl
	mov	dpl,#0x04
	ljmp	_ds_writebyte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_day_incr'
;------------------------------------------------------------
;day                       Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:222: void ds_day_incr() {
;	-----------------------------------------
;	 function ds_day_incr
;	-----------------------------------------
_ds_day_incr:
;	src/ds1302.c:223: uint8_t day = ds_split2int(rtc_table[DS_ADDR_DAY] & DS_MASK_DAY);
	mov	a,#0x3F
	anl	a,(_rtc_table + 0x0003)
	mov	dpl,a
	lcall	_ds_split2int
	mov	r7,dpl
;	src/ds1302.c:224: INCR(day, 1, 31);
	cjne	r7,#0x1F,00109$
00109$:
	jnc	00102$
	inc	r7
	sjmp	00103$
00102$:
	mov	r7,#0x01
00103$:
;	src/ds1302.c:225: ds_writebyte(DS_ADDR_DAY, ds_int2bcd(day));
	mov	dpl,r7
	lcall	_ds_int2bcd
	mov	_ds_writebyte_PARM_2,dpl
	mov	dpl,#0x03
	ljmp	_ds_writebyte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_alarm_minutes_incr'
;------------------------------------------------------------
;mm                        Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:228: void ds_alarm_minutes_incr() {
;	-----------------------------------------
;	 function ds_alarm_minutes_incr
;	-----------------------------------------
_ds_alarm_minutes_incr:
;	src/ds1302.c:229: uint8_t mm = cfg_table[CFG_ALARM_MINUTES_BYTE] & CFG_ALARM_MINUTES_MASK;
	mov	a,#0x3F
	anl	a,(_cfg_table + 0x0001)
	mov	r7,a
;	src/ds1302.c:230: INCR(mm, 0, 59);
	cjne	r7,#0x3B,00109$
00109$:
	jnc	00102$
	inc	r7
	sjmp	00103$
00102$:
	mov	r7,#0x00
00103$:
;	src/ds1302.c:231: cfg_table[CFG_ALARM_MINUTES_BYTE] &= ~CFG_ALARM_MINUTES_MASK;
	mov	r6,(_cfg_table + 0x0001)
	mov	a,#0xC0
	anl	a,r6
	mov	(_cfg_table + 0x0001),a
;	src/ds1302.c:232: cfg_table[CFG_ALARM_MINUTES_BYTE] |= mm;
	mov	a,r7
	orl	a,(_cfg_table + 0x0001)
	mov	(_cfg_table + 0x0001),a
;	src/ds1302.c:233: ds_ram_config_write();
	ljmp	_ds_ram_config_write
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_alarm_hours_incr'
;------------------------------------------------------------
;hh                        Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:236: void ds_alarm_hours_incr() {
;	-----------------------------------------
;	 function ds_alarm_hours_incr
;	-----------------------------------------
_ds_alarm_hours_incr:
;	src/ds1302.c:237: uint8_t hh = cfg_table[CFG_ALARM_HOURS_BYTE] >> 3;
	mov	a,_cfg_table
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r7,a
;	src/ds1302.c:238: INCR(hh, 0, 23);
	cjne	r7,#0x17,00109$
00109$:
	jnc	00102$
	inc	r7
	sjmp	00103$
00102$:
	mov	r7,#0x00
00103$:
;	src/ds1302.c:239: hh <<= 3;
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r7,a
;	src/ds1302.c:240: cfg_table[CFG_ALARM_HOURS_BYTE] &= ~CFG_ALARM_HOURS_MASK;
	mov	r6,_cfg_table
	mov	a,#0x07
	anl	a,r6
	mov	_cfg_table,a
;	src/ds1302.c:241: cfg_table[CFG_ALARM_HOURS_BYTE] |= hh;
	mov	a,r7
	orl	a,_cfg_table
	mov	_cfg_table,a
;	src/ds1302.c:242: ds_ram_config_write();
	ljmp	_ds_ram_config_write
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_alarm_on_toggle'
;------------------------------------------------------------
;	src/ds1302.c:245: void ds_alarm_on_toggle() {
;	-----------------------------------------
;	 function ds_alarm_on_toggle
;	-----------------------------------------
_ds_alarm_on_toggle:
;	src/ds1302.c:246: CONF_ALARM_ON = !CONF_ALARM_ON;
	cpl	_CONF_ALARM_ON
;	src/ds1302.c:247: ds_ram_config_write();
	ljmp	_ds_ram_config_write
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_date_mmdd_toggle'
;------------------------------------------------------------
;	src/ds1302.c:250: void ds_date_mmdd_toggle() {
;	-----------------------------------------
;	 function ds_date_mmdd_toggle
;	-----------------------------------------
_ds_date_mmdd_toggle:
;	src/ds1302.c:251: CONF_SW_MMDD = !CONF_SW_MMDD;
	cpl	_CONF_SW_MMDD
;	src/ds1302.c:252: ds_ram_config_write();
	ljmp	_ds_ram_config_write
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_temperature_offset_incr'
;------------------------------------------------------------
;offset                    Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:255: void ds_temperature_offset_incr() {
;	-----------------------------------------
;	 function ds_temperature_offset_incr
;	-----------------------------------------
_ds_temperature_offset_incr:
;	src/ds1302.c:256: uint8_t offset = cfg_table[CFG_TEMP_BYTE] & CFG_TEMP_MASK;
	mov	a,#0x07
	anl	a,(_cfg_table + 0x0002)
	mov	r7,a
;	src/ds1302.c:257: offset++;
	inc	r7
;	src/ds1302.c:258: offset &= CFG_TEMP_MASK;
	anl	ar7,#0x07
;	src/ds1302.c:259: cfg_table[CFG_TEMP_BYTE] = (cfg_table[CFG_TEMP_BYTE] & ~CFG_TEMP_MASK) | offset;
	mov	r6,(_cfg_table + 0x0002)
	anl	ar6,#0xF8
	mov	a,r7
	orl	a,r6
	mov	(_cfg_table + 0x0002),a
;	src/ds1302.c:260: ds_ram_config_write();
	ljmp	_ds_ram_config_write
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_temperature_cf_toggle'
;------------------------------------------------------------
;	src/ds1302.c:263: void ds_temperature_cf_toggle() {
;	-----------------------------------------
;	 function ds_temperature_cf_toggle
;	-----------------------------------------
_ds_temperature_cf_toggle:
;	src/ds1302.c:264: CONF_C_F = !CONF_C_F;
	cpl	_CONF_C_F
;	src/ds1302.c:265: ds_ram_config_write();
	ljmp	_ds_ram_config_write
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_weekday_incr'
;------------------------------------------------------------
;day                       Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:268: void ds_weekday_incr() {
;	-----------------------------------------
;	 function ds_weekday_incr
;	-----------------------------------------
_ds_weekday_incr:
;	src/ds1302.c:269: uint8_t day = rtc_table[DS_ADDR_WEEKDAY];
	mov	r7,(_rtc_table + 0x0005)
;	src/ds1302.c:270: INCR(day, 1, 7);
	cjne	r7,#0x07,00109$
00109$:
	jnc	00102$
	inc	r7
	sjmp	00103$
00102$:
	mov	r7,#0x01
00103$:
;	src/ds1302.c:271: ds_writebyte(DS_ADDR_WEEKDAY, day);
	mov	_ds_writebyte_PARM_2,r7
	mov	dpl,#0x05
	lcall	_ds_writebyte
;	src/ds1302.c:272: rtc_table[DS_ADDR_WEEKDAY] = day;		// usefull ?
	mov	(_rtc_table + 0x0005),r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_sec_zero'
;------------------------------------------------------------
;	src/ds1302.c:275: void ds_sec_zero() {
;	-----------------------------------------
;	 function ds_sec_zero
;	-----------------------------------------
_ds_sec_zero:
;	src/ds1302.c:276: rtc_table[DS_ADDR_SECONDS] = 0;
	mov	_rtc_table,#0x00
;	src/ds1302.c:277: ds_writebyte(DS_ADDR_SECONDS, 0);
	mov	_ds_writebyte_PARM_2,#0x00
	mov	dpl,#0x00
	ljmp	_ds_writebyte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_split2int'
;------------------------------------------------------------
;tens_ones                 Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:280: uint8_t ds_split2int(uint8_t tens_ones) {
;	-----------------------------------------
;	 function ds_split2int
;	-----------------------------------------
_ds_split2int:
;	src/ds1302.c:281: return (tens_ones >> 4) * 10 + (tens_ones & 0x0F);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0F
	mov	b,#0x0A
	mul	ab
	mov	r6,a
	mov	a,#0x0F
	anl	a,r7
	add	a,r6
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_int2bcd'
;------------------------------------------------------------
;integer                   Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:285: uint8_t ds_int2bcd(uint8_t integer) {
;	-----------------------------------------
;	 function ds_int2bcd
;	-----------------------------------------
_ds_int2bcd:
	mov	r7,dpl
;	src/ds1302.c:286: return integer / 10 << 4 | integer % 10;
	mov	b,#0x0A
	mov	a,r7
	div	ab
	swap	a
	anl	a,#0xF0
	mov	r6,a
	mov	b,#0x0A
	mov	a,r7
	div	ab
	mov	a,b
	orl	a,r6
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_int2bcd_tens'
;------------------------------------------------------------
;integer                   Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:289: uint8_t ds_int2bcd_tens(uint8_t integer) {
;	-----------------------------------------
;	 function ds_int2bcd_tens
;	-----------------------------------------
_ds_int2bcd_tens:
	mov	r7,dpl
;	src/ds1302.c:290: return integer / 10 % 10;
	mov	b,#0x0A
	mov	a,r7
	div	ab
	mov	b,#0x0A
	div	ab
	mov	dpl,b
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds_int2bcd_ones'
;------------------------------------------------------------
;integer                   Allocated to registers r7 
;------------------------------------------------------------
;	src/ds1302.c:293: uint8_t ds_int2bcd_ones(uint8_t integer) {
;	-----------------------------------------
;	 function ds_int2bcd_ones
;	-----------------------------------------
_ds_int2bcd_ones:
	mov	r7,dpl
;	src/ds1302.c:294: return integer % 10;
	mov	b,#0x0A
	mov	a,r7
	div	ab
	mov	dpl,b
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
