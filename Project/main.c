/*************************************************************************
 * LED blink
 * PB4-PB7 blink
*  TMPM36HFWFG Evaluation board
 **************************************************************************/
#include <intrinsics.h>
#include "TMPM3H6.h"
#include "global.h"

#define LED_PIN   0xf0

void GPIO_Configuration( void );
void INTT32A0A_Configuration( void );

/*****************************************************************************
 * main
 * @param : None
 * @retval : None
 *****************************************************************************/
int main()
{
  GPIO_Configuration();
  INTT32A0A_Configuration();
  while (1) {
    ;
  }
}


/*************************************************************************
 * GPIO Configuration
 * @param : None
 * @retval : None
 *************************************************************************/
void GPIO_Configuration( void )
{
  // Enable clock to all modules
  TSB_CG->FSYSENA |= 0xFFFFFFFF;  /*!< CG output control register A  for fsys clock */
  TSB_CG->FSYSENB |= 0x000000FF;  /*!< CG output control register B  for fsys clock */

  ini_port();                    // Port initial
#if 0
  // Setup LED port Output (PB4-PB7)
  TSB_PB->CR |= LED_PIN;          /*!< PB Control Register                          */
  TSB_PB->PUP |= LED_PIN;         /*!< PB Pull-up Control Register                  */
  TSB_PB->IE &= ~LED_PIN;         /*!< PB Input Enable Control Register             */
  TSB_PB->FR1 &= ~LED_PIN;        /*!< PB Function Register 1                       */
  TSB_PB->FR2 &= ~LED_PIN;        /*!< PB Function Register 2                       */
  TSB_PB->FR3 &= ~LED_PIN;        /*!< PB Function Register 3                       */
  TSB_PB->FR4 &= ~LED_PIN;        /*!< PB Function Register 4                       */
  TSB_PB->FR5 &= ~LED_PIN;        /*!< PB Function Register 5                       */
  TSB_PB->DATA |= LED_PIN;        /*!< PB Data Register                             */
#endif
}

/*************************************************************************
 * INTT32A0A Configuration
 * @param : None
 * @retval : None
 *************************************************************************/
void INTT32A0A_Configuration( void )
{
  // Setup Timer0 for periodic interrupt
  NVIC_DisableIRQ(INTT32A0A_IRQn);
  TSB_T32A0->RUNA = 1;
  TSB_T32A0->CRA = (7<<28) | 1;
  TSB_T32A0->RGA0 = 0x8000;
  
    // Enable interrupt for Timer
  NVIC_SetPriority(INTT32A0A_IRQn, 1);
  NVIC_EnableIRQ(INTT32A0A_IRQn);
  // Start Timer
  TSB_T32A0->RUNA = 0x03;

  __enable_interrupt();

}

/*************************************************************************
 * INTT32A0A Interrupt
 * @param : None
 * @retval : None
 **************************************************************************/
void INTT32A0A_IRQHandler(void)
{
    NVIC_ClearPendingIRQ(INTT32A0A_IRQn);
    TSB_PB->DATA ^= LED_PIN;
}