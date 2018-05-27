/**
 *******************************************************************************
 * @file    TMPM3Hx.h
 * @brief   CMSIS Cortex-M3 Core Peripheral Access Layer Header File for the
 *          TOSHIBA 'TMPM3Hx' Group
 * @version V1.0.6.0
 * $Date:: 2017-02-20 #$
 * 
 * DO NOT USE THIS SOFTWARE WITHOUT THE SOFTWARE LISENCE AGREEMENT.
 * 
 * (C)Copyright TOSHIBA CORPORATION 2016 All rights reserved
 *******************************************************************************
 */
#ifndef __TMPM3Hx_H__
#define __TMPM3Hx_H__

#ifdef __cplusplus
extern "C" {
#endif

/** @addtogroup TOSHIBA_TXZ_MICROCONTROLLER TOSHIBA TXZ MICROCONTROLLER
  * @{
  */
  
/** @addtogroup TMPM3Hx TMPM3Hx
  * @{
  */

#if !defined(TMPM3H6) && !defined(TMPM3H5) && !defined(TMPM3H4) && \
    !defined(TMPM3H3) && !defined(TMPM3H2) && !defined(TMPM3H1) && \
    !defined(TMPM3H0)
/**
  * @brief Remove a comment of target device.
  */
   #define TMPM3H6      /*!< TMPM3H6 device */
/* #define TMPM3H5 */   /*!< TMPM3H5 device */
/* #define TMPM3H4 */   /*!< TMPM3H4 device */
/* #define TMPM3H3 */   /*!< TMPM3H3 device */
/* #define TMPM3H2 */   /*!< TMPM3H2 device */
/* #define TMPM3H1 */   /*!< TMPM3H1 device */
/* #define TMPM3H0 */   /*!< TMPM3H0 device */
#endif

/** @defgroup Device_Included Device Included
  * @{
  */

#if defined(TMPM3H6)
   #include "TMPM3H6.h"
#elif defined(TMPM3H5)
   #include "TMPM3H5.h"
#elif defined(TMPM3H4)
   #include "TMPM3H4.h"
#elif defined(TMPM3H3)
   #include "TMPM3H3.h"
#elif defined(TMPM3H2)
   #include "TMPM3H2.h"
#elif defined(TMPM3H1)
   #include "TMPM3H1.h"
#elif defined(TMPM3H0)
   #include "TMPM3H0.h"
#else
   #error "target device is non-select."
#endif

/**
  * @}
  */ /* End of group Device_Included */

#ifdef __cplusplus
}
#endif

#endif  /* __TMPM3Hx_H__ */

/**
  * @}
  */ /* End of group TMPM3Hx */

/**
  * @}
  */ /* End of group TOSHIBA_TXZ_MICROCONTROLLER */
