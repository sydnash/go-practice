#include "textflag.h"

TEXT ·add(SB),NOSPLIT,$0
    MOVQ x+0(FP), BX
    MOVQ y+8(FP), BP
    ADDQ BP, BX
    MOVQ BX, ret+16(FP)
    MOVQ 0(SP), BX
    MOVQ BX, ret+24(FP)
    RET

TEXT ·get(SB),NOSPLIT,$0
    LEAQ t+0(FP), BX
    LEAQ 0(SP), BP
    MOVQ BX, ret+8(FP)
    MOVQ BP, ret+16(FP)
    RET


