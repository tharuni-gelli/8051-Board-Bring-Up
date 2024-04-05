#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include<stdint.h>
#include"delay.h"


void delay_us(unsigned int microseconds) // Which is calculated by considering the 0.25usecs tsu and 0.25usecs thu. ( 250nsecs+250nsecs/2) = 250nsecs
{
  unsigned int i,limit;
  limit = microseconds/15;
  // Generate a half-bit delay of 2768 machine cycles (approximately 250 nanoseconds)
  for (i = 0; i < limit; i++)
  {
    ;
  }
}
