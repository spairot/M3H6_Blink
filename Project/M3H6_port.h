/*
; #######################################################################
; #                                                                  
; # Copyright(C) 2018                                                                                       
; # <Module name>                                                       
; # M3H6_port.h                                                     
; #                                                                     
; # <Module Description>                                                
; # TMPM3H6 port hardware driver module.                                
; #                                                                     
; # <History>                                                           
; # 2018-01-25  First created.                                          
; #                                                                     
; #######################################################################
*/

#ifndef M3H6_PORT_H                                         
#define M3H6_PORT_H     

#undef  EXTR                            
#ifndef M3H6_PORT_C                                     
#define EXTR    extern                                      
#else                                                       
#define EXTR                                                
#endif  

/************************************************************************
; Include Section
;************************************************************************/
/************************************************************************
;* Defines Section
;************************************************************************/
#define DAT8( a,b,c,d,e,f,g,h ) \
            ( (a)*0x80+(b)*0x40+(c)*0x20+(d)*0x10 + \
              (e)*0x08+(f)*0x04+(g)*0x02+(h)*0x01 )                                     
#define DAT16( a,b,c,d,e,f,g,h,aa,bb,cc,dd,ee,ff,gg,hh ) \
             ( (a)*0x8000+(b)*0x4000+(c)*0x2000+(d)*0x1000 + \
               (e)*0x0800+(f)*0x0400+(g)*0x0200+(h)*0x0100 + \
               (aa)*0x0080+(bb)*0x0040+(cc)*0x0020+(dd)*0x0010 + \
               (ee)*0x0008+(ff)*0x0004+(gg)*0x0002+(hh)*0x0001 )
               
/*-----------------------------------------------------------------------
            iniPnDAT    Port input/output data register
            iniPnCR     Port control register   (0:input mode, 1:output mode)
            iniPnFR1    Switch port function 1  (0:Port, 1:Function1)
            iniPnFR2    Switch port function 2  (0:Port, 1:Function2)
            iniPnOD     Switch Open draine port (0:CMOS, 1:OD)
            iniPnPUP    Switch Pull-up port     (0:OFF,  1:ON)
            iniPnPDN    Switch Pull-down port   (0:OFF,  1:ON)
            iniPnIE     Input ebable            (0:disable, 1:Enable)
------------------------------------------------------------------------
PORT A      PA7~PA0 8bit
------------------------------------------------------------------------*/
#define     iniPADATA   DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPACR     DAT8(1,0,1,0,1,1,1,0)                                       
#define     iniPAFR1    DAT8(0,1,0,0,1,0,0,1)                                       
#define     iniPAFR2    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPAOD     DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPAPUP    DAT8(0,0,0,1,0,0,0,0)                                       
#define     iniPAPDN    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPAIE     DAT8(0,1,0,1,0,0,0,1)/*                                     
                                             0    |  |  |  | |  |  | +--  PA0 TB0IN (IR receiver input)   ;L active
                                             1    |  |  |  | |  | +----  PA1 Not use                             ;
                                             2    |  |  |  | | +------  PA2 Not use                             ;
                                             3    |  |  |  | +-------- PA3 TB1OUT (Fan PWM output)  ;H active
                                             4    |  |  | +----------  PA4 Fan input                          ;H/L active
                                             5    |  |  +------------ PA5 TXD1 (HA output)              ;
                                             6    | +--------------  PA6 RXD1 (HA input)                ;
                                             7    +---------------   PA7 Not use                             ;
                */                                                          

/*-----------------------------------------------------------------------
            iniPnDAT    Port input/output data register
            iniPnCR     Port control register   (0:input mode, 1:output mode)
            iniPnFR1    Switch port function 1  (0:Port, 1:Function1)
            iniPnFR2    Switch port function 2  (0:Port, 1:Function2)
            iniPnOD     Switch Open draine port (0:CMOS, 1:OD)
            iniPnPUP    Switch Pull-up port     (0:OFF,  1:ON)
            iniPnPDN    Switch Pull-down port   (0:OFF,  1:ON)
            iniPnIE      Input ebable            (0:disable, 1:Enable)
------------------------------------------------------------------------
PORT B      PB7~PB0 8bit
------------------------------------------------------------------------*/
#define     iniPBDATA   DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBCR     DAT8(1,1,1,1,0,0,0,0)                                       
#define     iniPBFR1    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBFR2    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBFR3    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBFR4    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBFR5    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBOD     DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBPUP    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBPDN    DAT8(0,0,0,0,0,0,0,0)                                       
#define     iniPBIE     DAT8(0,0,0,0,1,1,1,1)/*                                     
                                             0    |  |  |  | |  |  | +--  PB0 Not use
                                             1    |  |  |  | |  | +----  PB1 Not use
                                             2    |  |  |  | | +------  PB2 Not use
                                             3    |  |  |  | +-------- PB3 Not use
                                             4    |  |  | +----------  PB4 LED0
                                             5    |  |  +------------ PB5 LED1
                                             6    | +--------------  PB6 LED2
                                             7    +---------------   PB7 LED3
                */                                                          

/************************************************************************
;* Variable Section
;************************************************************************/

/************************************************************************
;* Function Prototype Section
;************************************************************************/
EXTR void ini_port(void);

#endif /*M3H6_PORT_H*/  