#ifndef I2C_H_INCLUDED
#define I2C_H_INCLUDED

//*****************************************************************************
//*				          I2C SDA SCL										  *
//*****************************************************************************
#define scl P1_3 // Pin 6 of eeprom is connected to p1.3 of 8051
#define sda P1_4 // Pin 5 of eeprom is connected to p1.4 of 8051


//*****************************************************************************
//*				          Function Definitions								  *
//*****************************************************************************

/***********************************************************************
 * @brief Initialize the I2C (Inter-Integrated Circuit) communication
 *        protocol.
 * @param None
 * @return None
***********************************************************************/
void i2c_init();

/***********************************************************************
 * @brief Generate a start condition on the I2C (Inter-Integrated Circuit)
 *        bus to initiate a communication sequence.
 * @param None
 * @return None
***********************************************************************/
void i2c_start(void);

/***********************************************************************
 * @brief Generate a stop condition on the I2C (Inter-Integrated Circuit)
 *        bus to end a communication sequence.
 * @param None
 * @return None
***********************************************************************/
void i2c_stop(void);

/***********************************************************************
 * @brief Generate an acknowledge (ACK) signal on the I2C (Inter-Integrated Circuit)
 *        bus during a communication sequence.
 * @param None
 * @return None
***********************************************************************/
void i2c_ACK(void);

/***********************************************************************
 * @brief Generate a no-acknowledge (NACK) signal on the I2C (Inter-Integrated Circuit)
 *        bus during a communication sequence.
 * @param None
 * @return None
***********************************************************************/
void i2c_NoAck(void);

/***********************************************************************
 * @brief Generate a repeated start condition on the I2C (Inter-Integrated Circuit)
 *        bus to initiate a new communication sequence.
 * @param None
 * @return None
***********************************************************************/
void i2c_Restart();

/***********************************************************************
 * @brief Reset the EEPROM (Electrically Erasable Programmable Read-Only Memory)
 *        to its initial state or perform a reset-related operation.
 * @param None
 * @return None
***********************************************************************/
void eereset();

/***********************************************************************
 * @brief Write a byte of data to the I2C (Inter-Integrated Circuit) bus.
 * @param byte Data byte to be written to the bus
 * @return Status of the write operation (0 if successful, non-zero otherwise)
***********************************************************************/
int i2c_Write_Byte(uint8_t byte);

/***********************************************************************
 * @brief Read a byte of data from the I2C (Inter-Integrated Circuit) bus.
 * @param None
 * @return Data byte read from the bus
***********************************************************************/
uint8_t i2c_Read_Byte(void);

/***********************************************************************
 * @brief Write data to an EEPROM (Electrically Erasable Programmable
 *        Read-Only Memory) device using the I2C (Inter-Integrated Circuit) bus.
 * @param None
 * @return None
***********************************************************************/
void i2c_EEPROM_Write();

/***********************************************************************
 * @brief Read data from an EEPROM (Electrically Erasable Programmable
 *        Read-Only Memory) device using the I2C (Inter-Integrated Circuit) bus.
 * @param None
 * @return None
***********************************************************************/
void i2c_EEPROM_Read();

/***********************************************************************
 * @brief Get a hexadecimal address value.
 * @param None
 * @return Hexadecimal address as a uint16_t value
***********************************************************************/
uint16_t hex_addresses();

/***********************************************************************
 * @brief Get hexadecimal data associated with a given address.
 * @param rec_addr Address for which to retrieve hexadecimal data
 * @return Hexadecimal data as a uint16_t value
***********************************************************************/
uint16_t hex_data(uint16_t rec_addr);

/***********************************************************************
 * @brief Perform a hexadecimal data dump.
 * @param None
 * @return None
***********************************************************************/
void hex_dump();

/***********************************************************************
 * @brief i2c_io_expander_write()
 * Write a byte to the io expander ic
 * @param data_byte to be written
***********************************************************************/
void i2c_io_expander_write(__xdata uint8_t data_byte);

/***********************************************************************
 * @brief i2c_io_expander_read()
 * Read the values of the pins on the io expander ic
 * @return data read from the io expander ic
***********************************************************************/
__xdata uint8_t i2c_io_expander_read();


#endif
