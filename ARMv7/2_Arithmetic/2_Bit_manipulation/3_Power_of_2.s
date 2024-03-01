.global _start
_start:
	ldr r0, =4
	bl pow2
1:	b 1b    // Done

pow2:
	sub r1, r0, #1
    and r1, r0
    cmp r1, #0
    moveq r0, #1
    movne r0, #0
	bx lr
