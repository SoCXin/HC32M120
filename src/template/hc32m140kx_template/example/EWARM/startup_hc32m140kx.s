;*******************************************************************************
; Copyright (C) 2016, Huada Semiconductor Co.,Ltd All rights reserved.
;
; This software is owned and published by:
; Huada Semiconductor Co.,Ltd ("HDSC").
;
; BY DOWNLOADING, INSTALLING OR USING THIS SOFTWARE, YOU AGREE TO BE BOUND
; BY ALL THE TERMS AND CONDITIONS OF THIS AGREEMENT.
;
; This software contains source code for use with HDSC
; components. This software is licensed by HDSC to be adapted only
; for use in systems utilizing HDSC components. HDSC shall not be
; responsible for misuse or illegal use of this software for devices not
; supported herein. HDSC is providing this software "AS IS" and will
; not be responsible for issues arising from incorrect user implementation
; of the software.
;
; Disclaimer:
; HDSC MAKES NO WARRANTY, EXPRESS OR IMPLIED, ARISING BY LAW OR OTHERWISE,
; REGARDING THE SOFTWARE (INCLUDING ANY ACOOMPANYING WRITTEN MATERIALS),
; ITS PERFORMANCE OR SUITABILITY FOR YOUR INTENDED USE, INCLUDING,
; WITHOUT LIMITATION, THE IMPLIED WARRANTY OF MERCHANTABILITY, THE IMPLIED
; WARRANTY OF FITNESS FOR A PARTICULAR PURPOSE OR USE, AND THE IMPLIED
; WARRANTY OF NONINFRINGEMENT.
; HDSC SHALL HAVE NO LIABILITY (WHETHER IN CONTRACT, WARRANTY, TORT,
; NEGLIGENCE OR OTHERWISE) FOR ANY DAMAGES WHATSOEVER (INCLUDING, WITHOUT
; LIMITATION, DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION,
; LOSS OF BUSINESS INFORMATION, OR OTHER PECUNIARY LOSS) ARISING FROM USE OR
; INABILITY TO USE THE SOFTWARE, INCLUDING, WITHOUT LIMITATION, ANY DIRECT,
; INDIRECT, INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES OR LOSS OF DATA,
; SAVINGS OR PROFITS,
; EVEN IF Disclaimer HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
; YOU ASSUME ALL RESPONSIBILITIES FOR SELECTION OF THE SOFTWARE TO ACHIEVE YOUR
; INTENDED RESULTS, AND FOR THE INSTALLATION OF, USE OF, AND RESULTS OBTAINED
; FROM, THE SOFTWARE.
;
; This software may be replicated in part or whole for the licensed use,
; with the restriction that this Disclaimer and Copyright notice must be
; included with each copy of this software, whether used in part or whole,
; at all times.
;/
;/*****************************************************************************/
;/*  Startup for IAR                                                          */
;/*  Version     V1.0                                                         */
;/*  Date        2017-10-11                                                   */
;/*  Target-mcu  HC32F_M14                                                    */
;/*****************************************************************************/


                MODULE  ?cstartup

                ;; Forward declaration of sections.
                SECTION CSTACK:DATA:NOROOT(3)

                EXTERN  __iar_program_start
                EXTERN  SystemInit
                PUBLIC  __vector_table
                
                SECTION .intvec:CODE:ROOT(8)
                DATA
__vector_table  
                DCD     sfe(CSTACK)               ; Top of Stack
                DCD     Reset_Handler             ; Reset
                DCD     NMI_Handler               ; NMI
                DCD     HardFault_Handler         ; Hard Fault
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     SVC_Handler               ; SVCall
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     PendSV_Handler            ; PendSV
                DCD     SysTick_Handler           ; SysTick

; Numbered IRQ handler vectors

; Note: renaming to device dependent ISR function names are done in

                DCD     CSV_IRQHandler
                DCD     SWWDT_IRQHandler
                DCD     LVD_IRQHandler
                DCD     TIM4PWM_EMI_IRQHandler
                DCD     EXTI07_IRQHandler
                DCD     EXTI815_IRQHandler
                DCD     DTIM_IRQHandler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     MSC4RX_IRQHandler
                DCD     MSC4TX_IRQHandler
                DCD     MSC5RX_IRQHandler
                DCD     MSC5TX_IRQHandler
                DCD     MSC6RX_DMAC0_IRQHandler
                DCD     MSC6TX_DMAC1_IRQHandler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     Dummy_Handler
                DCD     OSC_CC_RP_IRQHandler
                DCD     ADC_IRQHandler
                DCD     VC_IRQHandler
                DCD     Dummy_Handler
                DCD     TIM4CNT_IRQHandler
                DCD     Dummy_Handler
                DCD     TIM4OCO_IRQHandler
                DCD     CTIM03_FLASH_IRQHandler


                THUMB

                PUBWEAK Reset_Handler
                SECTION .text:CODE:NOROOT:REORDER(2)
Reset_Handler
                ;reset NVIC if in rom debug
                LDR     R0, =0x20000000
                LDR     R2, =0x0              ; vector offset
                cmp     PC, R0
                bls     ROMCODE
              
              ; ram code base address. 
                ADD     R2, R0,R2
ROMCODE
              ; reset Vector table address.
                LDR     R0, =0xE000ED08
                STR     R2, [R0]
                
                LDR     R0, =SystemInit
                BLX     R0
                LDR     R0, =__iar_program_start
                BX      R0

                PUBWEAK NMI_Handler
                SECTION .text:CODE:NOROOT:REORDER(1)
NMI_Handler
                B       NMI_Handler

                PUBWEAK HardFault_Handler
                SECTION .text:CODE:NOROOT:REORDER(1)
HardFault_Handler
                B       HardFault_Handler


                PUBWEAK SVC_Handler
                SECTION .text:CODE:NOROOT:REORDER(1)
SVC_Handler
                B       SVC_Handler

                PUBWEAK PendSV_Handler
                SECTION .text:CODE:NOROOT:REORDER(1)
PendSV_Handler
                B       PendSV_Handler

                PUBWEAK SysTick_Handler
                SECTION .text:CODE:NOROOT:REORDER(1)
SysTick_Handler
                B       SysTick_Handler

                PUBWEAK CSV_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
CSV_IRQHandler
                B       CSV_IRQHandler


                PUBWEAK SWWDT_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
SWWDT_IRQHandler
                B       SWWDT_IRQHandler


                PUBWEAK LVD_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
LVD_IRQHandler
                B       LVD_IRQHandler


                PUBWEAK TIM4PWM_EMI_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
TIM4PWM_EMI_IRQHandler
                B       TIM4PWM_EMI_IRQHandler


                PUBWEAK EXTI07_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
EXTI07_IRQHandler
                B       EXTI07_IRQHandler


                PUBWEAK EXTI815_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
EXTI815_IRQHandler
                B       EXTI815_IRQHandler


                PUBWEAK DTIM_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
DTIM_IRQHandler
                B       DTIM_IRQHandler


                PUBWEAK Dummy_Handler
                SECTION .text:CODE:NOROOT:REORDER(1)
Dummy_Handler
                B       Dummy_Handler


                PUBWEAK MSC4RX_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
MSC4RX_IRQHandler
                B       MSC4RX_IRQHandler


                PUBWEAK MSC4TX_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
MSC4TX_IRQHandler
                B       MSC4TX_IRQHandler


                PUBWEAK MSC5RX_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
MSC5RX_IRQHandler
                B       MSC5RX_IRQHandler


                PUBWEAK MSC5TX_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
MSC5TX_IRQHandler
                B       MSC5TX_IRQHandler


                PUBWEAK MSC6RX_DMAC0_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
MSC6RX_DMAC0_IRQHandler
                B       MSC6RX_DMAC0_IRQHandler


                PUBWEAK MSC6TX_DMAC1_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
MSC6TX_DMAC1_IRQHandler
                B       MSC6TX_DMAC1_IRQHandler


                PUBWEAK OSC_CC_RP_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
OSC_CC_RP_IRQHandler
                B       OSC_CC_RP_IRQHandler


                PUBWEAK ADC_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
ADC_IRQHandler
                B       ADC_IRQHandler


                PUBWEAK VC_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
VC_IRQHandler
                B       VC_IRQHandler


                PUBWEAK TIM4CNT_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
TIM4CNT_IRQHandler
                B       TIM4CNT_IRQHandler


                PUBWEAK TIM4OCO_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
TIM4OCO_IRQHandler
                B       TIM4OCO_IRQHandler


                PUBWEAK CTIM03_FLASH_IRQHandler
                SECTION .text:CODE:NOROOT:REORDER(1)
CTIM03_FLASH_IRQHandler
                B       CTIM03_FLASH_IRQHandler



                
                
                END
