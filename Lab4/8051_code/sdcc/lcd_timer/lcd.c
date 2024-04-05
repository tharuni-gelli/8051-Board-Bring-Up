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
#include "delay.h"

__xdata uint8_t lcd_current_column,lcd_current_row,timer_on_off_flag;

// Function to initialize the LCD display
void lcd_init(void)
{
    // Delay for 15 milliseconds for LCD initialization
    ms_delay(15);

    // Set RS to instruction mode
    RS_INSTR;

    // Write to LCD
    WR_LCD;

    // Send the LCD unlock command
    *(lcd_command_write_address) = lcd_unlock;

    // Delay for 5 milliseconds
    ms_delay(5);

    // Repeat the unlock command sequence three times
    RS_INSTR;
    WR_LCD;
    *(lcd_command_write_address) = lcd_unlock;

    RS_INSTR;
    WR_LCD;
    ms_delay(1);

    RS_INSTR;
    WR_LCD;
    *(lcd_command_write_address) = lcd_unlock;

    // Send LCD function set command
    lcd_command_write(lcd_function_set);

    // Send LCD display off command
    lcd_command_write(lcd_display_off);

    // Send LCD display on command
    lcd_command_write(lcd_display_on);

    // Send LCD entry mode set command
    lcd_command_write(lcd_entry_mode);

    // Send LCD clear display command
    lcd_command_write(lcd_clear_display);

    // Return from the function
    return;
}


// Function to shift the active row of the LCD to the next row
void lcd_row_shifter(void)
{
    // Define an array with base addresses for each LCD row
    __xdata uint8_t lcd_row_base_address[] = {lcd_row_0_base_address, lcd_row_1_base_address, lcd_row_2_base_address, lcd_row_3_base_address};

    // Check if the current row is the last row (row 3)
    if (lcd_current_row >= 3)
    {
        // If so, reset the current row to the first row (row 0)
        lcd_current_row = 0;
    }
    else
    {
        // If not, increment the current row to shift to the next row
        lcd_current_row++;
    }

    // Move the LCD cursor to the address corresponding to the new current row
    lcd_go_to_addr(lcd_row_base_address[lcd_current_row]);

    // Return from the function
    return;
}

// Function to clear the LCD display
void lcd_clear(void)
{
    // Send the LCD clear display command to clear the screen
    lcd_command_write(lcd_clear_display);

    // Reset the LCD's current row and column indices to (0, 0)
    lcd_current_row = 0;
    lcd_current_column = 0;

    // Return from the function
    return;
}


// Function to write a character to the LCD display
void lcd_put_ch(__xdata uint8_t data_byte)
{
    // Wait for the LCD to be ready for the next data write
    lcd_busy_wait();

    // Set RS to data mode
    RS_DATA;

    // Write to LCD
    WR_LCD;

    // Send the character data to the LCD
    *(lcd_data_write_address) = data_byte;

    // Increment the current column index
    lcd_current_column++;

    // Check if the current column index exceeds the maximum columns (16)
    if (lcd_current_column >= 16)
    {
        // If so, shift to the next row
        lcd_row_shifter();
    }

    // Return from the function
    return;
}

// Function to write a string to the LCD display
void lcd_put_str(__xdata uint8_t* text_ptr)
{
    // Continue processing characters until a null terminator is encountered
    while (*text_ptr != '\0')
    {
        // Write the current character to the LCD display
        lcd_put_ch(*text_ptr);

        // Move to the next character in the string
        text_ptr++;
    }

    // Return from the function
    return;
}

// Function to write a command to the LCD display
void lcd_command_write(__xdata uint8_t data_byte)
{
    // Wait for the LCD to be ready for the next command
    lcd_busy_wait();

    // Set RS to instruction mode
    RS_INSTR;

    // Write to LCD
    WR_LCD;

    // Send the command byte to the LCD
    *(lcd_command_write_address) = data_byte;

    // Return from the function
    return;
}

// Function to set the LCD cursor to a specified address
void lcd_go_to_addr(__xdata uint8_t address)
{
    // Declare an array for the error message
    __xdata uint8_t invalid_address_txt[] = "\n\rInvalid Address";

    // Check if the address is within valid DDRAM address ranges
    if ((address >= 0x90 && address <= 0x9F) ||
        (address >= 0xD0 && address <= 0xDF) ||
        (address >= 0xC0 && address <= 0xCF) ||
        (address >= 0x80 && address <= 0x8F))
    {
        // Wait for the LCD to be ready for the next command
        lcd_busy_wait();

        // Set the DDRAM address mask to the address
        address |= lcd_ddram_address_mask;

        // Send the command to set the LCD cursor to the specified address
        lcd_command_write(address);

        // Update the LCD's current column based on the address
        lcd_current_column = address % lcd_width;

        // Update the LCD's current row based on the address ranges
        if (address >= 0xD0 && address <= 0xDF)
        {
            lcd_current_row = 3;
        }
        if (address >= 0x90 && address <= 0x9F)
        {
            lcd_current_row = 2;
        }
        if (address >= 0xC0 && address <= 0xCF)
        {
            lcd_current_row = 1;
        }
        if (address >= 0x80 && address <= 0x8F)
        {
            lcd_current_row = 0;
        }
    }
    else
    {
        // Print an error message for an invalid address
        my_printf(invalid_address_txt);
    }

    // Return from the function
    return;
}

// Function to wait until the LCD is no longer busy
void lcd_busy_wait(void)
{
    // Set RS to instruction mode
    RS_INSTR;

    // Set the Read (RD) signal to read from the LCD
    RD_LCD;

    // Wait in a loop until the busy flag is cleared
    while (*lcd_command_read_address & lcd_busy_wait_mask);

    // Return from the function
    return;
}

// Function to set the LCD cursor to a specified position (row, column)
void lcd_go_to_x_y(__xdata uint8_t row, __xdata uint8_t column)
{
    // Declare arrays for error messages
    __xdata uint8_t invalid_row_txt[] = "\n\rInvalid Row Number";
    __xdata uint8_t invalid_column_txt[] = "\n\rInvalid Column Number";

    // Declare an array for base addresses of each LCD row
    __xdata uint8_t lcd_row_base_address[] = {lcd_row_0_base_address, lcd_row_1_base_address, lcd_row_2_base_address, lcd_row_3_base_address};

    // Initialize address variable to 0
    __xdata uint8_t address = 0;

    // Check if the specified column exceeds the LCD width
    if (column >= lcd_width)
    {
        // Print an error message for an invalid column number
        my_printf(invalid_column_txt);
        return;
    }

    // Check if the specified row exceeds the LCD height
    if (row >= lcd_height)
    {
        // Print an error message for an invalid row number
        my_printf(invalid_row_txt);
        return;
    }

    // Calculate the DDRAM address based on the specified row and column
    address = lcd_row_base_address[row] + column;

    // Set the LCD cursor to the calculated address
    lcd_go_to_addr(address);

    // Return from the function
    return;
}

// Function to initiate the creation of a custom character for the LCD
void lcd_custom_character_creation(void) {
    // Display a message indicating custom character creation
    printf_tiny("\n\rCreate Custom Character");

    // Prompt the user to enter the character code (0-7)
    printf_tiny("\n\rEnter character code (0-7): ");

    // Fetch the user input as the character code using base 10
    uint8_t ccode = fetch_number(10);

    // Check if the entered character code is within the valid range (0-7)
    if (ccode >= 0 && ccode <= 7) {
        // Call the function to enter the custom character creation mode
        enter_custom_character(ccode);
    } else {
        // Display an error message for an invalid character code
        printf_tiny("\n\rInvalid character code. It must be between 0 and 7.");
    }
}

// Function to handle the creation of a custom character for the LCD
void enter_custom_character(__xdata uint8_t ccode) {
    // Prompt the user to enter the pixel pattern for the specified character code
    printf_tiny("\n\rEnter pixel pattern for character %d (in hex): ", ccode);

    // Declare an array to store pixel pattern values for each row
    unsigned char row_vals[8];

    // Iterate through each row to get the pixel pattern
    for (uint8_t i = 0; i < 8; ++i) {
        // Prompt the user to enter the pixel pattern for the current row
        printf_tiny("\n\rRow %d: ", i);

        // Fetch the user input as the pixel pattern in hex (assuming hex input)
        row_vals[i] = fetch_number(16);
    }

    // Call the lcdcreatechar function to create the custom character
    lcdcreatechar(ccode, row_vals);
}

// Function to create a custom character for the LCD
void lcdcreatechar(unsigned char ccode, unsigned char row_vals[]) {
    // Variables to store the custom character's address and temporary character
    __xdata uint8_t custom_character_address = 0, temp_char = 0;

    // Variables to store the current LCD row and column indices
    __xdata uint8_t current_r = 0, current_c = 0;

    // Save the current LCD row and column indices
    current_r = lcd_current_row;
    current_c = lcd_current_column;

    // Display the character code and pixel pattern for debugging
    printf_tiny("ccode=%d\n\r", ccode);
    for (int i = 0; i < 8; i++) {
        printf_tiny("row vals=%x\t", row_vals[i]);
    }

    // Check if the character code is valid (between 0 and 7)
    if (ccode >= 8) {
        printf_tiny("\n\rInvalid character code. It must be between 0 and 7.");
        return;
    }

    // Set the CGRAM address for the custom character
    lcd_cmd_write(0x40 + (ccode * 8));

    // Write the pixel pattern for each row to CGRAM
    for (uint8_t i = 0; i < 8; i++) {
        // Calculate the custom character's address for the current row
        custom_character_address = lcd_cgram_address_mask | (ccode << 3) | i;
        custom_character_address &= lcd_cgram_address_mask_2;

        // Set the CGRAM address for the current row
        lcd_cmd_write(custom_character_address);

        // Combine the pixel pattern with the character code and write to CGRAM
        temp_char = row_vals[i];
        temp_char |= (ccode << 5);
        lcd_putchar(temp_char);
    }

    // Display a message indicating the successful creation of the custom character
    printf_tiny("\n\rCustom character created with code %d.", ccode);

    // Restore the original LCD row and column indices
    lcd_goto_xy(current_r, current_c);

    // Display the custom character on the LCD
    lcd_putchar(ccode);
}


// Function to flush the contents of CGRAM (Character Generator RAM) and display a hexdump
void lcd_cgram_flush(void) {
    // Variables for loop counters, temporary storage, data byte, and CGRAM address
    __xdata uint8_t count = 0, i = 0, temp_storage = 0, data_byte = 0;
    __xdata uint16_t address = 0;

    // Save the current CGRAM address
    temp_storage = lcd_cgram_address_mask;
    temp_storage &= lcd_cgram_address_mask_2;

    // Set RS to command mode and write the CGRAM address to initiate the read
    RS_CMD;
    LCD_WRITE;
    lcd_cmd_write(temp_storage);

    // Display a message indicating the start of the CGRAM hexdump
    printf_tiny("\n\rCGRAM Hexdump");

    // Loop through CGRAM data and display a hexdump
    for (count = 0; count < 4; count++) {
        putchar('\n');
        putchar('\r');
        print_number_hex(address, 2);
        putchar(':');

        // Loop through 16 bytes of CGRAM data
        for (i = 0; i < 16; i++) {
            putchar(32); // Space

            // Set RS to data mode and read the data byte from CGRAM
            RS_DATA;
            RD_LCD;
            data_byte = *(LCD_DATA_READ_ADD);

            // Display the data byte in hexadecimal format
            print_number_hex(data_byte, 2);
        }

        // Increment the address for the next row of the hexdump
        address += 16;
    }

    // Return the LCD cursor to its original position
    lcd_goto_xy(lcd_current_row, lcd_current_column);

    // Return from the function
    return;
}

// Function to flush the contents of DDRAM (Display Data RAM) and display a hexdump
void lcd_ddram_flush(void) {
    // Variables for loop counters, temporary storage, data byte, and DDRAM address
    __xdata uint8_t count = 0, i = 0, temp_storage = 0, data_byte = 0;
    __xdata uint16_t address = 0x80;  // Initial DDRAM address

    // Save the current DDRAM address
    temp_storage = lcd_ddram_address_mask;

    // Set RS to command mode and write the DDRAM address to initiate the read
    RS_CMD;
    LCD_WRITE;
    lcd_cmd_write(temp_storage);

    // Display a message indicating the start of the DDRAM hexdump
    printf_tiny("\n\rDDRAM Hexdump");

    // Loop through DDRAM data and display a hexdump
    for (count = 0; count < 5; count++) {
        putchar('\n');
        putchar('\r');
        print_number_hex(address, 2);
        putchar(':');

        // Loop through 16 bytes of DDRAM data
        for (i = 0; i < 16; i++) {
            putchar(32); // Space

            // Set RS to data mode and read the data byte from DDRAM
            RS_DATA;
            LCD_READ;
            data_byte = *(LCD_DATA_READ_ADD);

            // Display the data byte in hexadecimal format
            print_number_hex(data_byte, 2);
        }

        // Increment the address for the next row of the hexdump
        address += 16;
    }

    // Return the LCD cursor to its original position
    lcd_goto_xy(lcd_current_row, lcd_current_column);

    // Return from the function
    return;
}



