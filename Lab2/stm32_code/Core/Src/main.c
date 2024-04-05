/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
#include "stm32f4xx.h"

// Defines for various configurations
#define RCC1_GPIOA_ENR      (0001)
#define RCC1_GPIOD_ENR      (0b01 << 3)
#define GPIOA_PORT0_INPUT1  (0b11)
#define GPIOD_PORT12_OUTPUT1 (0b01 << 24)
#define GPIOD_PORT15_OUTPUT2 (0b01 << 30)
#define EXTI1_IMR_PORTA0     (0b01)
#define EXTI2_RTSR_PORTA0    (0b01)
#define PORTD12              (0b01 << 12)
#define PORTD15              (0b01 << 15)
#define RCC1_TIMER2_ENR      (0b01)
#define TIMER2_CR1_CE        (0b01)
#define TIMER2_DIER_UIE      (0b01)
#define TIMER2_DIER_TIE      (0b01 << 6)
#define TIMER2_SR_UIF        (0b01)
#define EXTERI_PR1_PR0       (0b01)

/* Private function prototypes */
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void TIM2_Init(void);

int main(void)
{
  SystemClock_Config();
  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  TIM2_Init();
  while (1)
  {
    // Main program loop
  }
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  // Configure the main internal regulator output voltage
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  // Initialize the RCC Oscillators according to the specified parameters
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

  // Initialize the CPU, AHB, and APB buses clocks
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
  RCC->AHB1ENR |= RCC1_GPIOA_ENR | RCC1_GPIOD_ENR;  // Enable clocks for PORT A and D

  GPIOA->MODER &= ~(GPIOA_PORT0_INPUT1);           // Clear bit to set the button as a switch
  GPIOD->MODER |= GPIOD_PORT12_OUTPUT1 | GPIOD_PORT15_OUTPUT2;  // Set PORTD12 AND PORTD15 as output
  EXTI->IMR |= EXTI1_IMR_PORTA0;                   // Enable EXTI line for PA0
  EXTI->RTSR |= EXTI2_RTSR_PORTA0;                // Enable rising edge trigger on PA0
  NVIC_EnableIRQ(EXTI0_IRQn);

  // Turn ON LED initially
  GPIOD->BSRR |= PORTD12 | PORTD15;
}

static void TIM2_Init(void)
{
  // Enable clock for Timer 2
  RCC->APB1ENR |= RCC1_TIMER2_ENR;

  // Configure the peripheral to have a visible period
  TIM2->DIER |= TIMER2_DIER_UIE; // Enable Update Interrupt
  TIM2->DIER |= TIMER2_DIER_TIE; // Enable Trigger Interrupt

  TIM2->PSC = 0xFF;   // Set the prescaler
  TIM2->ARR = 0x41EA; // Set the auto-reload value

  // Enable Timer 2 interrupts
  NVIC_EnableIRQ(TIM2_IRQn);
  TIM2->CR1 |= TIMER2_CR1_CE; // Enable the Timer
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

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
    // Error handling code (infinite loop)
  }
  /* USER CODE END Error_Handler_Debug */
}

void EXTI0_IRQHandler(void)
{
  // Disable Timer 2, which will make the LED stop toggling
  EXTI->PR |= EXTERI_PR1_PR0;
  static int i = 0;
  i++;
  if ((i % 2) == 1)
  {
    TIM2->CR1 &= ~(TIMER2_CR1_CE);
  }
  else
  {
    TIM2->CR1 |= TIMER2_CR1_CE;
  }
}

void TIM2_IRQHandler(void)
{
  // Disable Timer 2, which will make the LED stop toggling
  TIM2->SR &= ~(TIMER2_SR_UIF);
  static int i = 0;
  i++;

  if (i % 2)
  {
    GPIOD->BSRR |= PORTD12;
    GPIOD->BSRR |= PORTD15 << 16;
  }
  else
  {
    GPIOD->BSRR |= PORTD15;
    GPIOD->BSRR |= PORTD12 << 16;
  }
}
