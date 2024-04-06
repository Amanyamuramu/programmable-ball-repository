 /*
  Copyright (c) 2014-2015 Arduino LLC.  All right reserved.
  Copyright (c) 2016 Sandeep Mistry All right reserved.
  Copyright (c) 2018, Adafruit Industries (adafruit.com)

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.
  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the GNU Lesser General Public License for more details.
  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#ifndef _VARIANT_TOHO_OFURO_MONITOR_
#define _VARIANT_TOHO_OFURO_MONITOR_

/** Master clock frequency */
#define VARIANT_MCK       (64000000ul)

#define USE_LFXO      // Board uses 32khz crystal for LF
// define USE_LFRC    // Board uses RC for LF

/*----------------------------------------------------------------------------
 *        Headers
 *----------------------------------------------------------------------------*/

#include "WVariant.h"

#ifdef __cplusplus
extern "C"
{
#endif // __cplusplus

typedef int PinStatus;

#define NOT_A_PIN -1
#define NC  0xFFFFFFFF

// Number of pins defined in PinDescription array
#define PINS_COUNT           (48)
#define NUM_DIGITAL_PINS     (48)
#define NUM_ANALOG_INPUTS    (6)
#define NUM_ANALOG_OUTPUTS   (0)

// LEDs
#define PIN_LED1             (3)
#define PIN_LED2             (5)
// #define PIN_NEOPIXEL         (8)
// #define NEOPIXEL_NUM         20

#define LED_BUILTIN          PIN_LED1
#define LED_CONN             PIN_LED2

#define LED_RED              PIN_LED1
#define LED_BLUE             PIN_LED2

#define LED_STATE_ON         1         // State when LED is litted

/*
 * Buttons
 */
// #define PIN_BUTTON           (24)

/*
 * Analog pins
 */
#define PIN_AIN0             (34)
#define PIN_AIN1             (30)
// #define PIN_AIN2             (31)
#define PIN_AIN2             (4)
#define PIN_AIN3             (32)
#define PIN_AIN4             (33)
#define PIN_AIN5             (29)

#define ADC_RESOLUTION    14

// Other pins
#define PIN_VBAT           PIN_AIN5
// #define PIN_5V_EN          (42)
// #define PIN_3V_SHUTDOWN    (40)
#define PIN_5VIN           NC // No connection
// #define PIN_SLEEP          (1)
// #define PIN_TESTOUT        (0)
// #define PIN_PRESENCE       (7)

// Additional Pins
// #define PIN_RESET           (10)
// #define PIN_DATA            (11)
// #define PIN_SWITCH_SD       (23)

/*
 * Serial interfaces
 */
#define PIN_SERIAL1_RX       (17)
#define PIN_SERIAL1_TX       (16)

// #define PIN_SERIAL2_TX        (6) // UART6_RX
// #define PIN_SERIAL2_RX        (5) // UART6_TX

/*
 * SPI Interfaces
 */
#define SPI_INTERFACES_COUNT 2

// nRF52840 has only one SPIM3 runing at highspeed 32Mhz
// This assign SPIM3 to either: SPI (0), SPI1 (1).
// If not defined, default to 0 or SPI.
// #define SPI_32MHZ_INTERFACE  0

// SPI
#define PIN_SPI_MISO         (14)
#define PIN_SPI_MOSI         (13)
#define PIN_SPI_SCK          (12)

static const uint8_t SS   = (15);
static const uint8_t MOSI = PIN_SPI_MOSI ;
static const uint8_t MISO = PIN_SPI_MISO ;
static const uint8_t SCK  = PIN_SPI_SCK ;

// SPI1
#define PIN_SPI1_MISO         (21)
#define PIN_SPI1_MOSI         (20)
#define PIN_SPI1_SCK          (19)

static const uint8_t SS1   = (22);
static const uint8_t MOSI1 = PIN_SPI1_MOSI ;
static const uint8_t MISO1 = PIN_SPI1_MISO ;
static const uint8_t SCK1  = PIN_SPI1_SCK ;

/*
 * Wire Interfaces
 */
#define WIRE_INTERFACES_COUNT 1

#define PIN_WIRE_SDA         (26)
#define PIN_WIRE_SCL         (27)


#ifdef __cplusplus
}
#endif

/*----------------------------------------------------------------------------
 *        Arduino objects - C++ only
 *----------------------------------------------------------------------------*/

#endif

