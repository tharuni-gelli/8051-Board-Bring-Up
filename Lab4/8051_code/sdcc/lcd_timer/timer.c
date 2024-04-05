#include <stdint.h>
#include <stdio.h>
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include <stdlib.h>
#include <math.h>
#include<string.h>
#include "lcd.h"
#include"uart.h"
#include"timer.h"

__xdata uint32_t time;

// Declare an interrupt service routine for Timer 0 overflow
void rtc_interrupt_handler(void) __interrupt 1
{
    // Declare a static variable to keep track of the overflow counter
    __xdata static uint16_t counter_flag = 0;

    // Clear the Timer 0 overflow flag
    TF0 = 0;

    // Load the low byte of the Timer 0 initial value
    TL0 = timer_0_low;

    // Load the high byte of the Timer 0 initial value
    TH0 = timer_0_high;

    // Check if the counter_flag is 0
    if(counter_flag == 0)
    {
        // If it is 0, set it to 1
        counter_flag = 1;
    }
    else
    {
        // If it is not 0, increment the 'time' variable and call rtc_diplay() function
        time++;
        rtc_diplay();  // Assuming there's a function called rtc_diplay() to display the time
        counter_flag = 0;  // Reset the counter_flag
    }
}


// Initialize the 'time' variable to 0
void rtc_init(void)
{
    time = 0;

    // Enable Timer 0 overflow interrupt and the global interrupt enable
    IE   |= 0x82;

    // Configure Timer 0 in mode 1 (16-bit timer)
    TMOD |= 0x01;

    // Clear the existing timer mode bits to ensure mode 1 is set correctly
    TMOD &= 0xF1;

    // Load the low byte of the Timer 0 initial value
    TL0 = timer_0_low;

    // Load the high byte of the Timer 0 initial value
    TH0 = timer_0_high;

    // Start Timer 0 by setting the TR0 (Run control) bit
    TR0 = 1;

    // Return from the function
    return;
}


// Declare variables to store time components and temporary LCD row/column positions
void rtc_diplay(void)
{
    __xdata uint8_t tenth_of_second = 0, seconds = 0, minutes = 0, temp_lcd_row=0,temp_lcd_column=0;

    // Save the current LCD row and column positions for later restoration
    temp_lcd_column = lcd_current_column;
    temp_lcd_row = lcd_current_row;

    // Calculate tenths of a second, seconds, and minutes from the 'time' variable
    tenth_of_second = time % 10;
    seconds = (time/10) % 60;
    minutes = time/600;

    // Set the LCD cursor to position (3, 8)
    lcd_go_to_x_y(3,8);

    // Display minutes
    lcd_print_number(minutes, 2);

    // Display colon between minutes and seconds
    lcd_put_ch(':');

    // Display seconds
    lcd_print_number(seconds, 2);

    // Display dot between seconds and tenths of a second
    lcd_put_ch('.');

    // Display tenths of a second
    lcd_print_number(tenth_of_second, 1);

    // Restore the original LCD cursor position
    lcd_go_to_x_y(temp_lcd_row,temp_lcd_column);

    // Return from the function
    return;
}


// Stop the Timer 0 to pause the timekeeping
void rtc_stop_time(void)
{
    // Set the TR0 (Run control) bit to 0, stopping Timer 0
    TR0 = 0;
}

// Start the Timer 0 to resume timekeeping
void rtc_start_time(void)
{
    // Set the TR0 (Run control) bit to 1, starting or resuming Timer 0
    TR0 = 1;
}

// Reset the time variable to 0
void rtc_reset_time(void)
{
    // Set the 'time' variable to 0
    time = 0;
}

