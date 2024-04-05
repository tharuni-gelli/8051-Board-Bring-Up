/***********************************************************************
 * ESD_LAB4_Supplemental
 *
 *  Created on: Nov 17 , 2023
 *      Author: Tharuni
 *@brief This file has codes used for spi interface with a DAC
 ***********************************************************************/

#include "spi.h"

__xdata uint8_t wave, gain, mode;

// Function to start the DAC (Digital-to-Analog Converter) output
void dac_start_output(void)
{
    // No implementation, simply returns from the function
    return;
}

// Function to stop the DAC output
void dac_stop_output(void)
{
    // No implementation, simply returns from the function
    return;
}

// Function to set the DAC output based on the provided data word
void dac_set(uint16_t data_word)
{
    // Local variables to store command words for DAC channels A and B
    __xdata uint16_t command_word_a, command_word_b;

    // Left-shift the data word by 4 bits to prepare for the DAC command
    command_word_a = data_word << 4;
    command_word_b = data_word << 4;

    // Apply masks to command words for channel A and B
    command_word_a &= A_mask;
    command_word_b |= B_mask;

    // Set active mask for both command words
    command_word_a |= active_mask;
    command_word_b |= active_mask;

    // Clear gain-related bits for both command words
    command_word_a &= Gain_increase_mask;
    command_word_b &= Gain_increase_mask;

    // Send command words to DAC through SPI
    spi_write_word(command_word_a);
    spi_write_word(command_word_b);

    // Return from the function
    return;
}

// Function to change DAC output control mode
void dac_output_control_change(void)
{
    // Check the current mode and toggle between modes
    if (mode == 0)
    {
        mode = 1;
        TR0 = 0;
    }
    else
    {
        mode = 0;
        TR0 = 1;
    }

    // Return from the function
    return;
}

// Function to switch to the next waveform
void dac_next_wave(void)
{
    // Check the current waveform and switch to the next one
    if (wave == 3)
    {
        wave = 0;
    }
    else
    {
        wave++;
    }

    // Return from the function
    return;
}


// Function to increase the DAC (Digital-to-Analog Converter) output voltage
void dac_increase_voltage(void)
{
    // Set the gain variable to 2, indicating an increase in voltage
    gain = 2;

    // Return from the function
    return;
}

// Function to decrease the DAC (Digital-to-Analog Converter) output voltage
void dac_decrease_voltage(void)
{
    // Set the gain variable to 1, indicating a decrease in voltage
    gain = 1;

    // Return from the function
    return;
}


// Function to generate a clock tick for the SPI interface
void spi_clock_tick(void)
{
    // Set SCK (Serial Clock) to high, indicating the start of a clock cycle
    sck = 1;

    // Set SCK (Serial Clock) back to low, completing the clock cycle
    sck = 0;

    // Return from the function
    return;
}



// Function to write a 16-bit word to the SPI interface
void spi_write_word(__xdata uint16_t data_word)
{
    __xdata uint8_t i = 0;

    // Set SCK (Serial Clock) to low
    sck = 0;

    // Set LDAC (Load DAC) to high
    ldac_bar = 1;

    // Set CS (Chip Select) to low, indicating the start of communication
    cs_bar = 0;

    // Loop through each bit of the 16-bit word
    for (i = 0; i < 16; i++)
    {
        // Check if the current bit is 1
        if (data_word & spi_MSB_mask)
        {
            // Set SDI (Serial Data In) to 1
            sdi = 1;
        }
        else
        {
            // Set SDI (Serial Data In) to 0
            sdi = 0;
        }

        // Call the function to generate a clock tick for the SPI interface
        spi_clock_tick();

        // Shift the data_word to the left, preparing for the next bit
        data_word = data_word << 1;
    }

    // Set CS (Chip Select) to high, indicating the end of communication
    cs_bar = 1;

    // Set LDAC (Load DAC) to low, updating the DAC outputs
    ldac_bar = 0;

    // Set SCK (Serial Clock) to low
    sck = 0;

    // Return from the function
    return;
}


  // Function to update DAC output
void dac_update_output(void)
{
    // Counter for waveform data
    __xdata static uint16_t dacCounter = 0;

    // Example waveform data arrays (Please replace with your actual waveform data)
    __xdata uint8_t static sineWave[256] = { 128, 131, 134, 137, 140, 144, 147, 150, 153, 156,
    159, 162, 165, 168, 171, 174, 177, 180, 182, 185,
    188, 191, 194, 196, 199, 201, 204, 206, 209, 211,
    214, 216, 218, 220, 222, 224, 226, 228, 230, 232,
    234, 236, 237, 239, 240, 242, 243, 244, 246, 247,
    248, 249, 250, 251, 251, 252, 253, 253, 254, 254,
    254, 255, 255, 255, 255, 255, 255, 255, 254, 254,
    253, 253, 252, 252, 251, 250, 249, 248, 247, 246,
    245, 244, 242, 241, 240, 238, 236, 235, 233, 231,
    229, 227, 225, 223, 221, 219, 217, 215, 212, 210,
    208, 205, 203, 200, 197, 195, 192, 189, 187, 184,
    181, 178, 175, 172, 169, 167, 164, 160, 157, 154,
    151, 148, 145, 142, 139, 136, 133, 130, 126, 123,
    120, 117, 114, 111, 108, 105, 102, 99, 96, 92,
    89, 87, 84, 81, 78, 75, 72, 69, 67, 64,
    61, 59, 56, 53, 51, 48, 46, 44, 41, 39,
    37, 35, 33, 31, 29, 27, 25, 23, 21, 20,
    18, 16, 15, 14, 12, 11, 10, 9, 8, 7,
    6, 5, 4, 4, 3, 3, 2, 2, 1, 1, 1,
    1, 1, 1, 1, 2, 2, 2, 3, 3, 4, 5,
    5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17,
    19, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,
    40, 42, 45, 47, 50, 52, 55, 57, 60, 62, 65,
    68, 71, 74, 76, 79, 82, 85, 88, 91, 94, 97,
    100, 103, 106, 109, 112, 116, 119, 122, 125, 128 };
    __xdata uint8_t static squareWave[256] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255 };
    __xdata uint8_t static triangularWave[256] = {  0, 2, 4, 6, 8, 10, 12, 14, 16, 18,
    20, 22, 24, 26, 28, 30, 32, 34, 36, 38,
    40, 42, 44, 46, 48, 50, 52, 54, 56, 58,
    60, 62, 64, 66, 68, 70, 72, 74, 76, 78,
    80, 82, 84, 86, 88, 90, 92, 94, 96, 98,
    100, 102, 104, 106, 108, 110, 112, 114, 116, 118,
    120, 122, 124, 126, 128, 130, 132, 134, 136, 138,
    140, 142, 144, 146, 148, 150, 152, 154, 156, 158,
    160, 162, 164, 166, 168, 170, 172, 174, 176, 178,
    180, 182, 184, 186, 188, 190, 192, 194, 196, 198,
    200, 202, 204, 206, 208, 210, 212, 214, 216, 218,
    220, 222, 224, 226, 228, 230, 232, 234, 236, 238,
    240, 242, 244, 246, 248, 250, 252, 254, 255, 254,
    252, 250, 248, 246, 244, 242, 240, 238, 236, 234,
    232, 230, 228, 226, 224, 222, 220, 218, 216, 214,
    212, 210, 208, 206, 204, 202, 200, 198, 196, 194,
    192, 190, 188, 186, 184, 182, 180, 178, 176, 174,
    172, 170, 168, 166, 164, 162, 160, 158, 156, 154,
    152, 150, 148, 146, 144, 142, 140, 138, 136, 134,
    132, 130, 128, 126, 124, 122, 120, 118, 116, 114,
    112, 110, 108, 106, 104, 102, 100, 98, 96, 94,
    92, 90, 88, 86, 84, 82, 80, 78, 76, 74,
    72, 70, 68, 66, 64, 62, 60, 58, 56, 54,
    52, 50, 48, 46, 44, 42, 40, 38, 36, 34,
    32, 30, 28, 26, 24, 22, 20, 18, 16, 14,
    12, 10, 8, 6, 4, 2 };
    __xdata uint8_t static sawtoothWave[256] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
    10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
    20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
    30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
    40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
    50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
    60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
    70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
    80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
    90, 91, 92, 93, 94, 95, 96, 97, 98, 99,
    100, 101, 102, 103, 104, 105, 106, 107, 108, 109,
    110, 111, 112, 113, 114, 115, 116, 117, 118, 119,
    120, 121, 122, 123, 124, 125, 126, 127, 128, 129,
    130, 131, 132, 133, 134, 135, 136, 137, 138, 139,
    140, 141, 142, 143, 144, 145, 146, 147, 148, 149,
    150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
    160, 161, 162, 163, 164, 165, 166, 167, 168, 169,
    170, 171, 172, 173, 174, 175, 176, 177, 178, 179,
    180, 181, 182, 183, 184, 185, 186, 187, 188, 189,
    190, 191, 192, 193, 194, 195, 196, 197, 198, 199,
    200, 201, 202, 203, 204, 205, 206, 207, 208, 209,
    210, 211, 212, 213, 214, 215, 216, 217, 218, 219,
    220, 221, 222, 223, 224, 225, 226, 227, 228, 229,
    230, 231, 232, 233, 234, 235, 236, 237, 238, 239,
    240, 241, 242, 243, 244, 245, 246, 247, 248, 249,
    250, 251, 252, 253, 254, 255 };

    // Array of waveform pointers
    __xdata uint8_t* waveformArray[4] = {sineWave, squareWave, triangularWave, sawtoothWave};

    // Variables for command words
    __xdata uint16_t commandWordA, commandWordB;

    // Pointer to selected waveform data
    __xdata uint8_t* dataPtr;

    // Check mode for waveform generation
    if (mode == 0)
    {
        // Select waveform based on user choice
        dataPtr = waveformArray[wave];

        // Generate command words for DAC
        commandWordA = *(dataPtr + dacCounter) << 4;
        commandWordB = *(dataPtr + dacCounter) << 4;

        // Apply bit masks for A and B channels
        commandWordA &= A_MASK;
        commandWordB |= B_MASK;

        // Set active mask
        commandWordA |= ACTIVE_MASK;
        commandWordB |= ACTIVE_MASK;

        // Adjust gain settings
        if (gain == 2)
        {
            commandWordA &= GAIN_INCREASE_MASK;
            commandWordB &= GAIN_INCREASE_MASK;
        }
        else
        {
            commandWordA |= GAIN_DECREASE_MASK;
            commandWordB |= GAIN_DECREASE_MASK;
        }

        // Send command words to DAC via SPI
        spiWriteWord(commandWordA);
        spiWriteWord(commandWordB);
    }

    // Increment waveform counter and handle overflow
    if (dacCounter == 255)
    {
        dacCounter = 0;  // Reset counter when it reaches the maximum value
    }
    else
    {
        dacCounter++;  // Increment counter for the next iteration
    }

    return;  // End of the function
}
