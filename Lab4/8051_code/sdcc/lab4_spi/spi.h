#ifndef SPI_H_INCLUDED
#define SPI_H_INCLUDED

#include "at89c51ed2.h"
#include "mcs51reg.h"
#include <stdint.h>
#include "uart.h"
// Bit mask to isolate the Most Significant Bit (MSB) for SPI communication
#define spi_MSB_mask    (0x8000)

// Bit mask to isolate bits for DAC Channel A in a 16-bit word
#define A_mask (0x7FFF)

// Bit mask to isolate bits for DAC Channel B in a 16-bit word
#define B_mask (0x8000)

// Bit mask to clear the Gain Decrease bit in a DAC command word
#define Gain_decrease_mask (0x2000)

// Bit mask to clear the Gain Increase bit in a DAC command word
#define Gain_increase_mask (0xDFFF)

// Bit mask to set the Active bit in a DAC command word
#define active_mask (0x1000)

// Bit mask to clear the Shutdown bit in a DAC command word
#define shutdown_mask (0xEFFF)

// Number of samples in a waveform (assumed to be 256)
#define number_of_samples (256)

// Total number of available waveform types
#define total_waves (4)

// Definition of LDAC bar pin using P1_2
#define ldac_bar P1_2

// Definition of SDI pin using P1_7
#define sdi P1_7

// Definition of SCK pin using P1_6
#define sck P1_6

// Definition of CS bar pin using P1_0
#define cs_bar P1_0


__xdata extern uint8_t wave, gain, mode;

/***********************************************************************
 * @brief dac_start_output()
 * start dac output of the selected output channel
***********************************************************************/
void dac_start_output(void);

/***********************************************************************
 * @brief dac_stop_output()
 * stop dac output of the selected output channel
***********************************************************************/
void dac_stop_output(void);

/***********************************************************************
 * @brief dac_next_wave()
 * change the signal waveform to be displayed on the dac output
 * @return id for the new waveform
***********************************************************************/
void dac_next_wave(void);

/***********************************************************************
 * @brief dac_output_control_change()
 * switch between the dac output channels to be controlled
***********************************************************************/
void dac_output_control_change(void);

/***********************************************************************
 * @brief dac_increase_voltage()
 * Increase the gain of DAC channel
***********************************************************************/
void dac_increase_voltage(void);

/***********************************************************************
 * @brief dac_decrease_voltage()
 * Decrease the gain of DAC channel
***********************************************************************/
void dac_decrease_voltage(void);

/***********************************************************************
 * @brief Set the output voltage of a DAC (Digital-to-Analog Converter)
 *        based on the given data word.
 * @param data_word 16-bit value representing the desired output voltage
 * @return None
***********************************************************************/
void dac_set(uint16_t data_word);

/***********************************************************************
 * @brief dac_update_output()
 * update the required output of the dac
***********************************************************************/
void dac_update_output(void);

/***********************************************************************
 * @brief spi_clock_tick()
 * one clock cycle on sck
***********************************************************************/
void spi_clock_tick(void);

/***********************************************************************
 * @brief Initialize the SPI (Serial Peripheral Interface) module.
 * @param None
 * @return None
***********************************************************************/
void spi_init(void);

/***********************************************************************
 * @brief spi_write_word()
 * write a word on sdi and control sck, ldac_bar and cs_bar
 * @param data_word to be written on the sdi
***********************************************************************/
void spi_write_word(__xdata uint16_t data_word);


#endif // SPI_H_INCLUDED
