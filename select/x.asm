"".(*noCopy).Lock t=1 size=1 args=0x8 locals=0x0
	0x0000 00000 (x.go:9)	TEXT	"".(*noCopy).Lock(SB), $0-8
	0x0000 00000 (x.go:9)	FUNCDATA	$0, gclocals·2a5305abe05176240e61b8620e19a815(SB)
	0x0000 00000 (x.go:9)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (x.go:9)	RET
	0x0000 c3                                               .
"".(*T).do t=1 size=177 args=0x8 locals=0x58
	0x0000 00000 (x.go:15)	TEXT	"".(*T).do(SB), $88-8
	0x0000 00000 (x.go:15)	MOVQ	TLS, CX
	0x0009 00009 (x.go:15)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (x.go:15)	CMPQ	SP, 16(CX)
	0x0014 00020 (x.go:15)	JLS	167
	0x001a 00026 (x.go:15)	SUBQ	$88, SP
	0x001e 00030 (x.go:15)	MOVQ	BP, 80(SP)
	0x0023 00035 (x.go:15)	LEAQ	80(SP), BP
	0x0028 00040 (x.go:15)	FUNCDATA	$0, gclocals·263043c8f03e3241528dfae4e2812ef4(SB)
	0x0028 00040 (x.go:15)	FUNCDATA	$1, gclocals·adc9a4e9eec70025782f0016681b6ae2(SB)
	0x0028 00040 (x.go:16)	LEAQ	go.string."*T"(SB), AX
	0x002f 00047 (x.go:16)	MOVQ	AX, ""..autotmp_1+48(SP)
	0x0034 00052 (x.go:16)	MOVQ	$2, ""..autotmp_1+56(SP)
	0x003d 00061 (x.go:16)	MOVQ	$0, ""..autotmp_0+64(SP)
	0x0046 00070 (x.go:16)	MOVQ	$0, ""..autotmp_0+72(SP)
	0x004f 00079 (x.go:16)	LEAQ	type.string(SB), AX
	0x0056 00086 (x.go:16)	MOVQ	AX, (SP)
	0x005a 00090 (x.go:16)	LEAQ	""..autotmp_1+48(SP), AX
	0x005f 00095 (x.go:16)	MOVQ	AX, 8(SP)
	0x0064 00100 (x.go:16)	PCDATA	$0, $1
	0x0064 00100 (x.go:16)	CALL	runtime.convT2E(SB)
	0x0069 00105 (x.go:16)	MOVQ	24(SP), AX
	0x006e 00110 (x.go:16)	MOVQ	16(SP), CX
	0x0073 00115 (x.go:16)	MOVQ	CX, ""..autotmp_0+64(SP)
	0x0078 00120 (x.go:16)	MOVQ	AX, ""..autotmp_0+72(SP)
	0x007d 00125 (x.go:16)	LEAQ	""..autotmp_0+64(SP), AX
	0x0082 00130 (x.go:16)	MOVQ	AX, (SP)
	0x0086 00134 (x.go:16)	MOVQ	$1, 8(SP)
	0x008f 00143 (x.go:16)	MOVQ	$1, 16(SP)
	0x0098 00152 (x.go:16)	PCDATA	$0, $1
	0x0098 00152 (x.go:16)	CALL	fmt.Println(SB)
	0x009d 00157 (x.go:17)	MOVQ	80(SP), BP
	0x00a2 00162 (x.go:17)	ADDQ	$88, SP
	0x00a6 00166 (x.go:17)	RET
	0x00a7 00167 (x.go:17)	NOP
	0x00a7 00167 (x.go:15)	PCDATA	$0, $-1
	0x00a7 00167 (x.go:15)	CALL	runtime.morestack_noctxt(SB)
	0x00ac 00172 (x.go:15)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 0f 86 8d 00 00 00 48 83 ec 58 48 89  H;a.......H..XH.
	0x0020 6c 24 50 48 8d 6c 24 50 48 8d 05 00 00 00 00 48  l$PH.l$PH......H
	0x0030 89 44 24 30 48 c7 44 24 38 02 00 00 00 48 c7 44  .D$0H.D$8....H.D
	0x0040 24 40 00 00 00 00 48 c7 44 24 48 00 00 00 00 48  $@....H.D$H....H
	0x0050 8d 05 00 00 00 00 48 89 04 24 48 8d 44 24 30 48  ......H..$H.D$0H
	0x0060 89 44 24 08 e8 00 00 00 00 48 8b 44 24 18 48 8b  .D$......H.D$.H.
	0x0070 4c 24 10 48 89 4c 24 40 48 89 44 24 48 48 8d 44  L$.H.L$@H.D$HH.D
	0x0080 24 40 48 89 04 24 48 c7 44 24 08 01 00 00 00 48  $@H..$H.D$.....H
	0x0090 c7 44 24 10 01 00 00 00 e8 00 00 00 00 48 8b 6c  .D$..........H.l
	0x00a0 24 50 48 83 c4 58 c3 e8 00 00 00 00 e9 4f ff ff  $PH..X.......O..
	0x00b0 ff                                               .
	rel 12+4 t=16 TLS+0
	rel 43+4 t=15 go.string."*T"+0
	rel 82+4 t=15 type.string+0
	rel 101+4 t=8 runtime.convT2E+0
	rel 153+4 t=8 fmt.Println+0
	rel 168+4 t=8 runtime.morestack_noctxt+0
"".main t=1 size=647 args=0x0 locals=0x120
	0x0000 00000 (x.go:19)	TEXT	"".main(SB), $288-0
	0x0000 00000 (x.go:19)	MOVQ	TLS, CX
	0x0009 00009 (x.go:19)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (x.go:19)	LEAQ	-160(SP), AX
	0x0018 00024 (x.go:19)	CMPQ	AX, 16(CX)
	0x001c 00028 (x.go:19)	JLS	637
	0x0022 00034 (x.go:19)	SUBQ	$288, SP
	0x0029 00041 (x.go:19)	MOVQ	BP, 280(SP)
	0x0031 00049 (x.go:19)	LEAQ	280(SP), BP
	0x0039 00057 (x.go:19)	FUNCDATA	$0, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x0039 00057 (x.go:19)	FUNCDATA	$1, gclocals·46b0fa87fb008040b795277915004ebe(SB)
	0x0039 00057 (x.go:22)	MOVQ	$1, ""..autotmp_6+64(SP)
	0x0042 00066 (x.go:22)	MOVQ	$0, ""..autotmp_5+232(SP)
	0x004e 00078 (x.go:22)	MOVQ	$0, ""..autotmp_5+240(SP)
	0x005a 00090 (x.go:22)	LEAQ	type.int(SB), AX
	0x0061 00097 (x.go:22)	MOVQ	AX, (SP)
	0x0065 00101 (x.go:22)	LEAQ	""..autotmp_6+64(SP), AX
	0x006a 00106 (x.go:22)	MOVQ	AX, 8(SP)
	0x006f 00111 (x.go:22)	PCDATA	$0, $1
	0x006f 00111 (x.go:22)	CALL	runtime.convT2E(SB)
	0x0074 00116 (x.go:22)	MOVQ	24(SP), AX
	0x0079 00121 (x.go:22)	MOVQ	16(SP), CX
	0x007e 00126 (x.go:22)	MOVQ	CX, ""..autotmp_5+232(SP)
	0x0086 00134 (x.go:22)	MOVQ	AX, ""..autotmp_5+240(SP)
	0x008e 00142 (x.go:22)	LEAQ	go.string."%X\n"(SB), AX
	0x0095 00149 (x.go:22)	MOVQ	AX, (SP)
	0x0099 00153 (x.go:22)	MOVQ	$3, 8(SP)
	0x00a2 00162 (x.go:22)	LEAQ	""..autotmp_5+232(SP), AX
	0x00aa 00170 (x.go:22)	MOVQ	AX, 16(SP)
	0x00af 00175 (x.go:22)	MOVQ	$1, 24(SP)
	0x00b8 00184 (x.go:22)	MOVQ	$1, 32(SP)
	0x00c1 00193 (x.go:22)	PCDATA	$0, $1
	0x00c1 00193 (x.go:22)	CALL	fmt.Printf(SB)
	0x00c6 00198 (x.go:23)	MOVQ	$0, "".a1+112(SP)
	0x00cf 00207 (x.go:23)	MOVQ	$0, "".a1+120(SP)
	0x00d8 00216 (x.go:23)	MOVQ	$0, "".a1+128(SP)
	0x00e4 00228 (x.go:23)	MOVQ	$0, "".a1+136(SP)
	0x00f0 00240 (x.go:23)	MOVQ	$0, "".a1+144(SP)
	0x00fc 00252 (x.go:24)	MOVQ	"".a1+112(SP), AX
	0x0101 00257 (x.go:24)	MOVQ	AX, "".b1+72(SP)
	0x0106 00262 (x.go:24)	LEAQ	"".b1+80(SP), DI
	0x010b 00267 (x.go:26)	LEAQ	"".a1+120(SP), SI
	0x0110 00272 (x.go:24)	DUFFCOPY	$868
	0x0123 00291 (x.go:25)	MOVQ	$2, "".b1+72(SP)
	0x012c 00300 (x.go:26)	MOVQ	"".a1+112(SP), AX
	0x0131 00305 (x.go:26)	MOVQ	AX, ""..autotmp_8+192(SP)
	0x0139 00313 (x.go:26)	LEAQ	""..autotmp_8+200(SP), DI
	0x0141 00321 (x.go:26)	LEAQ	"".a1+120(SP), SI
	0x0146 00326 (x.go:26)	DUFFCOPY	$868
	0x0159 00345 (x.go:26)	MOVQ	"".b1+72(SP), AX
	0x015e 00350 (x.go:26)	MOVQ	AX, ""..autotmp_9+152(SP)
	0x0166 00358 (x.go:26)	LEAQ	""..autotmp_9+160(SP), DI
	0x016e 00366 (x.go:24)	LEAQ	"".b1+80(SP), SI
	0x0173 00371 (x.go:26)	DUFFCOPY	$868
	0x0186 00390 (x.go:26)	MOVQ	$0, ""..autotmp_7+248(SP)
	0x0192 00402 (x.go:26)	MOVQ	$0, ""..autotmp_7+256(SP)
	0x019e 00414 (x.go:26)	MOVQ	$0, ""..autotmp_7+264(SP)
	0x01aa 00426 (x.go:26)	MOVQ	$0, ""..autotmp_7+272(SP)
	0x01b6 00438 (x.go:26)	LEAQ	type.[5]int(SB), AX
	0x01bd 00445 (x.go:26)	MOVQ	AX, (SP)
	0x01c1 00449 (x.go:26)	LEAQ	""..autotmp_8+192(SP), CX
	0x01c9 00457 (x.go:26)	MOVQ	CX, 8(SP)
	0x01ce 00462 (x.go:26)	PCDATA	$0, $2
	0x01ce 00462 (x.go:26)	CALL	runtime.convT2E(SB)
	0x01d3 00467 (x.go:26)	MOVQ	16(SP), AX
	0x01d8 00472 (x.go:26)	MOVQ	24(SP), CX
	0x01dd 00477 (x.go:26)	MOVQ	AX, ""..autotmp_7+248(SP)
	0x01e5 00485 (x.go:26)	MOVQ	CX, ""..autotmp_7+256(SP)
	0x01ed 00493 (x.go:26)	LEAQ	type.[5]int(SB), AX
	0x01f4 00500 (x.go:26)	MOVQ	AX, (SP)
	0x01f8 00504 (x.go:26)	LEAQ	""..autotmp_9+152(SP), AX
	0x0200 00512 (x.go:26)	MOVQ	AX, 8(SP)
	0x0205 00517 (x.go:26)	PCDATA	$0, $2
	0x0205 00517 (x.go:26)	CALL	runtime.convT2E(SB)
	0x020a 00522 (x.go:26)	MOVQ	16(SP), AX
	0x020f 00527 (x.go:26)	MOVQ	24(SP), CX
	0x0214 00532 (x.go:26)	MOVQ	AX, ""..autotmp_7+264(SP)
	0x021c 00540 (x.go:26)	MOVQ	CX, ""..autotmp_7+272(SP)
	0x0224 00548 (x.go:26)	LEAQ	""..autotmp_7+248(SP), AX
	0x022c 00556 (x.go:26)	MOVQ	AX, (SP)
	0x0230 00560 (x.go:26)	MOVQ	$2, 8(SP)
	0x0239 00569 (x.go:26)	MOVQ	$2, 16(SP)
	0x0242 00578 (x.go:26)	PCDATA	$0, $2
	0x0242 00578 (x.go:26)	CALL	fmt.Println(SB)
	0x0247 00583 (x.go:30)	LEAQ	"".t1+64(SP), AX
	0x024c 00588 (x.go:30)	MOVQ	AX, (SP)
	0x0250 00592 (x.go:30)	PCDATA	$0, $0
	0x0250 00592 (x.go:30)	CALL	"".(*T).do(SB)
	0x0255 00597 (x.go:35)	MOVL	$0, (SP)
	0x025c 00604 (x.go:35)	LEAQ	"".main.func1·f(SB), AX
	0x0263 00611 (x.go:35)	MOVQ	AX, 8(SP)
	0x0268 00616 (x.go:35)	PCDATA	$0, $0
	0x0268 00616 (x.go:35)	CALL	runtime.newproc(SB)
	0x026d 00621 (x.go:36)	MOVQ	280(SP), BP
	0x0275 00629 (x.go:36)	ADDQ	$288, SP
	0x027c 00636 (x.go:36)	RET
	0x027d 00637 (x.go:36)	NOP
	0x027d 00637 (x.go:19)	PCDATA	$0, $-1
	0x027d 00637 (x.go:19)	CALL	runtime.morestack_noctxt(SB)
	0x0282 00642 (x.go:19)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 8d 84 24 60 ff ff ff 48 3b 41 10 0f 86 5b 02  H..$`...H;A...[.
	0x0020 00 00 48 81 ec 20 01 00 00 48 89 ac 24 18 01 00  ..H.. ...H..$...
	0x0030 00 48 8d ac 24 18 01 00 00 48 c7 44 24 40 01 00  .H..$....H.D$@..
	0x0040 00 00 48 c7 84 24 e8 00 00 00 00 00 00 00 48 c7  ..H..$........H.
	0x0050 84 24 f0 00 00 00 00 00 00 00 48 8d 05 00 00 00  .$........H.....
	0x0060 00 48 89 04 24 48 8d 44 24 40 48 89 44 24 08 e8  .H..$H.D$@H.D$..
	0x0070 00 00 00 00 48 8b 44 24 18 48 8b 4c 24 10 48 89  ....H.D$.H.L$.H.
	0x0080 8c 24 e8 00 00 00 48 89 84 24 f0 00 00 00 48 8d  .$....H..$....H.
	0x0090 05 00 00 00 00 48 89 04 24 48 c7 44 24 08 03 00  .....H..$H.D$...
	0x00a0 00 00 48 8d 84 24 e8 00 00 00 48 89 44 24 10 48  ..H..$....H.D$.H
	0x00b0 c7 44 24 18 01 00 00 00 48 c7 44 24 20 01 00 00  .D$.....H.D$ ...
	0x00c0 00 e8 00 00 00 00 48 c7 44 24 70 00 00 00 00 48  ......H.D$p....H
	0x00d0 c7 44 24 78 00 00 00 00 48 c7 84 24 80 00 00 00  .D$x....H..$....
	0x00e0 00 00 00 00 48 c7 84 24 88 00 00 00 00 00 00 00  ....H..$........
	0x00f0 48 c7 84 24 90 00 00 00 00 00 00 00 48 8b 44 24  H..$........H.D$
	0x0100 70 48 89 44 24 48 48 8d 7c 24 50 48 8d 74 24 78  pH.D$HH.|$PH.t$x
	0x0110 48 89 6c 24 f0 48 8d 6c 24 f0 e8 00 00 00 00 48  H.l$.H.l$......H
	0x0120 8b 6d 00 48 c7 44 24 48 02 00 00 00 48 8b 44 24  .m.H.D$H....H.D$
	0x0130 70 48 89 84 24 c0 00 00 00 48 8d bc 24 c8 00 00  pH..$....H..$...
	0x0140 00 48 8d 74 24 78 48 89 6c 24 f0 48 8d 6c 24 f0  .H.t$xH.l$.H.l$.
	0x0150 e8 00 00 00 00 48 8b 6d 00 48 8b 44 24 48 48 89  .....H.m.H.D$HH.
	0x0160 84 24 98 00 00 00 48 8d bc 24 a0 00 00 00 48 8d  .$....H..$....H.
	0x0170 74 24 50 48 89 6c 24 f0 48 8d 6c 24 f0 e8 00 00  t$PH.l$.H.l$....
	0x0180 00 00 48 8b 6d 00 48 c7 84 24 f8 00 00 00 00 00  ..H.m.H..$......
	0x0190 00 00 48 c7 84 24 00 01 00 00 00 00 00 00 48 c7  ..H..$........H.
	0x01a0 84 24 08 01 00 00 00 00 00 00 48 c7 84 24 10 01  .$........H..$..
	0x01b0 00 00 00 00 00 00 48 8d 05 00 00 00 00 48 89 04  ......H......H..
	0x01c0 24 48 8d 8c 24 c0 00 00 00 48 89 4c 24 08 e8 00  $H..$....H.L$...
	0x01d0 00 00 00 48 8b 44 24 10 48 8b 4c 24 18 48 89 84  ...H.D$.H.L$.H..
	0x01e0 24 f8 00 00 00 48 89 8c 24 00 01 00 00 48 8d 05  $....H..$....H..
	0x01f0 00 00 00 00 48 89 04 24 48 8d 84 24 98 00 00 00  ....H..$H..$....
	0x0200 48 89 44 24 08 e8 00 00 00 00 48 8b 44 24 10 48  H.D$......H.D$.H
	0x0210 8b 4c 24 18 48 89 84 24 08 01 00 00 48 89 8c 24  .L$.H..$....H..$
	0x0220 10 01 00 00 48 8d 84 24 f8 00 00 00 48 89 04 24  ....H..$....H..$
	0x0230 48 c7 44 24 08 02 00 00 00 48 c7 44 24 10 02 00  H.D$.....H.D$...
	0x0240 00 00 e8 00 00 00 00 48 8d 44 24 40 48 89 04 24  .......H.D$@H..$
	0x0250 e8 00 00 00 00 c7 04 24 00 00 00 00 48 8d 05 00  .......$....H...
	0x0260 00 00 00 48 89 44 24 08 e8 00 00 00 00 48 8b ac  ...H.D$......H..
	0x0270 24 18 01 00 00 48 81 c4 20 01 00 00 c3 e8 00 00  $....H.. .......
	0x0280 00 00 e9 79 fd ff ff                             ...y...
	rel 12+4 t=16 TLS+0
	rel 93+4 t=15 type.int+0
	rel 112+4 t=8 runtime.convT2E+0
	rel 145+4 t=15 go.string."%X\n"+0
	rel 194+4 t=8 fmt.Printf+0
	rel 283+4 t=8 runtime.duffcopy+868
	rel 337+4 t=8 runtime.duffcopy+868
	rel 382+4 t=8 runtime.duffcopy+868
	rel 441+4 t=15 type.[5]int+0
	rel 463+4 t=8 runtime.convT2E+0
	rel 496+4 t=15 type.[5]int+0
	rel 518+4 t=8 runtime.convT2E+0
	rel 579+4 t=8 fmt.Println+0
	rel 593+4 t=8 "".(*T).do+0
	rel 607+4 t=15 "".main.func1·f+0
	rel 617+4 t=8 runtime.newproc+0
	rel 638+4 t=8 runtime.morestack_noctxt+0
"".main.func1 t=1 size=169 args=0x0 locals=0x58
	0x0000 00000 (x.go:31)	TEXT	"".main.func1(SB), $88-0
	0x0000 00000 (x.go:31)	MOVQ	TLS, CX
	0x0009 00009 (x.go:31)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (x.go:31)	CMPQ	SP, 16(CX)
	0x0014 00020 (x.go:31)	JLS	159
	0x001a 00026 (x.go:31)	SUBQ	$88, SP
	0x001e 00030 (x.go:31)	MOVQ	BP, 80(SP)
	0x0023 00035 (x.go:31)	LEAQ	80(SP), BP
	0x0028 00040 (x.go:31)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0028 00040 (x.go:31)	FUNCDATA	$1, gclocals·adc9a4e9eec70025782f0016681b6ae2(SB)
	0x0028 00040 (x.go:33)	LEAQ	go.string."haha"(SB), AX
	0x002f 00047 (x.go:33)	MOVQ	AX, ""..autotmp_18+48(SP)
	0x0034 00052 (x.go:33)	MOVQ	$4, ""..autotmp_18+56(SP)
	0x003d 00061 (x.go:33)	MOVQ	$0, ""..autotmp_17+64(SP)
	0x0046 00070 (x.go:33)	MOVQ	$0, ""..autotmp_17+72(SP)
	0x004f 00079 (x.go:33)	LEAQ	type.string(SB), CX
	0x0056 00086 (x.go:33)	MOVQ	CX, (SP)
	0x005a 00090 (x.go:33)	LEAQ	""..autotmp_18+48(SP), DX
	0x005f 00095 (x.go:33)	MOVQ	DX, 8(SP)
	0x0064 00100 (x.go:33)	PCDATA	$0, $1
	0x0064 00100 (x.go:33)	CALL	runtime.convT2E(SB)
	0x0069 00105 (x.go:33)	MOVQ	24(SP), AX
	0x006e 00110 (x.go:33)	MOVQ	16(SP), CX
	0x0073 00115 (x.go:33)	MOVQ	CX, ""..autotmp_17+64(SP)
	0x0078 00120 (x.go:33)	MOVQ	AX, ""..autotmp_17+72(SP)
	0x007d 00125 (x.go:33)	LEAQ	""..autotmp_17+64(SP), AX
	0x0082 00130 (x.go:33)	MOVQ	AX, (SP)
	0x0086 00134 (x.go:33)	MOVQ	$1, 8(SP)
	0x008f 00143 (x.go:33)	MOVQ	$1, 16(SP)
	0x0098 00152 (x.go:33)	PCDATA	$0, $1
	0x0098 00152 (x.go:33)	CALL	fmt.Println(SB)
	0x009d 00157 (x.go:33)	JMP	40
	0x009f 00159 (x.go:33)	NOP
	0x009f 00159 (x.go:31)	PCDATA	$0, $-1
	0x009f 00159 (x.go:31)	CALL	runtime.morestack_noctxt(SB)
	0x00a4 00164 (x.go:31)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 0f 86 85 00 00 00 48 83 ec 58 48 89  H;a.......H..XH.
	0x0020 6c 24 50 48 8d 6c 24 50 48 8d 05 00 00 00 00 48  l$PH.l$PH......H
	0x0030 89 44 24 30 48 c7 44 24 38 04 00 00 00 48 c7 44  .D$0H.D$8....H.D
	0x0040 24 40 00 00 00 00 48 c7 44 24 48 00 00 00 00 48  $@....H.D$H....H
	0x0050 8d 0d 00 00 00 00 48 89 0c 24 48 8d 54 24 30 48  ......H..$H.T$0H
	0x0060 89 54 24 08 e8 00 00 00 00 48 8b 44 24 18 48 8b  .T$......H.D$.H.
	0x0070 4c 24 10 48 89 4c 24 40 48 89 44 24 48 48 8d 44  L$.H.L$@H.D$HH.D
	0x0080 24 40 48 89 04 24 48 c7 44 24 08 01 00 00 00 48  $@H..$H.D$.....H
	0x0090 c7 44 24 10 01 00 00 00 e8 00 00 00 00 eb 89 e8  .D$.............
	0x00a0 00 00 00 00 e9 57 ff ff ff                       .....W...
	rel 12+4 t=16 TLS+0
	rel 43+4 t=15 go.string."haha"+0
	rel 82+4 t=15 type.string+0
	rel 101+4 t=8 runtime.convT2E+0
	rel 153+4 t=8 fmt.Println+0
	rel 160+4 t=8 runtime.morestack_noctxt+0
"".init t=1 size=98 args=0x0 locals=0x8
	0x0000 00000 (x.go:37)	TEXT	"".init(SB), $8-0
	0x0000 00000 (x.go:37)	MOVQ	TLS, CX
	0x0009 00009 (x.go:37)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (x.go:37)	CMPQ	SP, 16(CX)
	0x0014 00020 (x.go:37)	JLS	91
	0x0016 00022 (x.go:37)	SUBQ	$8, SP
	0x001a 00026 (x.go:37)	MOVQ	BP, (SP)
	0x001e 00030 (x.go:37)	LEAQ	(SP), BP
	0x0022 00034 (x.go:37)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0022 00034 (x.go:37)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0022 00034 (x.go:37)	MOVBLZX	"".initdone·(SB), AX
	0x0029 00041 (x.go:37)	CMPB	AL, $1
	0x002b 00043 (x.go:37)	JLS	$0, 54
	0x002d 00045 (x.go:37)	MOVQ	(SP), BP
	0x0031 00049 (x.go:37)	ADDQ	$8, SP
	0x0035 00053 (x.go:37)	RET
	0x0036 00054 (x.go:37)	JNE	$0, 63
	0x0038 00056 (x.go:37)	PCDATA	$0, $0
	0x0038 00056 (x.go:37)	CALL	runtime.throwinit(SB)
	0x003d 00061 (x.go:37)	UNDEF
	0x003f 00063 (x.go:37)	MOVB	$1, "".initdone·(SB)
	0x0046 00070 (x.go:37)	PCDATA	$0, $0
	0x0046 00070 (x.go:37)	CALL	fmt.init(SB)
	0x004b 00075 (x.go:37)	MOVB	$2, "".initdone·(SB)
	0x0052 00082 (x.go:37)	MOVQ	(SP), BP
	0x0056 00086 (x.go:37)	ADDQ	$8, SP
	0x005a 00090 (x.go:37)	RET
	0x005b 00091 (x.go:37)	NOP
	0x005b 00091 (x.go:37)	PCDATA	$0, $-1
	0x005b 00091 (x.go:37)	CALL	runtime.morestack_noctxt(SB)
	0x0060 00096 (x.go:37)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 76 45 48 83 ec 08 48 89 2c 24 48 8d  H;a.vEH...H.,$H.
	0x0020 2c 24 0f b6 05 00 00 00 00 3c 01 76 09 48 8b 2c  ,$.......<.v.H.,
	0x0030 24 48 83 c4 08 c3 75 07 e8 00 00 00 00 0f 0b c6  $H....u.........
	0x0040 05 00 00 00 00 01 e8 00 00 00 00 c6 05 00 00 00  ................
	0x0050 00 02 48 8b 2c 24 48 83 c4 08 c3 e8 00 00 00 00  ..H.,$H.........
	0x0060 eb 9e                                            ..
	rel 12+4 t=16 TLS+0
	rel 37+4 t=15 "".initdone·+0
	rel 57+4 t=8 runtime.throwinit+0
	rel 65+4 t=15 "".initdone·+-1
	rel 71+4 t=8 fmt.init+0
	rel 77+4 t=15 "".initdone·+-1
	rel 92+4 t=8 runtime.morestack_noctxt+0
type..hash.[2]interface {} t=1 dupok size=126 args=0x18 locals=0x28
	0x0000 00000 (x.go:1)	TEXT	type..hash.[2]interface {}(SB), $40-24
	0x0000 00000 (x.go:1)	MOVQ	TLS, CX
	0x0009 00009 (x.go:1)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (x.go:1)	CMPQ	SP, 16(CX)
	0x0014 00020 (x.go:1)	JLS	119
	0x0016 00022 (x.go:1)	SUBQ	$40, SP
	0x001a 00026 (x.go:1)	MOVQ	BP, 32(SP)
	0x001f 00031 (x.go:1)	LEAQ	32(SP), BP
	0x0024 00036 (x.go:1)	FUNCDATA	$0, gclocals·d4dc2f11db048877dbc0f60a22b4adb3(SB)
	0x0024 00036 (x.go:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0024 00036 (x.go:1)	MOVQ	$0, AX
	0x0026 00038 (x.go:1)	MOVQ	"".h+56(FP), CX
	0x002b 00043 (x.go:1)	MOVQ	AX, "".i+24(SP)
	0x0030 00048 (x.go:1)	CMPQ	AX, $2
	0x0034 00052 (x.go:1)	JGE	$0, 104
	0x0036 00054 (x.go:1)	SHLQ	$4, AX
	0x003a 00058 (x.go:1)	MOVQ	"".p+48(FP), BX
	0x003f 00063 (x.go:1)	ADDQ	BX, AX
	0x0042 00066 (x.go:1)	MOVQ	AX, (SP)
	0x0046 00070 (x.go:1)	MOVQ	CX, 8(SP)
	0x004b 00075 (x.go:1)	PCDATA	$0, $0
	0x004b 00075 (x.go:1)	CALL	runtime.nilinterhash(SB)
	0x0050 00080 (x.go:1)	MOVQ	16(SP), CX
	0x0055 00085 (x.go:1)	MOVQ	"".i+24(SP), AX
	0x005a 00090 (x.go:1)	INCQ	AX
	0x005d 00093 (x.go:1)	MOVQ	AX, "".i+24(SP)
	0x0062 00098 (x.go:1)	CMPQ	AX, $2
	0x0066 00102 (x.go:1)	JLT	$0, 54
	0x0068 00104 (x.go:1)	MOVQ	CX, "".~r2+64(FP)
	0x006d 00109 (x.go:1)	MOVQ	32(SP), BP
	0x0072 00114 (x.go:1)	ADDQ	$40, SP
	0x0076 00118 (x.go:1)	RET
	0x0077 00119 (x.go:1)	NOP
	0x0077 00119 (x.go:1)	PCDATA	$0, $-1
	0x0077 00119 (x.go:1)	CALL	runtime.morestack_noctxt(SB)
	0x007c 00124 (x.go:1)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 76 61 48 83 ec 28 48 89 6c 24 20 48  H;a.vaH..(H.l$ H
	0x0020 8d 6c 24 20 31 c0 48 8b 4c 24 38 48 89 44 24 18  .l$ 1.H.L$8H.D$.
	0x0030 48 83 f8 02 7d 32 48 c1 e0 04 48 8b 5c 24 30 48  H...}2H...H.\$0H
	0x0040 01 d8 48 89 04 24 48 89 4c 24 08 e8 00 00 00 00  ..H..$H.L$......
	0x0050 48 8b 4c 24 10 48 8b 44 24 18 48 ff c0 48 89 44  H.L$.H.D$.H..H.D
	0x0060 24 18 48 83 f8 02 7c ce 48 89 4c 24 40 48 8b 6c  $.H...|.H.L$@H.l
	0x0070 24 20 48 83 c4 28 c3 e8 00 00 00 00 eb 82        $ H..(........
	rel 12+4 t=16 TLS+0
	rel 76+4 t=8 runtime.nilinterhash+0
	rel 120+4 t=8 runtime.morestack_noctxt+0
type..eq.[2]interface {} t=1 dupok size=183 args=0x18 locals=0x38
	0x0000 00000 (x.go:1)	TEXT	type..eq.[2]interface {}(SB), $56-24
	0x0000 00000 (x.go:1)	MOVQ	TLS, CX
	0x0009 00009 (x.go:1)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (x.go:1)	CMPQ	SP, 16(CX)
	0x0014 00020 (x.go:1)	JLS	173
	0x001a 00026 (x.go:1)	SUBQ	$56, SP
	0x001e 00030 (x.go:1)	MOVQ	BP, 48(SP)
	0x0023 00035 (x.go:1)	LEAQ	48(SP), BP
	0x0028 00040 (x.go:1)	FUNCDATA	$0, gclocals·8f9cec06d1ae35cc9900c511c5e4bdab(SB)
	0x0028 00040 (x.go:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0028 00040 (x.go:1)	MOVQ	$0, AX
	0x002a 00042 (x.go:1)	MOVQ	AX, "".i+40(SP)
	0x002f 00047 (x.go:1)	CMPQ	AX, $2
	0x0033 00051 (x.go:1)	JGE	$0, 143
	0x0035 00053 (x.go:1)	SHLQ	$4, AX
	0x0039 00057 (x.go:1)	MOVQ	"".p+64(FP), DX
	0x003e 00062 (x.go:1)	MOVQ	8(DX)(AX*1), BX
	0x0043 00067 (x.go:1)	MOVQ	(DX)(AX*1), SI
	0x0047 00071 (x.go:1)	MOVQ	"".q+72(FP), DI
	0x004c 00076 (x.go:1)	MOVQ	8(DI)(AX*1), R8
	0x0051 00081 (x.go:1)	MOVQ	(DI)(AX*1), AX
	0x0055 00085 (x.go:1)	CMPQ	SI, AX
	0x0058 00088 (x.go:1)	JNE	$0, 158
	0x005a 00090 (x.go:1)	MOVQ	SI, (SP)
	0x005e 00094 (x.go:1)	MOVQ	BX, 8(SP)
	0x0063 00099 (x.go:1)	MOVQ	AX, 16(SP)
	0x0068 00104 (x.go:1)	MOVQ	R8, 24(SP)
	0x006d 00109 (x.go:1)	PCDATA	$0, $0
	0x006d 00109 (x.go:1)	CALL	runtime.efaceeq(SB)
	0x0072 00114 (x.go:1)	MOVBLZX	32(SP), AX
	0x0077 00119 (x.go:1)	TESTB	AL, AL
	0x0079 00121 (x.go:1)	JEQ	$0, 158
	0x007b 00123 (x.go:1)	MOVQ	"".i+40(SP), CX
	0x0080 00128 (x.go:1)	LEAQ	1(CX), AX
	0x0084 00132 (x.go:1)	MOVQ	AX, "".i+40(SP)
	0x0089 00137 (x.go:1)	CMPQ	AX, $2
	0x008d 00141 (x.go:1)	JLT	$0, 53
	0x008f 00143 (x.go:1)	MOVB	$1, "".~r2+80(FP)
	0x0094 00148 (x.go:1)	MOVQ	48(SP), BP
	0x0099 00153 (x.go:1)	ADDQ	$56, SP
	0x009d 00157 (x.go:1)	RET
	0x009e 00158 (x.go:1)	MOVB	$0, "".~r2+80(FP)
	0x00a3 00163 (x.go:1)	MOVQ	48(SP), BP
	0x00a8 00168 (x.go:1)	ADDQ	$56, SP
	0x00ac 00172 (x.go:1)	RET
	0x00ad 00173 (x.go:1)	NOP
	0x00ad 00173 (x.go:1)	PCDATA	$0, $-1
	0x00ad 00173 (x.go:1)	CALL	runtime.morestack_noctxt(SB)
	0x00b2 00178 (x.go:1)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 0f 86 93 00 00 00 48 83 ec 38 48 89  H;a.......H..8H.
	0x0020 6c 24 30 48 8d 6c 24 30 31 c0 48 89 44 24 28 48  l$0H.l$01.H.D$(H
	0x0030 83 f8 02 7d 5a 48 c1 e0 04 48 8b 54 24 40 48 8b  ...}ZH...H.T$@H.
	0x0040 5c 02 08 48 8b 34 02 48 8b 7c 24 48 4c 8b 44 07  \..H.4.H.|$HL.D.
	0x0050 08 48 8b 04 07 48 39 c6 75 44 48 89 34 24 48 89  .H...H9.uDH.4$H.
	0x0060 5c 24 08 48 89 44 24 10 4c 89 44 24 18 e8 00 00  \$.H.D$.L.D$....
	0x0070 00 00 0f b6 44 24 20 84 c0 74 23 48 8b 4c 24 28  ....D$ ..t#H.L$(
	0x0080 48 8d 41 01 48 89 44 24 28 48 83 f8 02 7c a6 c6  H.A.H.D$(H...|..
	0x0090 44 24 50 01 48 8b 6c 24 30 48 83 c4 38 c3 c6 44  D$P.H.l$0H..8..D
	0x00a0 24 50 00 48 8b 6c 24 30 48 83 c4 38 c3 e8 00 00  $P.H.l$0H..8....
	0x00b0 00 00 e9 49 ff ff ff                             ...I...
	rel 12+4 t=16 TLS+0
	rel 110+4 t=8 runtime.efaceeq+0
	rel 174+4 t=8 runtime.morestack_noctxt+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·2a5305abe05176240e61b8620e19a815 t=8 dupok size=9
	0x0000 01 00 00 00 01 00 00 00 00                       .........
go.info."".(*noCopy).Lock t=45 size=37
	0x0000 02 22 22 2e 28 2a 6e 6f 43 6f 70 79 29 2e 4c 6f  ."".(*noCopy).Lo
	0x0010 63 6b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ck..............
	0x0020 00 00 00 01 00                                   .....
	rel 19+8 t=1 "".(*noCopy).Lock+0
	rel 27+8 t=1 "".(*noCopy).Lock+1
go.string."*T" t=8 dupok size=2
	0x0000 2a 54                                            *T
gclocals·adc9a4e9eec70025782f0016681b6ae2 t=8 dupok size=10
	0x0000 02 00 00 00 04 00 00 00 00 0d                    ..........
gclocals·263043c8f03e3241528dfae4e2812ef4 t=8 dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 00                    ..........
go.info."".(*T).do t=45 size=43
	0x0000 02 22 22 2e 28 2a 54 29 2e 64 6f 00 00 00 00 00  ."".(*T).do.....
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 01 05 74 00  ..............t.
	0x0020 01 9c 00 00 00 00 00 00 00 00 00                 ...........
	rel 12+8 t=1 "".(*T).do+0
	rel 20+8 t=1 "".(*T).do+177
	rel 34+8 t=28 go.info.*"".T+0
go.string."%X\n" t=8 dupok size=3
	0x0000 25 58 0a                                         %X.
gclocals·46b0fa87fb008040b795277915004ebe t=8 dupok size=11
	0x0000 03 00 00 00 06 00 00 00 00 03 3c                 ..........<
gclocals·7d2d5fca80364273fb07d5820a76fef4 t=8 dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
go.info."".main t=45 size=81
	0x0000 02 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 04 74 31 00 05 9c  ...........t1...
	0x0020 11 98 7e 22 00 00 00 00 00 00 00 00 04 62 31 00  ..~".........b1.
	0x0030 05 9c 11 a0 7e 22 00 00 00 00 00 00 00 00 04 61  ....~".........a
	0x0040 31 00 05 9c 11 c8 7e 22 00 00 00 00 00 00 00 00  1.....~"........
	0x0050 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+647
	rel 36+8 t=28 go.info."".T+0
	rel 54+8 t=28 go.info.[5]int+0
	rel 72+8 t=28 go.info.[5]int+0
go.string."haha" t=8 dupok size=4
	0x0000 68 61 68 61                                      haha
gclocals·69c1753bd5f81501d95132d08af04464 t=8 dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
go.info."".main.func1 t=45 size=33
	0x0000 02 22 22 2e 6d 61 69 6e 2e 66 75 6e 63 31 00 00  ."".main.func1..
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 15+8 t=1 "".main.func1+0
	rel 23+8 t=1 "".main.func1+169
go.info."".init t=45 size=27
	0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 00                 ...........
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+98
"".initdone· t=32 size=1
"".main.func1·f t=8 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".main.func1+0
runtime.gcbits.01 t=8 dupok size=1
	0x0000 01                                               .
type..namedata.*main.noCopy. t=8 dupok size=15
	0x0000 00 00 0c 2a 6d 61 69 6e 2e 6e 6f 43 6f 70 79     ...*main.noCopy
type..namedata.*func(*main.noCopy). t=8 dupok size=22
	0x0000 00 00 13 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 6e  ...*func(*main.n
	0x0010 6f 43 6f 70 79 29                                oCopy)
type.*func(*"".noCopy) t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 dd 48 33 b2 00 08 08 36 00 00 00 00 00 00 00 00  .H3....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.noCopy).+0
	rel 48+8 t=1 type.func(*"".noCopy)+0
type.func(*"".noCopy) t=8 dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 6a 41 07 f7 02 08 08 33 00 00 00 00 00 00 00 00  jA.....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.noCopy).+0
	rel 44+4 t=6 type.*func(*"".noCopy)+0
	rel 56+8 t=1 type.*"".noCopy+0
type..namedata.Lock. t=8 dupok size=7
	0x0000 01 00 04 4c 6f 63 6b                             ...Lock
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
type.*"".noCopy t=8 size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f2 8e 83 88 01 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.noCopy.+0
	rel 48+8 t=1 type."".noCopy+0
	rel 56+4 t=5 type..importpath."".+0
	rel 72+4 t=5 type..namedata.Lock.+0
	rel 76+4 t=24 type.func()+0
	rel 80+4 t=24 "".(*noCopy).Lock+0
	rel 84+4 t=24 "".(*noCopy).Lock+0
runtime.gcbits. t=8 dupok size=0
type."".noCopy t=8 size=96
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 bc 8a 10 9e 07 01 01 99 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+16
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.noCopy.+0
	rel 44+4 t=5 type.*"".noCopy+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".noCopy+96
	rel 80+4 t=5 type..importpath."".+0
type..namedata.*main.T. t=8 dupok size=10
	0x0000 01 00 07 2a 6d 61 69 6e 2e 54                    ...*main.T
type..namedata.noCopy. t=8 dupok size=9
	0x0000 00 00 06 6e 6f 43 6f 70 79                       ...noCopy
type."".T t=8 size=120
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 b5 a4 ef 44 07 01 01 99 00 00 00 00 00 00 00 00  ...D............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+16
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.T.+0
	rel 44+4 t=5 type.*"".T+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".T+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.noCopy.+0
	rel 104+8 t=1 type."".noCopy+0
type..namedata.**main.T. t=8 dupok size=11
	0x0000 00 00 08 2a 2a 6d 61 69 6e 2e 54                 ...**main.T
type.**"".T t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 39 ac 62 f8 00 08 08 36 00 00 00 00 00 00 00 00  9.b....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.**main.T.+0
	rel 48+8 t=1 type.*"".T+0
type..namedata.*func(*main.T). t=8 dupok size=17
	0x0000 00 00 0e 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 54  ...*func(*main.T
	0x0010 29                                               )
type.*func(*"".T) t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 73 30 e0 de 00 08 08 36 00 00 00 00 00 00 00 00  s0.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.T).+0
	rel 48+8 t=1 type.func(*"".T)+0
type.func(*"".T) t=8 dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 5b c2 60 8a 02 08 08 33 00 00 00 00 00 00 00 00  [.`....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.T).+0
	rel 44+4 t=6 type.*func(*"".T)+0
	rel 56+8 t=1 type.*"".T+0
type..namedata.do. t=8 dupok size=5
	0x0000 00 00 02 64 6f                                   ...do
type.*"".T t=8 size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8b 54 ca 19 01 08 08 36 00 00 00 00 00 00 00 00  .T.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.T.+0
	rel 44+4 t=6 type.**"".T+0
	rel 48+8 t=1 type."".T+0
	rel 56+4 t=5 type..importpath."".+0
	rel 72+4 t=5 type..namedata.do.+0
	rel 76+4 t=24 type.func()+0
	rel 80+4 t=24 "".(*T).do+0
	rel 84+4 t=24 "".(*T).do+0
type..namedata.*interface {}. t=8 dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 00 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}.+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.03 t=8 dupok size=1
	0x0000 03                                               .
type.interface {} t=8 dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.03+0
	rel 40+4 t=5 type..namedata.*interface {}.+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}. t=8 dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}.+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} t=8 dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}.+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}. t=8 dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 00 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}.+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} t=8 dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.03+0
	rel 40+4 t=5 type..namedata.*[1]interface {}.+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
type..namedata.*[]int. t=8 dupok size=9
	0x0000 00 00 06 2a 5b 5d 69 6e 74                       ...*[]int
type.*[]int t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1b 31 52 88 00 08 08 36 00 00 00 00 00 00 00 00  .1R....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int.+0
	rel 48+8 t=1 type.[]int+0
type.[]int t=8 dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8e 66 f9 1b 02 08 08 17 00 00 00 00 00 00 00 00  .f..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int.+0
	rel 44+4 t=6 type.*[]int+0
	rel 48+8 t=1 type.int+0
type..hashfunc40 t=8 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	rel 0+8 t=1 runtime.memhash_varlen+0
type..eqfunc40 t=8 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	rel 0+8 t=1 runtime.memequal_varlen+0
type..alg40 t=8 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc40+0
	rel 8+8 t=1 type..eqfunc40+0
type..namedata.*[5]int. t=8 dupok size=10
	0x0000 00 00 07 2a 5b 35 5d 69 6e 74                    ...*[5]int
type.*[5]int t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7f 3e c9 04 00 08 08 36 00 00 00 00 00 00 00 00  .>.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[5]int.+0
	rel 48+8 t=1 type.[5]int+0
type.[5]int t=8 dupok size=72
	0x0000 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  (...............
	0x0010 9f 12 55 0a 02 08 08 91 00 00 00 00 00 00 00 00  ..U.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 05 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg40+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[5]int.+0
	rel 44+4 t=6 type.*[5]int+0
	rel 48+8 t=1 type.int+0
	rel 56+8 t=1 type.[]int+0
gclocals·d4dc2f11db048877dbc0f60a22b4adb3 t=8 dupok size=9
	0x0000 01 00 00 00 03 00 00 00 01                       .........
go.info.type..hash.[2]interface {} t=45 dupok size=109
	0x0000 02 74 79 70 65 2e 2e 68 61 73 68 2e 5b 32 5d 69  .type..hash.[2]i
	0x0010 6e 74 65 72 66 61 63 65 20 7b 7d 00 00 00 00 00  nterface {}.....
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 01 04 69 00  ..............i.
	0x0030 04 9c 11 68 22 00 00 00 00 00 00 00 00 05 70 00  ...h".........p.
	0x0040 01 9c 00 00 00 00 00 00 00 00 05 68 00 04 9c 11  ...........h....
	0x0050 08 22 00 00 00 00 00 00 00 00 05 7e 72 32 00 04  .".........~r2..
	0x0060 9c 11 10 22 00 00 00 00 00 00 00 00 00           ...".........
	rel 28+8 t=1 type..hash.[2]interface {}+0
	rel 36+8 t=1 type..hash.[2]interface {}+126
	rel 53+8 t=28 go.info.int+0
	rel 66+8 t=28 go.info.*[2]interface {}+0
	rel 82+8 t=28 go.info.uintptr+0
	rel 100+8 t=28 go.info.uintptr+0
gclocals·8f9cec06d1ae35cc9900c511c5e4bdab t=8 dupok size=9
	0x0000 01 00 00 00 03 00 00 00 03                       .........
go.info.type..eq.[2]interface {} t=45 dupok size=107
	0x0000 02 74 79 70 65 2e 2e 65 71 2e 5b 32 5d 69 6e 74  .type..eq.[2]int
	0x0010 65 72 66 61 63 65 20 7b 7d 00 00 00 00 00 00 00  erface {}.......
	0x0020 00 00 00 00 00 00 00 00 00 00 01 04 69 00 04 9c  ............i...
	0x0030 11 68 22 00 00 00 00 00 00 00 00 05 70 00 01 9c  .h".........p...
	0x0040 00 00 00 00 00 00 00 00 05 71 00 04 9c 11 08 22  .........q....."
	0x0050 00 00 00 00 00 00 00 00 05 7e 72 32 00 04 9c 11  .........~r2....
	0x0060 10 22 00 00 00 00 00 00 00 00 00                 .".........
	rel 26+8 t=1 type..eq.[2]interface {}+0
	rel 34+8 t=1 type..eq.[2]interface {}+183
	rel 51+8 t=28 go.info.int+0
	rel 64+8 t=28 go.info.*[2]interface {}+0
	rel 80+8 t=28 go.info.*[2]interface {}+0
	rel 98+8 t=28 go.info.bool+0
type..hashfunc.[2]interface {} t=8 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash.[2]interface {}+0
type..eqfunc.[2]interface {} t=8 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq.[2]interface {}+0
type..alg.[2]interface {} t=8 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc.[2]interface {}+0
	rel 8+8 t=1 type..eqfunc.[2]interface {}+0
type..namedata.**[2]interface {}. t=8 dupok size=20
	0x0000 00 00 11 2a 2a 5b 32 5d 69 6e 74 65 72 66 61 63  ...**[2]interfac
	0x0010 65 20 7b 7d                                      e {}
type.**[2]interface {} t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 17 95 86 56 00 08 08 36 00 00 00 00 00 00 00 00  ...V...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.**[2]interface {}.+0
	rel 48+8 t=1 type.*[2]interface {}+0
type..namedata.*[2]interface {}. t=8 dupok size=19
	0x0000 00 00 10 2a 5b 32 5d 69 6e 74 65 72 66 61 63 65  ...*[2]interface
	0x0010 20 7b 7d                                          {}
type.*[2]interface {} t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 be 73 2d 71 00 08 08 36 00 00 00 00 00 00 00 00  .s-q...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[2]interface {}.+0
	rel 44+4 t=6 type.**[2]interface {}+0
	rel 48+8 t=1 type.[2]interface {}+0
runtime.gcbits.0f t=8 dupok size=1
	0x0000 0f                                               .
type.[2]interface {} t=8 dupok size=72
	0x0000 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00   ....... .......
	0x0010 2c 59 a4 f1 02 08 08 11 00 00 00 00 00 00 00 00  ,Y..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg.[2]interface {}+0
	rel 32+8 t=1 runtime.gcbits.0f+0
	rel 40+4 t=5 type..namedata.*[2]interface {}.+0
	rel 44+4 t=6 type.*[2]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
type..importpath.fmt. t=8 dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
