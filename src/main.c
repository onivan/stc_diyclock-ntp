//
// STC15F204EA DIY LED Clock
// Copyright 2016, Jens Jensen
//

// silence: "src/main.c:672: warning 126: unreachable code"
#pragma disable_warning 126

#include "stc15.h"
#include <stdint.h>
#include <stdio.h>
#include "adc.h"
#include "ds1302.h"
#include "led.h"

#include <string.h>
#include "serial.h"


//~ #define LEDT P1_4 // Red
//~ #define LEDR P1_3 // Grean

 
#define BSIZE 12

//~ #define LTI_1 LEDT = 0 // Red
//~ #define LTI_0 LEDT = 1

//~ #define LRI_1 LEDR = 0 // Grean
//~ #define LRI_0 LEDR = 1

//~ __code char buffer_r[BSIZE] =  "reset\n"; 
__idata char buffer_t[BSIZE] =  "test\n";

volatile __bit   busy;
volatile __bit  rReady = 0;
__idata volatile uint8_t rec_data[BSIZE];
volatile uint8_t rec_num = 0;

volatile uint8_t nH, nM, nS, nW, nT;

void SendString(char *s);
void SendData(unsigned char dat);
void clear_rec_data();

uint8_t charToint (char h, char l);

//~ char * intTochar (uint8_t n);

uint8_t intToBCD(uint8_t nn) ;
char intToChar (uint8_t n);

//~ void _delay_ms(uint8_t ms);
void serial_init ();


#ifndef FOSC
  #define FOSC 11059200L          //ÏµÍ³ÆµÂÊ
#endif

// clear wdt
#define WDT_CLEAR()    (WDT_CONTR |= 1 << 4)

// hardware configuration
#include "hwconfig.h"

// display mode states
enum keyboard_mode {
    K_NORMAL,
    K_SET_HOUR,
    K_SET_MINUTE,
    K_SET_HOUR_12_24,
    K_SEC_DISP,
    K_TEMP_DISP,
#ifndef WITHOUT_DATE
    K_DATE_DISP,
    K_SET_MONTH,
    K_SET_DAY,
#endif
    K_WEEKDAY_DISP,
#ifndef WITHOUT_ALARM
    K_ALARM,
    K_ALARM_SET_HOUR,
    K_ALARM_SET_MINUTE,
#endif
#ifdef DEBUG
    K_DEBUG,
    K_DEBUG2,
    K_DEBUG3,
#endif
};

// display mode states
enum display_mode {
    M_NORMAL,
    M_SET_HOUR_12_24,
    M_SEC_DISP,
    M_TEMP_DISP,
#ifndef WITHOUT_DATE
    M_DATE_DISP,
#endif
    M_WEEKDAY_DISP,
#ifndef WITHOUT_ALARM
    M_ALARM,
#endif
#ifdef DEBUG
    M_DEBUG,
    M_DEBUG2,
    M_DEBUG3,
#endif
};
#define NUM_DEBUG 3

/* ------------------------------------------------------------------------- */
/*
void _delay_ms(uint8_t ms)
{
    // delay function, tuned for 11.092 MHz clock
    // optimized to assembler
    ms; // keep compiler from complaining?
    __asm;
        ; dpl contains ms param value
    delay$:
        mov	b, #8   ; i
    outer$:
        mov	a, #243    ; j
    inner$:
        djnz acc, inner$
        djnz b, outer$
        djnz dpl, delay$
    __endasm;
}
*/

uint8_t  count;     // main loop counter
//uint8_t temp;      // temperature sensor value
uint8_t  lightval;  // light sensor value

volatile uint8_t displaycounter;
volatile int8_t count_100;
volatile int16_t count_1000;
volatile int16_t count_5000;

volatile int16_t ntpUpdated;   // time since last succ ntp update, sec
//volatile int8_t ntpTimout = 30;
#define ntpTimout 30



volatile int16_t count_20000;
volatile __bit blinker_slowest;


volatile uint16_t count_timeout; // max 6.5536 sec
#define TIMEOUT_LONG 0xFFFF
volatile __bit blinker_slow;
volatile __bit blinker_fast;
volatile __bit blinker1;
volatile __bit blinker_ntp;

volatile __bit loop_gate;

uint8_t dmode = M_NORMAL;     // display mode state
uint8_t kmode = K_NORMAL;

__bit  flash_01;
__bit  flash_23;

uint8_t rtc_hh_bcd;
uint8_t rtc_mm_bcd;
uint8_t rtc_ss_bcd;

__bit rtc_pm;
#ifndef WITHOUT_ALARM
//~ uint8_t alarm_hh_bcd;
//~ uint8_t alarm_mm_bcd;
//~ __bit alarm_pm;
//~ __bit alarm_trigger;
//~ __bit alarm_reset;
#endif
__bit cfg_changed = 1;

volatile __bit S1_LONG;
volatile __bit S1_PRESSED;
volatile __bit S2_LONG;
volatile __bit S2_PRESSED;
#ifdef stc15w408as
volatile __bit S3_LONG;
volatile __bit S3_PRESSED;
#endif

volatile uint8_t debounce[NUM_SW];      // switch debounce buffer
volatile uint8_t switchcount[NUM_SW];
#define SW_CNTMAX 80

enum Event {
    EV_NONE,
    EV_S1_SHORT,
    EV_S1_LONG,
    EV_S2_SHORT,
    EV_S2_LONG,
    EV_S1S2_LONG,
#ifdef stc15w408as
    EV_S3_SHORT,
    EV_S3_LONG,
#endif
    EV_TIMEOUT,
};

volatile enum Event event;

void timer0_isr() __interrupt 1 __using 1
{
    uint8_t tmp;
    enum Event ev = EV_NONE;
    // display refresh ISR
    // cycle thru digits one at a time
    uint8_t digit = displaycounter % (uint8_t) 4;

    // turn off all digits, set high
    LED_DIGITS_OFF();

    // auto dimming, skip lighting for some cycles
    if (displaycounter % lightval < 4 ) {
        // fill digits
        LED_SEGMENT_PORT = dbuf[digit];
        // turn on selected digit, set low
        //LED_DIGIT_ON(digit);
        // issue #32, fix for newer sdcc versions which are using non-atomic port access
        tmp = ~((1<<LED_DIGITS_PORT_BASE) << digit);
        LED_DIGITS_PORT &= tmp;
    }
    displaycounter++;

    // 100/sec: 10 ms
    if (count_100 == 100) {
        count_100 = 0;
        // 10/sec: 100 ms
        if (count_1000 == 1000) {
            count_1000 = 0;
            blinker_fast = !blinker_fast;
            loop_gate = 1;
            // 2/sec: 500 ms
            if (count_5000 == 5000) {
                count_5000 = 0;
                blinker_slow = !blinker_slow;

                // 1/ 2sec: 2000 ms
                if (count_20000 == 20000) {
					ntpUpdated+=2; 
					if (ntpUpdated > 15000) { ntpUpdated = 15000;}// last ntp update time counter
                    count_20000 = 0;
                }
                // 500 ms on, 1500 ms off
                blinker_slowest = count_20000 < 5000;

            }
        }

#define MONITOR_S(n) \
        { \
            uint8_t s = n - 1; \
            /* read switch positions into sliding 8-bit window */ \
            debounce[s] = (debounce[s] << 1) | SW ## n ; \
            if (debounce[s] == 0) { \
                /* down for at least 8 ticks */ \
                S ## n ## _PRESSED = 1; \
                if (!S ## n ## _LONG) { \
                    switchcount[s]++; \
                } \
            } else { \
                /* released or bounced */ \
                if (S ## n ## _PRESSED) { \
                    if (!S ## n ## _LONG) { \
                        ev = EV_S ## n ## _SHORT; \
                    } \
                    S ## n ## _PRESSED = 0; \
                    S ## n ## _LONG = 0; \
                    switchcount[s] = 0; \
                } \
            } \
            if (switchcount[s] > SW_CNTMAX) { \
                S ## n ## _LONG = 1; \
                switchcount[s] = 0; \
                ev = EV_S ## n ## _LONG; \
            } \
        }

        MONITOR_S(1);
        MONITOR_S(2);
#ifdef stc15w408as
        MONITOR_S(3);
#endif

        if (ev == EV_S1_LONG && S2_PRESSED) {
            S2_LONG = 1;
            switchcount[1] = 0;
            ev = EV_S1S2_LONG;
        } else if (ev == EV_S2_LONG && S1_PRESSED) {
            S1_LONG = 1;
            switchcount[0] = 0;
            ev = EV_S1S2_LONG;
        }
        if (event == EV_NONE) {
            event = ev;
        }
    }
    count_100++;
    count_1000++;
    count_5000++;
    count_20000++;

    if (count_timeout != 0) {
        count_timeout--;
        if (count_timeout == 0) {
            if (event == EV_NONE) {
                event = EV_TIMEOUT;
            }
        }
    }

}

/*
// macro expansion for MONITOR_S(1)
{
    uint8_t s = 1 - 1;
    debounce[s] = (debounce[s] << 1) | SW1 ;
    if (debounce[s] == 0) {
        S_PRESSED = 1;
        if (!S_LONG) {
            switchcount[s]++;
        }
    } else {
        if (S1_PRESSED) {
            if (!S1_LONG) {
                ev = EV_S1_SHORT;
            }
            S1_PRESSED = 0;
            S1_LONG = 0;
            switchcount[s] = 0;
        }
    }
    if (switchcount[s] > SW_CNTMAX) {
        S1_LONG = 1;
        switchcount[s] = 0;
        ev = EV_S1_LONG;
    }
}
*/

// Call timer0_isr() 10000/sec: 0.0001 sec
// Initialize the timer count so that it overflows after 0.0001 sec
// THTL = 0x10000 - FOSC / 12 / 10000 = 0x10000 - 92.16 = 65444 = 0xFFA4
void Timer0Init(void)		//100us @ 11.0592MHz
{
    // refer to section 7 of datasheet: STC15F2K60S2-en2.pdf
    // TMOD = 0;    // default: 16-bit auto-reload
    // AUXR = 0;    // default: traditional 8051 timer frequency of FOSC / 12
    // Initial values of TL0 and TH0 are stored in hidden reload registers: RL_TL0 and RL_TH0
	TL0 = 0xA4;		// Initial timer value
	TH0 = 0xFF;		// Initial timer value
    TF0 = 0;		// Clear overflow flag
    TR0 = 1;		// Timer0 start run
    ET0 = 1;        // Enable timer0 interrupt
    EA = 1;         // Enable global interrupt
}

// Formula was : 76-raw*64/637 - which makes use of integer mult/div routines
// Getting degF from degC using integer was not good as values were sometimes jumping by 2
// The floating point one is even worse in term of code size generated (>1024bytes...)
// Approximation for slope is 1/10 (64/637) - valid for a normal 20 degrees range
// & let's find some other trick (80 bytes - See also docs\Temp.ods file)
//~ int8_t gettemp(uint16_t raw) {
    //~ uint16_t val=raw;
    //~ uint8_t temp;

    //~ raw<<=2;
    //~ if (CONF_C_F) raw<<=1;  // raw*5 (4+1) if Celcius, raw*9 (4*2+1) if Farenheit
    //~ raw+=val;

    //~ if (CONF_C_F) {val=6835; temp=32;}  // equiv. to temp=xxxx-(9/5)*raw/10 i.e. 9*raw/50
                                        //~ // see next - same for degF
             //~ else {val=5*757; temp=0;}  // equiv. to temp=xxxx-raw/10 or which is same 5*raw/50  
                                        //~ // at 25degC, raw is 512, thus 24 is 522 and limit between 24 and 25 is 517
                                        //~ // so between 0deg and 1deg, limit is 517+24*10 = 757 
                                        //~ // (*5 due to previous adjustment of raw value)
    //~ while (raw<val) {temp++; val-=50;}

    //~ return temp + (cfg_table[CFG_TEMP_BYTE] & CFG_TEMP_MASK) - 4;
//~ }

//~ void dot3display(__bit pm)
//~ {
//~ #ifndef WITHOUT_ALARM
    //~ // dot 3: If alarm is on, blink for 500 ms every 2000 ms
    //~ //        If 12h: on if pm when not blinking
    //~ if (!H12_12) { // 24h
        //~ pm = CONF_ALARM_ON && blinker_slowest && blinker_fast;
    //~ } else if (CONF_ALARM_ON && blinker_slowest) {
        //~ pm = blinker_fast;
    //~ }
//~ #endif
    //~ dotdisplay(3, pm);
//~ }

uint8_t hh = 0;
uint8_t mm = 0;
uint8_t ss = 0;

uint8_t ww = 0;
uint8_t tt = 0;
//~ uint8_t uu = 0;

uint8_t h0 = 0;
uint8_t pm = 0;

char btemp = 0;
char * pRec = 0;

volatile char tmp;
uint8_t i = 0;
volatile enum Event ev;
/*********************************************/
int main()
{
    // SETUP
    // set photoresistor & ntc pins to open-drain output
    P1M1 |= (1<<ADC_LIGHT) | (1<<ADC_TEMP);
    P1M0 |= (1<<ADC_LIGHT) | (1<<ADC_TEMP);

    // init rtc
    ds_init();
    // init/read ram config
    ds_ram_config_init();

    // uncomment in order to reset minutes and hours to zero.. Should not need this.
    //ds_reset_clock();

    Timer0Init(); // display refresh & switch read
    
    //~ P1M1  |= 0b00110000;
	//~ P1M0  |= 0b00110000;
	
	//~ LTI_0;
	//~ LRI_0;
	
	serial_init ();
	
	SBUF = IE;
	
	memset(buffer_t, 0, BSIZE);
	memset(rec_data, 0, BSIZE);
	
	//~ _delay_ms(200);
	
	SendString("reset\n");
	
	clear_rec_data();
	
	blinker1 = blinker_slow;
    blinker_ntp = blinker_fast;
		
    // LOOP
    while (1)
    {
		{
		
        //~ while (!loop_gate); // wait for open
        if (loop_gate) {
			
	    ev = event;
        event = EV_NONE;

    
        // sample adc, run frequently
        if (count % (uint8_t) 4 == 0) {
            //~ temp = gettemp(getADCResult(ADC_TEMP));
            // auto-dimming, by dividing adc range into 8 steps
            lightval = getADCResult8(ADC_LIGHT) >> 3;
            // set floor of dimming range
            if (lightval < 4) {
                lightval = 4;
            }
        }

        // Read RTC
        ds_readburst();
        // parse RTC
        {
            rtc_hh_bcd = rtc_table[DS_ADDR_HOUR];
            if (H12_12) {
                rtc_hh_bcd &= DS_MASK_HOUR12;
            } else {
                rtc_hh_bcd &= DS_MASK_HOUR24;
            }
            rtc_pm = H12_12 && H12_PM;
            rtc_mm_bcd = rtc_table[DS_ADDR_MINUTES] & DS_MASK_MINUTES;
            
            rtc_ss_bcd = rtc_table[DS_ADDR_SECONDS] & DS_MASK_MINUTES;
            
        }
        //loop_gate = 0; // close gate
        //count++;
	} // if (loop_gate) 
}

	//======
	
	hh = rtc_hh_bcd;
	mm = rtc_mm_bcd;
	ss = rtc_ss_bcd;
	
	
	if (RI){
		tmp = SBUF;
		RI = 0; 
		
		if (tmp != 0) {
			rec_data[rec_num] = tmp;
			
		
			if (rec_data[rec_num] == '*') { // " " = 32
				rReady = 1;
				
				for (i=0;i<BSIZE;i++) {
					char * pRec = rec_data;
					char btemp = *(pRec+i);
					buffer_t[i] = btemp;
					
					//~ SendData(intToChar(i));
					//~ SendData(':');
					//~ SendData(buffer_t[i]);
					//~ SendData('&');
					//~ SendData(rec_data[i]);
					//~ SendData('\n');
					
					rec_data[i] = 0;
				}
				rec_num = 0;
				//strcpy(buffer_t,rec_data);
				
				//SendData('+');	
				
				SendString(buffer_t);
			
			}else {
				rec_num++;
			}
		} 
		
			
	}
	
 if (loop_gate) {
	 clearTmpDisplay();
		
	if (rReady == 1) {
		if ( (buffer_t[0]=='H') && (buffer_t[3]=='M') && (buffer_t[6]=='S')) {
			nH = charToint(buffer_t[1], buffer_t[2]);
			nM = charToint(buffer_t[4], buffer_t[5]);
			nS = charToint(buffer_t[7], buffer_t[8]);
			
			
			hh = intToBCD (nH);
			ds_writebyte(DS_ADDR_HOUR, hh);
			
			mm = intToBCD (nM);
			ds_writebyte(DS_ADDR_MINUTES, mm);
			
			ss = intToBCD (nS);
			ds_writebyte(DS_ADDR_SECONDS, ds_int2bcd(nS));
			
			ntpUpdated = 0;
			SendData('+');
			
			dotdisplay(1, blinker_fast);
		}
		
		if ( (buffer_t[0]=='W') && (buffer_t[3]=='T') && (buffer_t[6]=='U')) {
			nW = charToint(buffer_t[1], buffer_t[2]);
			nT = charToint(buffer_t[4], buffer_t[5]);
			//nU = charToint(buffer_t[7], buffer_t[8]);

			ww = intToBCD (nW);
			tt = intToBCD (nT);
			SendData('o');
			//uu = intToBCD (nU);
		}
		
		rReady = 0;
		
	}
		
		
			
		
			
			//~ SendString(" ");
			//~ SendString(ds_int2bcd(ntpUpdated));
			//~ SendString(intTochar(mm));
			//~ SendData('\n');
			//~ //SendString(buffer_t);
			//~ rReady = 0;
	
		
		if (ntpUpdated>ntpTimout) {
			blinker_ntp = blinker_fast;
			dotdisplay(0, blinker_ntp);
		} else {
			blinker_ntp = blinker_slow;
		}
		
		
		// ===========
		
		 switch (kmode) {

            case K_NORMAL:
                
                if (ev == EV_S1_SHORT) {
                    kmode = K_TEMP_DISP;
                    dmode = M_TEMP_DISP;
                }
             break;
             
             case K_TEMP_DISP:
				if (count_timeout == 0) {
                    count_timeout = TIMEOUT_LONG;
                }
                if (ev == EV_S1_SHORT  || ev == EV_TIMEOUT ) {
					count_timeout = 0;
                    kmode = K_NORMAL;
                    dmode = M_NORMAL;
                }
             break;
                
        }
        
        if ( (kmode == K_TEMP_DISP) || (ss>=85) && (ss<=89) ) {
			dmode = M_TEMP_DISP;
		} else {
			dmode = M_NORMAL;
		}
		
		
        
        switch (dmode) {
            case M_NORMAL:
					
				h0 = hh >> 4;
				
				if (H12_12 && h0 == 0) {
					h0 = LED_BLANK;
				}

				filldisplay(0, h0, 0);
				filldisplay(1, hh & 0x0F, 0);
			
				filldisplay(2, mm >> 4, 0);
				filldisplay(3, mm & 0x0F, 0);
			
				
				dotdisplay(1, blinker_slow);
				dotdisplay(2, blinker_slow);
				
            
            break;
            case M_TEMP_DISP:
                filldisplay(0, ww >> 4, 0);
				filldisplay(1, ww & 0x0F, 0);
			
				filldisplay(2, tt >> 4, 0);
				filldisplay(3, tt & 0x0F, 0);
			
				
				dotdisplay(2, 1);
				
				
				
				 
            break;
                    	
		}
			
		//~ h0 = hh >> 4;
				
		//~ if (H12_12 && h0 == 0) {
			//~ h0 = LED_BLANK;
		//~ }

		//~ filldisplay(0, h0, 0);
		//~ filldisplay(1, hh & 0x0F, 0);
	
		//~ filldisplay(2, mm >> 4, 0);
		//~ filldisplay(3, mm & 0x0F, 0);
	
		
		//~ dotdisplay(1, blinker_slow);
		//~ dotdisplay(2, blinker_slow);
		
                
		// =========== 

        __critical {
            updateTmpDisplay();
        }
        
        WDT_CLEAR();
			
		loop_gate = 0; // close gate
        count++;
		} // if (loop_gate) {
    }
}
/* ------------------------------------------------------------------------- */



//~ void _delay_ms(uint8_t ms)
//~ {	
    //~ // i,j selected for fosc 11.0592MHz, using oscilloscope
    //~ // the stc-isp tool gives inaccurate values (perhaps for C51 vs sdcc?)
    //~ // max 255 ms
    //~ uint8_t i, j;
    //~ do {
    	//~ i = 4;
    	//~ j = 200;
    	//~ do
    	//~ {
    		//~ while (--j);
    	//~ } while (--i);
    //~ } while (--ms);
//~ }

uint8_t intToBCD(uint8_t nn) {
	uint8_t binaryInput = nn; 
   uint8_t bcdResult = 0;
   uint8_t shift = 0;
	
	while (binaryInput > 0) {
      bcdResult |= (binaryInput % 10) << (shift++ << 2);
      binaryInput /= 10;
   }
   
   return bcdResult;
	
}

char intToChar (uint8_t n){
	if (n<10) {
		return n+48;	
	}
	if ( (n>=10) && (n<=15) ) {
		return (n-10)+65;	
	}
	return '!';
	
}

uint8_t charToint (char h, char l){
	return ( (h-0x30)*10 ) + (l-0x30);	
}

/*----------------------------
UART
-----------------------------*/

void UART1_Routine(void) __interrupt 4 __using 1
{
	
	
		
	//~ if (RI){
		//~ RI = 0; 
		//~ tmp = SBUF;
		//~ //SBUF = tmp;
		//~ if (!rReady && (tmp != 0) ) {
			//~ rec_data[rec_num] = tmp; 
			
			//~ if (rec_data[rec_num] == '*') { // " " = 32
				//~ rReady = 1;
			//~ }
			//~ rec_num++;
		//~ }
		
		
		
	//~ }
	

	if (TI){
		TI = 0;    //Clear transmit interrupt flag
		busy = 0; //Clear transmit busy flag	
	
	}
	
	//~ if (RI){
			//~ LRI_1;
		//~ } else {
			//~ LRI_0;
		//~ }
		
	//~ if (TI){
		//~ LTI_1;
	//~ } else {
		//~ LTI_0;
	//~ }
  
}


void clear_rec_data()
{
	memset(rec_data, 0, sizeof(rec_data));
	rec_num = 0;
}

/*----------------------------Send a byte data to UART
Input: dat (data to be sent)
Output:None
* https://github.com/dylqt/Embedded/blob/master/project_indy/stc15_uart.c
----------------------------*/
void SendData(unsigned char dat)
{
	while (busy);    //Wait for the completion of the previous data is sent
	ACC = dat;    //Calculate the even parity bit P (PSW.0)

	busy = 1;
	SBUF = ACC;    //Send data to UART buffer
}

/*----------------------------Send a string to UART
Input: s (address of string)
Output:None
----------------------------*/

void SendString(char *s)
{
	while (*s)    //Check the end of the string
	{
		SendData(*s++);    //Send current char and increment string ptr
	}
}





void serial_init (){
//	ACC = P_SW1;
//    ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
//    P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
    
  ACC = P_SW1;
  ACC &= ~(S1_S0 | S1_S1);    //S1_S0=1 S1_S1=0
  ACC |= S1_S0;               //(P3.6/RxD_2, P3.7/TxD_2)
  P_SW1 = ACC;
  //AUXR1 = 0b10000000;   
//  
//  ACC = P_SW1;
//  ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=1
//  ACC |= S1_S1;               //(P1.6/RxD_3, P1.7/TxD_3)
//  P_SW1 = ACC;  

#if (PARITYBIT == NONE_PARITY)
    SCON = 0x50;                
#elif (PARITYBIT == ODD_PARITY) || (PARITYBIT == EVEN_PARITY) || (PARITYBIT == MARK_PARITY)
    SCON = 0xda;                
#elif (PARITYBIT == SPACE_PARITY)
    SCON = 0xd2;                
#endif

    T2L = ( (uint8_t)(65536-(FOSC/BAUD/4)) & 0xFF);  
    T2H = (65536 - (FOSC/4/BAUD))>>8;
    AUXR = 0x14;                
    AUXR |= 0x01;               
	//AUXR |= 0b00001001; //  STC15-English.pdf p560 B4 - T2R:Timer 2 Run control bit (1 : run Timer 2)
						//   
	
	EA = 1;
    ES = 1;
        
    RI = 0;
    TI = 0;
}
