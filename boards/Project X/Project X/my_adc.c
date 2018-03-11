//*****************************************************************************
//
// single_ended.c - Example demonstrating how to configure the ADC for
// single ended operation.
//
// Copyright (c) 2010-2011 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
//
// Texas Instruments (TI) is supplying this software for use solely and
// exclusively on TI's microcontroller products. The software is owned by
// TI and/or its suppliers, and is protected under applicable copyright
// laws. You may not combine this software with "viral" open-source
// software in order to form a larger program.
//
// THIS SOFTWARE IS PROVIDED "AS IS" AND WITH ALL FAULTS.
// NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT
// NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. TI SHALL NOT, UNDER ANY
// CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
// DAMAGES, FOR ANY REASON WHATSOEVER.
//
// This is part of revision 6852 of the Stellaris Firmware Development Package.
//
//*****************************************************************************

#include "my_adc.h"  // header file for my_adc.c

char strBuf[bufsize];
unsigned long ulPeriod;

uint32_t Timer = 0;
uint32_t Distance = 0;

uint32_t Av[5] = {0,0,0,0,0};
uint32_t Av_Count = 0;

//Systick timer to increment time value, period = 25us
void Timer_Counter(void) {
	Timer++;
}

//Echo receive interrupt
void EchoReceive(void) {
	//Reset timer on high rise
	if (GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_1) == GPIO_PIN_1) {
		Timer = 0;
	}
	else if (!GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_1)) {
		Av[Av_Count] = 34000*Timer*25/1000000;
		Av_Count++;
		if (Av_Count >= 4) {
			Distance = (Av[0]+Av[1]+Av[2]+Av[3]+Av[4])/5;
			Av_Count = 0;
		}
	}
	GPIOPinIntClear(GPIO_PORTF_BASE, GPIO_PIN_1);	
}

void initialise(void) {
	SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN | SYSCTL_XTAL_16MHZ);
  
  //Enable peripheries
  SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
  
  //Echo Receive Load Interrupt Register
  GPIOPortIntRegister(GPIO_PORTF_BASE, EchoReceive);
  //Enable PF1 as echo receive pin
  GPIODirModeSet(GPIO_PORTF_BASE, GPIO_PIN_1, GPIO_DIR_MODE_IN);
  GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_1, GPIO_STRENGTH_8MA, GPIO_PIN_TYPE_STD_WPU);
  GPIOPinIntEnable(GPIO_PORTF_BASE, GPIO_PIN_1);
  GPIOIntTypeSet(GPIO_PORTF_BASE, GPIO_PIN_1, GPIO_BOTH_EDGES);
  IntEnable(INT_GPIOF);
    
  //Counter for Echo timer
  SysTickPeriodSet(SysCtlClockGet()/(Counter_Freq*2));
  SysTickIntRegister(Timer_Counter);
  SysTickEnable();
    
  //
  //Setup PWM
  SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM);
  //Set PF3 as PWM pin
  GPIOPinTypePWM(GPIO_PORTF_BASE, GPIO_PIN_3);
  //Compute value to get PWM frequency
  ulPeriod = SysCtlClockGet() / PWM_Freq;
  //Load PWM generator 2
  PWMGenConfigure(PWM_BASE, PWM_GEN_2, PWM_GEN_MODE_UP_DOWN | PWM_GEN_MODE_NO_SYNC);
  PWMGenPeriodSet(PWM_BASE, PWM_GEN_2, ulPeriod);
  //Set PWM5 positive pulse time to 20us
  PWMPulseWidthSet(PWM_BASE, PWM_OUT_5, 160);
  //Enable PWM5 output signal
  PWMOutputState(PWM_BASE, PWM_OUT_5_BIT, true);
  //Enable PWM2 generator
  PWMGenEnable(PWM_BASE, PWM_GEN_2);
  //
  //
  
  IntMasterEnable();
  
  // intialise the OLED display
  RIT128x96x4Init(1000000);	
}


void updateDisplay(void)
{
	 //RIT128x96x4Clear(); // gets rid of the residual digits
     usprintf(strBuf, "Distance: %d cm   ", Distance); // try %d
     RIT128x96x4StringDraw( strBuf, 10, 20, 15);
}

int main(void)
{
    initialise();

    while(1) {   
        updateDisplay();
    }
}
