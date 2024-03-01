.data
Pointer: .word 1234
.text
.global _start
_start:
    ldr r0, =Pointer
    bl load
    1: b 1b    // Done

.global load
load:
	ldrb r1, [r0, #3]
    ldrb r2, [r0, #2]
    lsl r1, #8
    add r1, r2
    ldrb r2, [r0, #1]
    lsl r1, #8
    add r1, r2
    ldrb r2, [r0]
    lsl r1, #8
    add r0, r1, r2
	bx lr
