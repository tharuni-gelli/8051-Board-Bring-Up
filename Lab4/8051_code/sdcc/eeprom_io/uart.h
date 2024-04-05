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
#endif
