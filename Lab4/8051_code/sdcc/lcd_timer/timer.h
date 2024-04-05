#ifndef TIMER_H_INCLUDED
#define TIMER_H_

#define timer_0_low (0xEF)
#define timer_0_high (0x73)

/**
 * @brief Initialize the real-time clock (RTC).
 *
 * This function sets up the necessary configurations for the RTC,
 * including initializing the 'time' variable, enabling Timer 0 overflow
 * interrupts, configuring Timer 0 in mode 1 (16-bit timer), and starting Timer 0.
 */
void rtc_init(void);

/**
 * @brief Display the time on an LCD screen.
 *
 * This function calculates the minutes, seconds, and tenths of a second from the
 * 'time' variable and displays them in a formatted manner on the LCD screen.
 * The original LCD cursor position is saved and restored after displaying the time.
 */
void rtc_diplay(void);

/**
 * @brief Stop the real-time clock.
 *
 * This function stops the Timer 0, effectively pausing the timekeeping.
 */
void rtc_stop_time(void);

/**
 * @brief Start or resume the real-time clock.
 *
 * This function starts or resumes Timer 0, allowing the real-time clock to continue
 * timekeeping.
 */
void rtc_start_time(void);

/**
 * @brief Reset the real-time clock.
 *
 * This function resets the 'time' variable, effectively setting the elapsed time to zero.
 */
void rtc_reset_time(void);


#endif // TIMER_H_INCLUDED
