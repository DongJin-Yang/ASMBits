.global _start
_start:
	ldr r0, =4
	ldr r1, =2
	bl mask
1:	b 1b    // Done

mask:
	sub r0, r1
    mov r2, #1
    lsl r2, r0
    sub r0, r2, #1
    lsl r0, r1
	bx lr
