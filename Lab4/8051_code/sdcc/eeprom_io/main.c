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

_sdcc_external_startup()
{
    AUXR |= 0X0C;  // Set some control register (specific to the microcontroller)
    return 0;
}


void main(void)
{
    __xdata uint16_t address=0;
    __xdata uint8_t data_byte=0;

display:
    printf_tiny("\n\r**************************************HELLO :)*******************************\r");
    printf_tiny("\n\r1. Write Byte onto EEPROM\n\r");
    printf_tiny("\n\r2. Read Byte onto EEPROM\n\r");
    printf_tiny("\n\r3. Hex Dump\n\r");
    printf_tiny("\n\r4. Reset EEPROM\n\r");
    printf_tiny("\n\r5. IO Write\n\r");
    printf_tiny("\n\r6. IO Read\n\r");
    printf_tiny("\n\r7. EEPROM Dump\n\r");
    printf_tiny("\n\r?. Goto menu\n\r");
    printf_tiny("\r********************************************************************************\r");
    while(1)
    {
        i2c_init();
        printf_tiny("\n\rEnter a number from menu or press 5 to see menu again\n\r");
        uint8_t num=get_input();
        putchar(num);
        if(num==1)
        {
            printf_tiny("\n\rIn Write Byte Condition\n\r");
            printf_tiny("\n\rEnter data\n\r");
            data_byte = fetch_number(16);
            printf_tiny("\n\rEnter Address\n\r");
            address = fetch_number(16);
            if(address>i2c_eeprom_size)
            {
                printf_tiny("\n\rinvalid address\n\r");
                break;
            }
            eeprom_write(address,data_byte);
            printf_tiny("\n\rWriting Byte....\n\r");
        }
        else if(num==2)
        {
            printf_tiny("\n\rIn Read Byte Condition\n\r");
            printf_tiny("\n\rEnter Address txt\n\r");
            address = fetch_number(16);
            if(address>i2c_eeprom_size)
            {
                printf_tiny("\n\rinvalid address\n\r");
                break;
            }
            data_byte = eeprom_read(address);
            printf_tiny("\n\rReading Byte....\n\r");
            printf_tiny("\n\rRead complete\n\r");
            printf_tiny("\n\rData read\n\r");
            print_number_hex(address,3);
            putchar(':');
            print_number_hex(data_byte,2);
        }
        else if(num==3)
        {
            printf_tiny("\n\rHex Dump\n\r");
            hex_dump();
        }
        else if(num==4)
        {
            printf_tiny("\n\rReset EEPROM\n\r");
            eeprom_reset();
        }
        else if(num ==5)
        {
         printf_tiny("\n\rwrite mode\n\r");
         printf_tiny("\n\rEnter Data\n\r");
         data_byte = fetch_number(16);
         i2c_io_expander_write(data_byte);
         printf_tiny("\n\rWrite complete\n\r");
		}

        else if (num==6)
        {
        data_byte = i2c_io_expander_read();
        printf_tiny("\n\rRead mode\n\r");
        printf_tiny("\n\rData read\n\r");
        print_number_hex(data_byte,2);
        }
        else if(num==7)
        {
            printf_tiny("\n\rEEPROM Dump\n\r");
            i2c_eeprom_flush();
        }
        else if(num=='?')
        {
            goto display;
        }

    }
}
