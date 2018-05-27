;/**
; *******************************************************************************
; * @file    startup_TMPM3H3.s
; * @brief   CMSIS Cortex-M3 Core Device Startup File for the
; *          TOSHIBA 'TMPM3H3' Device Series
; * @version V1.0.0.0
; * $Date:: 2017-02-20 #$
; *------- <<< Use Configuration Wizard in Context Menu >>> ------------------
; * 
; * DO NOT USE THIS SOFTWARE WITHOUT THE SOFTWARE LISENCE AGREEMENT.
; * 
; * (C)Copyright TOSHIBA CORPORATION 2017 All rights reserved
; *******************************************************************************
; */

; <h> Stack Configuration
;   <o> Stack Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Stack_Size      EQU     0x00000200

                AREA    STACK, NOINIT, READWRITE, ALIGN=3
Stack_Mem       SPACE   Stack_Size
__initial_sp


; <h> Heap Configuration
;   <o>  Heap Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Heap_Size       EQU     0x00000000

                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
__heap_base
Heap_Mem        SPACE   Heap_Size
__heap_limit


                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset

                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors

__Vectors       DCD     __initial_sp              ; Top of Stack
                DCD     Reset_Handler             ; Reset Handler
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



                AREA    |.text|, CODE, READONLY


; Reset Handler

Reset_Handler   PROC
                EXPORT  Reset_Handler             [WEAK]
                IMPORT  SystemInit
                IMPORT  __main
                LDR     R0, =SystemInit
                BLX     R0
                LDR     R0, =__main
                BX      R0
                ENDP


; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler     PROC
                EXPORT  NMI_Handler               [WEAK]
                B       .
                ENDP
HardFault_Handler\
                PROC
                EXPORT  HardFault_Handler         [WEAK]
                B       .
                ENDP
MemManage_Handler\
                PROC
                EXPORT  MemManage_Handler         [WEAK]
                B       .
                ENDP
BusFault_Handler\
                PROC
                EXPORT  BusFault_Handler          [WEAK]
                B       .
                ENDP
UsageFault_Handler\
                PROC
                EXPORT  UsageFault_Handler        [WEAK]
                B       .
                ENDP
SVC_Handler     PROC
                EXPORT  SVC_Handler               [WEAK]
                B       .
                ENDP
DebugMon_Handler\
                PROC
                EXPORT  DebugMon_Handler          [WEAK]
                B       .
                ENDP
PendSV_Handler  PROC
                EXPORT  PendSV_Handler            [WEAK]
                B       .
                ENDP
SysTick_Handler PROC
                EXPORT  SysTick_Handler           [WEAK]
                B       .
                ENDP

Default_Handler PROC

                EXPORT  INT00_IRQHandler          [WEAK]
                EXPORT  INT01_IRQHandler          [WEAK]
                EXPORT  INT02_IRQHandler          [WEAK]
                EXPORT  INT03_IRQHandler          [WEAK]
                EXPORT  INT04_IRQHandler          [WEAK]
                EXPORT  INT05_IRQHandler          [WEAK]
                EXPORT  INT06_IRQHandler          [WEAK]
                EXPORT  INT07_IRQHandler          [WEAK]
                EXPORT  INTEMG0_IRQHandler        [WEAK]
                EXPORT  INTOVV0_IRQHandler        [WEAK]
                EXPORT  INTPMD0_IRQHandler        [WEAK]
                EXPORT  INTENC00_IRQHandler       [WEAK]
                EXPORT  INTENC01_IRQHandler       [WEAK]
                EXPORT  INTADAPDA_IRQHandler      [WEAK]
                EXPORT  INTADAPDB_IRQHandler      [WEAK]
                EXPORT  INTADACPA_IRQHandler      [WEAK]
                EXPORT  INTADACPB_IRQHandler      [WEAK]
                EXPORT  INTADATRG_IRQHandler      [WEAK]
                EXPORT  INTADASGL_IRQHandler      [WEAK]
                EXPORT  INTADACNT_IRQHandler      [WEAK]
                EXPORT  INTT0RX_IRQHandler        [WEAK]
                EXPORT  INTT0TX_IRQHandler        [WEAK]
                EXPORT  INTT0ERR_IRQHandler       [WEAK]
                EXPORT  INTT1RX_IRQHandler        [WEAK]
                EXPORT  INTT1TX_IRQHandler        [WEAK]
                EXPORT  INTT1ERR_IRQHandler       [WEAK]
                EXPORT  INTI2CWUP_IRQHandler      [WEAK]
                EXPORT  INTI2C0_IRQHandler        [WEAK]
                EXPORT  INTI2C0AL_IRQHandler      [WEAK]
                EXPORT  INTI2C0BF_IRQHandler      [WEAK]
                EXPORT  INTI2C0NA_IRQHandler      [WEAK]
                EXPORT  INTI2C1_IRQHandler        [WEAK]
                EXPORT  INTI2C1AL_IRQHandler      [WEAK]
                EXPORT  INTI2C1BF_IRQHandler      [WEAK]
                EXPORT  INTI2C1NA_IRQHandler      [WEAK]
                EXPORT  INTI2C2_IRQHandler        [WEAK]
                EXPORT  INTI2C2AL_IRQHandler      [WEAK]
                EXPORT  INTI2C2BF_IRQHandler      [WEAK]
                EXPORT  INTI2C2NA_IRQHandler      [WEAK]
                EXPORT  INTUART0RX_IRQHandler     [WEAK]
                EXPORT  INTUART0TX_IRQHandler     [WEAK]
                EXPORT  INTUART0ERR_IRQHandler    [WEAK]
                EXPORT  INTUART1RX_IRQHandler     [WEAK]
                EXPORT  INTUART1TX_IRQHandler     [WEAK]
                EXPORT  INTUART1ERR_IRQHandler    [WEAK]
                EXPORT  INTUART2RX_IRQHandler     [WEAK]
                EXPORT  INTUART2TX_IRQHandler     [WEAK]
                EXPORT  INTUART2ERR_IRQHandler    [WEAK]
                EXPORT  INTT32A0A_IRQHandler      [WEAK]
                EXPORT  INTT32A0ACAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A0ACAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A0B_IRQHandler      [WEAK]
                EXPORT  INTT32A0BCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A0BCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A0C_IRQHandler      [WEAK]
                EXPORT  INTT32A0CCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A0CCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A1A_IRQHandler      [WEAK]
                EXPORT  INTT32A1ACAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A1ACAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A1B_IRQHandler      [WEAK]
                EXPORT  INTT32A1BCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A1BCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A1C_IRQHandler      [WEAK]
                EXPORT  INTT32A1CCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A1CCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A2A_IRQHandler      [WEAK]
                EXPORT  INTT32A2ACAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A2ACAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A2B_IRQHandler      [WEAK]
                EXPORT  INTT32A2BCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A2BCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A2C_IRQHandler      [WEAK]
                EXPORT  INTT32A2CCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A2CCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A3A_IRQHandler      [WEAK]
                EXPORT  INTT32A3ACAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A3ACAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A3B_IRQHandler      [WEAK]
                EXPORT  INTT32A3BCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A3BCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A3C_IRQHandler      [WEAK]
                EXPORT  INTT32A3CCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A3CCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A4A_IRQHandler      [WEAK]
                EXPORT  INTT32A4ACAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A4ACAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A4B_IRQHandler      [WEAK]
                EXPORT  INTT32A4BCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A4BCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A4C_IRQHandler      [WEAK]
                EXPORT  INTT32A4CCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A4CCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A5A_IRQHandler      [WEAK]
                EXPORT  INTT32A5ACAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A5ACAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A5B_IRQHandler      [WEAK]
                EXPORT  INTT32A5BCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A5BCAP1_IRQHandler  [WEAK]
                EXPORT  INTT32A5C_IRQHandler      [WEAK]
                EXPORT  INTT32A5CCAP0_IRQHandler  [WEAK]
                EXPORT  INTT32A5CCAP1_IRQHandler  [WEAK]
                EXPORT  INTDMAATC_IRQHandler      [WEAK]
                EXPORT  INTDMAAERR_IRQHandler     [WEAK]
                EXPORT  INTRTC_IRQHandler         [WEAK]
                EXPORT  INTRMC_IRQHandler         [WEAK]
                EXPORT  INTFLCRDY_IRQHandler      [WEAK]
                EXPORT  INTFLDRDY_IRQHandler      [WEAK]

INT00_IRQHandler
INT01_IRQHandler
INT02_IRQHandler
INT03_IRQHandler
INT04_IRQHandler
INT05_IRQHandler
INT06_IRQHandler
INT07_IRQHandler
INTEMG0_IRQHandler
INTOVV0_IRQHandler
INTPMD0_IRQHandler
INTENC00_IRQHandler
INTENC01_IRQHandler
INTADAPDA_IRQHandler
INTADAPDB_IRQHandler
INTADACPA_IRQHandler
INTADACPB_IRQHandler
INTADATRG_IRQHandler
INTADASGL_IRQHandler
INTADACNT_IRQHandler
INTT0RX_IRQHandler
INTT0TX_IRQHandler
INTT0ERR_IRQHandler
INTT1RX_IRQHandler
INTT1TX_IRQHandler
INTT1ERR_IRQHandler
INTI2CWUP_IRQHandler
INTI2C0_IRQHandler
INTI2C0AL_IRQHandler
INTI2C0BF_IRQHandler
INTI2C0NA_IRQHandler
INTI2C1_IRQHandler
INTI2C1AL_IRQHandler
INTI2C1BF_IRQHandler
INTI2C1NA_IRQHandler
INTI2C2_IRQHandler
INTI2C2AL_IRQHandler
INTI2C2BF_IRQHandler
INTI2C2NA_IRQHandler
INTUART0RX_IRQHandler
INTUART0TX_IRQHandler
INTUART0ERR_IRQHandler
INTUART1RX_IRQHandler
INTUART1TX_IRQHandler
INTUART1ERR_IRQHandler
INTUART2RX_IRQHandler
INTUART2TX_IRQHandler
INTUART2ERR_IRQHandler
INTT32A0A_IRQHandler
INTT32A0ACAP0_IRQHandler
INTT32A0ACAP1_IRQHandler
INTT32A0B_IRQHandler
INTT32A0BCAP0_IRQHandler
INTT32A0BCAP1_IRQHandler
INTT32A0C_IRQHandler
INTT32A0CCAP0_IRQHandler
INTT32A0CCAP1_IRQHandler
INTT32A1A_IRQHandler
INTT32A1ACAP0_IRQHandler
INTT32A1ACAP1_IRQHandler
INTT32A1B_IRQHandler
INTT32A1BCAP0_IRQHandler
INTT32A1BCAP1_IRQHandler
INTT32A1C_IRQHandler
INTT32A1CCAP0_IRQHandler
INTT32A1CCAP1_IRQHandler
INTT32A2A_IRQHandler
INTT32A2ACAP0_IRQHandler
INTT32A2ACAP1_IRQHandler
INTT32A2B_IRQHandler
INTT32A2BCAP0_IRQHandler
INTT32A2BCAP1_IRQHandler
INTT32A2C_IRQHandler
INTT32A2CCAP0_IRQHandler
INTT32A2CCAP1_IRQHandler
INTT32A3A_IRQHandler
INTT32A3ACAP0_IRQHandler
INTT32A3ACAP1_IRQHandler
INTT32A3B_IRQHandler
INTT32A3BCAP0_IRQHandler
INTT32A3BCAP1_IRQHandler
INTT32A3C_IRQHandler
INTT32A3CCAP0_IRQHandler
INTT32A3CCAP1_IRQHandler
INTT32A4A_IRQHandler
INTT32A4ACAP0_IRQHandler
INTT32A4ACAP1_IRQHandler
INTT32A4B_IRQHandler
INTT32A4BCAP0_IRQHandler
INTT32A4BCAP1_IRQHandler
INTT32A4C_IRQHandler
INTT32A4CCAP0_IRQHandler
INTT32A4CCAP1_IRQHandler
INTT32A5A_IRQHandler
INTT32A5ACAP0_IRQHandler
INTT32A5ACAP1_IRQHandler
INTT32A5B_IRQHandler
INTT32A5BCAP0_IRQHandler
INTT32A5BCAP1_IRQHandler
INTT32A5C_IRQHandler
INTT32A5CCAP0_IRQHandler
INTT32A5CCAP1_IRQHandler
INTDMAATC_IRQHandler
INTDMAAERR_IRQHandler
INTRTC_IRQHandler
INTRMC_IRQHandler
INTFLCRDY_IRQHandler
INTFLDRDY_IRQHandler

                B       .

                ENDP


                ALIGN


; User Initial Stack & Heap

                IF      :DEF:__MICROLIB

                EXPORT  __initial_sp
                EXPORT  __heap_base
                EXPORT  __heap_limit

                ELSE

                IMPORT  __use_two_region_memory
                EXPORT  __user_initial_stackheap
__user_initial_stackheap

                LDR     R0, =  Heap_Mem
                LDR     R1, =(Stack_Mem + Stack_Size)
                LDR     R2, = (Heap_Mem +  Heap_Size)
                LDR     R3, = Stack_Mem
                BX      LR

                ALIGN

                ENDIF


                END

