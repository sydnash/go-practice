"".second t=1 size=19 args=0x18 locals=0x0
	0x0000 00000 (select_default.go:5)	TEXT	"".second(SB), $0-24
	0x0000 00000 (select_default.go:5)	FUNCDATA	$0, gclocals·54241e171da8af6ae173d69da0236748(SB)
	0x0000 00000 (select_default.go:5)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (select_default.go:6)	MOVQ	"".b+16(FP), AX
	0x0005 00005 (select_default.go:6)	MOVQ	"".a+8(FP), CX
	0x000a 00010 (select_default.go:6)	ADDQ	CX, AX
	0x000d 00013 (select_default.go:6)	MOVQ	AX, "".~r2+24(FP)
	0x0012 00018 (select_default.go:6)	RET
	0x0000 48 8b 44 24 10 48 8b 4c 24 08 48 01 c8 48 89 44  H.D$.H.L$.H..H.D
	0x0010 24 18 c3                                         $..
"".first t=1 size=1 args=0x0 locals=0x0
	0x0000 00000 (select_default.go:9)	TEXT	"".first(SB), $0-0
	0x0000 00000 (select_default.go:9)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (select_default.go:9)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (select_default.go:12)	RET
	0x0000 c3                                               .
"".test t=1 size=269 args=0x18 locals=0x30
	0x0000 00000 (select_default.go:14)	TEXT	"".test(SB), $48-24
	0x0000 00000 (select_default.go:14)	MOVQ	TLS, CX
	0x0009 00009 (select_default.go:14)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (select_default.go:14)	CMPQ	SP, 16(CX)
	0x0014 00020 (select_default.go:14)	JLS	259
	0x001a 00026 (select_default.go:14)	SUBQ	$48, SP
	0x001e 00030 (select_default.go:14)	MOVQ	BP, 40(SP)
	0x0023 00035 (select_default.go:14)	LEAQ	40(SP), BP
	0x0028 00040 (select_default.go:14)	FUNCDATA	$0, gclocals·01c21aa7c981f0089e0d1b5244c9336a(SB)
	0x0028 00040 (select_default.go:14)	FUNCDATA	$1, gclocals·b877cb436e95861928b238b40220e7c3(SB)
	0x0028 00040 (select_default.go:14)	LEAQ	type.int(SB), AX
	0x002f 00047 (select_default.go:14)	MOVQ	AX, (SP)
	0x0033 00051 (select_default.go:14)	PCDATA	$0, $0
	0x0033 00051 (select_default.go:14)	CALL	runtime.newobject(SB)
	0x0038 00056 (select_default.go:14)	MOVQ	8(SP), AX
	0x003d 00061 (select_default.go:14)	MOVQ	AX, "".&i+24(SP)
	0x0042 00066 (select_default.go:14)	MOVQ	"".i+56(FP), CX
	0x0047 00071 (select_default.go:14)	MOVQ	CX, (AX)
	0x004a 00074 (select_default.go:14)	LEAQ	type.int(SB), CX
	0x0051 00081 (select_default.go:14)	MOVQ	CX, (SP)
	0x0055 00085 (select_default.go:14)	PCDATA	$0, $1
	0x0055 00085 (select_default.go:14)	CALL	runtime.newobject(SB)
	0x005a 00090 (select_default.go:14)	MOVQ	8(SP), AX
	0x005f 00095 (select_default.go:14)	MOVQ	AX, "".&c+32(SP)
	0x0064 00100 (select_default.go:14)	MOVQ	"".c+64(FP), CX
	0x0069 00105 (select_default.go:14)	MOVQ	CX, (AX)
	0x006c 00108 (select_default.go:15)	LEAQ	type.struct { F uintptr; "".i *int; "".c *int }(SB), CX
	0x0073 00115 (select_default.go:15)	MOVQ	CX, (SP)
	0x0077 00119 (select_default.go:15)	PCDATA	$0, $2
	0x0077 00119 (select_default.go:15)	CALL	runtime.newobject(SB)
	0x007c 00124 (select_default.go:15)	MOVQ	8(SP), AX
	0x0081 00129 (select_default.go:15)	MOVQ	AX, ""..autotmp_4+16(SP)
	0x0086 00134 (select_default.go:15)	LEAQ	"".test.func1(SB), CX
	0x008d 00141 (select_default.go:15)	MOVQ	CX, (AX)
	0x0090 00144 (select_default.go:15)	TESTB	AL, (AX)
	0x0092 00146 (select_default.go:15)	MOVL	runtime.writeBarrier(SB), CX
	0x0098 00152 (select_default.go:15)	LEAQ	8(AX), DX
	0x009c 00156 (select_default.go:15)	TESTL	CX, CX
	0x009e 00158 (select_default.go:15)	JNE	$0, 233
	0x00a0 00160 (select_default.go:15)	MOVQ	"".&i+24(SP), CX
	0x00a5 00165 (select_default.go:15)	MOVQ	CX, 8(AX)
	0x00a9 00169 (select_default.go:15)	MOVL	runtime.writeBarrier(SB), CX
	0x00af 00175 (select_default.go:15)	LEAQ	16(AX), DX
	0x00b3 00179 (select_default.go:15)	TESTL	CX, CX
	0x00b5 00181 (select_default.go:15)	JNE	$0, 207
	0x00b7 00183 (select_default.go:15)	MOVQ	"".&c+32(SP), CX
	0x00bc 00188 (select_default.go:15)	MOVQ	CX, 16(AX)
	0x00c0 00192 (select_default.go:18)	MOVQ	AX, "".~r2+72(FP)
	0x00c5 00197 (select_default.go:18)	MOVQ	40(SP), BP
	0x00ca 00202 (select_default.go:18)	ADDQ	$48, SP
	0x00ce 00206 (select_default.go:18)	RET
	0x00cf 00207 (select_default.go:15)	MOVQ	DX, (SP)
	0x00d3 00211 (select_default.go:15)	MOVQ	"".&c+32(SP), CX
	0x00d8 00216 (select_default.go:15)	MOVQ	CX, 8(SP)
	0x00dd 00221 (select_default.go:15)	PCDATA	$0, $4
	0x00dd 00221 (select_default.go:15)	CALL	runtime.writebarrierptr(SB)
	0x00e2 00226 (select_default.go:18)	MOVQ	""..autotmp_4+16(SP), AX
	0x00e7 00231 (select_default.go:18)	JMP	192
	0x00e9 00233 (select_default.go:15)	MOVQ	DX, (SP)
	0x00ed 00237 (select_default.go:15)	MOVQ	"".&i+24(SP), CX
	0x00f2 00242 (select_default.go:15)	MOVQ	CX, 8(SP)
	0x00f7 00247 (select_default.go:15)	PCDATA	$0, $3
	0x00f7 00247 (select_default.go:15)	CALL	runtime.writebarrierptr(SB)
	0x00fc 00252 (select_default.go:15)	MOVQ	""..autotmp_4+16(SP), AX
	0x0101 00257 (select_default.go:15)	JMP	169
	0x0103 00259 (select_default.go:15)	NOP
	0x0103 00259 (select_default.go:14)	PCDATA	$0, $-1
	0x0103 00259 (select_default.go:14)	CALL	runtime.morestack_noctxt(SB)
	0x0108 00264 (select_default.go:14)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 0f 86 e9 00 00 00 48 83 ec 30 48 89  H;a.......H..0H.
	0x0020 6c 24 28 48 8d 6c 24 28 48 8d 05 00 00 00 00 48  l$(H.l$(H......H
	0x0030 89 04 24 e8 00 00 00 00 48 8b 44 24 08 48 89 44  ..$.....H.D$.H.D
	0x0040 24 18 48 8b 4c 24 38 48 89 08 48 8d 0d 00 00 00  $.H.L$8H..H.....
	0x0050 00 48 89 0c 24 e8 00 00 00 00 48 8b 44 24 08 48  .H..$.....H.D$.H
	0x0060 89 44 24 20 48 8b 4c 24 40 48 89 08 48 8d 0d 00  .D$ H.L$@H..H...
	0x0070 00 00 00 48 89 0c 24 e8 00 00 00 00 48 8b 44 24  ...H..$.....H.D$
	0x0080 08 48 89 44 24 10 48 8d 0d 00 00 00 00 48 89 08  .H.D$.H......H..
	0x0090 84 00 8b 0d 00 00 00 00 48 8d 50 08 85 c9 75 49  ........H.P...uI
	0x00a0 48 8b 4c 24 18 48 89 48 08 8b 0d 00 00 00 00 48  H.L$.H.H.......H
	0x00b0 8d 50 10 85 c9 75 18 48 8b 4c 24 20 48 89 48 10  .P...u.H.L$ H.H.
	0x00c0 48 89 44 24 48 48 8b 6c 24 28 48 83 c4 30 c3 48  H.D$HH.l$(H..0.H
	0x00d0 89 14 24 48 8b 4c 24 20 48 89 4c 24 08 e8 00 00  ..$H.L$ H.L$....
	0x00e0 00 00 48 8b 44 24 10 eb d7 48 89 14 24 48 8b 4c  ..H.D$...H..$H.L
	0x00f0 24 18 48 89 4c 24 08 e8 00 00 00 00 48 8b 44 24  $.H.L$......H.D$
	0x0100 10 eb a6 e8 00 00 00 00 e9 f3 fe ff ff           .............
	rel 12+4 t=16 TLS+0
	rel 43+4 t=15 type.int+0
	rel 52+4 t=8 runtime.newobject+0
	rel 77+4 t=15 type.int+0
	rel 86+4 t=8 runtime.newobject+0
	rel 111+4 t=15 type.struct { F uintptr; "".i *int; "".c *int }+0
	rel 120+4 t=8 runtime.newobject+0
	rel 137+4 t=15 "".test.func1+0
	rel 148+4 t=15 runtime.writeBarrier+0
	rel 171+4 t=15 runtime.writeBarrier+0
	rel 222+4 t=8 runtime.writebarrierptr+0
	rel 248+4 t=8 runtime.writebarrierptr+0
	rel 260+4 t=8 runtime.morestack_noctxt+0
"".main t=1 size=85 args=0x0 locals=0x20
	0x0000 00000 (select_default.go:21)	TEXT	"".main(SB), $32-0
	0x0000 00000 (select_default.go:21)	MOVQ	TLS, CX
	0x0009 00009 (select_default.go:21)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (select_default.go:21)	CMPQ	SP, 16(CX)
	0x0014 00020 (select_default.go:21)	JLS	78
	0x0016 00022 (select_default.go:21)	SUBQ	$32, SP
	0x001a 00026 (select_default.go:21)	MOVQ	BP, 24(SP)
	0x001f 00031 (select_default.go:21)	LEAQ	24(SP), BP
	0x0024 00036 (select_default.go:21)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0024 00036 (select_default.go:21)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0024 00036 (select_default.go:22)	MOVQ	$1, (SP)
	0x002c 00044 (select_default.go:22)	MOVQ	$2, 8(SP)
	0x0035 00053 (select_default.go:22)	PCDATA	$0, $0
	0x0035 00053 (select_default.go:22)	CALL	"".test(SB)
	0x003a 00058 (select_default.go:22)	MOVQ	16(SP), DX
	0x003f 00063 (select_default.go:22)	MOVQ	(DX), AX
	0x0042 00066 (select_default.go:22)	PCDATA	$0, $0
	0x0042 00066 (select_default.go:22)	CALL	AX
	0x0044 00068 (select_default.go:25)	MOVQ	24(SP), BP
	0x0049 00073 (select_default.go:25)	ADDQ	$32, SP
	0x004d 00077 (select_default.go:25)	RET
	0x004e 00078 (select_default.go:25)	NOP
	0x004e 00078 (select_default.go:21)	PCDATA	$0, $-1
	0x004e 00078 (select_default.go:21)	CALL	runtime.morestack_noctxt(SB)
	0x0053 00083 (select_default.go:21)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 76 38 48 83 ec 20 48 89 6c 24 18 48  H;a.v8H.. H.l$.H
	0x0020 8d 6c 24 18 48 c7 04 24 01 00 00 00 48 c7 44 24  .l$.H..$....H.D$
	0x0030 08 02 00 00 00 e8 00 00 00 00 48 8b 54 24 10 48  ..........H.T$.H
	0x0040 8b 02 ff d0 48 8b 6c 24 18 48 83 c4 20 c3 e8 00  ....H.l$.H.. ...
	0x0050 00 00 00 eb ab                                   .....
	rel 12+4 t=16 TLS+0
	rel 54+4 t=8 "".test+0
	rel 66+0 t=11 +0
	rel 79+4 t=8 runtime.morestack_noctxt+0
"".test.func1 t=1 size=27 args=0x0 locals=0x0
	0x0000 00000 (select_default.go:15)	TEXT	"".test.func1(SB), $0-0
	0x0000 00000 (select_default.go:15)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (select_default.go:15)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (select_default.go:15)	MOVQ	8(DX), AX
	0x0004 00004 (select_default.go:15)	MOVQ	16(DX), CX
	0x0008 00008 (select_default.go:16)	MOVQ	(AX), DX
	0x000b 00011 (select_default.go:16)	INCQ	DX
	0x000e 00014 (select_default.go:16)	MOVQ	DX, (AX)
	0x0011 00017 (select_default.go:17)	MOVQ	(CX), AX
	0x0014 00020 (select_default.go:17)	INCQ	AX
	0x0017 00023 (select_default.go:17)	MOVQ	AX, (CX)
	0x001a 00026 (select_default.go:18)	RET
	0x0000 48 8b 42 08 48 8b 4a 10 48 8b 10 48 ff c2 48 89  H.B.H.J.H..H..H.
	0x0010 10 48 8b 01 48 ff c0 48 89 01 c3                 .H..H..H...
"".init t=1 size=86 args=0x0 locals=0x8
	0x0000 00000 (select_default.go:26)	TEXT	"".init(SB), $8-0
	0x0000 00000 (select_default.go:26)	MOVQ	TLS, CX
	0x0009 00009 (select_default.go:26)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (select_default.go:26)	CMPQ	SP, 16(CX)
	0x0014 00020 (select_default.go:26)	JLS	79
	0x0016 00022 (select_default.go:26)	SUBQ	$8, SP
	0x001a 00026 (select_default.go:26)	MOVQ	BP, (SP)
	0x001e 00030 (select_default.go:26)	LEAQ	(SP), BP
	0x0022 00034 (select_default.go:26)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0022 00034 (select_default.go:26)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0022 00034 (select_default.go:26)	MOVBLZX	"".initdone·(SB), AX
	0x0029 00041 (select_default.go:26)	CMPB	AL, $1
	0x002b 00043 (select_default.go:26)	JLS	$0, 54
	0x002d 00045 (select_default.go:26)	MOVQ	(SP), BP
	0x0031 00049 (select_default.go:26)	ADDQ	$8, SP
	0x0035 00053 (select_default.go:26)	RET
	0x0036 00054 (select_default.go:26)	JNE	$0, 63
	0x0038 00056 (select_default.go:26)	PCDATA	$0, $0
	0x0038 00056 (select_default.go:26)	CALL	runtime.throwinit(SB)
	0x003d 00061 (select_default.go:26)	UNDEF
	0x003f 00063 (select_default.go:26)	MOVB	$2, "".initdone·(SB)
	0x0046 00070 (select_default.go:26)	MOVQ	(SP), BP
	0x004a 00074 (select_default.go:26)	ADDQ	$8, SP
	0x004e 00078 (select_default.go:26)	RET
	0x004f 00079 (select_default.go:26)	NOP
	0x004f 00079 (select_default.go:26)	PCDATA	$0, $-1
	0x004f 00079 (select_default.go:26)	CALL	runtime.morestack_noctxt(SB)
	0x0054 00084 (select_default.go:26)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 76 39 48 83 ec 08 48 89 2c 24 48 8d  H;a.v9H...H.,$H.
	0x0020 2c 24 0f b6 05 00 00 00 00 3c 01 76 09 48 8b 2c  ,$.......<.v.H.,
	0x0030 24 48 83 c4 08 c3 75 07 e8 00 00 00 00 0f 0b c6  $H....u.........
	0x0040 05 00 00 00 00 02 48 8b 2c 24 48 83 c4 08 c3 e8  ......H.,$H.....
	0x0050 00 00 00 00 eb aa                                ......
	rel 12+4 t=16 TLS+0
	rel 37+4 t=15 "".initdone·+0
	rel 57+4 t=8 runtime.throwinit+0
	rel 65+4 t=15 "".initdone·+-1
	rel 80+4 t=8 runtime.morestack_noctxt+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·54241e171da8af6ae173d69da0236748 t=8 dupok size=9
	0x0000 01 00 00 00 03 00 00 00 00                       .........
go.info."".second t=45 size=76
	0x0000 02 22 22 2e 73 65 63 6f 6e 64 00 00 00 00 00 00  ."".second......
	0x0010 00 00 00 00 00 00 00 00 00 00 00 01 05 61 00 01  .............a..
	0x0020 9c 00 00 00 00 00 00 00 00 05 62 00 04 9c 11 08  ..........b.....
	0x0030 22 00 00 00 00 00 00 00 00 05 7e 72 32 00 04 9c  ".........~r2...
	0x0040 11 10 22 00 00 00 00 00 00 00 00 00              ..".........
	rel 11+8 t=1 "".second+0
	rel 19+8 t=1 "".second+19
	rel 33+8 t=28 go.info.int+0
	rel 49+8 t=28 go.info.int+0
	rel 67+8 t=28 go.info.int+0
go.info."".first t=45 size=28
	0x0000 02 22 22 2e 66 69 72 73 74 00 00 00 00 00 00 00  ."".first.......
	0x0010 00 00 00 00 00 00 00 00 00 00 01 00              ............
	rel 10+8 t=1 "".first+0
	rel 18+8 t=1 "".first+1
gclocals·b877cb436e95861928b238b40220e7c3 t=8 dupok size=13
	0x0000 05 00 00 00 03 00 00 00 00 02 06 05 01           .............
gclocals·01c21aa7c981f0089e0d1b5244c9336a t=8 dupok size=13
	0x0000 05 00 00 00 03 00 00 00 00 00 00 00 00           .............
go.info."".test t=45 size=108
	0x0000 02 22 22 2e 74 65 73 74 00 00 00 00 00 00 00 00  ."".test........
	0x0010 00 00 00 00 00 00 00 00 00 01 04 26 69 00 04 9c  ...........&i...
	0x0020 11 60 22 00 00 00 00 00 00 00 00 04 26 63 00 04  .`".........&c..
	0x0030 9c 11 68 22 00 00 00 00 00 00 00 00 05 69 00 01  ..h".........i..
	0x0040 9c 00 00 00 00 00 00 00 00 05 63 00 04 9c 11 08  ..........c.....
	0x0050 22 00 00 00 00 00 00 00 00 05 7e 72 32 00 04 9c  ".........~r2...
	0x0060 11 10 22 00 00 00 00 00 00 00 00 00              ..".........
	rel 9+8 t=1 "".test+0
	rel 17+8 t=1 "".test+269
	rel 35+8 t=28 go.info.*int+0
	rel 52+8 t=28 go.info.*int+0
	rel 65+8 t=28 go.info.int+0
	rel 81+8 t=28 go.info.int+0
	rel 99+8 t=28 go.info.func()+0
go.info."".main t=45 size=27
	0x0000 02 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 00                 ...........
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+85
go.info."".test.func1 t=45 size=33
	0x0000 02 22 22 2e 74 65 73 74 2e 66 75 6e 63 31 00 00  ."".test.func1..
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 15+8 t=1 "".test.func1+0
	rel 23+8 t=1 "".test.func1+27
go.info."".init t=45 size=27
	0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 00                 ...........
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+86
"".initdone· t=32 size=1
type..hashfunc24 t=8 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memhash_varlen+0
type..eqfunc24 t=8 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memequal_varlen+0
type..alg24 t=8 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc24+0
	rel 8+8 t=1 type..eqfunc24+0
runtime.gcbits.01 t=8 dupok size=1
	0x0000 01                                               .
type..namedata.*struct { F uintptr; i *int; c *int }. t=8 dupok size=40
	0x0000 00 00 25 2a 73 74 72 75 63 74 20 7b 20 46 20 75  ..%*struct { F u
	0x0010 69 6e 74 70 74 72 3b 20 69 20 2a 69 6e 74 3b 20  intptr; i *int; 
	0x0020 63 20 2a 69 6e 74 20 7d                          c *int }
type.*struct { F uintptr; "".i *int; "".c *int } t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 31 4e f5 14 00 08 08 36 00 00 00 00 00 00 00 00  1N.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; i *int; c *int }.+0
	rel 48+8 t=1 type.struct { F uintptr; "".i *int; "".c *int }+0
runtime.gcbits.06 t=8 dupok size=1
	0x0000 06                                               .
type..namedata..F. t=8 dupok size=5
	0x0000 00 00 02 2e 46                                   ....F
type..namedata.i. t=8 dupok size=4
	0x0000 00 00 01 69                                      ...i
type..namedata.c. t=8 dupok size=4
	0x0000 00 00 01 63                                      ...c
type.struct { F uintptr; "".i *int; "".c *int } t=8 dupok size=152
	0x0000 18 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x0010 4f c1 ae bf 02 08 08 19 00 00 00 00 00 00 00 00  O...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 03 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 10 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg24+0
	rel 32+8 t=1 runtime.gcbits.06+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; i *int; c *int }.+0
	rel 44+4 t=6 type.*struct { F uintptr; "".i *int; "".c *int }+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type.struct { F uintptr; "".i *int; "".c *int }+80
	rel 80+8 t=1 type..namedata..F.+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata.i.+0
	rel 112+8 t=1 type.*int+0
	rel 128+8 t=1 type..namedata.c.+0
	rel 136+8 t=1 type.*int+0
type..namedata.*func(). t=8 dupok size=10
	0x0000 00 00 07 2a 66 75 6e 63 28 29                    ...*func()
type.*func() t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9b 90 75 1b 00 08 08 36 00 00 00 00 00 00 00 00  ..u....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func().+0
	rel 48+8 t=1 type.func()+0
type.func() t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f6 bc 82 f6 02 08 08 33 00 00 00 00 00 00 00 00  .......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00                                      ....
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func().+0
	rel 44+4 t=6 type.*func()+0
