#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include<stdint.h>
#include"uart.h"


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

