/*
 */

#include <mcs51/8051.h>

void delay(unsigned int time_ms)
{
    unsigned int i, j;
    for (i = 0; i < time_ms; i++)
        for (j = 0; j < 112; j++);
}

void main(void)
{
    // Insert code
    while (1)
    {
        P1_0 = 1; // Set Pin P1.0 (assuming it's an output) to high
        delay(1000); // Delay for 1000 milliseconds
        P1_0 = 0; // Set Pin P1.0 to low
        delay(1000); // Delay for another 1000 milliseconds
    }

}
