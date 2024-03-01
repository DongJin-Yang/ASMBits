// A test case to test your function with
.global _start
_start:
    mov r0, #5
    bl popcount
    1: b 1b    // Done

// Only your function (starting at popcount) is judged. The test code above is not executed.
popcount:
	mov r1, #0
_loop:
	cmp r0, #0
	moveq r0, r1
    bxeq lr
    and r2, r0, #1
    lsr r0, #1
    add r1, r2
    B _loop
