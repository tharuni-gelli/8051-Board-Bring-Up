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


_sdcc_external_startup()
{
    AUXR |= 0X0C;  // Set some control register to access 1kb of external ram
    return 0;
}


void main(void)
{
//initialization
__xdata uint8_t key_pressed=0,exit_code=0,data_byte=0, x=0, y=0, i=0;
__xdata uint16_t address=0;
    //sentences
__xdata uint8_t Welcome_txt[] = "\n\r*******HELLO :)*******";
__xdata uint8_t Welcome_lcd_txt[] = "Tharuni ESD LAB4";
__xdata uint8_t Instructions_txt[] = "\n\rPress\n\r'A'-> Jump Address LCD\n\r'Backspace'-> Clear LCD \n\r'X'-> Jump Co-ordinates\n\r'C' Put char\n\r'S' Put string\n\rT'->Start or Stop Time\n\r'Y'-> Reset Time\n\r'D'-> DDRAM\n\r'G'-> CGRAM\n\r'L'-> Create Custom Char";
__xdata uint8_t Enter_Address_txt[] = "\n\rEnter Address ";
__xdata uint8_t Enter_data_txt[] = "\n\rEnter Data ";
    __xdata uint8_t LCD_address_jump_txt[]= "\n\rLCD Address Jump";
    __xdata uint8_t LCD_coordinate_jump_txt[]= "\n\rLCD co-ordinates Jump";
    __xdata uint8_t xcoordinate_txt[]="\n\rEnter X coordinate(row)->";
    __xdata uint8_t ycoordinate_txt[]="\n\rEnter Y coordinate(Column)->";
    __xdata uint8_t invalid_txt[]="\n\rInvalid Entry";
    __xdata uint8_t invalid_address[]="\n\rInvalid Address";
    printf(Welcome_txt);
    printf(Instructions_txt);
    lcd_init();
    lcd_put_str(Welcome_lcd_txt);
    timer_on_off_flag = 1;
    rtc_init();


    while(1)
{
key_pressed= getchar();
putchar(key_pressed);
            if(timer_on_off_flag == 1)
            {
                TR0 = 0;
            }
switch(key_pressed)
{
case 'A':
{
                    my_printf(LCD_address_jump_txt);
                    my_printf(Enter_Address_txt);
                    address = fetch_number(16);
                    lcd_go_to_addr(address);
                    break;
}

case 'X':
{
                    if(timer_on_off_flag == 1)
                    {
                        TR0 = 1;
                    }
                    my_printf(LCD_coordinate_jump_txt);
                    my_printf(xcoordinate_txt);
                    x = fetch_number(10);
                    my_printf(ycoordinate_txt);
                    y = fetch_number(10);
                    lcd_go_to_x_y(x,y);
                    break;
}

case 'T':
{
                    if(timer_on_off_flag == 1)
                    {
                        rtc_stop_time();
                        timer_on_off_flag = 0;
                    }
                    else
                    {
                        rtc_start_time();
                        timer_on_off_flag = 1;
                    }
                    break;
}

case 'Y':
{
   if(timer_on_off_flag == 1)
                    {
                        TR0 = 1;
                    }
                    rtc_reset_time();
                    break;
}
case 'S':
                {
                     if(timer_on_off_flag == 1)
                    {
                        TR0 = 1;
                    }
                    printf("Enter the string ");
                    __xdata uint8_t input_string[50];
                    uint8_t i = 0;
                    // Read characters until Enter is pressed (13)
                    while ((input_string[i] = getchar()) != 13)
                    {
                        putchar(input_string[i]);
                        i++;
                    }
                    input_string[i] = '\0'; // Null-terminate the string
                    lcd_put_str(input_string);
                    break;
}

case 8:
{
                    lcd_clear();
break;
}

case 'D':
            if(timer_on_off_flag == 1)
                    {
                        TR0 = 1;
                    }
                // Dump the LCD DDRAM (Display Data RAM)
            lcd_ddram_flush();
            break;

case 'G':
             if(timer_on_off_flag == 1)
                    {
                        TR0 = 1;
                    }
                // Dump the LCD CGRAM (Character Generator RAM)
            lcd_cgram_flush();
            break;

case 'L':
            if(timer_on_off_flag == 1)
                    {
                        TR0 = 1;
                    }
                // Create custom characters for the LCD
            lcd_custom_character_creation();
            break;

case '?':
                {
                    my_printf(Instructions_txt);
                    break;
                }

default:
                {
                    putchar(key_pressed);
                    lcd_put_ch(key_pressed);
                    break;
                }
}
key_pressed=0;
if(timer_on_off_flag == 1)
            {
                TR0 = 1;
            }
}
}


