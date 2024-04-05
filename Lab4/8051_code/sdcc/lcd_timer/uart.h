#ifndef UART_H_INCLUDED
#define UART_H_INCLUDED

//*****************************************************************************
//*				          Function Definitions								  *
//*****************************************************************************

/***********************************************************************
 * @brief Transmit a character through the serial communication.
 * @param ch Character to be transmitted
 * @return Transmitted character
***********************************************************************/
int putchar (int ch);

/***********************************************************************
 * @brief Receive a character through the serial communication.
 * @param None
 * @return Received character
***********************************************************************/
int getchar (void);

/***********************************************************************
 * @brief Get a 16-bit input from the user through the serial communication.
 * @param None
 * @return 16-bit input received from the user
***********************************************************************/
uint16_t get_input(void);

/***********************************************************************
 * @brief Convert an integer value to its corresponding character representation.
 * @param temp Integer value to be converted
 * @return Character representation of the integer value
***********************************************************************/
int8_t int_to_char(int temp);


/***********************************************************************
 * @brief Convert a character representation to its corresponding integer value.
 * @param temp Character to be converted
 * @return Integer value corresponding to the character
***********************************************************************/
uint8_t char_to_int(uint8_t temp);

/**
 * @brief Fetch a number from the user with a specified base.
 *
 * This function reads a sequence of digits from the user until the Enter key is pressed.
 * It supports backspace for correction and converts the entered digits into a decimal number
 * based on the specified base.
 *
 * @param base The numeric base to use for conversion (e.g., 10 for decimal, 16 for hexadecimal).
 *
 * @return The converted decimal number based on the entered digits and the specified base.
 */
uint16_t fetch_number(uint8_t base);

/**
 * @brief Print a number on an LCD display with a specified display width.
 *
 * This function prints a numeric value on an LCD display with optional leading zeros,
 * depending on the specified display width. It also ensures that the LCD is ready for
 * each command and prints the number in the correct order.
 *
 * @param number The integer value to be printed on the LCD.
 * @param display_width The width of the display, determining the number of digits to display.
 *
 * @note This function assumes an LCD display is configured and a char_to_int function is available.
 */
void lcd_print_number(__xdata int32_t number, __xdata uint8_t display_width);
#endif

