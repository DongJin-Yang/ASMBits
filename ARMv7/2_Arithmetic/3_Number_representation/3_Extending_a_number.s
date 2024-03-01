// A test case to test your function with
.global _start
_start:
    ldr r0, =2       // 2 = sign extend 8->32
    ldr r1, =0xf0    // The number to extend
    bl extend
    b _start        // End of testing code

// A function to extend. Only this part will be tested.
extend:
	cmp r0, #0
    biceq r1, #0xffffff00
    
    cmp r0, #1
    lsleq r1, #16
    lsreq r1, #16
    
    cmp r0, #2
	lsleq r1, #24
    asreq r1, #24
    
    cmp r0, #3
    lsleq r1, #16
    asreq r1, #16
    
    mov r0, r1
    bx lr
