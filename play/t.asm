"".Add t=1 size=19 args=0x18 locals=0x0
	0x0000 00000 (mai.go:15)	TEXT	"".Add(SB), $0-24
	0x0000 00000 (mai.go:15)	FUNCDATA	$0, gclocals·54241e171da8af6ae173d69da0236748(SB)
	0x0000 00000 (mai.go:15)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (mai.go:16)	MOVQ	"".y+16(FP), AX
	0x0005 00005 (mai.go:16)	MOVQ	"".x+8(FP), CX
	0x000a 00010 (mai.go:16)	ADDQ	CX, AX
	0x000d 00013 (mai.go:16)	MOVQ	AX, "".~r2+24(FP)
	0x0012 00018 (mai.go:16)	RET
	0x0000 48 8b 44 24 10 48 8b 4c 24 08 48 01 c8 48 89 44  H.D$.H.L$.H..H.D
	0x0010 24 18 c3                                         $..
"".main t=1 size=750 args=0x0 locals=0xd0
	0x0000 00000 (mai.go:19)	TEXT	"".main(SB), $208-0
	0x0000 00000 (mai.go:19)	MOVQ	TLS, CX
	0x0009 00009 (mai.go:19)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (mai.go:19)	LEAQ	-80(SP), AX
	0x0015 00021 (mai.go:19)	CMPQ	AX, 16(CX)
	0x0019 00025 (mai.go:19)	JLS	740
	0x001f 00031 (mai.go:19)	SUBQ	$208, SP
	0x0026 00038 (mai.go:19)	MOVQ	BP, 200(SP)
	0x002e 00046 (mai.go:19)	LEAQ	200(SP), BP
	0x0036 00054 (mai.go:19)	FUNCDATA	$0, gclocals·f14a5bc6d08bc46424827f54d2e3f8ed(SB)
	0x0036 00054 (mai.go:19)	FUNCDATA	$1, gclocals·e18f1f5d3d7973c5e1eeef1610fa9aad(SB)
	0x0036 00054 (mai.go:20)	MOVQ	$2, (SP)
	0x003e 00062 (mai.go:20)	MOVQ	$3, 8(SP)
	0x0047 00071 (mai.go:20)	PCDATA	$0, $0
	0x0047 00071 (mai.go:20)	CALL	"".add(SB)
	0x004c 00076 (mai.go:20)	MOVQ	16(SP), AX
	0x0051 00081 (mai.go:20)	MOVQ	24(SP), CX
	0x0056 00086 (mai.go:21)	MOVQ	AX, ""..autotmp_1+88(SP)
	0x005b 00091 (mai.go:21)	MOVQ	CX, ""..autotmp_2+80(SP)
	0x0060 00096 (mai.go:21)	MOVQ	$0, ""..autotmp_0+168(SP)
	0x006c 00108 (mai.go:21)	MOVQ	$0, ""..autotmp_0+176(SP)
	0x0078 00120 (mai.go:21)	MOVQ	$0, ""..autotmp_0+184(SP)
	0x0084 00132 (mai.go:21)	MOVQ	$0, ""..autotmp_0+192(SP)
	0x0090 00144 (mai.go:21)	LEAQ	type.int64(SB), AX
	0x0097 00151 (mai.go:21)	MOVQ	AX, (SP)
	0x009b 00155 (mai.go:21)	LEAQ	""..autotmp_1+88(SP), CX
	0x00a0 00160 (mai.go:21)	MOVQ	CX, 8(SP)
	0x00a5 00165 (mai.go:21)	PCDATA	$0, $1
	0x00a5 00165 (mai.go:21)	CALL	runtime.convT2E(SB)
	0x00aa 00170 (mai.go:21)	MOVQ	16(SP), AX
	0x00af 00175 (mai.go:21)	MOVQ	24(SP), CX
	0x00b4 00180 (mai.go:21)	MOVQ	AX, ""..autotmp_0+168(SP)
	0x00bc 00188 (mai.go:21)	MOVQ	CX, ""..autotmp_0+176(SP)
	0x00c4 00196 (mai.go:21)	LEAQ	type.int64(SB), AX
	0x00cb 00203 (mai.go:21)	MOVQ	AX, (SP)
	0x00cf 00207 (mai.go:21)	LEAQ	""..autotmp_2+80(SP), CX
	0x00d4 00212 (mai.go:21)	MOVQ	CX, 8(SP)
	0x00d9 00217 (mai.go:21)	PCDATA	$0, $1
	0x00d9 00217 (mai.go:21)	CALL	runtime.convT2E(SB)
	0x00de 00222 (mai.go:21)	MOVQ	24(SP), AX
	0x00e3 00227 (mai.go:21)	MOVQ	16(SP), CX
	0x00e8 00232 (mai.go:21)	MOVQ	CX, ""..autotmp_0+184(SP)
	0x00f0 00240 (mai.go:21)	MOVQ	AX, ""..autotmp_0+192(SP)
	0x00f8 00248 (mai.go:21)	LEAQ	""..autotmp_0+168(SP), AX
	0x0100 00256 (mai.go:21)	MOVQ	AX, (SP)
	0x0104 00260 (mai.go:21)	MOVQ	$2, 8(SP)
	0x010d 00269 (mai.go:21)	MOVQ	$2, 16(SP)
	0x0116 00278 (mai.go:21)	PCDATA	$0, $1
	0x0116 00278 (mai.go:21)	CALL	fmt.Println(SB)
	0x011b 00283 (mai.go:23)	LEAQ	type."".tmp(SB), AX
	0x0122 00290 (mai.go:23)	MOVQ	AX, (SP)
	0x0126 00294 (mai.go:23)	PCDATA	$0, $0
	0x0126 00294 (mai.go:23)	CALL	runtime.newobject(SB)
	0x012b 00299 (mai.go:23)	MOVQ	8(SP), AX
	0x0130 00304 (mai.go:23)	MOVQ	AX, "".t1+96(SP)
	0x0135 00309 (mai.go:23)	MOVQ	$2, (AX)
	0x013c 00316 (mai.go:24)	MOVQ	$0, ""..autotmp_3+120(SP)
	0x0145 00325 (mai.go:24)	MOVQ	$0, ""..autotmp_3+128(SP)
	0x0151 00337 (mai.go:24)	LEAQ	type.*"".tmp(SB), CX
	0x0158 00344 (mai.go:24)	MOVQ	CX, ""..autotmp_3+120(SP)
	0x015d 00349 (mai.go:24)	MOVQ	AX, ""..autotmp_3+128(SP)
	0x0165 00357 (mai.go:24)	LEAQ	go.string."%p\n"(SB), DX
	0x016c 00364 (mai.go:24)	MOVQ	DX, (SP)
	0x0170 00368 (mai.go:24)	MOVQ	$3, 8(SP)
	0x0179 00377 (mai.go:24)	LEAQ	""..autotmp_3+120(SP), DX
	0x017e 00382 (mai.go:24)	MOVQ	DX, 16(SP)
	0x0183 00387 (mai.go:24)	MOVQ	$1, 24(SP)
	0x018c 00396 (mai.go:24)	MOVQ	$1, 32(SP)
	0x0195 00405 (mai.go:24)	PCDATA	$0, $2
	0x0195 00405 (mai.go:24)	CALL	fmt.Printf(SB)
	0x019a 00410 (mai.go:25)	MOVQ	"".t1+96(SP), AX
	0x019f 00415 (mai.go:25)	MOVQ	AX, (SP)
	0x01a3 00419 (mai.go:25)	PCDATA	$0, $3
	0x01a3 00419 (mai.go:25)	CALL	"".get(SB)
	0x01a8 00424 (mai.go:25)	MOVQ	8(SP), AX
	0x01ad 00429 (mai.go:25)	MOVQ	16(SP), CX
	0x01b2 00434 (mai.go:26)	MOVQ	AX, ""..autotmp_6+72(SP)
	0x01b7 00439 (mai.go:26)	MOVQ	CX, ""..autotmp_7+64(SP)
	0x01bc 00444 (mai.go:26)	MOVQ	$0, ""..autotmp_5+136(SP)
	0x01c8 00456 (mai.go:26)	MOVQ	$0, ""..autotmp_5+144(SP)
	0x01d4 00468 (mai.go:26)	MOVQ	$0, ""..autotmp_5+152(SP)
	0x01e0 00480 (mai.go:26)	MOVQ	$0, ""..autotmp_5+160(SP)
	0x01ec 00492 (mai.go:21)	LEAQ	type.int64(SB), AX
	0x01f3 00499 (mai.go:26)	MOVQ	AX, (SP)
	0x01f7 00503 (mai.go:26)	LEAQ	""..autotmp_6+72(SP), CX
	0x01fc 00508 (mai.go:26)	MOVQ	CX, 8(SP)
	0x0201 00513 (mai.go:26)	PCDATA	$0, $4
	0x0201 00513 (mai.go:26)	CALL	runtime.convT2E(SB)
	0x0206 00518 (mai.go:26)	MOVQ	24(SP), AX
	0x020b 00523 (mai.go:26)	MOVQ	16(SP), CX
	0x0210 00528 (mai.go:26)	MOVQ	CX, ""..autotmp_5+136(SP)
	0x0218 00536 (mai.go:26)	MOVQ	AX, ""..autotmp_5+144(SP)
	0x0220 00544 (mai.go:21)	LEAQ	type.int64(SB), AX
	0x0227 00551 (mai.go:26)	MOVQ	AX, (SP)
	0x022b 00555 (mai.go:26)	LEAQ	""..autotmp_7+64(SP), AX
	0x0230 00560 (mai.go:26)	MOVQ	AX, 8(SP)
	0x0235 00565 (mai.go:26)	PCDATA	$0, $4
	0x0235 00565 (mai.go:26)	CALL	runtime.convT2E(SB)
	0x023a 00570 (mai.go:26)	MOVQ	24(SP), AX
	0x023f 00575 (mai.go:26)	MOVQ	16(SP), CX
	0x0244 00580 (mai.go:26)	MOVQ	CX, ""..autotmp_5+152(SP)
	0x024c 00588 (mai.go:26)	MOVQ	AX, ""..autotmp_5+160(SP)
	0x0254 00596 (mai.go:26)	LEAQ	go.string."0x%x, %x\n"(SB), AX
	0x025b 00603 (mai.go:26)	MOVQ	AX, (SP)
	0x025f 00607 (mai.go:26)	MOVQ	$9, 8(SP)
	0x0268 00616 (mai.go:26)	LEAQ	""..autotmp_5+136(SP), AX
	0x0270 00624 (mai.go:26)	MOVQ	AX, 16(SP)
	0x0275 00629 (mai.go:26)	MOVQ	$2, 24(SP)
	0x027e 00638 (mai.go:26)	MOVQ	$2, 32(SP)
	0x0287 00647 (mai.go:26)	PCDATA	$0, $4
	0x0287 00647 (mai.go:26)	CALL	fmt.Printf(SB)
	0x028c 00652 (mai.go:27)	MOVQ	$0, ""..autotmp_8+104(SP)
	0x0295 00661 (mai.go:27)	MOVQ	$0, ""..autotmp_8+112(SP)
	0x029e 00670 (mai.go:24)	LEAQ	type.*"".tmp(SB), AX
	0x02a5 00677 (mai.go:27)	MOVQ	AX, ""..autotmp_8+104(SP)
	0x02aa 00682 (mai.go:27)	MOVQ	"".t1+96(SP), AX
	0x02af 00687 (mai.go:27)	MOVQ	AX, ""..autotmp_8+112(SP)
	0x02b4 00692 (mai.go:27)	LEAQ	""..autotmp_8+104(SP), AX
	0x02b9 00697 (mai.go:27)	MOVQ	AX, (SP)
	0x02bd 00701 (mai.go:27)	MOVQ	$1, 8(SP)
	0x02c6 00710 (mai.go:27)	MOVQ	$1, 16(SP)
	0x02cf 00719 (mai.go:27)	PCDATA	$0, $5
	0x02cf 00719 (mai.go:27)	CALL	fmt.Println(SB)
	0x02d4 00724 (mai.go:28)	MOVQ	200(SP), BP
	0x02dc 00732 (mai.go:28)	ADDQ	$208, SP
	0x02e3 00739 (mai.go:28)	RET
	0x02e4 00740 (mai.go:28)	NOP
	0x02e4 00740 (mai.go:19)	PCDATA	$0, $-1
	0x02e4 00740 (mai.go:19)	CALL	runtime.morestack_noctxt(SB)
	0x02e9 00745 (mai.go:19)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 8d 44 24 b0 48 3b 41 10 0f 86 c5 02 00 00 48  H.D$.H;A.......H
	0x0020 81 ec d0 00 00 00 48 89 ac 24 c8 00 00 00 48 8d  ......H..$....H.
	0x0030 ac 24 c8 00 00 00 48 c7 04 24 02 00 00 00 48 c7  .$....H..$....H.
	0x0040 44 24 08 03 00 00 00 e8 00 00 00 00 48 8b 44 24  D$..........H.D$
	0x0050 10 48 8b 4c 24 18 48 89 44 24 58 48 89 4c 24 50  .H.L$.H.D$XH.L$P
	0x0060 48 c7 84 24 a8 00 00 00 00 00 00 00 48 c7 84 24  H..$........H..$
	0x0070 b0 00 00 00 00 00 00 00 48 c7 84 24 b8 00 00 00  ........H..$....
	0x0080 00 00 00 00 48 c7 84 24 c0 00 00 00 00 00 00 00  ....H..$........
	0x0090 48 8d 05 00 00 00 00 48 89 04 24 48 8d 4c 24 58  H......H..$H.L$X
	0x00a0 48 89 4c 24 08 e8 00 00 00 00 48 8b 44 24 10 48  H.L$......H.D$.H
	0x00b0 8b 4c 24 18 48 89 84 24 a8 00 00 00 48 89 8c 24  .L$.H..$....H..$
	0x00c0 b0 00 00 00 48 8d 05 00 00 00 00 48 89 04 24 48  ....H......H..$H
	0x00d0 8d 4c 24 50 48 89 4c 24 08 e8 00 00 00 00 48 8b  .L$PH.L$......H.
	0x00e0 44 24 18 48 8b 4c 24 10 48 89 8c 24 b8 00 00 00  D$.H.L$.H..$....
	0x00f0 48 89 84 24 c0 00 00 00 48 8d 84 24 a8 00 00 00  H..$....H..$....
	0x0100 48 89 04 24 48 c7 44 24 08 02 00 00 00 48 c7 44  H..$H.D$.....H.D
	0x0110 24 10 02 00 00 00 e8 00 00 00 00 48 8d 05 00 00  $..........H....
	0x0120 00 00 48 89 04 24 e8 00 00 00 00 48 8b 44 24 08  ..H..$.....H.D$.
	0x0130 48 89 44 24 60 48 c7 00 02 00 00 00 48 c7 44 24  H.D$`H......H.D$
	0x0140 78 00 00 00 00 48 c7 84 24 80 00 00 00 00 00 00  x....H..$.......
	0x0150 00 48 8d 0d 00 00 00 00 48 89 4c 24 78 48 89 84  .H......H.L$xH..
	0x0160 24 80 00 00 00 48 8d 15 00 00 00 00 48 89 14 24  $....H......H..$
	0x0170 48 c7 44 24 08 03 00 00 00 48 8d 54 24 78 48 89  H.D$.....H.T$xH.
	0x0180 54 24 10 48 c7 44 24 18 01 00 00 00 48 c7 44 24  T$.H.D$.....H.D$
	0x0190 20 01 00 00 00 e8 00 00 00 00 48 8b 44 24 60 48   .........H.D$`H
	0x01a0 89 04 24 e8 00 00 00 00 48 8b 44 24 08 48 8b 4c  ..$.....H.D$.H.L
	0x01b0 24 10 48 89 44 24 48 48 89 4c 24 40 48 c7 84 24  $.H.D$HH.L$@H..$
	0x01c0 88 00 00 00 00 00 00 00 48 c7 84 24 90 00 00 00  ........H..$....
	0x01d0 00 00 00 00 48 c7 84 24 98 00 00 00 00 00 00 00  ....H..$........
	0x01e0 48 c7 84 24 a0 00 00 00 00 00 00 00 48 8d 05 00  H..$........H...
	0x01f0 00 00 00 48 89 04 24 48 8d 4c 24 48 48 89 4c 24  ...H..$H.L$HH.L$
	0x0200 08 e8 00 00 00 00 48 8b 44 24 18 48 8b 4c 24 10  ......H.D$.H.L$.
	0x0210 48 89 8c 24 88 00 00 00 48 89 84 24 90 00 00 00  H..$....H..$....
	0x0220 48 8d 05 00 00 00 00 48 89 04 24 48 8d 44 24 40  H......H..$H.D$@
	0x0230 48 89 44 24 08 e8 00 00 00 00 48 8b 44 24 18 48  H.D$......H.D$.H
	0x0240 8b 4c 24 10 48 89 8c 24 98 00 00 00 48 89 84 24  .L$.H..$....H..$
	0x0250 a0 00 00 00 48 8d 05 00 00 00 00 48 89 04 24 48  ....H......H..$H
	0x0260 c7 44 24 08 09 00 00 00 48 8d 84 24 88 00 00 00  .D$.....H..$....
	0x0270 48 89 44 24 10 48 c7 44 24 18 02 00 00 00 48 c7  H.D$.H.D$.....H.
	0x0280 44 24 20 02 00 00 00 e8 00 00 00 00 48 c7 44 24  D$ .........H.D$
	0x0290 68 00 00 00 00 48 c7 44 24 70 00 00 00 00 48 8d  h....H.D$p....H.
	0x02a0 05 00 00 00 00 48 89 44 24 68 48 8b 44 24 60 48  .....H.D$hH.D$`H
	0x02b0 89 44 24 70 48 8d 44 24 68 48 89 04 24 48 c7 44  .D$pH.D$hH..$H.D
	0x02c0 24 08 01 00 00 00 48 c7 44 24 10 01 00 00 00 e8  $.....H.D$......
	0x02d0 00 00 00 00 48 8b ac 24 c8 00 00 00 48 81 c4 d0  ....H..$....H...
	0x02e0 00 00 00 c3 e8 00 00 00 00 e9 12 fd ff ff        ..............
	rel 12+4 t=16 TLS+0
	rel 72+4 t=8 "".add+0
	rel 147+4 t=15 type.int64+0
	rel 166+4 t=8 runtime.convT2E+0
	rel 199+4 t=15 type.int64+0
	rel 218+4 t=8 runtime.convT2E+0
	rel 279+4 t=8 fmt.Println+0
	rel 286+4 t=15 type."".tmp+0
	rel 295+4 t=8 runtime.newobject+0
	rel 340+4 t=15 type.*"".tmp+0
	rel 360+4 t=15 go.string."%p\n"+0
	rel 406+4 t=8 fmt.Printf+0
	rel 420+4 t=8 "".get+0
	rel 495+4 t=15 type.int64+0
	rel 514+4 t=8 runtime.convT2E+0
	rel 547+4 t=15 type.int64+0
	rel 566+4 t=8 runtime.convT2E+0
	rel 599+4 t=15 go.string."0x%x, %x\n"+0
	rel 648+4 t=8 fmt.Printf+0
	rel 673+4 t=15 type.*"".tmp+0
	rel 720+4 t=8 fmt.Println+0
	rel 741+4 t=8 runtime.morestack_noctxt+0
"".init t=1 size=98 args=0x0 locals=0x8
	0x0000 00000 (mai.go:29)	TEXT	"".init(SB), $8-0
	0x0000 00000 (mai.go:29)	MOVQ	TLS, CX
	0x0009 00009 (mai.go:29)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (mai.go:29)	CMPQ	SP, 16(CX)
	0x0014 00020 (mai.go:29)	JLS	91
	0x0016 00022 (mai.go:29)	SUBQ	$8, SP
	0x001a 00026 (mai.go:29)	MOVQ	BP, (SP)
	0x001e 00030 (mai.go:29)	LEAQ	(SP), BP
	0x0022 00034 (mai.go:29)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0022 00034 (mai.go:29)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0022 00034 (mai.go:29)	MOVBLZX	"".initdone·(SB), AX
	0x0029 00041 (mai.go:29)	CMPB	AL, $1
	0x002b 00043 (mai.go:29)	JLS	$0, 54
	0x002d 00045 (mai.go:29)	MOVQ	(SP), BP
	0x0031 00049 (mai.go:29)	ADDQ	$8, SP
	0x0035 00053 (mai.go:29)	RET
	0x0036 00054 (mai.go:29)	JNE	$0, 63
	0x0038 00056 (mai.go:29)	PCDATA	$0, $0
	0x0038 00056 (mai.go:29)	CALL	runtime.throwinit(SB)
	0x003d 00061 (mai.go:29)	UNDEF
	0x003f 00063 (mai.go:29)	MOVB	$1, "".initdone·(SB)
	0x0046 00070 (mai.go:29)	PCDATA	$0, $0
	0x0046 00070 (mai.go:29)	CALL	fmt.init(SB)
	0x004b 00075 (mai.go:29)	MOVB	$2, "".initdone·(SB)
	0x0052 00082 (mai.go:29)	MOVQ	(SP), BP
	0x0056 00086 (mai.go:29)	ADDQ	$8, SP
	0x005a 00090 (mai.go:29)	RET
	0x005b 00091 (mai.go:29)	NOP
	0x005b 00091 (mai.go:29)	PCDATA	$0, $-1
	0x005b 00091 (mai.go:29)	CALL	runtime.morestack_noctxt(SB)
	0x0060 00096 (mai.go:29)	JMP	0
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
	0x0000 00000 (mai.go:1)	TEXT	type..hash.[2]interface {}(SB), $40-24
	0x0000 00000 (mai.go:1)	MOVQ	TLS, CX
	0x0009 00009 (mai.go:1)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (mai.go:1)	CMPQ	SP, 16(CX)
	0x0014 00020 (mai.go:1)	JLS	119
	0x0016 00022 (mai.go:1)	SUBQ	$40, SP
	0x001a 00026 (mai.go:1)	MOVQ	BP, 32(SP)
	0x001f 00031 (mai.go:1)	LEAQ	32(SP), BP
	0x0024 00036 (mai.go:1)	FUNCDATA	$0, gclocals·d4dc2f11db048877dbc0f60a22b4adb3(SB)
	0x0024 00036 (mai.go:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0024 00036 (mai.go:1)	MOVQ	$0, AX
	0x0026 00038 (mai.go:1)	MOVQ	"".h+56(FP), CX
	0x002b 00043 (mai.go:1)	MOVQ	AX, "".i+24(SP)
	0x0030 00048 (mai.go:1)	CMPQ	AX, $2
	0x0034 00052 (mai.go:1)	JGE	$0, 104
	0x0036 00054 (mai.go:1)	SHLQ	$4, AX
	0x003a 00058 (mai.go:1)	MOVQ	"".p+48(FP), BX
	0x003f 00063 (mai.go:1)	ADDQ	BX, AX
	0x0042 00066 (mai.go:1)	MOVQ	AX, (SP)
	0x0046 00070 (mai.go:1)	MOVQ	CX, 8(SP)
	0x004b 00075 (mai.go:1)	PCDATA	$0, $0
	0x004b 00075 (mai.go:1)	CALL	runtime.nilinterhash(SB)
	0x0050 00080 (mai.go:1)	MOVQ	16(SP), CX
	0x0055 00085 (mai.go:1)	MOVQ	"".i+24(SP), AX
	0x005a 00090 (mai.go:1)	INCQ	AX
	0x005d 00093 (mai.go:1)	MOVQ	AX, "".i+24(SP)
	0x0062 00098 (mai.go:1)	CMPQ	AX, $2
	0x0066 00102 (mai.go:1)	JLT	$0, 54
	0x0068 00104 (mai.go:1)	MOVQ	CX, "".~r2+64(FP)
	0x006d 00109 (mai.go:1)	MOVQ	32(SP), BP
	0x0072 00114 (mai.go:1)	ADDQ	$40, SP
	0x0076 00118 (mai.go:1)	RET
	0x0077 00119 (mai.go:1)	NOP
	0x0077 00119 (mai.go:1)	PCDATA	$0, $-1
	0x0077 00119 (mai.go:1)	CALL	runtime.morestack_noctxt(SB)
	0x007c 00124 (mai.go:1)	JMP	0
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
	0x0000 00000 (mai.go:1)	TEXT	type..eq.[2]interface {}(SB), $56-24
	0x0000 00000 (mai.go:1)	MOVQ	TLS, CX
	0x0009 00009 (mai.go:1)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (mai.go:1)	CMPQ	SP, 16(CX)
	0x0014 00020 (mai.go:1)	JLS	173
	0x001a 00026 (mai.go:1)	SUBQ	$56, SP
	0x001e 00030 (mai.go:1)	MOVQ	BP, 48(SP)
	0x0023 00035 (mai.go:1)	LEAQ	48(SP), BP
	0x0028 00040 (mai.go:1)	FUNCDATA	$0, gclocals·8f9cec06d1ae35cc9900c511c5e4bdab(SB)
	0x0028 00040 (mai.go:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0028 00040 (mai.go:1)	MOVQ	$0, AX
	0x002a 00042 (mai.go:1)	MOVQ	AX, "".i+40(SP)
	0x002f 00047 (mai.go:1)	CMPQ	AX, $2
	0x0033 00051 (mai.go:1)	JGE	$0, 143
	0x0035 00053 (mai.go:1)	SHLQ	$4, AX
	0x0039 00057 (mai.go:1)	MOVQ	"".p+64(FP), DX
	0x003e 00062 (mai.go:1)	MOVQ	8(DX)(AX*1), BX
	0x0043 00067 (mai.go:1)	MOVQ	(DX)(AX*1), SI
	0x0047 00071 (mai.go:1)	MOVQ	"".q+72(FP), DI
	0x004c 00076 (mai.go:1)	MOVQ	8(DI)(AX*1), R8
	0x0051 00081 (mai.go:1)	MOVQ	(DI)(AX*1), AX
	0x0055 00085 (mai.go:1)	CMPQ	SI, AX
	0x0058 00088 (mai.go:1)	JNE	$0, 158
	0x005a 00090 (mai.go:1)	MOVQ	SI, (SP)
	0x005e 00094 (mai.go:1)	MOVQ	BX, 8(SP)
	0x0063 00099 (mai.go:1)	MOVQ	AX, 16(SP)
	0x0068 00104 (mai.go:1)	MOVQ	R8, 24(SP)
	0x006d 00109 (mai.go:1)	PCDATA	$0, $0
	0x006d 00109 (mai.go:1)	CALL	runtime.efaceeq(SB)
	0x0072 00114 (mai.go:1)	MOVBLZX	32(SP), AX
	0x0077 00119 (mai.go:1)	TESTB	AL, AL
	0x0079 00121 (mai.go:1)	JEQ	$0, 158
	0x007b 00123 (mai.go:1)	MOVQ	"".i+40(SP), CX
	0x0080 00128 (mai.go:1)	LEAQ	1(CX), AX
	0x0084 00132 (mai.go:1)	MOVQ	AX, "".i+40(SP)
	0x0089 00137 (mai.go:1)	CMPQ	AX, $2
	0x008d 00141 (mai.go:1)	JLT	$0, 53
	0x008f 00143 (mai.go:1)	MOVB	$1, "".~r2+80(FP)
	0x0094 00148 (mai.go:1)	MOVQ	48(SP), BP
	0x0099 00153 (mai.go:1)	ADDQ	$56, SP
	0x009d 00157 (mai.go:1)	RET
	0x009e 00158 (mai.go:1)	MOVB	$0, "".~r2+80(FP)
	0x00a3 00163 (mai.go:1)	MOVQ	48(SP), BP
	0x00a8 00168 (mai.go:1)	ADDQ	$56, SP
	0x00ac 00172 (mai.go:1)	RET
	0x00ad 00173 (mai.go:1)	NOP
	0x00ad 00173 (mai.go:1)	PCDATA	$0, $-1
	0x00ad 00173 (mai.go:1)	CALL	runtime.morestack_noctxt(SB)
	0x00b2 00178 (mai.go:1)	JMP	0
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
"".get.args_stackmap t=8 size=10
	0x0000 02 00 00 00 06 00 00 00 01 01                    ..........
"".add.args_stackmap t=8 size=10
	0x0000 02 00 00 00 08 00 00 00 00 00                    ..........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=8 dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·54241e171da8af6ae173d69da0236748 t=8 dupok size=9
	0x0000 01 00 00 00 03 00 00 00 00                       .........
go.info."".Add t=45 size=73
	0x0000 02 22 22 2e 41 64 64 00 00 00 00 00 00 00 00 00  ."".Add.........
	0x0010 00 00 00 00 00 00 00 00 01 05 78 00 01 9c 00 00  ..........x.....
	0x0020 00 00 00 00 00 00 05 79 00 04 9c 11 08 22 00 00  .......y....."..
	0x0030 00 00 00 00 00 00 05 7e 72 32 00 04 9c 11 10 22  .......~r2....."
	0x0040 00 00 00 00 00 00 00 00 00                       .........
	rel 8+8 t=1 "".Add+0
	rel 16+8 t=1 "".Add+19
	rel 30+8 t=28 go.info.int64+0
	rel 46+8 t=28 go.info.int64+0
	rel 64+8 t=28 go.info.int64+0
go.string."%p\n" t=8 dupok size=3
	0x0000 25 70 0a                                         %p.
go.string."0x%x, %x\n" t=8 dupok size=9
	0x0000 30 78 25 78 2c 20 25 78 0a                       0x%x, %x.
gclocals·e18f1f5d3d7973c5e1eeef1610fa9aad t=8 dupok size=20
	0x0000 06 00 00 00 0d 00 00 00 00 00 00 1e 19 00 01 00  ................
	0x0010 e1 01 06 00                                      ....
gclocals·f14a5bc6d08bc46424827f54d2e3f8ed t=8 dupok size=8
	0x0000 06 00 00 00 00 00 00 00                          ........
go.info."".main t=45 size=45
	0x0000 02 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 04 74 31 00 05 9c  ...........t1...
	0x0020 11 88 7f 22 00 00 00 00 00 00 00 00 00           ...".........
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+750
	rel 36+8 t=28 go.info.*"".tmp+0
go.info."".init t=45 size=27
	0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 00                 ...........
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+98
"".initdone· t=32 size=1
runtime.gcbits.01 t=8 dupok size=1
	0x0000 01                                               .
type..namedata.**main.tmp. t=8 dupok size=13
	0x0000 00 00 0a 2a 2a 6d 61 69 6e 2e 74 6d 70           ...**main.tmp
type.**"".tmp t=8 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 90 a2 1c 1c 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.**main.tmp.+0
	rel 48+8 t=1 type.*"".tmp+0
type..namedata.*main.tmp. t=8 dupok size=12
	0x0000 00 00 09 2a 6d 61 69 6e 2e 74 6d 70              ...*main.tmp
type.*"".tmp t=8 size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 6a 45 b6 fc 00 08 08 36 00 00 00 00 00 00 00 00  jE.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.tmp.+0
	rel 44+4 t=6 type.**"".tmp+0
	rel 48+8 t=1 type."".tmp+0
runtime.gcbits. t=8 dupok size=0
type..namedata.a. t=8 dupok size=4
	0x0000 00 00 01 61                                      ...a
type."".tmp t=8 size=120
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 a4 2b 94 b3 07 08 08 99 00 00 00 00 00 00 00 00  .+..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.tmp.+0
	rel 44+4 t=5 type.*"".tmp+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".tmp+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.a.+0
	rel 104+8 t=1 type.uintptr+0
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
type..importpath.fmt. t=8 dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
