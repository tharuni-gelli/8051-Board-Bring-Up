/*
   It handles the allocation and management of multiple buffers, allows user input, and displays reports.
*/

#include <mcs51/8051.h>  // Include the 8051 microcontroller header
#include <at89c51ed2.h>  // Include another header related to the microcontroller
#include <mcs51reg.h>    // Include the register definitions for the microcontroller
#include <stdio.h>       // Include standard I/O library
#include <stdint.h>      // Include standard integer types
#include <stdlib.h>      // Include the standard library for dynamic memory allocation


_sdcc_external_startup()
{
    AUXR |= 0X0C;  // Set some control register (specific to the microcontroller)
    return 0;
}

uint16_t get_input(void);
int putchar (int ch);
int getchar (void);
int get_num1();

int putchar(int ch)
{
    while (TI == 0)
    {
        // Wait for the Transmit Interrupt flag to be ready
        ;
    }

    SBUF = ch; // Write character to serial buffer
    TI = 0;    // Clear the Transmit Interrupt flag

    return ch; // Return the character
}

int getchar(void)
{
    while (RI == 0)
    {
        // Wait for the Receive Interrupt flag to be set
        ;
    }

    RI = 0; // Clear the Receive Interrupt flag
    return SBUF; // Read character from serial buffer and return it
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

int get_num1()
{
    int num = 0;
    int var = 0;
    while (var == 0)
    {
        num = get_input();  // Get user input as a number
        printf_tiny("\n \r The input number is:%d \n \r", num);

        if ((num < 32 || num > 4800))
        {
            printf_tiny("Invalid number! Please try again.\n \r");
            var = 0;
            num = 0;
        }
        else if (num % 16 == 0)
        {
            var = 1;
            num = num;
        }
        else
        {
            printf_tiny("Invalid number! Please try again.\n \r");
            num = 0;
            var = 0;
        }
    }
    return num;
}

// Define the main function with a return type of void.
void main(void)
{
    // Declare variables for character input and counting.
    char input_symbol;
    unsigned int total_symbol = 0;
    unsigned int symbol_stored = 0;
    unsigned int counter = 0;

    // Declare pointers to xdata memory and arrays for buffers and their sizes.
    __xdata uint8_t* buffer0;
    __xdata uint8_t* buffer1;
    __xdata uint8_t* buffern[45]; // An array to store buffer pointers.
    unsigned int buffer_size[47]; // An array to store buffer sizes.

    // Declare variables to store temporary addresses of buffer0 and buffer1.
    uint16_t buffer0_temper;
    uint16_t buffer1_temper;

    // Declare integers for various purposes.
    int num1 = 0;
    int num2 = 0;
    unsigned int deleted;

    // Declare and initialize some loop counters.
    unsigned int i = 2;
    unsigned int j = 2;

    // Declare a variable to keep track of the buffer character count.
    unsigned int buff0_char_count;
    unsigned int total_buffer;

    // Print a welcome message.
    printf_tiny("\n\r********* HELLO :) ********\n\r");

    // Print a prompt to enter a buffer size.
    printf("\n\rEnter a number between 32 & 4800 for buffer size\n\r");

    // Initialize a variable.
    int var = 0;

    // Start a loop to allocate memory for buffer0 and buffer1.
    do
    {
        num1 = get_num1(); // Get a user input for buffer size.

        // Check if memory allocation for buffer0 was successful.
        if ((buffer0 = malloc(num1)) == 0)
        {
            printf_tiny("buffer 0 creation is failed\n\r");
        }

        // Check if memory allocation for buffer1 was successful.
        if ((buffer1 = malloc(num1)) == 0)
        {
            printf_tiny("buffer 1 creation is failed\n\r");

            // If buffer1 allocation fails, free buffer0 and continue.
            free(buffer0);
            continue;
        }

        // Wait until both buffer0 and buffer1 are successfully created.
    } while ((buffer0 == 0) || (buffer1 == 0));

    // Store the start addresses of buffer0 and buffer1 in temporary variables.
    buffer0_temper = (uint16_t)buffer0;
    buffer1_temper = (uint16_t)buffer1;

    // Print information about the successful creation of buffer0 and buffer1.
    printf_tiny("Start Address of buffer0 = 0x%x\n\r", buffer0_temper);
    printf_tiny("Start Address of buffer1 = 0x%x\n\r", buffer1_temper);
    printf_tiny("Buffer_0 and Buffer_1 successfully created\n\r");
    
    // Print options for user interaction.
    printf_tiny("\n\r OPTIONS TO CHOOSE \n\r");
    printf_tiny("You can enter characters to be stored in buffer 0\n\r");
    printf_tiny("Enter + to create a new buffer of size between 20 and 400 bytes\n\r");
    printf_tiny("Enter - to delete a buffer.\n\r");
    printf_tiny("Enter ? to generate a heap report.\n\r");
    printf_tiny("Enter = to display current contents of buffer 0.\n\r");
    printf_tiny("Enter @ to free all buffers and start program again.\n\r");
    printf_tiny("\n\r****************************THANK YOU****************************\n\r");

    // Enter the main loop for user interaction.
    while (1)
    {
        input_symbol = getchar(); // Read a character from the user.
        total_symbol++;
        putchar(input_symbol); // Print the character.
        printf_tiny("\n\r");

        // Check if the input character is an uppercase letter and there's space in buffer0.
        if (((input_symbol) >= 'A') && ((input_symbol) <= 'Z') && (counter < num1))
        {
            symbol_stored++;
            *((buffer0) + counter) = input_symbol; // Store the character in buffer0.
            counter++;
            printf_small("counter=%d, total char=%d, storage char=%d\n\r", counter, total_symbol, symbol_stored);
        }

        // Check if buffer0 is full and the input character is not a special command.
        else if ((counter == num1) && (input_symbol != '+') && (input_symbol != '-') && (input_symbol != '?') && (input_symbol != '=') && (input_symbol != '@'))
        {
            putchar(input_symbol);
            printf_tiny("\n\rbuffer 0 is full.\n\r");
        }

        // Check if the user wants to create a new buffer.
        else if (input_symbol == '+')
        {
            printf_tiny("\n\r Creates a new buffer \n\r");
            printf_tiny("\n\rEnter the new buffer size between 20 and 800\n\r");
            num2 = get_input(); // Get user input for the new buffer size.

            // Check if the buffer size is valid.
            if (num2 < 20 || num2 > 800)
            {
                // Set the buffer size to 0 if it is invalid.
                num2 = 0;
            }

            // Allocate memory for the new buffer and store its address.
            buffern[i] = malloc(num2);

            // Check if the memory allocation was successful.
            if (buffern[i] == NULL)
            {
                // Print an error message and prompt the user to try again.
                printf_tiny("\n\rMemory Allocation for Buffer_%d Failed\n\rPress '+' to Try again\n\r", i);
            }
            else
            {
                // Print a success message and information about the new buffer.
                printf_tiny("\n\r Successful allocated memory for Buffer_%d\n\r", i);
                printf_tiny("\n\rBuffer_%d has allocated a size of %d\n\r", i, num2);
                printf_tiny("\n\rStart Address of buffer_%d = 0x%x\n\r", i, (uint16_t)(buffern[i]));

                // Add the buffer size to the list of buffer sizes.
                buffer_size[j] = num2;
                j++;
                i++;
            }
        }

        // Check if the user wants to delete a buffer.
        else if (input_symbol == '-')
        {
            printf_tiny("\n\rEnter a valid buffer number\n\r");

            // Taking input from the user for the buffer number to delete.
            deleted = get_input();

            if (deleted == 0)
            {
                printf_tiny("\n\rBuffer 0 cannot be deleted!\n\r");
            }
            else if (deleted == 1)
            {
                free(buffer1);
                printf_tiny("\n\rDeleting buffer 1\n\r");
                buffer1 = 0;
                printf_tiny("Buffer 1 is free");
            }
            else if (deleted > 1 && deleted < (i))
            {
                printf_tiny("\n\rDeleting buffer %d \n\r", deleted);
                free(buffern[deleted]);
                printf_tiny("\n\rBuffer %d is Free\n\r", deleted);
                buffern[deleted] = 0;
            }
            else
            {
                printf_tiny("\n\rEnter a valid buffer number\n\rPress '-' to delete any valid buffer\n\r");
            }
        }

        // Check if the user wants to display the contents of buffer0.
        else if (input_symbol == '=')
        {
            printf_tiny("\n\rThe Stored Characters in Buffer 0 are\n\r");

            for (buff0_char_count = 0; buff0_char_count < symbol_stored; buff0_char_count++)
            {
                if (buff0_char_count == 0)
                {
                    printf_tiny("0x%x>> %x", (uint16_t)(buffer0 + buff0_char_count), *((buffer0) + (buff0_char_count)));
                }
                else if ((buff0_char_count % 16) != 0)
                {
                    printf_tiny(" %x", *((buffer0) + (buff0_char_count)));
                }
                else if (buff0_char_count % 16 == 0)
                {
                    printf_tiny("\n\r0x%x>> %x", (uint16_t)(buffer0 + buff0_char_count), *((buffer0) + (buff0_char_count)));
                }
            }
        }

        // Check if the user wants to free all buffers and start the program again.
        else if (input_symbol == '@')
        {
            printf_tiny("\n\rDeleting Buffer 0 \n\r");
            free(buffer0);
            printf_tiny("\n\rBuffer 0 is free\n\r");

            printf_tiny("\n\rDeleting Buffer 1 \n\r");
            free(buffer1);
            printf_tiny("\n\rBuffer 1 is free\n\r");

            // Loop to free all allocated buffers other than buffer0 and buffer1.
            for (total_buffer = 2; total_buffer < i; total_buffer++)
            {
                printf_tiny("\n\rDeleting buffer_%d \n\r", total_buffer);
                free(buffern[total_buffer]);
                printf_tiny("\n\rBuffer %d is free \n\r", total_buffer);
            }

            // Restart the program by calling the main() function.
            main();
        }

        // Check if the user wants to generate a heap report.
        else if (input_symbol == '?')
        {
            printf_tiny("******************** REPORT OF HEAP *********************");

            printf_tiny("\n\rBuffer 0\n\r");
            printf_tiny("\n\rIts Start Address  = 0x%x\n\r", buffer0_temper);
            printf_tiny("\n\rIts Ending Address = 0x%x\n\r", (buffer0_temper) + (num1));
            printf_tiny("\n\rIts Size = %d\n\r", num1);
            printf_tiny("\n\rCurrent Storage characters in buffer 0 = %d\n\r", symbol_stored);
            printf_tiny("\n\rCurrent Free Spaces in buffer = %d\n\r", (num1 - symbol_stored));
            printf_tiny("\n\r-----------------------------------------------------------------------\n\r");

            if (buffer1 != 0)
            {
                printf_tiny("\n\rBuffer 1\n\r");
                printf_tiny("\n\rIts Start Address = 0x%x\n\r", buffer1_temper);
                printf_tiny("\n\rIts Ending Address = 0x%x\n\r", buffer1_temper + num1);
                printf_tiny("\n\rIts Size = %d\n\r", num1);
                printf_tiny("\n\rStorage characters in buffer =0, because storage characters are @ buffer 0\n\r");
                printf_tiny("\n\rCurrent Free Spaces in buffer = %d\n\r", (num1));
                printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
            }

            // Loop to display information about other allocated buffers.
            for (n = 2; n < i; n++)
            {
                printf_tiny("\n\rBuffer %d\n\r", n);
                printf_tiny("\n\rStart Address = 0x%x\n\r", (uint16_t)buffern[n]);
                printf_tiny("\n\rEnding Address = 0x%x\n\r", (uint16_t)(buffern[n]) + (uint16_t)(buffer_size[n]));
                printf_tiny("\n\rBuffer Size = %d\n\r", buffer_size[n]);
                printf_tiny("\n\rStorage characters in buffer = 0\n\r");
                printf_tiny("\n\rFree Spaces in buffer = %d\n\r", (buffer_size[n]));
                printf_tiny("\n\r-----------------------------------------------------------------------\n\r");
            }

            // Display summary information.
            printf_tiny("\n\rNumber of storage characters = %d\n\r", symbol_stored);
            printf_tiny("\n\rTotal number of characters received = %d\n\r", total_symbol);
            printf_tiny("\n\rTotal number of buffers that were allocated since the start of the program = %d\n\r", (j));
            printf_tiny("\n\rTotal storage characters stored since last '?' = %d\n\r", symbol_stored);
            printf_tiny("\n\r-----------------------------------------------------------------------\n\r");

            // Loop to display stored characters in buffer0.
            for (int index = 0; index <= symbol_stored; index++)
            {
                if (index % 32 != 0)
                {
                    char a = *((buffer0) + index);
                    putchar(a);
                    *((buffer0) + index) = '\0';
                }
                else
                {
                    printf_tiny("\n\r");
                }
            }

            // Reset counters.
            symbol_stored = 0;
            counter = 0;
        }
    }
}




