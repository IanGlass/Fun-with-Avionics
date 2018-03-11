
//*****************************************************************************
//
// @file Fun_with_Avionics.h
// @author Ian Glass
// @brief Main file for operating helicopter
//
//*****************************************************************************


//Function prototypes
void Motors_Off(void);
void PID_Control(void);
void Phase_A_Handler(void);
void Phase_B_Handler(void);
void initialise(void);
void Update_Display (void);
void Get_ADC(void);
void Toggle_Land(void);
void Land(void);
void Take_Off(void);
void Poll_Buttons(void);
void Button_Debounce(void);

