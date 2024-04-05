#include <mcs51/8051.h>
#include "delay.h"

void delay(unsigned int time_ms)
{
    unsigned int i, j;
    for (i = 0; i < time_ms; i++)
        for (j = 0; j < 112; j++);
}
