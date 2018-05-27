/*
; #######################################################################
; # 																	
; # Copyright(C) 2018																						
; # <Module name>														
; # M3H6_port.c 														
; # 																	
; # <Module Description>												
; # TMPM3H6 port hardware driver module.								
; # 																	
; # <History>															
; # 2018-01-25	First created.											
; # 																	
; #######################################################################
*/
/************************************************************************
; Include Section
;************************************************************************/
#define   M3H6_PORT_C
#include  "global.h"	

/************************************************************************
;* Defines Section
;************************************************************************/

/************************************************************************
;* Variable Section
;************************************************************************/

/************************************************************************
;* Function Prototype Section
;************************************************************************/

/************************************************************************
;* Module name	;ini_port		;ver1.0 (2018/01/25)	;by S.Pairot 
;* -------------;--------------------------------------------------------
;* Function 	;Initialize I/O port
;* Details	; 
;* Input	;None
;* Output	;None
;* History	;(2018/01/25)	;first written			;by S.Pairot
;************************************************************************/
void ini_port(void) {

  // Setup LED port Output (PB4-PB7)
  TSB_PB->DATA = iniPBDATA;               // !< PB Data Register
  TSB_PB->CR   = iniPBCR;                 // !< PB Control Register
  TSB_PB->PUP  = iniPBPUP;                // !< PB Pull-up Control Register
  TSB_PB->IE   = iniPBIE;                 // !< PB Input Enable Control Register
  TSB_PB->FR1  = iniPBFR1;                // !< PB Function Register 1
  TSB_PB->FR2  = iniPBFR2;                // !< PB Function Register 2
  TSB_PB->FR3  = iniPBFR3;                // !< PB Function Register 3
  TSB_PB->FR4  = iniPBFR4;                // !< PB Function Register 4
  TSB_PB->FR5  = iniPBFR5;                // !< PB Function Register 5
  return;
}
/************************************************************************/