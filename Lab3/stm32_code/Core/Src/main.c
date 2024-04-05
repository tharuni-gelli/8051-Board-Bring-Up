/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : This code is used to modify the intensity of on board STM32 LED using PWM TIM4 CH for PD12. Using USART and USER Button controls the Led intensity varies
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include <stdio.h>
#include "stm32f4xx.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define PWM_PERIOD 1000          // Define the period for the PWM signal as 1000 units.
#define PWM_INCREMENT 5          // Define the PWM duty cycle increment in percentage as 5%.
#define PWM_INCREMENT_BUTTON 10  // Define a larger PWM duty cycle increment for button input as 10%.
#define EXTI1_IMR_PORTA0 (0b01)  // Define EXTI1 interrupt mask for PORTA0.
#define EXTI2_RTSR_PORTA0 (0b01) // Define EXTI2 rising edge trigger for PORTA0.
#define REQUIRED_DELAY 4500000   // Define a required delay value as 4500000.
#define TIMER2_CR1_CE (0b01)     // Define Timer 2 Control Register (CR1) bit for Counter Enable (CE).
#define TIMER2_SR_UIF (0b01)     // Define Timer 2 Status Register (SR) bit for Update Interrupt Flag (UIF).
#define TIMER2_DIER_UIE (0b01)   // Define Timer 2 DMA/Interrupt Enable Register (DIER) bit for Update Interrupt Enable (UIE).
#define RCC1_TIMER2_ENR (0b01)   // Define Timer 2 clock enable bit in the RCC1 peripheral (RCC1_TIMER2_ENR).

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
volatile int currentDutyCycle = 60; // Initialize a variable for the current PWM duty cycle to 60%.
volatile int increaseDutyCycle = 1; // Initialize a flag to indicate an increase in duty cycle.
volatile int User_Button = 0; // Initialize a flag to indicate the state of a user button.
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void); // Declare a function prototype for system clock configuration.

static void MX_GPIO_Init(void); // Declare a function prototype for initializing GPIO.

void UART_SendChar(char c); // Declare a function prototype for sending a character over UART.
void UART_SendString(const char* str); // Declare a function prototype for sending a string over UART.
void UpdatePWM(int dutyCycle); // Declare a function prototype for updating the PWM duty cycle.
void USART2_Init(); // Declare a function prototype for initializing USART2.
void PWM_Config(); // Declare a function prototype for configuring PWM settings.
void EXTI0_IRQHandler(void); // Declare a function prototype for the EXTI0 interrupt handler.
char USART2_ReceiveChar(); // Declare a function prototype for receiving a character from USART2.
void TIM2_Init(void); // Declare a function prototype for initializing TIM2.



/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
// Function to send a character over UART
void UART_SendChar(char c)
{
    // Wait until the Transmit Data Register (TXE) bit is set to indicate the data register is empty.
    while (!(USART2->SR & USART_SR_TXE));
    
    // Send the character by writing it to the Data Register (DR).
    USART2->DR = c;
}

char USART2_ReceiveChar()
{
    // Wait until the Receive Data Register Not Empty (RXNE) bit is set to indicate data has been received.
    while (!(USART2->SR & USART_SR_RXNE)); // Wait until data is received
    
    // Read the received character from the Data Register (DR) and return it.
    return USART2->DR;
}

// Function to send a string over UART
void UART_SendString(const char* str)
{
    for (int i = 0; str[i] != '\0'; i++)
    {
        // Send each character in the string using the UART_SendChar function.
        UART_SendChar(str[i]);
    }
}

// Function to update the PWM duty cycle
void UpdatePWM(int dutyCycle)
{
    // Calculate the new PWM duty cycle value and set it in the Capture/Compare Register 1 (CCR1) of TIM4.
    TIM4->CCR1 = (dutyCycle * PWM_PERIOD) / 100;
}

/* USER CODE END 0 */
/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/


  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  //SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  /* USER CODE BEGIN 2 */
  USART2_Init();
  PWM_Config();
  TIM2_Init();

  char command;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
{
    /* USER CODE END WHILE */

    // Check for UART input
    command = USART2_ReceiveChar(); // Receive a character from USART2.
    UART_SendChar(command); // Send the received character back through UART.

    if (command == 'P')
    {
        char uartBuffer[50];
        // Create a string with the current duty cycle and send it through UART.
        sprintf(uartBuffer, "\r\nCurrent Duty Cycle: %d%%\n\r", currentDutyCycle);
        UART_SendString(uartBuffer);
    }
    else if (command == 'A')
    {
        // Increase the current duty cycle by a defined increment.
        currentDutyCycle += PWM_INCREMENT;

        // Check if the duty cycle has exceeded 100% and limit it to 100%.
        if (currentDutyCycle > 100)
        {
            currentDutyCycle = 100;
        }

        // Update the PWM with the new duty cycle value.
        UpdatePWM(currentDutyCycle);
    }
    else if (command == 'B')
    {
        // Decrease the current duty cycle by a defined increment.
        currentDutyCycle -= PWM_INCREMENT;

        // Check if the duty cycle has gone below 0% and limit it to 0%.
        if (currentDutyCycle < 0)
        {
            currentDutyCycle = 0;
        }

        // Update the PWM with the new duty cycle value.
        UpdatePWM(currentDutyCycle);
    }

    /* USER CODE BEGIN 3 */
}
/* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 192;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 8;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
    // Enable the clock for GPIOA and GPIOD using the RCC AHB1 peripheral clock enable register.
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIODEN;

    // Configure PA2 (USART2 TX) and PA3 (USART2 RX) as alternate function (AF7 for USART2).
    // Set the alternate function for PA2 and PA3 in the GPIO alternate function registers (AFR).
    GPIOA->AFR[0] |= (7 << 8) | (7 << 12); // AF7 for USART2

    // Set the mode for PA2 and PA3 to alternate function mode.
    GPIOA->MODER |= GPIO_MODER_MODER2_1 | GPIO_MODER_MODER3_1; // PA2 as AF & PA3 as AF

    // Enable interrupt generation for EXTI line 1, which is mapped to PORTA0.
    EXTI->IMR = EXTI1_IMR_PORTA0;

    // Configure EXTI line 2 to trigger on the rising edge for events on PORTA0.
    EXTI->RTSR = EXTI2_RTSR_PORTA0;

    // Enable the EXTI0 interrupt in the NVIC (Nested Vector Interrupt Controller).
    NVIC_EnableIRQ(EXTI0_IRQn);
}


/* USER CODE BEGIN 4 */
void USART2_Init()
{
    // Enable USART2  clock
    RCC->APB1ENR |= RCC_APB1ENR_USART2EN;

    // Baud rate 9600
    USART2->BRR = 0x0087; // These values are for a 16Mhz Sys clock
    // Baud rate 115200, then BRR will be 0x8A

    // Configure UART
    USART2->CR1 = USART_CR1_TE | USART_CR1_RE | USART_CR1_UE; // Enable transmitter and receiver & Enable USART2

}
/* USER CODE END 4 */

/* USER CODE BEGIN 5 */
// Function to configure the GPIO pin for PWM
void PWM_Config()
{
    // Configure PD12 (User LED1) for PWM to control the LED
    GPIOD->MODER |= GPIO_MODER_MODER12_1; // Set PD12 to alternate function mode
    GPIOD->AFR[1] |= (2 << 16); // Set PD12 to AF2 (TIM4)

    // Enable TIM4 clock
    RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;

    // Configure PWM settings for TIM4
    TIM4->PSC = 0; // No prescaler
    TIM4->ARR = PWM_PERIOD; // Set the auto-reload register
    TIM4->CCR1 = (currentDutyCycle * PWM_PERIOD) / 100; // Set initial duty cycle

    // Configure PWM mode 1 on channel 1
    TIM4->CCMR1 |= (6 << 4); // PWM mode 1
    TIM4->CCER |= TIM_CCER_CC1E; // Enable channel 1 output

    // Enable TIM4 counter
    TIM4->CR1 |= TIM_CR1_CEN;
}

void EXTI0_IRQHandler(void)
{
    // Check if the Pending Register 0 (PR0) bit is set in the EXTI peripheral.
    if (EXTI->PR & EXTI_PR_PR0)
    {
        // Clear the Pending Register 0 (PR0) bit to acknowledge the interrupt.
        EXTI->PR = EXTI_PR_PR0;

        // Check if the User_Button is not currently pressed.
        if (!User_Button)
        {
            // Enable the counter in TIM2 by setting the Counter Enable (CEN) bit.
            TIM2->CR1 |= TIM_CR1_CEN;

            // Set the User_Button flag to indicate that the button is now pressed.
            User_Button = 1;
        }
    }
}

/* USER CODE END 5 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

void TIM2_Init(void) {
    RCC->APB1ENR |= RCC_APB1ENR_TIM2EN; // Enable TIM2 clock

    TIM2->PSC = 8399; // Set prescaler to get 10 kHz
    TIM2->ARR = 999; // Auto-reload value for a 1 ms delay

    TIM2->DIER |= TIM_DIER_UIE; // Enable update interrupt
    NVIC_EnableIRQ(TIM2_IRQn);
}


void TIM2_IRQHandler(void)
{
   // Check if the Update Interrupt Flag (UIF) is set in the status register (SR) of TIM2.
   if(TIM2->SR & TIM_SR_UIF)
   {
      // Clear the Update Interrupt Flag (UIF) by bitwise ANDing with its complement.
      TIM2->SR &= ~TIM_SR_UIF;

      // Check if the User_Button is pressed.
      if(User_Button)
      {
         // Check if the duty cycle should be increased.
         if (increaseDutyCycle)
         {
             // Increment the current duty cycle by a defined amount (PWM_INCREMENT_BUTTON).
             currentDutyCycle += PWM_INCREMENT_BUTTON;

             // Check if the current duty cycle has reached or exceeded 100%.
             if (currentDutyCycle >= 100)
             {
                 // Set the duty cycle to 100% and switch the mode to decreasing.
                 currentDutyCycle = 100;
                 increaseDutyCycle = 0;
             }
         }
         else
         {
             // Decrease the current duty cycle by a defined amount (PWM_INCREMENT_BUTTON).
             currentDutyCycle -= PWM_INCREMENT_BUTTON;

             // Check if the current duty cycle has reached or gone below 0%.
             if (currentDutyCycle <= 0)
             {
                 // Set the duty cycle to 0% and switch the mode to increasing.
                 currentDutyCycle = 0;
                 increaseDutyCycle = 1;
             }
         }

         // Update the PWM with the new duty cycle value.
         UpdatePWM(currentDutyCycle);
      }
   }
}

