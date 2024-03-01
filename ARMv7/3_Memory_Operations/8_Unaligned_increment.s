.data
.byte 0    // Test with an unaligned word.
Pointer: .word 1234
.text
.global _start
_start:
    ldr r0, =Pointer
    bl inc
    1: b 1b    // Done

.global inc
inc:
	ldrb r1, [r0, #3]
    ldrb r2, [r0, #2]
    lsl r1, #8
    add r1, r2
    ldrb r2, [r0, #1]
    lsl r1, #8
    add r1, r2
    ldrb r2, [r0]
    lsl r1, #8
    add r1, r2
    add r1, #1
    strb r1, [r0]
    lsr r1, #8
    strb r1, [r0, #1]
    lsr r1, #8
    strb r1, [r0, #2]
    lsr r1, #8
    strb r1, [r0, #3]
	bx lr
