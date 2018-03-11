
//*****************************************************************************
//
// @file Fun_with_Avionics.c
// @author Ian Glass
// @brief Main file for operating helicopter
//
//*****************************************************************************

#include "Fun_with_Avionics.h"  // header file for my_adc.c

//*****************************************************************************
//


uint32_t PERIOD = 2000;

//Global variables
char StrBuff[40];
char EmptyBuff[198];
unsigned long ulPeriod;

uint16_t Avg_Count = 0;
uint16_t i;

uint16_t G_Main_Duty_Cycle = 0;
uint16_t G_Rotor_Duty_Cycle = 0;

uint32_t G_Start_Up_Count = 0;

uint16_t G_Mid_Main_Duty_Cycle = 0;
uint16_t G_Mid_Rotor_Duty_Cycle = 0;

uint32_t G_Poll_Buttons_Count = 0;

uint16_t G_Desired_Altitude = 0;
uint32_t G_Actual_Altitude = 0;
float G_Desired_Yaw = 180;
float G_Actual_Yaw = 0;

uint16_t G_Altitude_Average[10];

uint16_t G_Block_Buttons = 1;

uint16_t SW2_Up = 1;
uint16_t SW3_Up = 1;
uint16_t SW4_Up = 1;
uint16_t SW5_Up = 1;
uint16_t SW6_Up = 1;

signed long G_Alt_Error;
signed long G_Yaw_Error;
signed long G_Alt_Prev_Error = 0;
signed long G_Yaw_Prev_Error = 0;
signed long G_D_Error;
signed long G_Alt_I_Error;
signed long G_Yaw_I_Error;

signed long G_Alt_Control;
signed long G_Yaw_Control;

signed long G_Alt_Max_Control = 5000000;
signed long G_Yaw_Max_Control = 1260000;

uint16_t uiValue;
unsigned long ulValue[1];

uint16_t G_Phase_A_State;
uint16_t G_Phase_B_State;
uint16_t G_Prev_Phase_A_State;

uint16_t G_Phase_A_Ticks;
uint16_t G_Phase_B_Ticks;

uint32_t G_Altitude_Ticks;
uint16_t ADC_Highest = 628;
uint16_t ADC_Lowest = 300;


//array for displaying gains & desired altitude/yaw
uint16_t Disp_Array[8] = {15, 10, 10 ,10, 10, 10, 10, 10};

//Array for Alt_Kp, Alt_Kd, Alt_Ki, Yaw_Kp, Yaw_Kd and Yaw_Ki, the coefficients for PID control
uint16_t Gain_Array[6] = {27, 3, 3, 60, 1, 2};
uint16_t Array_Count = 0;

void Motors_Off(void) 
{
	if (G_Mid_Main_Duty_Cycle > 0 && G_Mid_Rotor_Duty_Cycle > 0 && G_Start_Up_Count > 1200) {
		G_Mid_Main_Duty_Cycle--;
		G_Mid_Rotor_Duty_Cycle--;
		G_Start_Up_Count = 0;
	}
}

void PID_Control(void) 
{
	//Main rotor PID	
	if (G_Actual_Altitude <= 3 && G_Block_Buttons) {
		Motors_Off();
		G_Main_Duty_Cycle = G_Mid_Main_Duty_Cycle;
	}
	else {
		G_Alt_Error = G_Desired_Altitude - G_Actual_Altitude;	
		G_Alt_I_Error += ((signed long)Gain_Array[2] * G_Alt_Error);
	
		G_Alt_Control = Gain_Array[0] * G_Alt_Error * 1000 + G_Alt_I_Error + (Gain_Array[1] * (float)(G_Alt_Error - G_Alt_Prev_Error))*100;
		
		G_Main_Duty_Cycle = G_Mid_Main_Duty_Cycle + (45 * G_Alt_Control / G_Alt_Max_Control);
		
		if (G_Main_Duty_Cycle > 95) {
			G_Main_Duty_Cycle = 95;
		}
		else if (G_Main_Duty_Cycle < 5) {
			G_Main_Duty_Cycle = 5;
		}
	}
	
	G_Alt_Prev_Error = G_Alt_Error;
	PWMPulseWidthSet(PWM_BASE, PWM_OUT_0, ulPeriod * G_Main_Duty_Cycle / 100);
	
	//Tail rotor PID	
	if (G_Actual_Altitude <= 3 && G_Block_Buttons) {
		G_Rotor_Duty_Cycle = G_Mid_Rotor_Duty_Cycle;
	}
	else {
		G_Yaw_Error = G_Desired_Yaw - G_Actual_Yaw;	
		G_Yaw_I_Error += ((signed long)Gain_Array[5] * G_Yaw_Error);
	
		G_Yaw_Control = Gain_Array[3] * G_Yaw_Error * 100 + G_Yaw_I_Error + (Gain_Array[4] * (float)(G_Yaw_Error - G_Yaw_Prev_Error));
				 
		G_Rotor_Duty_Cycle = G_Mid_Rotor_Duty_Cycle + (45 * G_Yaw_Control / G_Yaw_Max_Control);
		
		if (G_Rotor_Duty_Cycle > 95) {
			G_Rotor_Duty_Cycle = 95;
		}
		else if (G_Rotor_Duty_Cycle < 5) {
			G_Rotor_Duty_Cycle = 5;
		}
	}
	
	G_Yaw_Prev_Error = G_Yaw_Error;
	PWMPulseWidthSet(PWM_BASE, PWM_OUT_1, ulPeriod * G_Rotor_Duty_Cycle / 100);
}

//Correlates Systicks with an 'Adjustable' ticks variables and sets button poll true for every wrap on zero
void SysTickHandler (void) 
{
	G_Poll_Buttons_Count++;
	G_Start_Up_Count++;
	PID_Control();
}

//PA1/U0Tx (phase A) interrupt handler for quadrature encoding, works in conjunction with Phase_B_Handler()
void Phase_A_Handler(void) 
{
	GPIOPinIntClear(GPIO_PORTA_BASE, GPIO_PIN_1);
	if (!Is_PA1_High) {
		G_Phase_A_State = 0;
	}
	else {
		G_Phase_A_State = 1;
	}
	if (G_Phase_B_State == G_Phase_A_State) {
			G_Actual_Yaw += + 1.61;
	}
	else if (G_Actual_Yaw > 0) {
		G_Actual_Yaw -= 1.61;
	}
}

//PF5 (phase B) interrupt handler for quadrature encoding
void Phase_B_Handler(void) 
{
	GPIOPinIntClear(GPIO_PORTF_BASE, GPIO_PIN_5);
	if (!Is_PF5_High) {
		G_Phase_B_State = 0;
	}
	else {
		G_Phase_B_State = 1;
	}
}

//Initialise peripherals and GPIO
void initialise(void)
{    
    
  	//Enable GPIO module for PortG/buttons
  	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOG); 	
  	
  	//Set Buttons as inputs
  	GPIODirModeSet(GPIO_PORTG_BASE, GPIO_PIN_7, GPIO_DIR_MODE_IN);//Select button
	GPIOPadConfigSet(GPIO_PORTG_BASE, GPIO_PIN_7, GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	
	GPIODirModeSet(GPIO_PORTG_BASE, GPIO_PIN_3, GPIO_DIR_MODE_IN);//Up button
	GPIOPadConfigSet(GPIO_PORTG_BASE, GPIO_PIN_3, GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	
	GPIODirModeSet(GPIO_PORTG_BASE, GPIO_PIN_4, GPIO_DIR_MODE_IN);//Down button
	GPIOPadConfigSet(GPIO_PORTG_BASE, GPIO_PIN_4, GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	
	GPIODirModeSet(GPIO_PORTG_BASE, GPIO_PIN_5, GPIO_DIR_MODE_IN);//Left button
	GPIOPadConfigSet(GPIO_PORTG_BASE, GPIO_PIN_5, GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	
	GPIODirModeSet(GPIO_PORTG_BASE, GPIO_PIN_6, GPIO_DIR_MODE_IN);//Right button
	GPIOPadConfigSet(GPIO_PORTG_BASE, GPIO_PIN_6, GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
	//
	
    
    // Set the clocking to run directly from the crystal.
    SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN |
                   SYSCTL_XTAL_8MHZ);
    SysCtlPWMClockSet(SYSCTL_PWMDIV_1);
    //

    
    // Initialize the OLED display.
    RIT128x96x4Init(1000000);
    /*sprintf(StrBuff, "Motors");
	RIT128x96x4StringDraw(StrBuff, 5, 70, 15);*/
    //

	//
    //Enable PWM peripherals
    SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
    //
    
    // Set GPIO G2 and D1 as PWM pins.  They are used to output the PWM0 and
    // PWM1 signals uses to drive motor and tail rotors
    GPIOPinTypePWM(GPIO_PORTG_BASE, GPIO_PIN_2);
    GPIOPinTypePWM(GPIO_PORTD_BASE, GPIO_PIN_1);
    
    // Compute the PWM period based on the system clock.
    ulPeriod = SysCtlClockGet() / FREQ;

    // Set the PWM period to 500 Hz.
    PWMGenConfigure(PWM_BASE, PWM_GEN_0,
                    PWM_GEN_MODE_UP_DOWN | PWM_GEN_MODE_NO_SYNC);
    PWMGenPeriodSet(PWM_BASE, PWM_GEN_0, ulPeriod);

    // Set the PWM0 & PWM1 duty cycle.
    PWMPulseWidthSet(PWM_BASE, PWM_OUT_0, ulPeriod * G_Main_Duty_Cycle/100);
    PWMPulseWidthSet(PWM_BASE, PWM_OUT_1, ulPeriod * G_Rotor_Duty_Cycle/100);
    
    // Enable the PWM0 & PWM1 peripheral.
    PWMOutputState(PWM_BASE, PWM_OUT_0_BIT| PWM_OUT_1_BIT, true);
    
    // Enable the PWM generators.
    PWMGenEnable(PWM_BASE, PWM_GEN_0);
    //
        

	//Enable Systick and its interrupts
  	SysTickPeriodSet(PERIOD);
  	SysTickEnable();
  	SysTickIntRegister(SysTickHandler);
  	SysTickIntEnable();
  	//
  		
	
  	//
  	// The ADC0 peripheral must be enabled for use.
  	SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);

	//
	// For this example ADC0 is used with AIN0 on port B1. This
	// was given by the LM3S1968 data sheet.
	// Therefore, GPIO port B needs to be enabled
	// so these pins can be used.
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);  
	
	// Select the analog ADC function for these pins (PB1).
	// The LM3S1968 data sheet was consulted to see which functions are 
	// allocated per pin.
	GPIOPinTypeADC(GPIO_PORTB_BASE, GPIO_PIN_1); 
	// Enable sample sequence 3 with a processor signal trigger.  Sequence 3
	// will do a single sample when the processor sends a signal to start the
	// conversion.  Each ADC module has 4 programmable sequences, sequence 0
	// to sequence 3.  This example is arbitrarily using sequence 3.
	ADCSequenceConfigure(ADC0_BASE, 3, ADC_TRIGGER_PROCESSOR, 0);
	
	//
	// Configure step 0 on sequence 3.  Sample channel 0 (ADC_CTL_CH0) in
	// single-ended mode (default) and configure the interrupt flag
	// (ADC_CTL_IE) to be set when the sample is done.  Tell the ADC logic
	// that this is the last conversion on sequence 3 (ADC_CTL_END).  Sequence
	// 3 has only one programmable step.  Sequence 1 and 2 have 4 steps, and
	// sequence 0 has 8 programmable steps.  Since we are only doing a single
	// conversion using sequence 3 we will only configure step 0.  For more
	// information on the ADC sequences and steps, reference the datasheet.
	ADCSequenceStepConfigure(ADC0_BASE, 3, 0, ADC_CTL_CH0 | ADC_CTL_IE |
	                             ADC_CTL_END);    
	//
	// Since sample sequence 3 is now configured, it must be enabled.
	ADCSequenceEnable(ADC0_BASE, 3);     
	
	//
	// Clear the interrupt status flag.  This is done to make sure the
	// interrupt flag is cleared before we sample.
	ADCIntClear(ADC0_BASE, 3);  


	//
	//PA1/U0TX (phase A) & PF7 (phase B) are used for quadrature encoding
	//Enable peripherals for port F
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
	
	//Enable PA1/U0TX & PF5 as inputs
	GPIODirModeSet(GPIO_PORTA_BASE, GPIO_PIN_1, GPIO_DIR_MODE_IN);
	GPIOPadConfigSet(GPIO_PORTA_BASE, GPIO_PIN_1, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);
	GPIODirModeSet(GPIO_PORTF_BASE, GPIO_PIN_5, GPIO_DIR_MODE_IN);
	GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_5, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);
	
	//Set Handler for PA1/U0TX & PF5
	GPIOPortIntRegister(GPIO_PORTA_BASE, Phase_A_Handler);
	GPIOPortIntRegister(GPIO_PORTF_BASE, Phase_B_Handler);
	
	//Enable interrupts for PA1/U0TX & PF5
	GPIOPinIntEnable(GPIO_PORTA_BASE, GPIO_PIN_1);
	GPIOPinIntEnable(GPIO_PORTF_BASE, GPIO_PIN_5);
	
	//Set the interrupt type for PA1/U0TX &  PF5
	GPIOIntTypeSet(GPIO_PORTA_BASE, GPIO_PIN_1, GPIO_BOTH_EDGES);
	GPIOIntTypeSet(GPIO_PORTF_BASE, GPIO_PIN_5, GPIO_BOTH_EDGES);
	
	//Globally enable interrupts
	IntMasterEnable();
  
}

void Update_Display (void) 
{
		
	//Re-displays on screen-Desired values
	sprintf(StrBuff,"Desired Alt/Yaw: ");
	RIT128x96x4StringDraw(StrBuff, 5, 10, 15);
	sprintf(StrBuff,"%u%c ",G_Desired_Altitude, 37);
	RIT128x96x4StringDraw(StrBuff, 5, 20, Disp_Array[0]);
	sprintf(StrBuff,"%u degrees ", (int)G_Desired_Yaw);
	RIT128x96x4StringDraw(StrBuff, 30, 20, Disp_Array[1]);
	
	//Re-displays on screen-Actual values	
	sprintf(StrBuff,"Actual Alt/Yaw: ");
	RIT128x96x4StringDraw(StrBuff, 5, 40, 15);
	sprintf(StrBuff,"%u%c ", G_Actual_Altitude, 37);
	RIT128x96x4StringDraw(StrBuff, 5, 50, 15);
	sprintf(StrBuff,"%u degrees ", (int)G_Actual_Yaw);
	RIT128x96x4StringDraw(StrBuff, 30, 50, 15);
	
	sprintf(StrBuff,"Kp: ");
	RIT128x96x4StringDraw(StrBuff, 5, 60, Disp_Array[2]);
	sprintf(StrBuff,"Kd: ");
	RIT128x96x4StringDraw(StrBuff, 22, 60, Disp_Array[3]);
	sprintf(StrBuff,"Ki: ");
	RIT128x96x4StringDraw(StrBuff, 39, 60, Disp_Array[4]);
	
	sprintf(StrBuff,"%u ", Gain_Array[0]);
	RIT128x96x4StringDraw(StrBuff, 5, 70, Disp_Array[2]);
	sprintf(StrBuff,"%u ", Gain_Array[1]);
	RIT128x96x4StringDraw(StrBuff, 22, 70, Disp_Array[3]);
	sprintf(StrBuff,"%u ", Gain_Array[2]);
	RIT128x96x4StringDraw(StrBuff, 39, 70, Disp_Array[4]);
	
	sprintf(StrBuff,"Kp: ");
	RIT128x96x4StringDraw(StrBuff, 61, 60, Disp_Array[5]);
	sprintf(StrBuff,"Kd: ");
	RIT128x96x4StringDraw(StrBuff, 78, 60, Disp_Array[6]);
	sprintf(StrBuff,"Ki: ");
	RIT128x96x4StringDraw(StrBuff, 95, 60, Disp_Array[7]);
	
	sprintf(StrBuff,"%u ", Gain_Array[3]);
	RIT128x96x4StringDraw(StrBuff, 61, 70, Disp_Array[5]);
	sprintf(StrBuff,"%u ", Gain_Array[4]);
	RIT128x96x4StringDraw(StrBuff, 78, 70, Disp_Array[6]);
	sprintf(StrBuff,"%u ", Gain_Array[5]);
	RIT128x96x4StringDraw(StrBuff, 95, 70, Disp_Array[7]);
	
}

void Get_ADC(void) 
{
	
    	// Trigger the ADC conversion.
        ADCProcessorTrigger(ADC0_BASE, 3);
        
    	// Wait for conversion to be completed.
        while(!ADCIntStatus(ADC0_BASE, 3, false)){
        }
        
        // Read ADC Value.
        ADCSequenceDataGet(ADC0_BASE, 3, ulValue);
        uiValue = (unsigned int) ulValue[0];
        //Next part rectifies altitude sig in from heli ** dont use when using helisim board!!
        
        //Bounds uiValue
        if (uiValue < ADC_Lowest) {
        	uiValue = ADC_Lowest;
        }
        else if (uiValue > ADC_Highest) {
        	uiValue = ADC_Highest;
        }
        
        G_Altitude_Average[Avg_Count] = 100 - (uiValue - ADC_Lowest)*100/(ADC_Highest - ADC_Lowest);
        
        if (Avg_Count == 9) {
        	for (i = 0; i <= 9; i++) {
        		G_Actual_Altitude += (float)G_Altitude_Average[i];
        	}
        	G_Actual_Altitude = G_Actual_Altitude/11;
			Avg_Count = 0;
        }
        else {
        	Avg_Count++;
        }
}

void Toggle_Land(void) 
{
	if (Select_Button_Pushed && !G_Block_Buttons && SW2_Up) {
		G_Block_Buttons = 1;
		SW2_Up = 0;
	}
	if (Select_Button_Pushed && G_Block_Buttons && SW2_Up) {
		G_Block_Buttons = 0;
		SW2_Up = 0;
	}	
}

void Land(void) 
{
	if (G_Actual_Altitude <= G_Desired_Altitude) {
		G_Desired_Altitude -= 5;
	}
}

void Take_Off(void)
{
	if (G_Mid_Main_Duty_Cycle < 50 && G_Mid_Rotor_Duty_Cycle < 50 && G_Start_Up_Count > 1200) {
		G_Mid_Main_Duty_Cycle++;
		G_Mid_Rotor_Duty_Cycle++;
		G_Start_Up_Count = 0;
	}
}

void Poll_Buttons(void) 
{
	if (!G_Block_Buttons) {
		if (Up_DPad_Pushed && SW3_Up) {
			if (Array_Count == 0 && G_Desired_Altitude < 100) {
				G_Desired_Altitude += 10;
			}
			else if (Array_Count == 1 && G_Desired_Yaw < 360) {
				G_Desired_Yaw += 15;
			}
			else {
				Gain_Array[Array_Count-2] += 1;
			}
			SW3_Up = 0;
		}
		else if (Down_DPad_Pushed && SW4_Up) {
			if (Array_Count == 0 && G_Desired_Altitude > 10) {
				G_Desired_Altitude -= 10;
			}
			else if (Array_Count == 1 && G_Desired_Yaw > 0) {
				G_Desired_Yaw -= 15;
			} 
			else {
				Gain_Array[Array_Count-2] -= 1;
			}
			SW4_Up = 0;
		}
		else if (Left_DPad_Pushed && SW5_Up) {
			Disp_Array[Array_Count] = 10;
			if (Array_Count > 0) {
				Array_Count -= 1;
			}
			Disp_Array[Array_Count] = 15;
			SW5_Up = 0;
		}
		else if (Right_DPad_Pushed && SW6_Up) {
			Disp_Array[Array_Count] = 10;
			if (Array_Count < 7) {
				Array_Count += 1;
			}
			Disp_Array[Array_Count] = 15;
			SW6_Up = 0;
		}
	}
	Toggle_Land();
	if (G_Block_Buttons && G_Desired_Altitude > 0) {
		Land();
		G_Block_Buttons = 1;
	}
	if (!G_Block_Buttons) {
		Take_Off();
	}
	G_Poll_Buttons_Count = 0;
}

void Button_Debounce(void) 
{
	if (!Select_Button_Pushed) {
		SW2_Up = 1;
	}
	if (!Up_DPad_Pushed) {
		SW3_Up = 1;
	}
	if (!Down_DPad_Pushed) {
		SW4_Up = 1;
	}
	if (!Left_DPad_Pushed) {
		SW5_Up = 1;
	}
	if (!Right_DPad_Pushed) {
		SW6_Up = 1;
	}
}	

int main(void)
{
    initialise();
    G_Phase_A_State = Is_PA1_High;
    G_Phase_B_State = Is_PF5_High;
    while(true) {
		Update_Display();
		if (G_Poll_Buttons_Count >= BUTTON_POLL_RATE) {
			Poll_Buttons();
		}
		if (G_Poll_Buttons_Count == 0) {
			Button_Debounce();
		}
		Get_ADC();
    }
}
