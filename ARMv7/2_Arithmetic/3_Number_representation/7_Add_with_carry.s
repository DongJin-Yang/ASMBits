.global _start
_start:
    mov r0, #1  // Lower 32 bits of a
    mov r1, #0  // Upper 32 bits of a
    mov r2, #1  // Lower 32 bits of b
    mov r3, #0  // Upper 32-bits of b
    bl add64
    1: b 1b    // Done

.global add64
add64:
	adds r0, r2
	adc r1, r3
    bx lr
