;/**
; *******************************************************************************
; * @file    startup_TMPM3H3.s
; * @brief   CMSIS Cortex-M3 Core Device Startup File for the
; *          TOSHIBA 'TMPM3H3' Device Series
; * @version V1.0.0.0
; * $Date:: 2017-02-20 #$
; * 
; * DO NOT USE THIS SOFTWARE WITHOUT THE SOFTWARE LISENCE AGREEMENT.
; * 
; * (C)Copyright TOSHIBA CORPORATION 2017 All rights reserved
; *******************************************************************************
; */
;
; The modules in this file are included in the libraries, and may be replaced
; by any user-defined modules that define the PUBLIC symbol _program_start or
; a user defined start symbol.
; To override the cstartup defined in the library, simply add your modified
; version to the workbench project.
;
; Cortex-M version
;

                MODULE  ?cstartup

                ;; Forward declaration of sections.
                SECTION CSTACK:DATA:NOROOT(3)

                SECTION .intvec:CODE:NOROOT(2)

                EXTERN  __iar_program_start
                EXTERN  SystemInit
                PUBLIC  __vector_table

                DATA
__vector_table  DCD     sfe(CSTACK)
                DCD     Reset_Handler

                DCD     NMI_Handler               ; NMI Handler
                DCD     HardFault_Handler         ; Hard Fault Handler
                DCD     MemManage_Handler         ; MPU Fault Handler
                DCD     BusFault_Handler          ; Bus Fault Handler
                DCD     UsageFault_Handler        ; Usage Fault Handler
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     SVC_Handler               ; SVCall Handler
                DCD     DebugMon_Handler          ; Debug Monitor Handler
                DCD     0                         ; Reserved
                DCD     PendSV_Handler            ; PendSV Handler
                DCD     SysTick_Handler           ; SysTick Handler

                ; External Interrupts
                DCD     INT00_IRQHandler          ; 0:	Interrupt Pin0
                DCD     INT01_IRQHandler          ; 1:	Interrupt Pin1
                DCD     INT02_IRQHandler          ; 2:	Interrupt Pin2
                DCD     INT03_IRQHandler          ; 3:	Interrupt Pin3
                DCD     INT04_IRQHandler          ; 4:	Interrupt Pin4
                DCD     INT05_IRQHandler          ; 5:	Interrupt Pin5
                DCD     INT06_IRQHandler          ; 6:	Interrupt Pin6
                DCD     INT07_IRQHandler          ; 7:	Interrupt Pin7
                DCD     0                         ; 8:	Reserved
                DCD     0                         ; 9:	Reserved
                DCD     0                         ; 10:	Reserved
                DCD     0                         ; 11:	Reserved
                DCD     0                         ; 12:	Reserved
                DCD     0                         ; 13:	Reserved
                DCD     0                         ; 14:	Reserved
                DCD     0                         ; 15:	Reserved
                DCD     INTEMG0_IRQHandler        ; 16:	PMD0 EMG interrupt
                DCD     INTOVV0_IRQHandler        ; 17:	PMD0 OVV interrupt
                DCD     INTPMD0_IRQHandler        ; 18:	PMD0 interrupt
                DCD     INTENC00_IRQHandler       ; 19:	Encoder 0 interrupt 0
                DCD     INTENC01_IRQHandler       ; 20:	Encoder 0 interrupt 1
                DCD     INTADAPDA_IRQHandler      ; 21:	ADC conversion triggered by PMD is finished A
                DCD     INTADAPDB_IRQHandler      ; 22:	ADC conversion triggered by PMD is finished B
                DCD     INTADACPA_IRQHandler      ; 23:	ADC conversion monitoring function interrupt A
                DCD     INTADACPB_IRQHandler      ; 24:	ADC conversion monitoring function interrupt B
                DCD     INTADATRG_IRQHandler      ; 25:	ADC conversion triggered by General purpose is finished
                DCD     INTADASGL_IRQHandler      ; 26:	ADC conversion triggered by Single program is finished
                DCD     INTADACNT_IRQHandler      ; 27:	ADC conversion triggered by Continuity program is finished
                DCD     INTT0RX_IRQHandler        ; 28:	TSPI/SIO reception (channel 0)
                DCD     INTT0TX_IRQHandler        ; 29:	TSPI/SIO transmit (channel 0)
                DCD     INTT0ERR_IRQHandler       ; 30:	TSPI/SIO error (channel 0)
                DCD     INTT1RX_IRQHandler        ; 31:	TSPI/SIO reception (channel 1)
                DCD     INTT1TX_IRQHandler        ; 32:	TSPI/SIO transmit (channel 1)
                DCD     INTT1ERR_IRQHandler       ; 33:	TSPI/SIO error (channel 1)
                DCD     INTI2CWUP_IRQHandler      ; 34:	Serial bus interface (WakeUp) interrupt (channel 0)
                DCD     INTI2C0_IRQHandler        ; 35:	I2C0 transmission and reception interrupt
                DCD     INTI2C0AL_IRQHandler      ; 36:	I2C0 arbitration lost interrupt
                DCD     INTI2C0BF_IRQHandler      ; 37:	I2C0 bus free interrupt
                DCD     INTI2C0NA_IRQHandler      ; 38:	I2C0 no ack interrupt
                DCD     INTI2C1_IRQHandler        ; 39:	I2C1 transmission and reception interrupt
                DCD     INTI2C1AL_IRQHandler      ; 40:	I2C1 arbitration lost interrupt
                DCD     INTI2C1BF_IRQHandler      ; 41:	I2C1 bus free interrupt
                DCD     INTI2C1NA_IRQHandler      ; 42:	I2C1 no ack interrupt
                DCD     INTI2C2_IRQHandler        ; 43:	I2C2 transmission and reception interrupt
                DCD     INTI2C2AL_IRQHandler      ; 44:	I2C2 arbitration lost interrupt
                DCD     INTI2C2BF_IRQHandler      ; 45:	I2C2 bus free interrupt
                DCD     INTI2C2NA_IRQHandler      ; 46:	I2C2 no ack interrupt
                DCD     INTUART0RX_IRQHandler     ; 47:	UART reception (channel 0)
                DCD     INTUART0TX_IRQHandler     ; 48:	UART transmit (channel 0)
                DCD     INTUART0ERR_IRQHandler    ; 49:	UART error (channel 0)
                DCD     INTUART1RX_IRQHandler     ; 50:	UART reception (channel 1)
                DCD     INTUART1TX_IRQHandler     ; 51:	UART transmit (channel 1)
                DCD     INTUART1ERR_IRQHandler    ; 52:	UART error (channel 1)
                DCD     INTUART2RX_IRQHandler     ; 53:	UART reception (channel 2)
                DCD     INTUART2TX_IRQHandler     ; 54:	UART transmit (channel 2)
                DCD     INTUART2ERR_IRQHandler    ; 55:	UART error (channel 2)
                DCD     INTT32A0A_IRQHandler      ; 56:	32bit T32A0A compare match detection 0 / Over flow / under flow
                DCD     INTT32A0ACAP0_IRQHandler  ; 57:	32bit T32A0A input capture 0
                DCD     INTT32A0ACAP1_IRQHandler  ; 58:	32bit T32A0A input capture 1
                DCD     INTT32A0B_IRQHandler      ; 59:	32bit T32A0B compare match detection 0 / Over flow / under flow
                DCD     INTT32A0BCAP0_IRQHandler  ; 60:	32bit T32A0B input capture 0
                DCD     INTT32A0BCAP1_IRQHandler  ; 61:	32bit T32A0B input capture 1
                DCD     INTT32A0C_IRQHandler      ; 62:	32bit T32A0C compare match detection 0 / Over flow / under flow
                DCD     INTT32A0CCAP0_IRQHandler  ; 63:	32bit T32A0C input capture 0
                DCD     INTT32A0CCAP1_IRQHandler  ; 64:	32bit T32A0C input capture 1
                DCD     INTT32A1A_IRQHandler      ; 65:	32bit T32A1A compare match detection 0 / Over flow / under flow
                DCD     INTT32A1ACAP0_IRQHandler  ; 66:	32bit T32A1A input capture 0
                DCD     INTT32A1ACAP1_IRQHandler  ; 67:	32bit T32A1A input capture 1
                DCD     INTT32A1B_IRQHandler      ; 68:	32bit T32A1B compare match detection 0 / Over flow / under flow
                DCD     INTT32A1BCAP0_IRQHandler  ; 69:	32bit T32A1B input capture 0
                DCD     INTT32A1BCAP1_IRQHandler  ; 70:	32bit T32A1B input capture 1
                DCD     INTT32A1C_IRQHandler      ; 71:	32bit T32A1C compare match detection 0 / Over flow / under flow
                DCD     INTT32A1CCAP0_IRQHandler  ; 72:	32bit T32A1C input capture 0
                DCD     INTT32A1CCAP1_IRQHandler  ; 73:	32bit T32A1C input capture 1
                DCD     INTT32A2A_IRQHandler      ; 74:	32bit T32A2A compare match detection 0 / Over flow / under flow
                DCD     INTT32A2ACAP0_IRQHandler  ; 75:	32bit T32A2A input capture 0
                DCD     INTT32A2ACAP1_IRQHandler  ; 76:	32bit T32A2A input capture 1
                DCD     INTT32A2B_IRQHandler      ; 77:	32bit T32A2B compare match detection 0 / Over flow / under flow
                DCD     INTT32A2BCAP0_IRQHandler  ; 78:	32bit T32A2B input capture 0
                DCD     INTT32A2BCAP1_IRQHandler  ; 79:	32bit T32A2B input capture 1
                DCD     INTT32A2C_IRQHandler      ; 80:	32bit T32A2C compare match detection 0 / Over flow / under flow
                DCD     INTT32A2CCAP0_IRQHandler  ; 81:	32bit T32A2C input capture 0
                DCD     INTT32A2CCAP1_IRQHandler  ; 82:	32bit T32A2C input capture 1
                DCD     INTT32A3A_IRQHandler      ; 83:	32bit T32A3A compare match detection 0 / Over flow / under flow
                DCD     INTT32A3ACAP0_IRQHandler  ; 84:	32bit T32A3A input capture 0
                DCD     INTT32A3ACAP1_IRQHandler  ; 85:	32bit T32A3A input capture 1
                DCD     INTT32A3B_IRQHandler      ; 86:	32bit T32A3B compare match detection 0 / Over flow / under flow
                DCD     INTT32A3BCAP0_IRQHandler  ; 87:	32bit T32A3B input capture 0
                DCD     INTT32A3BCAP1_IRQHandler  ; 88:	32bit T32A3B input capture 1
                DCD     INTT32A3C_IRQHandler      ; 89:	32bit T32A3C compare match detection 0 / Over flow / under flow
                DCD     INTT32A3CCAP0_IRQHandler  ; 90:	32bit T32A3C input capture 0
                DCD     INTT32A3CCAP1_IRQHandler  ; 91:	32bit T32A3C input capture 1
                DCD     INTT32A4A_IRQHandler      ; 92:	32bit T32A4A compare match detection 0 / Over flow / under flow
                DCD     INTT32A4ACAP0_IRQHandler  ; 93:	32bit T32A4A input capture 0
                DCD     INTT32A4ACAP1_IRQHandler  ; 94:	32bit T32A4A input capture 1
                DCD     INTT32A4B_IRQHandler      ; 95:	32bit T32A4B compare match detection 0 / Over flow / under flow
                DCD     INTT32A4BCAP0_IRQHandler  ; 96:	32bit T32A4B input capture 0
                DCD     INTT32A4BCAP1_IRQHandler  ; 97:	32bit T32A4B input capture 1
                DCD     INTT32A4C_IRQHandler      ; 98:	32bit T32A4C compare match detection 0 / Over flow / under flow
                DCD     INTT32A4CCAP0_IRQHandler  ; 99:	32bit T32A4C input capture 0
                DCD     INTT32A4CCAP1_IRQHandler  ; 100:	32bit T32A4C input capture 1
                DCD     INTT32A5A_IRQHandler      ; 101:	32bit T32A5A compare match detection 0 / Over flow / under flow
                DCD     INTT32A5ACAP0_IRQHandler  ; 102:	32bit T32A5A input capture 0
                DCD     INTT32A5ACAP1_IRQHandler  ; 103:	32bit T32A5A input capture 1
                DCD     INTT32A5B_IRQHandler      ; 104:	32bit T32A5B compare match detection 0 / Over flow / under flow
                DCD     INTT32A5BCAP0_IRQHandler  ; 105:	32bit T32A5B input capture 0
                DCD     INTT32A5BCAP1_IRQHandler  ; 106:	32bit T32A5B input capture 1
                DCD     INTT32A5C_IRQHandler      ; 107:	32bit T32A5C compare match detection 0 / Over flow / under flow
                DCD     INTT32A5CCAP0_IRQHandler  ; 108:	32bit T32A5C input capture 0
                DCD     INTT32A5CCAP1_IRQHandler  ; 109:	32bit T32A5C input capture 1
                DCD     INTDMAATC_IRQHandler      ; 110:	DMA end of transfer
                DCD     INTDMAAERR_IRQHandler     ; 111:	DMA transfer error
                DCD     INTRTC_IRQHandler         ; 112:	Real time clock(XHz) interrupt
                DCD     0                         ; 113:	Reserved
                DCD     INTRMC_IRQHandler         ; 114:	Remote control reception interrupt
                DCD     INTFLCRDY_IRQHandler      ; 115:	Code FLASH Ready interrupt
                DCD     INTFLDRDY_IRQHandler      ; 116:	Data FLASH Ready interrupt
                THUMB
; Dummy Exception Handlers (infinite loops which can be modified)

                PUBWEAK Reset_Handler
                SECTION .text:CODE:REORDER:NOROOT(2)
Reset_Handler
                LDR     R0, =SystemInit
                BLX     R0
                LDR     R0, =__iar_program_start
                BX      R0

                PUBWEAK NMI_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
NMI_Handler
                B       NMI_Handler

                PUBWEAK HardFault_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
HardFault_Handler
                B       HardFault_Handler

                PUBWEAK MemManage_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
MemManage_Handler
                B       MemManage_Handler

                PUBWEAK BusFault_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
BusFault_Handler
                B       BusFault_Handler

                PUBWEAK UsageFault_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
UsageFault_Handler
                B       UsageFault_Handler

                PUBWEAK SVC_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
SVC_Handler
                B       SVC_Handler

                PUBWEAK DebugMon_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
DebugMon_Handler
                B       DebugMon_Handler

                PUBWEAK PendSV_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
PendSV_Handler
                B       PendSV_Handler

                PUBWEAK SysTick_Handler
                SECTION .text:CODE:REORDER:NOROOT(1)
SysTick_Handler
                B       SysTick_Handler

                PUBWEAK INT00_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INT00_IRQHandler
                B       INT00_IRQHandler

                PUBWEAK INT01_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INT01_IRQHandler
                B       INT01_IRQHandler

                PUBWEAK INT02_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INT02_IRQHandler
                B       INT02_IRQHandler

                PUBWEAK INT03_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INT03_IRQHandler
                B       INT03_IRQHandler

                PUBWEAK INT04_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INT04_IRQHandler
                B       INT04_IRQHandler

                PUBWEAK INT05_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INT05_IRQHandler
                B       INT05_IRQHandler

                PUBWEAK INT06_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INT06_IRQHandler
                B       INT06_IRQHandler

                PUBWEAK INT07_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INT07_IRQHandler
                B       INT07_IRQHandler

                PUBWEAK INTEMG0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTEMG0_IRQHandler
                B       INTEMG0_IRQHandler

                PUBWEAK INTOVV0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTOVV0_IRQHandler
                B       INTOVV0_IRQHandler

                PUBWEAK INTPMD0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTPMD0_IRQHandler
                B       INTPMD0_IRQHandler

                PUBWEAK INTENC00_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTENC00_IRQHandler
                B       INTENC00_IRQHandler

                PUBWEAK INTENC01_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTENC01_IRQHandler
                B       INTENC01_IRQHandler

                PUBWEAK INTADAPDA_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTADAPDA_IRQHandler
                B       INTADAPDA_IRQHandler

                PUBWEAK INTADAPDB_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTADAPDB_IRQHandler
                B       INTADAPDB_IRQHandler

                PUBWEAK INTADACPA_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTADACPA_IRQHandler
                B       INTADACPA_IRQHandler

                PUBWEAK INTADACPB_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTADACPB_IRQHandler
                B       INTADACPB_IRQHandler

                PUBWEAK INTADATRG_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTADATRG_IRQHandler
                B       INTADATRG_IRQHandler

                PUBWEAK INTADASGL_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTADASGL_IRQHandler
                B       INTADASGL_IRQHandler

                PUBWEAK INTADACNT_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTADACNT_IRQHandler
                B       INTADACNT_IRQHandler

                PUBWEAK INTT0RX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT0RX_IRQHandler
                B       INTT0RX_IRQHandler

                PUBWEAK INTT0TX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT0TX_IRQHandler
                B       INTT0TX_IRQHandler

                PUBWEAK INTT0ERR_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT0ERR_IRQHandler
                B       INTT0ERR_IRQHandler

                PUBWEAK INTT1RX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT1RX_IRQHandler
                B       INTT1RX_IRQHandler

                PUBWEAK INTT1TX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT1TX_IRQHandler
                B       INTT1TX_IRQHandler

                PUBWEAK INTT1ERR_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT1ERR_IRQHandler
                B       INTT1ERR_IRQHandler

                PUBWEAK INTI2CWUP_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2CWUP_IRQHandler
                B       INTI2CWUP_IRQHandler

                PUBWEAK INTI2C0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C0_IRQHandler
                B       INTI2C0_IRQHandler

                PUBWEAK INTI2C0AL_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C0AL_IRQHandler
                B       INTI2C0AL_IRQHandler

                PUBWEAK INTI2C0BF_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C0BF_IRQHandler
                B       INTI2C0BF_IRQHandler

                PUBWEAK INTI2C0NA_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C0NA_IRQHandler
                B       INTI2C0NA_IRQHandler

                PUBWEAK INTI2C1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C1_IRQHandler
                B       INTI2C1_IRQHandler

                PUBWEAK INTI2C1AL_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C1AL_IRQHandler
                B       INTI2C1AL_IRQHandler

                PUBWEAK INTI2C1BF_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C1BF_IRQHandler
                B       INTI2C1BF_IRQHandler

                PUBWEAK INTI2C1NA_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C1NA_IRQHandler
                B       INTI2C1NA_IRQHandler

                PUBWEAK INTI2C2_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C2_IRQHandler
                B       INTI2C2_IRQHandler

                PUBWEAK INTI2C2AL_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C2AL_IRQHandler
                B       INTI2C2AL_IRQHandler

                PUBWEAK INTI2C2BF_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C2BF_IRQHandler
                B       INTI2C2BF_IRQHandler

                PUBWEAK INTI2C2NA_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTI2C2NA_IRQHandler
                B       INTI2C2NA_IRQHandler

                PUBWEAK INTUART0RX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART0RX_IRQHandler
                B       INTUART0RX_IRQHandler

                PUBWEAK INTUART0TX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART0TX_IRQHandler
                B       INTUART0TX_IRQHandler

                PUBWEAK INTUART0ERR_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART0ERR_IRQHandler
                B       INTUART0ERR_IRQHandler

                PUBWEAK INTUART1RX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART1RX_IRQHandler
                B       INTUART1RX_IRQHandler

                PUBWEAK INTUART1TX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART1TX_IRQHandler
                B       INTUART1TX_IRQHandler

                PUBWEAK INTUART1ERR_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART1ERR_IRQHandler
                B       INTUART1ERR_IRQHandler

                PUBWEAK INTUART2RX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART2RX_IRQHandler
                B       INTUART2RX_IRQHandler

                PUBWEAK INTUART2TX_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART2TX_IRQHandler
                B       INTUART2TX_IRQHandler

                PUBWEAK INTUART2ERR_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTUART2ERR_IRQHandler
                B       INTUART2ERR_IRQHandler

                PUBWEAK INTT32A0A_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0A_IRQHandler
                B       INTT32A0A_IRQHandler

                PUBWEAK INTT32A0ACAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0ACAP0_IRQHandler
                B       INTT32A0ACAP0_IRQHandler

                PUBWEAK INTT32A0ACAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0ACAP1_IRQHandler
                B       INTT32A0ACAP1_IRQHandler

                PUBWEAK INTT32A0B_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0B_IRQHandler
                B       INTT32A0B_IRQHandler

                PUBWEAK INTT32A0BCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0BCAP0_IRQHandler
                B       INTT32A0BCAP0_IRQHandler

                PUBWEAK INTT32A0BCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0BCAP1_IRQHandler
                B       INTT32A0BCAP1_IRQHandler

                PUBWEAK INTT32A0C_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0C_IRQHandler
                B       INTT32A0C_IRQHandler

                PUBWEAK INTT32A0CCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0CCAP0_IRQHandler
                B       INTT32A0CCAP0_IRQHandler

                PUBWEAK INTT32A0CCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A0CCAP1_IRQHandler
                B       INTT32A0CCAP1_IRQHandler

                PUBWEAK INTT32A1A_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1A_IRQHandler
                B       INTT32A1A_IRQHandler

                PUBWEAK INTT32A1ACAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1ACAP0_IRQHandler
                B       INTT32A1ACAP0_IRQHandler

                PUBWEAK INTT32A1ACAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1ACAP1_IRQHandler
                B       INTT32A1ACAP1_IRQHandler

                PUBWEAK INTT32A1B_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1B_IRQHandler
                B       INTT32A1B_IRQHandler

                PUBWEAK INTT32A1BCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1BCAP0_IRQHandler
                B       INTT32A1BCAP0_IRQHandler

                PUBWEAK INTT32A1BCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1BCAP1_IRQHandler
                B       INTT32A1BCAP1_IRQHandler

                PUBWEAK INTT32A1C_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1C_IRQHandler
                B       INTT32A1C_IRQHandler

                PUBWEAK INTT32A1CCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1CCAP0_IRQHandler
                B       INTT32A1CCAP0_IRQHandler

                PUBWEAK INTT32A1CCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A1CCAP1_IRQHandler
                B       INTT32A1CCAP1_IRQHandler

                PUBWEAK INTT32A2A_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2A_IRQHandler
                B       INTT32A2A_IRQHandler

                PUBWEAK INTT32A2ACAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2ACAP0_IRQHandler
                B       INTT32A2ACAP0_IRQHandler

                PUBWEAK INTT32A2ACAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2ACAP1_IRQHandler
                B       INTT32A2ACAP1_IRQHandler

                PUBWEAK INTT32A2B_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2B_IRQHandler
                B       INTT32A2B_IRQHandler

                PUBWEAK INTT32A2BCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2BCAP0_IRQHandler
                B       INTT32A2BCAP0_IRQHandler

                PUBWEAK INTT32A2BCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2BCAP1_IRQHandler
                B       INTT32A2BCAP1_IRQHandler

                PUBWEAK INTT32A2C_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2C_IRQHandler
                B       INTT32A2C_IRQHandler

                PUBWEAK INTT32A2CCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2CCAP0_IRQHandler
                B       INTT32A2CCAP0_IRQHandler

                PUBWEAK INTT32A2CCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A2CCAP1_IRQHandler
                B       INTT32A2CCAP1_IRQHandler

                PUBWEAK INTT32A3A_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3A_IRQHandler
                B       INTT32A3A_IRQHandler

                PUBWEAK INTT32A3ACAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3ACAP0_IRQHandler
                B       INTT32A3ACAP0_IRQHandler

                PUBWEAK INTT32A3ACAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3ACAP1_IRQHandler
                B       INTT32A3ACAP1_IRQHandler

                PUBWEAK INTT32A3B_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3B_IRQHandler
                B       INTT32A3B_IRQHandler

                PUBWEAK INTT32A3BCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3BCAP0_IRQHandler
                B       INTT32A3BCAP0_IRQHandler

                PUBWEAK INTT32A3BCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3BCAP1_IRQHandler
                B       INTT32A3BCAP1_IRQHandler

                PUBWEAK INTT32A3C_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3C_IRQHandler
                B       INTT32A3C_IRQHandler

                PUBWEAK INTT32A3CCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3CCAP0_IRQHandler
                B       INTT32A3CCAP0_IRQHandler

                PUBWEAK INTT32A3CCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A3CCAP1_IRQHandler
                B       INTT32A3CCAP1_IRQHandler

                PUBWEAK INTT32A4A_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4A_IRQHandler
                B       INTT32A4A_IRQHandler

                PUBWEAK INTT32A4ACAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4ACAP0_IRQHandler
                B       INTT32A4ACAP0_IRQHandler

                PUBWEAK INTT32A4ACAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4ACAP1_IRQHandler
                B       INTT32A4ACAP1_IRQHandler

                PUBWEAK INTT32A4B_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4B_IRQHandler
                B       INTT32A4B_IRQHandler

                PUBWEAK INTT32A4BCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4BCAP0_IRQHandler
                B       INTT32A4BCAP0_IRQHandler

                PUBWEAK INTT32A4BCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4BCAP1_IRQHandler
                B       INTT32A4BCAP1_IRQHandler

                PUBWEAK INTT32A4C_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4C_IRQHandler
                B       INTT32A4C_IRQHandler

                PUBWEAK INTT32A4CCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4CCAP0_IRQHandler
                B       INTT32A4CCAP0_IRQHandler

                PUBWEAK INTT32A4CCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A4CCAP1_IRQHandler
                B       INTT32A4CCAP1_IRQHandler

                PUBWEAK INTT32A5A_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5A_IRQHandler
                B       INTT32A5A_IRQHandler

                PUBWEAK INTT32A5ACAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5ACAP0_IRQHandler
                B       INTT32A5ACAP0_IRQHandler

                PUBWEAK INTT32A5ACAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5ACAP1_IRQHandler
                B       INTT32A5ACAP1_IRQHandler

                PUBWEAK INTT32A5B_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5B_IRQHandler
                B       INTT32A5B_IRQHandler

                PUBWEAK INTT32A5BCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5BCAP0_IRQHandler
                B       INTT32A5BCAP0_IRQHandler

                PUBWEAK INTT32A5BCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5BCAP1_IRQHandler
                B       INTT32A5BCAP1_IRQHandler

                PUBWEAK INTT32A5C_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5C_IRQHandler
                B       INTT32A5C_IRQHandler

                PUBWEAK INTT32A5CCAP0_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5CCAP0_IRQHandler
                B       INTT32A5CCAP0_IRQHandler

                PUBWEAK INTT32A5CCAP1_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTT32A5CCAP1_IRQHandler
                B       INTT32A5CCAP1_IRQHandler

                PUBWEAK INTDMAATC_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTDMAATC_IRQHandler
                B       INTDMAATC_IRQHandler

                PUBWEAK INTDMAAERR_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTDMAAERR_IRQHandler
                B       INTDMAAERR_IRQHandler

                PUBWEAK INTRTC_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTRTC_IRQHandler
                B       INTRTC_IRQHandler

                PUBWEAK INTRMC_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTRMC_IRQHandler
                B       INTRMC_IRQHandler

                PUBWEAK INTFLCRDY_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTFLCRDY_IRQHandler
                B       INTFLCRDY_IRQHandler

                PUBWEAK INTFLDRDY_IRQHandler
                SECTION .text:CODE:REORDER:NOROOT(1)
INTFLDRDY_IRQHandler
                B       INTFLDRDY_IRQHandler

                END
