#ifndef DELAY_H_INCLUDED
#define DELAY_H_INCLUDED


//Define i2c speed
#define I2C_SPEED_FACTOR  1 // for low i2c freq
#define Crystal_freq  11.0592 //Mhz
#define Half_Bit_Delay (500*Crystal_freq)/(12*I2C_SPEED_FACTOR)

/***********************************************************************
 * @brief Delay for a specified duration in microseconds
 * @param microseconds Duration of the delay in microseconds
 * @return None
***********************************************************************/
void delay_us(unsigned int microseconds);

#endif
