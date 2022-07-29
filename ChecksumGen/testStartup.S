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

start:

    /* Turn Green LED on to test code - Green LED is on PH24 */

    /* Configure Port PH24 for Output */
    mov r0,  0x00000001
    ldr r3, =0x01C20908
    str r0, [r3]

    /* Turn PH24 on */
    mov r0,  0x01000000
    ldr r3, =0x01C2090C
    str r0, [r3]

endless:
    b endless
