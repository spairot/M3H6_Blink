/**
 *****************************************************************************
 * @file     system_TMPM3H6.h
 * @brief    CMSIS Cortex-M3 Device Peripheral Access Layer Header File for the
 *           TOSHIBA 'TMPM3Hx' Device Series 
 * @version V1.0.1.0
 * $Date:: 2016-08-02 11:15:45 #$
 * 
 * DO NOT USE THIS SOFTWARE WITHOUT THE SOFTWARE LISENCE AGREEMENT.
 * 
 * (C)Copyright TOSHIBA CORPORATION 2016 All rights reserved
 *****************************************************************************
 */

#include <stdint.h>

#ifndef __SYSTEM_TMPM3Hx_H
#define __SYSTEM_TMPM3Hx_H

#ifdef __cplusplus
extern "C" {
#endif 

extern uint32_t SystemCoreClock;     /*!< System Clock Frequency (Core Clock)  */

/**
 * Initialize the system
 *
 * @param  none
 * @return none
 *
 * @brief  Setup the microcontroller system.
 *         Initialize the System and update the SystemCoreClock variable.
 */
extern void SystemInit (void);

/**
 * Update SystemCoreClock variable
 *
 * @param  none
 * @return none
 *
 * @brief  Updates the SystemCoreClock with current core Clock 
 *         retrieved from cpu registers.
 */
extern void SystemCoreClockUpdate (void);

#ifdef __cplusplus
}
#endif

#endif
