.syntax unified

.text
.global entry
entry:

public_header:
     b start
.byte 'e','G','O','N','.','B','T','0'
.word 0x00000000
.word 0x00006000
.word 0x00000000
.word 0x00000000
.word 0x00000000
.word 0x00000000
.byte 'A','N','Y',' ','T','E','X','T'
.align 4


.set PIO_BASE, 		0x01C20800
.set PORT_H,		(7*0x24)
.set PH_CFG0,		PORT_H + 0x00
.set PH_CFG1,		PORT_H + 0x04
.set PH_CFG2,		PORT_H + 0x08
.set PH_CFG3,		PORT_H + 0x0C
.set PH_DAT,		PORT_H + 0x10
.set PH_DRV0,		PORT_H + 0x14
.set PH_DRV1,		PORT_H + 0x18
.set PH_PUL0,		PORT_H + 0x1C
.set PH_PUL1,		PORT_H + 0x20
.set PIO_INT_CFG0,	0x200
.set PIO_INT_CFG1,	0x204
.set PIO_INT_CFG2,	0x208
.set PIO_INT_CFG3,	0x20C
.set PIO_INT_CTL,	0x210
.set PIO_INT_STA,	0x214
.set PIO_INT_DEB,	0x218

start:

    /* LEDs are on PH20 (LED2/YELLOW), PH21 (LED1/BLUE), PH7 (LED4/GREEN), PH11 (LED3/WHITE) */

    /* Configure Port H (port 8) PH7, PH11, PH20 & PH21 for Output */
    mov r0,  0x00000001
    ldr r3, =PIO_BASE + 0x0108
    str r0, [r3]

    /* Turn LEDs on */
    mov r0,  0x01000000
    ldr r3, =PIO_BASE + 0x010C
    str r0, [r3]

endless:
    b endless
