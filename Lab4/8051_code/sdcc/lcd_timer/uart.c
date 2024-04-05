#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include<stdint.h>
#include"uart.h"
#include "lcd.h"
#include"timer.h"


int putchar(int ch)
{
    // Wait until the transmit buffer is ready (TI flag is set)
    while (TI == 0)
    {
        // Do nothing; wait for TI to become 1
        ;
    }

    // Load the character into the serial data buffer (SBUF)
    SBUF = ch;

    // Clear the transmit interrupt flag (TI) to indicate completion
    TI = 0;

    // Return the character that was sent
    return ch;
}


int getchar(void)
{
    // Wait until the receive buffer is ready (RI flag is set)
    while (RI == 0)
    {
        // Do nothing; wait for RI to become 1
        ;
    }

    // Clear the receive interrupt flag (RI) to indicate completion
    RI = 0;

    // Return the character received from the serial data buffer (SBUF)
    return SBUF;
}


uint16_t get_input(void)
{
    __xdata uint16_t num = 0;
    __xdata uint8_t count = 0;
    __xdata uint8_t input_arr[16];

    while (input_arr[count] = getchar())
    {
        // Read characters until Enter is pressed (13)
        if (input_arr[count] == 13)
        {
            break;
        }

        if (input_arr[count] == 8)
        {
            // Handle backspace (character 8)
            putchar(8);     // Backspace
            putchar(32);    // Space
            putchar(8);     // Backspace
            count--;
        }

        if ((input_arr[count] >= '0') && (input_arr[count] <= '9'))
        {
            putchar(input_arr[count]);  // Echo the input character
            input_arr[count] = input_arr[count] - '0';  // Convert ASCII digit to integer
            count++;
        }
    }

    for (int i = 0; i < count; i++)
    {
        num = num * 10;   // Build a number from digits
        num = num + input_arr[i];
    }

    return num;  // Return the input number
}

int8_t int_to_char(int temp) /* Function that includes a switch statement for hex definition */
{
    switch (temp) /* Switch case for defining hex characters above 9 i.e., 'A' to 'F' */
    {
    case 0:
        return '0';

    case 1:
        return '1';

    case 2:
        return '2';

    case 3:
        return '3';

    case 4:
        return '4';

    case 5:
        return '5';

    case 6:
        return '6';

    case 7:
        return '7';

    case 8:
        return '8';

    case 9:
        return '9';

    case 10:
        return 'A';

    case 11:
        return 'B';

    case 12:
        return 'C';

    case 13:
        return 'D';

    case 14:
        return 'E';

    case 15:
        return 'F';

    /* To convert int to char */
    }

    // Default case, returns '0' for any other value not covered by the switch
    return '0';
}


uint8_t char_to_int(uint8_t temp)
{
    // Check if the character is a digit ('0' to '9')
    if ((temp >= '0') && (temp <= '9'))
    {
        // Convert the character to its equivalent integer value
        temp -= '0';
    }
    // Check if the character is a lowercase letter ('a' to 'f')
    else if ((temp >= 'a') && (temp <= 'f'))
    {
        // Convert the character to its equivalent integer value and adjust for the hex range
        temp -= 'a';
        temp += 10;
    }
    // Check if the character is an uppercase letter ('A' to 'F')
    else if ((temp >= 'A') && (temp <= 'F'))
    {
        // Convert the character to its equivalent integer value and adjust for the hex range
        temp -= 'A';
        temp += 10;
    }

    // Return the resulting integer value
    return temp;
}

// Function to fetch a number from the user with a specified base
uint16_t fetch_number(uint8_t base)
{
    // Declare variables to store scanned digit, digit array, digit counter, and loop index
    __xdata uint8_t scanned_digit = 0, digit_array[20], digit_counter = 0, i = 0;
    __xdata uint16_t number = 0;

    // Continue scanning digits until the Enter key (ASCII 13) is pressed
    while (scanned_digit != 13)
    {
        // Get a character from the user
        scanned_digit = getchar();

        // Check if the scanned character is a valid digit in the specified base
        if (((scanned_digit >= '0') && (scanned_digit <= '9')) ||
            ((scanned_digit >= 'a') && (scanned_digit <= 'f')) ||
            ((scanned_digit >= 'A') && (scanned_digit <= 'F')))
        {
            // Print the scanned digit
            putchar(scanned_digit);

            // Convert the scanned character to its integer equivalent and store in digit_array
            digit_array[digit_counter] = char_to_int(scanned_digit);

            // Increment digit counter
            digit_counter++;
        }
        // Check for Backspace (ASCII 8)
        else if (scanned_digit == 8)
        {
            // Print backspace
            putchar(8);

            // Print space to erase the character on the screen
            putchar(32);

            // Print another backspace to move the cursor back
            putchar(8);

            // Decrement digit counter to erase the last entered digit
            digit_counter--;
        }
    }

    // Convert the digit_array to a decimal number using the specified base
    for (i = 0; i < digit_counter; i++)
    {
        // Multiply the current number by the base and add the new digit
        number *= base;
        number += digit_array[i];
    }

    // Return the final number
    return number;
}

// Function to print a number on an LCD display with a specified display width
void lcd_print_number(__xdata int32_t number, __xdata uint8_t display_width)
{
    // Declare variables to store temporary ASCII representation, a temporary data variable, and a counter
    __xdata uint8_t temp_ascii_store[10], temp_data = 0;
    __xdata int8_t counter = 0;
    __xdata uint32_t value_check = 0;

    // Loop through each digit in the specified display width
    for (counter = display_width; counter > 1; counter--)
    {
        // Wait for the LCD to be ready for the next command
        lcd_busy_wait();

        // Check the current display width to determine if leading zeros should be printed
        switch (counter)
        {
            // For a display width of 4, check if the number is less than or equal to 999
            case 4:
            {
                value_check = 999;
                if (number <= value_check)
                {
                    // Set LCD to data mode
                    RS_DATA;

                    // Write to LCD
                    WR_LCD;

                    // Print a leading zero
                    *(lcd_data_write_address) = '0';
                }
                break;
            }

            // Similar checks for display widths of 3 and 2
            case 3:
            {
                value_check = 99;
                if (number <= value_check)
                {
                    RS_DATA;
                    WR_LCD;
                    *(lcd_data_write_address) = '0';
                }
                break;
            }

            case 2:
            {
                value_check = 9;
                if (number <= value_check)
                {
                    RS_DATA;
                    WR_LCD;
                    *(lcd_data_write_address) = '0';
                }
                break;
            }
        }
    }

    // Extract each digit from the number and store in temporary ASCII storage
    do
    {
        temp_ascii_store[counter] = '0' + number % 10;
        number /= 10;
        counter++;
    } while (number > 0);

    // Print each digit to the LCD from the temporary ASCII storage in reverse order
    for (counter -= 1; counter > 0; counter--)
    {
        // Wait for the LCD to be ready for the next command
        lcd_busy_wait();

        // Set LCD to data mode
        RS_DATA;

        // Write to LCD
        WR_LCD;

        // Print the digit to the LCD
        *(lcd_data_write_address) = temp_ascii_store[counter];
    }

    // Return from the function
    return;
}


