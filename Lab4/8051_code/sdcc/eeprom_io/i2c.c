#include <stdint.h>
#include <stdio.h>
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include <stdlib.h>
#include <math.h>
#include<string.h>
#include"i2c.h"
#include"delay.h"
#include"uart.h"

void i2c_init()
{
    sda=1;
    scl=1;
}

//******************************************************************************
//*                       I2C START Condition    							   *
//******************************************************************************
void i2c_start(void)
{
  scl=1;
  sda=1;
  delay_us(Half_Bit_Delay);
  sda=0;
  delay_us(Half_Bit_Delay);
}

//*******************************************************************************
//*				           I2C STOP Condition    							    *
//*******************************************************************************
void i2c_stop(void)
{
  scl=0;
  delay_us(Half_Bit_Delay/2);
  sda=0;
  delay_us(Half_Bit_Delay/2);
  scl=1;
  delay_us(Half_Bit_Delay/2);
  sda=1;
  delay_us(Half_Bit_Delay/2);
}

//*******************************************************************************
//*				                I2C ACK              						    *
//*******************************************************************************
void i2c_ACK(void)
{
  scl=0;
  delay_us(Half_Bit_Delay/2);
  sda=0;
  delay_us(Half_Bit_Delay/2);
  scl=1;
  delay_us(Half_Bit_Delay/2);
}

//*******************************************************************************
//*				                I2C NACK              						    *
//*******************************************************************************
void i2c_NoAck(void)
{
  scl=0;
  delay_us(Half_Bit_Delay/2);
  sda=1;
  delay_us(Half_Bit_Delay/2);
  scl=1;
  delay_us(Half_Bit_Delay/2);
}

//*******************************************************************************
//*				                I2C ReStart Condition  						    *
//*******************************************************************************
void i2c_Restart()
{
  scl=0;
  delay_us(Half_Bit_Delay/2);
  sda=1;
  delay_us(Half_Bit_Delay/2);
  scl=1;
  delay_us(Half_Bit_Delay/2);
  sda=0;
  delay_us(Half_Bit_Delay/2);
}

//*******************************************************************************
//*				                I2C Reset Condition  						    *
//*******************************************************************************
void eereset()
{
    uint8_t i;
    i2c_start();
    for(i=0;i<9;i++)
    {
        sda=1;
        scl=1;
        delay_us(Half_Bit_Delay);
        scl=0;
        delay_us(Half_Bit_Delay);
    }
    scl=1;
    delay_us(Half_Bit_Delay);
    i2c_start();
    i2c_stop();
}

//*******************************************************************************
//*				                I2C Write Operation  						    *
//*******************************************************************************

int i2c_Write_Byte(uint8_t byte)
{
  uint8_t i;
  for(i=0;i<8;i++)
  {
   scl=0;
   delay_us(Half_Bit_Delay/2);
   if((byte<<i)&0x80)  // Place data bit value on SDA pin
        sda=1;	// If bit is high, make SDA high
   else				// Data is transferred MSB first
        sda=0;	// If bit is low, make SDA low
   delay_us(Half_Bit_Delay/2);
   scl=1;
   delay_us(Half_Bit_Delay);
  }
  scl=0;
  sda=1;
  delay_us(Half_Bit_Delay);
  scl=1;
  delay_us(Half_Bit_Delay);
  return sda;
}

//*******************************************************************************
//*				                I2C Read Operation  						    *
//*******************************************************************************

uint8_t i2c_Read_Byte(void)
{
  uint8_t i,d,buff=0;
  for(i=0;i<8;i++)
 {
   scl=0;
   sda=1;
   delay_us(Half_Bit_Delay);
   scl=1;
   delay_us(Half_Bit_Delay/2);
   d=sda;
   buff |=(sda<<(7-i));
   delay_us(Half_Bit_Delay/2);
 }
  return buff;
}

//*******************************************************************************
//*				                EEPROM Write Operation with i2c 						    *
//*******************************************************************************
// 24LC16 EEPROM Write Function
void i2c_EEPROM_Write()
{
    uint8_t flag=1;
    uint8_t flag1=1;
    uint16_t address=0;//to store the address from the user in a single integer form
    char get_address[3];           //Get address from user in specified range
    uint16_t get_address_int[3];   //store the entered address in integer array(character-->integer)
    uint16_t data=0;
    char get_data[2];
    uint16_t get_data_int[2];
    uint8_t control_byte;
    uint8_t address_byte;
    uint8_t i;                   //counter variable

    /*Enter address and check validity of address*/
    while(flag)
    {
        flag=0;
        printf_tiny("\n\rEnter the address between 0x00-0x7ff\n\r");
        for(i=0;i<3;i++)
        {
            get_address[i]=getchar();
            putchar(get_address[i]);
        }

        for(i=0;i<3;i++)
        {
            switch(i)
            {
                case 0:
                    if((get_address[i]>=48) && (get_address[i]<=55))
                    {
                        get_address_int[i]= get_address[i]-48;
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
                        flag=1;
                    }
                    break;

                case 1:
                    if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
                    {
                        if((get_address[i]>=48) && (get_address[i]<=57))
                        {
                            get_address_int[i]=get_address[i]-48;
                        }
                        else if((get_address[i]>=65) && (get_address[i]<=70))
                        {
                            get_address_int[i]=get_address[i]-55;
                        }
                        else if((get_address[i]>=97) && (get_address[i]<=102))
                        {
                            get_address_int[i]=get_address[i]-87;
                        }
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
                        flag=1;
                    }
                break;

                case 2:
                    if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
                    {
                        if((get_address[i]>=48) && (get_address[i]<=57))
                        {
                            get_address_int[i]=get_address[i]-48;
                        }
                        else if((get_address[i]>=65) && (get_address[i]<=70))
                        {
                            get_address_int[i]=get_address[i]-55;
                        }
                        else if((get_address[i]>=97) && (get_address[i]<=102))
                        {
                            get_address_int[i]=get_address[i]-87;
                        }
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
                        flag=1;
                    }
                    break;

                    default:break;
            }
        }
    }

     /*Convert address into a number which is an integer*/
    for(i=0;i<3;i++)
    {
        address = address+((get_address_int[i])*powf(16,2-i));
    }

    /*Perform shifting and setting byte=1010A3A2A1(w/r) <--binary form*/
    control_byte = ((0xA0)|(address >> 7)&(0xfe));

    /*Store the lower byte of the address in byte_1*/
    address_byte = (uint8_t)address;

    /*Enter data and check validity of data*/
    while(flag1)
    {
        flag1=0;
        printf_tiny("\n\rEnter the data you want to write(*Note:DATA SHOULD BE BETWEEN 0x00 and 0xFF)\n\r");

        for(i=0;i<2;i++)
        {
            get_data[i]=getchar();
            putchar(get_data[i]);
        }

        for(i=0;i<2;i++)
        {
            switch(i)
            {
                case 0:
                    if(((get_data[i]>='0') && (get_data[i]<='9')) ||  ((get_data[i]>='A') && (get_data[i]<='F')) || ((get_data[i]>='a') && (get_data[i]<='f')))
                    {
                        if((get_data[i]>=48) && (get_data[i]<=57))
                        {
                            get_data_int[i]=get_data[i]-48;
                        }
                        else if((get_data[i]>=65) && (get_data[i]<=70))
                        {
                            get_data_int[i]=get_data[i]-55;
                        }
                        else if((get_data[i]>=97) && (get_data[i]<=102))
                        {
                            get_data_int[i]=get_data[i]-87;
                        }
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
                        flag1=1;
                    }
                break;

                case 1:
                    if(((get_data[i]>='0') && (get_data[i]<='9')) ||  ((get_data[i]>='A') && (get_data[i]<='F')) || ((get_data[i]>='a') && (get_data[i]<='f')))
                    {
                        if((get_data[i]>=48) && (get_data[i]<=57))
                        {
                            get_data_int[i]=get_data[i]-48;
                        }
                        else if((get_data[i]>=65) && (get_data[i]<=70))
                        {
                            get_data_int[i]=get_data[i]-55;
                        }
                        else if((get_data[i]>=97) && (get_data[i]<=102))
                        {
                            get_data_int[i]=get_data[i]-87;
                        }
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
                        flag1=1;
                    }
                break;

                    default:break;
            }
        }
    }

    /*Convert data into a number which is an integer*/
    for(i=0;i<2;i++)
    {
        data = data +((get_data_int[i])*powf(16,1-i));
    }

  i2c_start();            // 1. Master issues START condition
  i2c_Write_Byte(control_byte);
  i2c_Write_Byte(address_byte); // 4. Master sends memory address
  i2c_Write_Byte(data);        // 6. Master sends data to be written to memory
  i2c_stop();             // 8. Master issues STOP condition
}

//*******************************************************************************
//*				                EEPROM Read Operation with i2c 						    *
//*******************************************************************************
// 24LC16 EEPROM Read Function

void i2c_EEPROM_Read()
{
  uint8_t flag=1;
  uint16_t address=0;
  uint16_t byte_received;
  char get_address[3];          //Get address from user
  uint16_t get_address_int[3];
  uint8_t i;                   //counter variable
  uint8_t control_byte;
  uint8_t address_byte;
  uint8_t write_readbyte;

   /*Enter address and check validity of address*/
    while(flag)
    {
        flag=0;
        printf_tiny("\n\rEnter the address between 0x00-0x7ff\n\r");
        for(i=0;i<3;i++)
        {
            get_address[i]=getchar();
            putchar(get_address[i]);
        }

        for(i=0;i<3;i++)
        {
            switch(i)
            {
                case 0:
                    if((get_address[i]>=48) && (get_address[i]<=55))
                    {
                        get_address_int[i]= get_address[i]-48;
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input! Please enter again\n\r");
                        flag=1;
                    }
                    break;

                case 1:
                    if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
                    {
                        if((get_address[i]>=48) && (get_address[i]<=57))
                        {
                            get_address_int[i]=get_address[i]-48;
                        }
                        else if((get_address[i]>=65) && (get_address[i]<=70))
                        {
                            get_address_int[i]=get_address[i]-55;
                        }
                        else if((get_address[i]>=97) && (get_address[i]<=102))
                        {
                            get_address_int[i]=get_address[i]-87;
                        }
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input! Please enter again\n\r");
                        flag=1;
                    }
                break;

                case 2:
                    if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
                    {
                        if((get_address[i]>=48) && (get_address[i]<=57))
                        {
                            get_address_int[i]=get_address[i]-48;
                        }
                        else if((get_address[i]>=65) && (get_address[i]<=70))
                        {
                            get_address_int[i]=get_address[i]-55;
                        }
                        else if((get_address[i]>=97) && (get_address[i]<=102))
                        {
                            get_address_int[i]=get_address[i]-87;
                        }
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input! Please enter again\n\r");
                        flag=1;
                    }
                    break;

                    default:break;
            }
        }
    }

   /*Convert address into a number which is an integer*/
  for(i=0;i<3;i++)
  {
    address = address+((get_address_int[i])*powf(16,2-i));
  }
    /*Perform shifting and setting byte=1010A3A2A1(w/r) <--binary form*/
  control_byte = ((0xA0)|(address >> 7)&(0xfe));
  write_readbyte = ((0xA0)|(address >> 7)|(0x01));

  /*Store the lower byte of the address in byte_1*/
  address_byte = (uint8_t)address;

  // Start the I2C communication
  i2c_start(); // 1. Master issues START condition

  // Send the device address with the write option to select the EEPROM
  i2c_Write_Byte(control_byte); // 2. Master sends Device Address with Write option (0xA0)

  // Send the buffer/register address where you want to read data from
  i2c_Write_Byte(address_byte); // 4. Master sends Buffer/Register Address
  // Restart the communication to switch to read mode
  i2c_Restart(); // 6. Master issues RESTART condition

  // Send the device address with the read option to select the EEPROM
  i2c_Write_Byte(write_readbyte); // 7. Master issues Slave Address with Read Option (0xA1)

  // Read the data from the EEPROM
  byte_received = i2c_Read_Byte(); // 9. Master reads data from Slave

  // Send a NACK to indicate the end of data transfer
  i2c_NoAck(); // 10. Master issues NACK

  // Stop the I2C communication
  i2c_stop(); // 11. Master issues STOP condition

}


/*1st and 2nd address for Hex dump*/
uint16_t hex_addresses()
{
    int flag=1;
    uint8_t i;                      //counter variable
    uint16_t address=0;            //to store the inputed address from the user in a single integer form
    char get_address[3];           //Get address from user
    uint16_t get_address_int[3];   //store the inputed address in int array(char array-->int array)

    /*Enter address and check validity of address*/
    while(flag)
    {
        flag=0;
        for(i=0;i<3;i++)
        {
            get_address[i]=getchar();
            putchar(get_address[i]);
        }

        for(i=0;i<3;i++)
        {
            switch(i)
            {
                case 0:
                    if((get_address[i]>=48) && (get_address[i]<=55))
                    {
                        get_address_int[i]= get_address[i]-48;
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
                        flag=1;
                    }
                    break;

                case 1:
                    if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
                    {
                        if((get_address[i]>=48) && (get_address[i]<=57))
                        {
                            get_address_int[i]=get_address[i]-48;
                        }
                        else if((get_address[i]>=65) && (get_address[i]<=70))
                        {
                            get_address_int[i]=get_address[i]-55;
                        }
                        else if((get_address[i]>=97) && (get_address[i]<=102))
                        {
                            get_address_int[i]=get_address[i]-87;
                        }
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
                        flag=1;
                    }
                break;

                case 2:
                    if(((get_address[i]>='0') && (get_address[i]<='9')) ||  ((get_address[i]>='A') && (get_address[i]<='F')) || ((get_address[i]>='a') && (get_address[i]<='f')))
                    {
                        if((get_address[i]>=48) && (get_address[i]<=57))
                        {
                            get_address_int[i]=get_address[i]-48;
                        }
                        else if((get_address[i]>=65) && (get_address[i]<=70))
                        {
                            get_address_int[i]=get_address[i]-55;
                        }
                        else if((get_address[i]>=97) && (get_address[i]<=102))
                        {
                            get_address_int[i]=get_address[i]-87;
                        }
                    }
                    else
                    {
                        printf_tiny("\n\rInvalid Input by user! Please enter again\n\r");
                        flag=1;
                    }
                    break;

                default:break;
            }
        }
    }

/*-----------------------------------------------------------------------------------------------------------------------------------------------*/

    /*Convert address into a number which is an integer*/
    for(i=0;i<3;i++)
    {
        address = address +((get_address_int[i])*powf(16,2-i));
    }
    return (address);
}

uint16_t hex_data(uint16_t rec_addr)
{
    // Initialize variables to store data during the process
    uint16_t byte_received = 0;
    uint8_t control_byte;
    uint16_t address_byte;
    uint8_t write_readbyte;

    // Construct the control byte for the write operation
    // Byte format: 1010 A3 A2 A1 0 (w/r)
    control_byte = ((0xA0) | (rec_addr >> 7) & (0xfe));

    // Construct the control byte for the read operation
    // Byte format: 1010 A3 A2 A1 1 (w/r)
    write_readbyte = ((0xA0) | (rec_addr >> 7) | (0x01));

    // Extract the lower byte of the address
    address_byte = (uint8_t)rec_addr;

    // Start the I2C communication
    i2c_start();

    // Send control byte for write operation to EEPROM
    i2c_Write_Byte(control_byte);

    // Send lower byte of the address to EEPROM
    i2c_Write_Byte(address_byte);

    // Restart the communication for the read operation
    i2c_Restart();

    // Send control byte for read operation to EEPROM
    i2c_Write_Byte(write_readbyte);

    // Read the byte from the EEPROM
    byte_received = i2c_Read_Byte();

    // Send a No Acknowledge signal to the EEPROM
    i2c_NoAck();

    // Stop the I2C communication
    i2c_stop();

    // Return the received byte
    return byte_received;
}

/*-----------------------------------------------------------------------------------------------------------------------------------------------*/
/*                                                              HEX DUMP FUNCTION                                                                */
/*-----------------------------------------------------------------------------------------------------------------------------------------------*/

void hex_dump()
{
    // Variables for address range and loop control
    uint16_t first_address;
    uint16_t second_address;
    int counter;
    int count = 0;
    int flag = 0;
    uint16_t temp_data;

    // Prompt user to enter the FIRST address for hex dump
    printf_tiny("\n\rEnter the FIRST address between 0x00-0x7ff\n\r");
    first_address = hex_addresses();

    // Prompt user to enter the SECOND address for hex dump
    printf_tiny("\n\rEnter the SECOND address between 0x00-0x7ff\n\r");
    second_address = hex_addresses();

    // Check if the addresses are valid for hex dump
    if (first_address <= second_address)
    {
        flag = 1;
        printf_tiny("\n\rValid input\n\r");
    }
    else
    {
        printf_tiny("\n\rInvalid Entries! Please enter addresses for hex dump again\n\r");
    }

    // If addresses are valid, perform the hex dump
    if (flag == 1)
    {
        for (counter = first_address; counter <= second_address; counter++)
        {
            if (counter == first_address)
            {
                // Read and print the first byte in the row
                temp_data = hex_data(first_address);
                printf_tiny("\n\r%x>>   %x", first_address, temp_data);
            }
            else if (count != 15)
            {
                // Read and print bytes in the middle of the row
                temp_data = hex_data(counter);
                printf_tiny("   %x", temp_data);
                count++;
            }
            else if (count == 15)
            {
                // Read and print the last byte in the row
                temp_data = hex_data(counter);
                printf_tiny("\n\r%x>>   %x", counter, temp_data);
                count = 0;
            }
        }
    }
}



void i2c_io_expander_write(__xdata uint8_t data_byte)
{
    // Local variable to store the I/O expander address
    __xdata uint8_t address = 0;

    // Set the I/O expander address using the provided mask
    address |= io_expander_mask;
    
    // Apply the write mask to the address
    address &= write_mask;

    // Check if P7 is low (bit 7 is low)
    if ((data_byte & (1 << 7)) == 0) {
        // Invert bits P0 to P6 using bitwise NOT (~)
        data_byte = ~data_byte; // 0x7F is binary 01111111
    }

    // Start the I2C communication
    start_i2c();

    // Write the I/O expander address
    write_byte(address);

    // Check for acknowledgment after writing the address
    acknowledge_check();

    // Write the data byte to the I/O expander
    write_byte(data_byte);

    // Check for acknowledgment after writing the data byte
    acknowledge_check();

    // Stop the I2C communication
    stop_i2c();

    // Return from the function
    return;
}



__xdata uint8_t i2c_io_expander_read()
{
    // Local variables to store the read data and I/O expander address
    __xdata uint8_t data_byte = 0, address = 0;

    // Set the I/O expander address using the provided mask
    address |= io_expander_mask;

    // Apply the read mask to the address
    address |= read_mask;

    // Start the I2C communication
    start_i2c();

    // Write the I/O expander address for read operation
    write_byte(address);

    // Check for acknowledgment after writing the address
    acknowledge_check();

    // Read the data byte from the I/O expander
    data_byte = read_byte();

    // Send acknowledgment after reading the data byte
    send_acknowledge();

    // Stop the I2C communication
    stop_i2c();

    // Return the read data byte
    return data_byte;
}
