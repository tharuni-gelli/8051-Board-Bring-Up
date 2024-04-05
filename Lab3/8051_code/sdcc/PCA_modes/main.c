#include <stdio.h>
#include <stdlib.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdint.h>
#include <mcs51/8051.h>

_sdcc_external_startup()
{
    AUXR |= 0x0C;  // Set auxiliary register (AUXR) to configure for accessing 1kb of external memory.
    return 0;
}

int putchar(int ch);
int getchar(void);
uint16_t get_input(void);
void pwm_init();
void pwm_stop();
void watchdog_timer(void);
void init_mode();
void watchdog_control(void);

// Constants defined for various configurations
#define CLK_PERIPH_2 0x02
#define PCA_START 0x00
#define LOW_CMP 0xab
#define HIGH_CMP 0xab
#define MAX_CMP 0xFF
#define COUNT_RUN_BIT 0x40
#define PWM_START_BIT 0x42
#define PWM_STOP_BIT 0x00
#define CLK_CONFIG 0b11111111
#define TIM1_INT 0x80
#define TIM_MODE 0x20
#define UART_ENB 0x50
#define TIM1_START 0x40
#define TIM1_LOAD 0xFD
#define RELOAD_MAX 0xFF

int num = 0;  // Initialize an integer variable 'num' to zero.

__xdata uint8_t watchdog_trigger = 1;  // Define a global variable 'watchdog_trigger'.

int putchar(int ch)
{
    while (TI == 0)
    {
        ;  // Wait until UART Transmit Buffer is ready to send data.
    }

    SBUF = ch;  // Send character 'ch' through UART.
    TI = 0;     // Clear the Transmit Interrupt Flag.

    return ch;
}

int getchar(void)
{
    while (RI == 0)
    {
        ;  // Wait until UART Receive Buffer has received a character.
    }

    RI = 0;  // Clear the Receive Interrupt Flag.
    return SBUF;  // Return the received character.
}

uint16_t get_input(void)
{
    __xdata uint16_t num = 0;
    __xdata uint8_t count = 0;
    __xdata uint8_t input_arr[16];

    while (input_arr[count] = getchar())
    {
        if (input_arr[count] == 13)
        {
            break;  // Exit the loop if Enter key (ASCII 13) is pressed.
        }

        if (input_arr[count] == 8)
        {
            putchar(8);  // Send a backspace character.
            putchar(32);  // Send a space character to erase the character on the screen.
            putchar(8);  // Send another backspace character to position the cursor.
            count--;  // Decrement the count to effectively erase the last character.
        }

        if ((input_arr[count] >= '0') && (input_arr[count] <= '9'))
        {
            putchar(input_arr[count]);  // Echo the digit to the screen.
            input_arr[count] = input_arr[count] - '0';  // Convert ASCII to integer.
            count++;  // Increment the count to process the next character.
        }
    }

    for (int i = 0; i < count; i++)
    {
        num = num * 10;
        num = num + input_arr[i];  // Build a numeric value from the digits entered.
    }

    return num;  // Return the final numeric input.
}

void pwm_init()
{
    CMOD = CLK_PERIPH_2;  // Configure PCA to use peripheral clock divided by 2.
    CL = PCA_START;      // Initialize PCA timer low byte to 0.
    CH = PCA_START;      // Initialize PCA timer high byte to 0.
    CCAP1L = LOW_CMP;    // Set low byte of PCA1 capture register to LOW_CMP.
    CCAP1H = HIGH_CMP;   // Set high byte of PCA1 capture register to HIGH_CMP.
    CCON = COUNT_RUN_BIT;  // Start the PCA counter by setting the run bit.
    CCAPM1 = PWM_START_BIT;  // Set PCA1 to 8-bit PWM mode.
}

void pwm_stop()
{
    CMOD = CLK_PERIPH_2;  // Configure PCA to use peripheral clock divided by 2.
    CL = PCA_START;      // Initialize PCA timer low byte to 0.
    CH = PCA_START;      // Initialize PCA timer high byte to 0.
    CCAP1L = MAX_CMP;    // Set PCA1 capture register to the maximum value.
    CCAP1H = MAX_CMP;    // Set PCA1 capture register to the maximum value.
    CCON = COUNT_RUN_BIT;  // Start the PCA counter by setting the run bit.
    CCAPM1 = PWM_STOP_BIT;  // Stop PCA1 PWM mode.
}

void watchdog_timer(void)
{
    if (watchdog_trigger == 0)
    {
        CCAP4L = 0x00;
        CCAP4H = 0xFF;
        CMOD |= 0x40;    // Enable the watchdog timer.
        CCON = 0x40;     // Start the PCA counter with the watchdog timer.
        CCAPM4 |= 0x4C;  // Start the watchdog timer.
    }
    else
    {
        CMOD = 0x00;  // Disable the watchdog timer.
    }
}

void main(void)
{
    init_mode();  // Initialize the microcontroller's mode.

display:
    printf_tiny("\n\r**************************************MENU**************************************\r");
    printf_tiny("\n\r 1. Run PWM Mode\n\r");
    printf_tiny("\n\r 2. Stop PWM Mode\n\r");
    printf_tiny("\n\r 3. Set FCLK PERIPH at the minimum frequency supported by the CKRL register \n\r");
    printf_tiny("\n\r 4. Set FCLK PERIPH at the maximum frequency supported by the CKRL register \n\r");
    printf_tiny("\n\r 5. Enter Idle mode \n\r");
    printf_tiny("\n\r 6. Enter Power Down mode \n\r");
    printf_tiny("\n\r 7. Watchdog timer mode \n\r");
    printf_tiny("\n\r 8. High-speed mode \n\r");
    printf_tiny("\r********************************************************************************\r");

    while (1)
    {
        printf_tiny("\n\r Enter a number from the menu or press 0 to see the menu again \n\r");
        num = get_input();  // Get a numeric input from the user.
        putchar(num);  // Echo the input character.
        
        if (num == 1)
        {
            printf_tiny("\n\r PWM output ON \n\r");
            pwm_init();  // Initialize PWM mode.
        }
        else if (num == 2)
        {
            printf_tiny("\n\r PWM output OFF \n\r");
            pwm_stop();  // Stop PWM mode.
        }
        else if (num == 3)
        {
            printf_tiny("\n\r Peripheral clock at Minimum Frequency \n\r");
            CKRL &= ~(RELOAD_MAX);  // Set the CKRL register to generate the minimum frequency.
        }
        else if (num == 4)
        {
            printf_tiny("\n\r Peripheral clock at Maximum Frequency \n\r");
            CKRL |= RELOAD_MAX;  // Set the CKRL register to generate the maximum frequency.
        }
        else if (num == 5)
        {
            printf_tiny("\n\r IDLE mode\n\r");
            IEN0 |= 0x01;  // Enable external interrupt 0.
            IPL0 |= 0x01;
            CMOD &= 0x7F;
            PCON |= 0x01;  // Enter IDLE mode.
        }
        else if (num == 6)
        {
            printf_tiny("\n\r Power-down mode\n\r");
            PCON |= 0x02;  // Set PCON bit to enter power-down mode.
        }
        else if (num == 7)
        {
            printf_tiny("\n\r Watchdog timer mode\n\r");
            watchdog_control();
            watchdog_timer();  // Control and start the watchdog timer.
        }
        else if (num == 8)
        {
            printf_tiny("\n\r High-Speed mode on\n\r");
            CMOD = 0x02;  // Configure for high-speed mode.
            CCAP0L = 0x6a;
            CCAP0H = 0x6a;
            CCON = 0x40;  // Set CR - Counter run bit.
            CCAPM0 |= 0x4C;  // Run high-speed mode.
        }
        else if (num == 0)
        {
            goto display;  // Go back to the menu.
        }
    }
}

void init_mode()
{
    CKCON0 |= CLK_CONFIG;  // Set clock configuration to run in X2 mode.
    IEN0 |= TIM1_INT;      // Enable interrupt for timer 1.
    TMOD |= TIM_MODE;      // Set timer 1 to 16-bit auto-reload mode.
    SCON |= UART_ENB;      // Enable UART communication.
    TCON |= TIM1_START;    // Start timer 1.
    TH1 = TIM1_LOAD;       // Set the baud rate for UART communication.
    TI = 1;                // Set the Transmit Interrupt flag.
}

void watchdog_control(void)
{
    if (watchdog_trigger == 1) // if the trigger flag is et, make it to 
    {
        printf_tiny("Watchdog timer is on");
        watchdog_trigger = 0;
    }
    else
    {
        printf_tiny("Watchdog timer is off");
        watchdog_trigger = 1;
    }
}
