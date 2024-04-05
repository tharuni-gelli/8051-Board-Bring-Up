#ifndef LCD_H_INCLUDED
#define LCD_H_

#define RS_INSTR P1_5 = 0
#define RS_DATA P1_5 = 1
#define WR_LCD P1_6 = 0
#define RD_LCD P1_6 = 1

#define lcd_row_0_base_address (0x80)
#define lcd_row_1_base_address (0xC0)
#define lcd_row_2_base_address (0x90)
#define lcd_row_3_base_address (0xD0)

#define lcd_command_read_address ((__xdata uint8_t*)0x8002)
#define lcd_command_write_address ((__xdata uint8_t*)0x8004)
#define lcd_data_read_address ((__xdata uint8_t*)0x8000)
#define lcd_data_write_address ((__xdata uint8_t*)0x8000)

#define lcd_width (16)
#define lcd_height (4)
#define lcd_clear_display (0x01)
#define lcd_cursor_home (0x02)
#define lcd_busy_wait_mask (0x80)
#define lcd_ddram_address_mask (0x80)
#define lcd_entry_mode (0x06)
#define lcd_display_cursor (0x0F)
#define lcd_display_shift (0x14)
#define lcd_function_set (0x38)
#define lcd_unlock (0x30)
#define lcd_display_off (0x08)
#define lcd_display_on  (0x0F)
#define lcd_cursor_off  (0x0C)


/**
 * @brief Shift the active row of the LCD display to the next row.
 *
 * This function cycles through the available LCD rows and shifts the
 * active row to the next one. If the current row is the last row, it
 * wraps around to the first row.
 *
 * @note The LCD row base addresses and the LCD current row index are managed
 *       externally. This function assumes the presence of an lcd_go_to_addr
 *       function to move the LCD cursor to a specified address.
 */
void lcd_row_shifter(void);

/**
 * @brief Initialize the LCD display.
 *
 * This function performs the necessary steps to initialize the LCD display,
 * including sending initialization commands, setting display parameters,
 * and clearing the display.
 *
 * @note This function assumes the presence of a delay function (ms_delay),
 *       LCD control signal definitions (RS_INSTR, WR_LCD), and a command
 *       write address (lcd_command_write_address).
 * @note LCD specific commands (lcd_unlock, lcd_function_set, lcd_display_off,
 *       lcd_display_on, lcd_entry_mode, lcd_clear_display) are used for
 *       configuring the LCD.
 */
void lcd_init(void);

/**
 * @brief Wait until the LCD is no longer busy.
 *
 * This function sets the RS signal to instruction mode and the Read (RD)
 * signal to read from the LCD. It then waits in a loop until the LCD's busy
 * flag is cleared, indicating that it is ready for the next command.
 *
 * @note The RS_INSTR, RD_LCD, lcd_command_read_address, and lcd_busy_wait_mask
 *       functions/constants are assumed to be defined and managed externally.
 */
void lcd_busy_wait(void);

/**
 * @brief Set the LCD cursor to a specified address.
 *
 * This function sets the LCD cursor to the specified address in DDRAM.
 * It checks for valid address ranges and updates the LCD's current row
 * and column indices accordingly. If the address is invalid, it prints
 * an error message.
 *
 * @param address The DDRAM address to set the LCD cursor to.
 *
 * @note The lcd_busy_wait, lcd_command_write, lcd_ddram_address_mask,
 *       lcd_current_row, lcd_current_column, my_printf functions, and
 *       lcd_width constant are assumed to be defined and managed externally.
 */
void lcd_go_to_addr(__xdata uint8_t address);

/**
 * @brief Set the LCD cursor to a specified position (row, column).
 *
 * This function calculates the DDRAM address based on the specified row
 * and column. It sets the LCD cursor to the calculated address. If the
 * specified row or column is invalid, it prints an error message.
 *
 * @param row The row number (0 to lcd_height-1) to set the LCD cursor to.
 * @param column The column number (0 to lcd_width-1) to set the LCD cursor to.
 *
 * @note The lcd_go_to_addr, my_printf functions, lcd_height, lcd_width, and
 *       lcd_row_0_base_address constants are assumed to be defined and managed externally.
 */
void lcd_go_to_x_y(__xdata uint8_t row,__xdata uint8_t column);

/**
 * @brief Write a character to the LCD display.
 *
 * This function writes a character to the LCD display at the current
 * cursor position. It also updates the LCD's current column index and
 * shifts to the next row if the maximum number of columns is reached.
 *
 * @param data_byte The character to be written to the LCD.
 *
 * @note The LCD busy wait, RS_DATA, WR_LCD, lcd_data_write_address, lcd_current_column,
 *       and lcd_row_shifter functions are assumed to be defined and managed externally.
 */
void lcd_put_ch(__xdata uint8_t data_byte);

/**
 * @brief Write a null-terminated string to the LCD display.
 *
 * This function iterates through each character in the input string
 * until it encounters a null terminator ('\0'). It writes each character
 * to the LCD display using the lcd_put_ch function.
 *
 * @param text_ptr Pointer to the null-terminated string to be written to the LCD.
 *
 * @note The lcd_put_ch function is assumed to be defined and managed externally.
 */
void lcd_put_str(__xdata uint8_t* text_ptr);

/**
 * @brief Write a command byte to the LCD display.
 *
 * This function sends a command byte to the LCD display after ensuring
 * that the LCD is ready for the next command (busy wait). It sets the
 * RS signal to instruction mode and writes the command byte to the LCD.
 *
 * @param data_byte The command byte to be written to the LCD.
 *
 * @note The lcd_busy_wait, RS_INSTR, WR_LCD, and lcd_command_write_address
 *       functions/constants are assumed to be defined and managed externally.
 */
void lcd_command_write(__xdata uint8_t data_byte);

/**
 * @brief Clear the content of the LCD display.
 *
 * This function sends the LCD clear display command to clear the screen.
 * It also resets the LCD's current row and column indices to the top-left corner.
 *
 * @note The lcd_command_write function and lcd_clear_display constant are assumed
 *       to be defined and managed externally. The lcd_current_row and
 *       lcd_current_column variables are expected to be global variables.
 */
void lcd_clear(void);

/**
 * @brief Handle the creation of a custom character for the LCD.
 *
 * This function prompts the user to enter the pixel pattern for the specified
 * character code. It then collects input for each row and calls another function
 * (lcdcreatechar) to create the custom character based on the entered values.
 *
 * @param ccode The character code (0-7) for which the custom character is created.
 *
 * @note The printf_tiny, fetch_number, and lcdcreatechar functions are assumed
 *       to be defined and managed externally.
 */
void enter_custom_character(__xdata uint8_t ccode);

/**
 * @brief Initiate the creation of a custom character for the LCD.
 *
 * This function prompts the user to enter a character code (0-7) and initiates
 * the creation of a custom character if the entered code is valid. It calls
 * another function (enter_custom_character) to handle the custom character
 * creation mode. If the entered code is invalid, it displays an error message.
 *
 * @note The printf_tiny, fetch_number, and enter_custom_character functions
 *       are assumed to be defined and managed externally.
 */
void lcd_custom_character_creation(void);

/**
 * @brief Create a custom character for the LCD.
 *
 * This function creates a custom character for the LCD by writing the pixel pattern
 * for each row to the CGRAM (Character Generator RAM). It checks the validity of the
 * character code and displays a message indicating the successful creation of the
 * custom character. The original LCD row and column indices are restored after the
 * operation.
 *
 * @param ccode The character code (0-7) for the custom character.
 * @param row_vals An array containing the pixel pattern values for each row (8 rows).
 *
 * @note The printf_tiny, lcd_cmd_write, lcd_cgram_address_mask, lcd_cgram_address_mask_2,
 *       lcd_putchar, lcd_current_row, and lcd_current_column functions/constants are
 *       assumed to be defined and managed externally.
 */
 void lcdcreatechar(unsigned char ccode, unsigned char row_vals[]);

 /**
 * @brief Flush the contents of CGRAM (Character Generator RAM) and display a hexdump.
 *
 * This function reads and displays the contents of CGRAM in a hexdump format,
 * showing 16 bytes per row. The original LCD cursor position is restored after
 * the operation.
 *
 * @note The printf_tiny, lcd_cgram_address_mask, lcd_cgram_address_mask_2,
 *       lcd_cmd_write, RS_CMD, LCD_WRITE, RS_DATA, LCD_READ, print_number_hex,
 *       lcd_goto_xy, lcd_current_row, and lcd_current_column functions/constants
 *       are assumed to be defined and managed externally.
 */
void lcd_cgram_flush(void);

/**
 * @brief Flush the contents of DDRAM (Display Data RAM) and display a hexdump.
 *
 * This function reads and displays the contents of DDRAM in a hexdump format,
 * showing 16 bytes per row. The original LCD cursor position is restored after
 * the operation.
 *
 * @note The printf_tiny, lcd_ddram_address_mask, lcd_cmd_write, RS_CMD, LCD_WRITE,
 *       RS_DATA, LCD_READ, print_number_hex, lcd_goto_xy, lcd_current_row, and
 *       lcd_current_column functions/constants are assumed to be defined and managed externally.
 */
void lcd_ddram_flush(void);

#endif // LCD_H_INCLUDED
