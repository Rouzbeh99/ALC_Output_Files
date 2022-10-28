	.text
	.file	"tsvc-functions.c"
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" "s253/tsvc-functions.c" md5 0x612b3dc8754b54849135995eb8ec64b9
	.file	1 "s253" "common.h" md5 0x5ffc4849a08971f3312fdcdd05f02549
	.file	2 "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits" "types.h" md5 0xf6304b1a6dcfc6bee76e9a51043b5090
	.file	3 "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types" "struct_timeval.h" md5 0x7798c68081a8161421218378689a8d48
	.globl	s253                            // -- Begin function s253
	.p2align	2
	.type	s253,@function
s253:                                   // @s253
.Lfunc_begin0:
	.loc	0 29 0                          // s253/tsvc-functions.c:29:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: s253:func_args <- $x0
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	addvl	sp, sp, #-1
	sub	sp, sp, #48
	mov	x19, x0
.Ltmp0:
	//DEBUG_VALUE: s253:func_args <- $x19
	//DEBUG_VALUE: s253:func_args <- $x19
	.loc	0 34 5 prologue_end             // s253/tsvc-functions.c:34:5
	adrp	x0, .L__func__.s253
	add	x0, x0, :lo12:.L__func__.s253
	bl	initialise_arrays
.Ltmp1:
	.loc	0 35 5                          // s253/tsvc-functions.c:35:5
	mov	x0, x19
	mov	x1, xzr
	str	x19, [sp, #24]                  // 8-byte Folded Spill
.Ltmp2:
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	bl	gettimeofday
.Ltmp3:
	.loc	0 0 5 is_stmt 0                 // s253/tsvc-functions.c:0:5
	mov	w8, #8192
	cntd	x19
	adrp	x20, c
	add	x20, x20, :lo12:c
	udiv	x9, x8, x19
	adrp	x21, d
	add	x21, x21, :lo12:d
	adrp	x22, b
	add	x22, x22, :lo12:b
	adrp	x23, a
	add	x23, x23, :lo12:a
	mov	x24, x20
	mov	x25, x21
	mov	x26, x22
	mov	x27, x23
	mov	w10, wzr
	//APP
	dmb	sy
	orr	x3, x3, x3

	//NO_APP
	mov	z7.d, x19
	mul	x28, x9, x19
	inch	x24
	inch	x25
	inch	x26
	sub	x8, x8, x28
	inch	x27
	ptrue	p2.d
	ptrue	p3.d, vl2
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	str	z7, [x29, #-1, mul vl]          // 16-byte Folded Spill
	b	.LBB0_2
.Ltmp4:
.LBB0_1:                                // %for.cond.cleanup4
                                        //   in Loop: Header=BB0_2 Depth=1
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	0 47 9 is_stmt 1                // s253/tsvc-functions.c:47:9
	mov	x0, x23
	mov	x1, x22
	mov	x2, x20
	mov	x3, x21
	adrp	x4, e
	add	x4, x4, :lo12:e
	adrp	x5, aa
	add	x5, x5, :lo12:aa
	adrp	x6, bb
	add	x6, x6, :lo12:bb
	adrp	x7, cc
	add	x7, x7, :lo12:cc
	str	wzr, [sp]
	bl	dummy
.Ltmp5:
	.loc	0 0 9 is_stmt 0                 // s253/tsvc-functions.c:0:9
	ldr	w10, [sp, #44]                  // 4-byte Folded Reload
	ldr	z7, [x29, #-1, mul vl]          // 16-byte Folded Reload
	ptrue	p2.d
	ptrue	p3.d, vl2
.Ltmp6:
	.loc	0 39 41 is_stmt 1               // s253/tsvc-functions.c:39:41
	add	w10, w10, #1
.Ltmp7:
	//DEBUG_VALUE: nl <- $w10
	.loc	0 39 5 is_stmt 0                // s253/tsvc-functions.c:39:5
	cmp	w10, #10
	b.eq	.LBB0_10
.Ltmp8:
.LBB0_2:                                // %for.cond2.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_4 Depth 2
                                        //     Child Loop BB0_8 Depth 2
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	//DEBUG_VALUE: nl <- $w10
	//DEBUG_VALUE: i <- 0
	.loc	0 0 5                           // s253/tsvc-functions.c:0:5
	mov	x8, xzr
.Ltmp9:
	.loc	0 40 9 is_stmt 1                // s253/tsvc-functions.c:40:9
	cmp	x19, #2, lsl #12                // =8192
	str	w10, [sp, #44]                  // 4-byte Folded Spill
.Ltmp10:
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	b.ls	.LBB0_4
	b	.LBB0_8
.Ltmp11:
.LBB0_3:                                // %linearized
                                        //   in Loop: Header=BB0_4 Depth=2
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	0 0 9 is_stmt 0                 // s253/tsvc-functions.c:0:9
	movprfx	z4, z3
	sxtw	z4.d, p2/m, z3.d
	movprfx	z5, z0
	sxtw	z5.d, p2/m, z0.d
	cmpgt	p0.d, p2/z, z5.d, z4.d
	add	x10, x27, x10
	ld1w	{ z4.d }, p0/z, [x21, x8, lsl #2]
	ld1w	{ z5.d }, p0/z, [x20, x8, lsl #2]
	mls	z0.d, p2/m, z3.d, z4.d
	add	z3.d, z5.d, z0.d
	st1w	{ z3.d }, p0, [x20, x8, lsl #2]
	ld1w	{ z3.d }, p0/z, [x25, x8, lsl #2]
	ld1w	{ z4.d }, p0/z, [x24, x8, lsl #2]
	movprfx	z5, z2
	sxtw	z5.d, p2/m, z2.d
	movprfx	z6, z1
	sxtw	z6.d, p2/m, z1.d
	cmpgt	p1.d, p2/z, z6.d, z5.d
	st1w	{ z0.d }, p0, [x9]
	mls	z1.d, p2/m, z2.d, z3.d
	add	z0.d, z4.d, z1.d
	st1w	{ z1.d }, p1, [x10]
	st1w	{ z0.d }, p1, [x24, x8, lsl #2]
	add	x8, x8, x19
	add	x8, x8, x19
	cmp	x8, x28
	b.hi	.LBB0_6
.Ltmp12:
.LBB0_4:                                // %alc.header
                                        //   Parent Loop BB0_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	ld1sw	{ z0.d }, p2/z, [x23, x8, lsl #2]
	ld1sw	{ z3.d }, p2/z, [x22, x8, lsl #2]
	ld1sw	{ z1.d }, p2/z, [x27, x8, lsl #2]
	ld1sw	{ z2.d }, p2/z, [x26, x8, lsl #2]
.Ltmp13:
	.loc	0 41 24 is_stmt 1               // s253/tsvc-functions.c:41:24
	lsl	x10, x8, #2
	add	x9, x23, x10
	cmpgt	p0.d, p2/z, z0.d, z3.d
	cmpgt	p1.d, p2/z, z1.d, z2.d
	cntp	x12, p3, p0.d
	cntp	x11, p3, p1.d
	add	x11, x12, x11
	cmp	x11, x19
	b.hi	.LBB0_3
.Ltmp14:
// %bb.5:                               // %lane.gather
                                        //   in Loop: Header=BB0_4 Depth=2
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	0 0 24 is_stmt 0                // s253/tsvc-functions.c:0:24
	index	z4.d, x8, #1
	sxtw	z2.d, p2/m, z2.d
	sxtw	z3.d, p2/m, z3.d
	sxtw	z0.d, p2/m, z0.d
	sxtw	z1.d, p2/m, z1.d
	add	z5.d, z4.d, z7.d
	cmpgt	p0.d, p2/z, z0.d, z3.d
	cmpgt	p1.d, p2/z, z1.d, z2.d
	compact	z0.d, p0, z4.d
	compact	z1.d, p1, z5.d
	whilelt	p0.d, xzr, x12
	add	x10, x22, x10
	splice	z0.d, p0, z0.d, z1.d
	whilelt	p0.d, xzr, x11
	ld1w	{ z1.d }, p0/z, [x23, z0.d, lsl #2]
	ld1w	{ z2.d }, p0/z, [x22, z0.d, lsl #2]
	ld1w	{ z3.d }, p0/z, [x21, z0.d, lsl #2]
	ld1w	{ z0.d }, p0/z, [x20, z0.d, lsl #2]
	mls	z1.d, p2/m, z2.d, z3.d
	add	z0.d, z0.d, z1.d
	st1w	{ z1.d }, p0, [x10]
	st1w	{ z0.d }, p0, [x9]
	add	x8, x8, x19
	add	x8, x8, x19
	cmp	x8, x28
	b.ls	.LBB0_4
.Ltmp15:
.LBB0_6:                                // %middel.block
                                        //   in Loop: Header=BB0_2 Depth=1
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	cbnz	x9, .LBB0_8
	b	.LBB0_1
.Ltmp16:
.LBB0_7:                                // %for.inc
                                        //   in Loop: Header=BB0_8 Depth=2
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	0 40 38 is_stmt 1               // s253/tsvc-functions.c:40:38
	add	x8, x8, #1
.Ltmp17:
	//DEBUG_VALUE: i <- $x8
	.loc	0 40 9 is_stmt 0                // s253/tsvc-functions.c:40:9
	cmp	x8, #2, lsl #12                 // =8192
	b.eq	.LBB0_1
.Ltmp18:
.LBB0_8:                                // %for.body5
                                        //   Parent Loop BB0_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	//DEBUG_VALUE: i <- $x8
	.loc	0 41 17 is_stmt 1               // s253/tsvc-functions.c:41:17
	lsl	x9, x8, #2
	ldr	w10, [x23, x9]
	.loc	0 41 24 is_stmt 0               // s253/tsvc-functions.c:41:24
	ldr	w11, [x22, x9]
.Ltmp19:
	.loc	0 41 17                         // s253/tsvc-functions.c:41:17
	cmp	w10, w11
	b.le	.LBB0_7
.Ltmp20:
// %bb.9:                               // %if.then
                                        //   in Loop: Header=BB0_8 Depth=2
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: nl <- [DW_OP_plus_uconst 44] [$sp+0]
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	0 42 35 is_stmt 1               // s253/tsvc-functions.c:42:35
	ldr	w12, [x21, x9]
	.loc	0 43 22                         // s253/tsvc-functions.c:43:22
	ldr	w13, [x20, x9]
	.loc	0 42 26                         // s253/tsvc-functions.c:42:26
	msub	w10, w12, w11, w10
.Ltmp21:
	//DEBUG_VALUE: s253:s <- $w10
	.loc	0 43 22                         // s253/tsvc-functions.c:43:22
	add	w11, w10, w13
	.loc	0 44 22                         // s253/tsvc-functions.c:44:22
	str	w10, [x23, x9]
	.loc	0 43 22                         // s253/tsvc-functions.c:43:22
	str	w11, [x20, x9]
	b	.LBB0_7
.Ltmp22:
.LBB0_10:                               // %for.cond.cleanup
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	0 0 22 is_stmt 0                // s253/tsvc-functions.c:0:22
	//APP
	dmb	sy
	orr	x4, x4, x4

	//NO_APP
	.loc	0 51 5 is_stmt 1                // s253/tsvc-functions.c:51:5
	mov	x1, xzr
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	.loc	0 51 30 is_stmt 0               // s253/tsvc-functions.c:51:30
	add	x0, x8, #16
	.loc	0 51 5                          // s253/tsvc-functions.c:51:5
	bl	gettimeofday
.Ltmp23:
	.loc	0 52 12 is_stmt 1               // s253/tsvc-functions.c:52:12
	adrp	x0, .L__func__.s253
	add	x0, x0, :lo12:.L__func__.s253
	addvl	sp, sp, #1
.Ltmp24:
	add	sp, sp, #48
	.cfi_def_cfa wsp, 96
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
.Ltmp25:
	b	calc_checksum
.Ltmp26:
.Lfunc_end0:
	.size	s253, .Lfunc_end0-s253
	.cfi_endproc
	.file	4 "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/sys" "time.h" md5 0x99ab902f1529d4d72694df20fbf7a8ec
                                        // -- End function
	.globl	time_function                   // -- Begin function time_function
	.p2align	2
	.type	time_function,@function
time_function:                          // @time_function
.Lfunc_begin1:
	.loc	0 58 0                          // s253/tsvc-functions.c:58:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: time_function:vector_func <- $x0
	//DEBUG_VALUE: time_function:arg_info <- $x1
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
.Ltmp27:
	.loc	0 59 19 prologue_end            // s253/tsvc-functions.c:59:19
	movi	v0.2d, #0000000000000000
	mov	x8, x0
.Ltmp28:
	//DEBUG_VALUE: time_function:vector_func <- $x8
	.loc	0 61 21                         // s253/tsvc-functions.c:61:21
	mov	x0, sp
	.loc	0 59 31                         // s253/tsvc-functions.c:59:31
	str	x1, [sp, #32]
	.loc	0 59 19 is_stmt 0               // s253/tsvc-functions.c:59:19
	stp	q0, q0, [sp]
	.loc	0 61 21 is_stmt 1               // s253/tsvc-functions.c:61:21
	blr	x8
.Ltmp29:
	//DEBUG_VALUE: time_function:arg_info <- [DW_OP_LLVM_entry_value 1] $x1
	.loc	0 63 37                         // s253/tsvc-functions.c:63:37
	ldp	d0, d3, [sp, #8]
	mov	x8, #145685290680320
	.loc	0 64 37                         // s253/tsvc-functions.c:64:37
	ldr	d2, [sp, #24]
	movk	x8, #16686, lsl #48
	.loc	0 63 37                         // s253/tsvc-functions.c:63:37
	scvtf	d0, d0
	.loc	0 64 37                         // s253/tsvc-functions.c:64:37
	scvtf	d2, d2
	fmov	d1, x8
	.loc	0 64 16 is_stmt 0               // s253/tsvc-functions.c:64:16
	scvtf	d3, d3
	.loc	0 63 57 is_stmt 1               // s253/tsvc-functions.c:63:57
	fdiv	d0, d0, d1
	.loc	0 64 57                         // s253/tsvc-functions.c:64:57
	fdiv	d1, d2, d1
	.loc	0 63 16                         // s253/tsvc-functions.c:63:16
	ldr	d2, [sp]
	scvtf	d2, d2
	.loc	0 63 35 is_stmt 0               // s253/tsvc-functions.c:63:35
	fadd	d0, d0, d2
.Ltmp30:
	//DEBUG_VALUE: time_function:tic <- $d0
	.loc	0 64 35 is_stmt 1               // s253/tsvc-functions.c:64:35
	fadd	d2, d1, d3
.Ltmp31:
	//DEBUG_VALUE: time_function:toc <- $d2
	.loc	0 61 21                         // s253/tsvc-functions.c:61:21
	scvtf	d1, w0
.Ltmp32:
	//DEBUG_VALUE: time_function:result <- $d1
	.loc	0 68 5                          // s253/tsvc-functions.c:68:5
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	.loc	0 66 23                         // s253/tsvc-functions.c:66:23
	fsub	d0, d2, d0
.Ltmp33:
	//DEBUG_VALUE: time_function:taken <- $d0
	.loc	0 68 5                          // s253/tsvc-functions.c:68:5
	bl	printf
.Ltmp34:
	.cfi_def_cfa wsp, 64
	.loc	0 69 1                          // s253/tsvc-functions.c:69:1
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp35:
.Lfunc_end1:
	.size	time_function, .Lfunc_end1-time_function
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin2:
	.loc	0 72 0                          // s253/tsvc-functions.c:72:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: main:argc <- $w0
	//DEBUG_VALUE: main:argv <- $x1
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
.Ltmp36:
	//DEBUG_VALUE: main:n1 <- 1
	//DEBUG_VALUE: main:n3 <- 1
	.loc	0 75 5 prologue_end             // s253/tsvc-functions.c:75:5
	adrp	x0, .Lstr
.Ltmp37:
	//DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	add	x0, x0, :lo12:.Lstr
	bl	puts
.Ltmp38:
	//DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	.loc	0 77 5                          // s253/tsvc-functions.c:77:5
	adrp	x0, s253
	add	x0, x0, :lo12:s253
	mov	x1, xzr
	bl	time_function
.Ltmp39:
	.loc	0 78 1                          // s253/tsvc-functions.c:78:1
	mov	w0, wzr
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp40:
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        // -- End function
	.type	.L__func__.s253,@object         // @__func__.s253
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.s253:
	.asciz	"s253"
	.size	.L__func__.s253, 5

	.type	a,@object                       // @a
	.bss
	.globl	a
	.p2align	6
a:
	.zero	32768
	.size	a, 32768

	.type	b,@object                       // @b
	.globl	b
	.p2align	6
b:
	.zero	32768
	.size	b, 32768

	.type	d,@object                       // @d
	.globl	d
	.p2align	6
d:
	.zero	32768
	.size	d, 32768

	.type	c,@object                       // @c
	.globl	c
	.p2align	6
c:
	.zero	32768
	.size	c, 32768

	.type	e,@object                       // @e
	.globl	e
	.p2align	6
e:
	.zero	32768
	.size	e, 32768

	.type	aa,@object                      // @aa
	.globl	aa
	.p2align	6
aa:
	.zero	262144
	.size	aa, 262144

	.type	bb,@object                      // @bb
	.globl	bb
	.p2align	6
bb:
	.zero	262144
	.size	bb, 262144

	.type	cc,@object                      // @cc
	.globl	cc
	.p2align	6
cc:
	.zero	262144
	.size	cc, 262144

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%10.3f\t%f\n"
	.size	.L.str, 11

	.type	flat_2d_array,@object           // @flat_2d_array
	.bss
	.globl	flat_2d_array
	.p2align	6
flat_2d_array:
	.zero	262144
	.size	flat_2d_array, 262144

	.type	x,@object                       // @x
	.globl	x
	.p2align	6
x:
	.zero	32768
	.size	x, 32768

	.type	tt,@object                      // @tt
	.globl	tt
	.p2align	6
tt:
	.zero	262144
	.size	tt, 262144

	.type	indx,@object                    // @indx
	.globl	indx
	.p2align	6
indx:
	.zero	32768
	.size	indx, 32768

	.type	xx,@object                      // @xx
	.globl	xx
	.p2align	3
xx:
	.xword	0
	.size	xx, 8

	.type	yy,@object                      // @yy
	.globl	yy
	.p2align	3
yy:
	.xword	0
	.size	yy, 8

	.type	.Lstr,@object                   // @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Loop \tTime(sec) \tChecksum"
	.size	.Lstr, 26

	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 // Length
.Ldebug_list_header_start0:
	.hword	5                               // Version
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
	.word	12                              // Offset entry count
.Lloclists_table_base0:
	.word	.Ldebug_loc0-.Lloclists_table_base0
	.word	.Ldebug_loc1-.Lloclists_table_base0
	.word	.Ldebug_loc2-.Lloclists_table_base0
	.word	.Ldebug_loc3-.Lloclists_table_base0
	.word	.Ldebug_loc4-.Lloclists_table_base0
	.word	.Ldebug_loc5-.Lloclists_table_base0
	.word	.Ldebug_loc6-.Lloclists_table_base0
	.word	.Ldebug_loc7-.Lloclists_table_base0
	.word	.Ldebug_loc8-.Lloclists_table_base0
	.word	.Ldebug_loc9-.Lloclists_table_base0
	.word	.Ldebug_loc10-.Lloclists_table_base0
	.word	.Ldebug_loc11-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	24                              // 24
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           //   ending offset
	.byte	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	44                              // 44
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	90                              // DW_OP_reg10
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	44                              // 44
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	90                              // DW_OP_reg10
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	144                             // DW_OP_regx
	.byte	64                              // 64
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	144                             // DW_OP_regx
	.byte	66                              // 66
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	144                             // DW_OP_regx
	.byte	65                              // 65
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	144                             // DW_OP_regx
	.byte	64                              // 64
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               // Abbreviation Code
	.byte	17                              // DW_TAG_compile_unit
	.byte	1                               // DW_CHILDREN_yes
	.byte	37                              // DW_AT_producer
	.byte	37                              // DW_FORM_strx1
	.byte	19                              // DW_AT_language
	.byte	5                               // DW_FORM_data2
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	114                             // DW_AT_str_offsets_base
	.byte	23                              // DW_FORM_sec_offset
	.byte	16                              // DW_AT_stmt_list
	.byte	23                              // DW_FORM_sec_offset
	.byte	27                              // DW_AT_comp_dir
	.byte	37                              // DW_FORM_strx1
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	115                             // DW_AT_addr_base
	.byte	23                              // DW_FORM_sec_offset
	.ascii	"\214\001"                      // DW_AT_loclists_base
	.byte	23                              // DW_FORM_sec_offset
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	2                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.ascii	"\210\001"                      // DW_AT_alignment
	.byte	15                              // DW_FORM_udata
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	22                              // DW_TAG_typedef
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	6                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	8                               // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	5                               // DW_FORM_data2
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	10                              // Abbreviation Code
	.byte	55                              // DW_TAG_restrict_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	12                              // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	13                              // Abbreviation Code
	.byte	21                              // DW_TAG_subroutine_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	14                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	15                              // Abbreviation Code
	.byte	19                              // DW_TAG_structure_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	16                              // Abbreviation Code
	.byte	13                              // DW_TAG_member
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	56                              // DW_AT_data_member_location
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	17                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.byte	122                             // DW_AT_call_all_calls
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	18                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	34                              // DW_FORM_loclistx
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	19                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	34                              // DW_FORM_loclistx
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	20                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	21                              // Abbreviation Code
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.byte	125                             // DW_AT_call_return_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	22                              // Abbreviation Code
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.ascii	"\202\001"                      // DW_AT_call_tail_call
	.byte	25                              // DW_FORM_flag_present
	.ascii	"\201\001"                      // DW_AT_call_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	23                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	24                              // Abbreviation Code
	.byte	38                              // DW_TAG_const_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	25                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.byte	122                             // DW_AT_call_all_calls
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	26                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	27                              // Abbreviation Code
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.ascii	"\203\001"                      // DW_AT_call_target
	.byte	24                              // DW_FORM_exprloc
	.byte	125                             // DW_AT_call_return_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	28                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	28                              // DW_AT_const_value
	.byte	13                              // DW_FORM_sdata
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	0                               // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.hword	5                               // DWARF version number
	.byte	1                               // DWARF Unit Type
	.byte	8                               // Address Size (in bytes)
	.word	.debug_abbrev                   // Offset Into Abbrev. Section
	.byte	1                               // Abbrev [1] 0xc:0x311 DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	14                              // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.word	.Lloclists_table_base0          // DW_AT_loclists_base
	.byte	2                               // Abbrev [2] 0x27:0xc DW_TAG_variable
	.byte	3                               // DW_AT_name
	.word	51                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               // Abbrev [3] 0x33:0xf DW_TAG_array_type
	.word	66                              // DW_AT_type
	.byte	4                               // Abbrev [4] 0x38:0x9 DW_TAG_subrange_type
	.word	78                              // DW_AT_type
	.word	65536                           // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	5                               // Abbrev [5] 0x42:0x8 DW_TAG_typedef
	.word	74                              // DW_AT_type
	.byte	5                               // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	23                              // DW_AT_decl_line
	.byte	6                               // Abbrev [6] 0x4a:0x4 DW_TAG_base_type
	.byte	4                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	7                               // Abbrev [7] 0x4e:0x4 DW_TAG_base_type
	.byte	6                               // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	2                               // Abbrev [2] 0x52:0xc DW_TAG_variable
	.byte	7                               // DW_AT_name
	.word	94                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               // Abbrev [3] 0x5e:0xd DW_TAG_array_type
	.word	66                              // DW_AT_type
	.byte	8                               // Abbrev [8] 0x63:0x7 DW_TAG_subrange_type
	.word	78                              // DW_AT_type
	.hword	8192                            // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x6b:0xc DW_TAG_variable
	.byte	8                               // DW_AT_name
	.word	94                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	2
	.byte	2                               // Abbrev [2] 0x77:0xc DW_TAG_variable
	.byte	9                               // DW_AT_name
	.word	94                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	3
	.byte	2                               // Abbrev [2] 0x83:0xc DW_TAG_variable
	.byte	10                              // DW_AT_name
	.word	94                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	4
	.byte	2                               // Abbrev [2] 0x8f:0xc DW_TAG_variable
	.byte	11                              // DW_AT_name
	.word	94                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	5
	.byte	2                               // Abbrev [2] 0x9b:0xc DW_TAG_variable
	.byte	12                              // DW_AT_name
	.word	94                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	6
	.byte	2                               // Abbrev [2] 0xa7:0xc DW_TAG_variable
	.byte	13                              // DW_AT_name
	.word	179                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	7
	.byte	3                               // Abbrev [3] 0xb3:0x14 DW_TAG_array_type
	.word	66                              // DW_AT_type
	.byte	8                               // Abbrev [8] 0xb8:0x7 DW_TAG_subrange_type
	.word	78                              // DW_AT_type
	.hword	256                             // DW_AT_count
	.byte	8                               // Abbrev [8] 0xbf:0x7 DW_TAG_subrange_type
	.word	78                              // DW_AT_type
	.hword	256                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0xc7:0xc DW_TAG_variable
	.byte	14                              // DW_AT_name
	.word	179                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	8
	.byte	2                               // Abbrev [2] 0xd3:0xc DW_TAG_variable
	.byte	15                              // DW_AT_name
	.word	179                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	9
	.byte	2                               // Abbrev [2] 0xdf:0xc DW_TAG_variable
	.byte	16                              // DW_AT_name
	.word	179                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	10
	.byte	2                               // Abbrev [2] 0xeb:0xc DW_TAG_variable
	.byte	17                              // DW_AT_name
	.word	247                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	17                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	11
	.byte	3                               // Abbrev [3] 0xf7:0xd DW_TAG_array_type
	.word	74                              // DW_AT_type
	.byte	8                               // Abbrev [8] 0xfc:0x7 DW_TAG_subrange_type
	.word	78                              // DW_AT_type
	.hword	8192                            // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	9                               // Abbrev [9] 0x104:0xb DW_TAG_variable
	.byte	18                              // DW_AT_name
	.word	271                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	19                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	12
	.byte	10                              // Abbrev [10] 0x10f:0x5 DW_TAG_restrict_type
	.word	276                             // DW_AT_type
	.byte	11                              // Abbrev [11] 0x114:0x5 DW_TAG_pointer_type
	.word	66                              // DW_AT_type
	.byte	9                               // Abbrev [9] 0x119:0xb DW_TAG_variable
	.byte	19                              // DW_AT_name
	.word	276                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	20                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	13
	.byte	12                              // Abbrev [12] 0x124:0x1 DW_TAG_pointer_type
	.byte	5                               // Abbrev [5] 0x125:0x8 DW_TAG_typedef
	.word	301                             // DW_AT_type
	.byte	30                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	55                              // DW_AT_decl_line
	.byte	11                              // Abbrev [11] 0x12d:0x5 DW_TAG_pointer_type
	.word	306                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0x132:0xb DW_TAG_subroutine_type
	.word	66                              // DW_AT_type
                                        // DW_AT_prototyped
	.byte	14                              // Abbrev [14] 0x137:0x5 DW_TAG_formal_parameter
	.word	317                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0x13d:0x5 DW_TAG_pointer_type
	.word	322                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x142:0x21 DW_TAG_structure_type
	.byte	29                              // DW_AT_name
	.byte	40                              // DW_AT_byte_size
	.byte	1                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.byte	16                              // Abbrev [16] 0x147:0x9 DW_TAG_member
	.byte	20                              // DW_AT_name
	.word	355                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	13                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	16                              // Abbrev [16] 0x150:0x9 DW_TAG_member
	.byte	27                              // DW_AT_name
	.word	355                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	16                              // DW_AT_data_member_location
	.byte	16                              // Abbrev [16] 0x159:0x9 DW_TAG_member
	.byte	28                              // DW_AT_name
	.word	399                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	32                              // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	15                              // Abbrev [15] 0x163:0x18 DW_TAG_structure_type
	.byte	26                              // DW_AT_name
	.byte	16                              // DW_AT_byte_size
	.byte	3                               // DW_AT_decl_file
	.byte	8                               // DW_AT_decl_line
	.byte	16                              // Abbrev [16] 0x168:0x9 DW_TAG_member
	.byte	21                              // DW_AT_name
	.word	379                             // DW_AT_type
	.byte	3                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	16                              // Abbrev [16] 0x171:0x9 DW_TAG_member
	.byte	24                              // DW_AT_name
	.word	391                             // DW_AT_type
	.byte	3                               // DW_AT_decl_file
	.byte	11                              // DW_AT_decl_line
	.byte	8                               // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	5                               // Abbrev [5] 0x17b:0x8 DW_TAG_typedef
	.word	387                             // DW_AT_type
	.byte	23                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	160                             // DW_AT_decl_line
	.byte	6                               // Abbrev [6] 0x183:0x4 DW_TAG_base_type
	.byte	22                              // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	5                               // Abbrev [5] 0x187:0x8 DW_TAG_typedef
	.word	387                             // DW_AT_type
	.byte	25                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	162                             // DW_AT_decl_line
	.byte	10                              // Abbrev [10] 0x18f:0x5 DW_TAG_restrict_type
	.word	292                             // DW_AT_type
	.byte	17                              // Abbrev [17] 0x194:0x60 DW_TAG_subprogram
	.byte	14                              // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	36                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	28                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	74                              // DW_AT_type
                                        // DW_AT_external
	.byte	18                              // Abbrev [18] 0x1a3:0x9 DW_TAG_formal_parameter
	.byte	0                               // DW_AT_location
	.byte	39                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	28                              // DW_AT_decl_line
	.word	317                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x1ac:0x9 DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	42                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	38                              // DW_AT_decl_line
	.word	74                              // DW_AT_type
	.byte	20                              // Abbrev [20] 0x1b5:0x20 DW_TAG_lexical_block
	.byte	15                              // DW_AT_low_pc
	.word	.Ltmp22-.Ltmp4                  // DW_AT_high_pc
	.byte	19                              // Abbrev [19] 0x1bb:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	40                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	39                              // DW_AT_decl_line
	.word	74                              // DW_AT_type
	.byte	20                              // Abbrev [20] 0x1c4:0x10 DW_TAG_lexical_block
	.byte	16                              // DW_AT_low_pc
	.word	.Ltmp22-.Ltmp9                  // DW_AT_high_pc
	.byte	19                              // Abbrev [19] 0x1ca:0x9 DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	41                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	40                              // DW_AT_decl_line
	.word	74                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	21                              // Abbrev [21] 0x1d5:0x6 DW_TAG_call_site
	.word	500                             // DW_AT_call_origin
	.byte	17                              // DW_AT_call_return_pc
	.byte	21                              // Abbrev [21] 0x1db:0x6 DW_TAG_call_site
	.word	528                             // DW_AT_call_origin
	.byte	18                              // DW_AT_call_return_pc
	.byte	21                              // Abbrev [21] 0x1e1:0x6 DW_TAG_call_site
	.word	557                             // DW_AT_call_origin
	.byte	19                              // DW_AT_call_return_pc
	.byte	21                              // Abbrev [21] 0x1e7:0x6 DW_TAG_call_site
	.word	528                             // DW_AT_call_origin
	.byte	20                              // DW_AT_call_return_pc
	.byte	22                              // Abbrev [22] 0x1ed:0x6 DW_TAG_call_site
	.word	629                             // DW_AT_call_origin
                                        // DW_AT_call_tail_call
	.byte	21                              // DW_AT_call_pc
	.byte	0                               // End Of Children Mark
	.byte	23                              // Abbrev [23] 0x1f4:0xe DW_TAG_subprogram
	.byte	31                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	31                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	74                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x1fc:0x5 DW_TAG_formal_parameter
	.word	514                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0x202:0x5 DW_TAG_pointer_type
	.word	519                             // DW_AT_type
	.byte	24                              // Abbrev [24] 0x207:0x5 DW_TAG_const_type
	.word	524                             // DW_AT_type
	.byte	6                               // Abbrev [6] 0x20c:0x4 DW_TAG_base_type
	.byte	32                              // DW_AT_name
	.byte	8                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	23                              // Abbrev [23] 0x210:0x13 DW_TAG_subprogram
	.byte	33                              // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	66                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	74                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x218:0x5 DW_TAG_formal_parameter
	.word	547                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x21d:0x5 DW_TAG_formal_parameter
	.word	399                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0x223:0x5 DW_TAG_restrict_type
	.word	552                             // DW_AT_type
	.byte	11                              // Abbrev [11] 0x228:0x5 DW_TAG_pointer_type
	.word	355                             // DW_AT_type
	.byte	23                              // Abbrev [23] 0x22d:0x36 DW_TAG_subprogram
	.byte	34                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	27                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	74                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x235:0x5 DW_TAG_formal_parameter
	.word	276                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x23a:0x5 DW_TAG_formal_parameter
	.word	276                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x23f:0x5 DW_TAG_formal_parameter
	.word	276                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x244:0x5 DW_TAG_formal_parameter
	.word	276                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x249:0x5 DW_TAG_formal_parameter
	.word	276                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x24e:0x5 DW_TAG_formal_parameter
	.word	611                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x253:0x5 DW_TAG_formal_parameter
	.word	611                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x258:0x5 DW_TAG_formal_parameter
	.word	611                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x25d:0x5 DW_TAG_formal_parameter
	.word	66                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0x263:0x5 DW_TAG_pointer_type
	.word	616                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x268:0xd DW_TAG_array_type
	.word	66                              // DW_AT_type
	.byte	8                               // Abbrev [8] 0x26d:0x7 DW_TAG_subrange_type
	.word	78                              // DW_AT_type
	.hword	256                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	23                              // Abbrev [23] 0x275:0xe DW_TAG_subprogram
	.byte	35                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	32                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	66                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x27d:0x5 DW_TAG_formal_parameter
	.word	514                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	25                              // Abbrev [25] 0x283:0x51 DW_TAG_subprogram
	.byte	22                              // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	37                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	57                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	18                              // Abbrev [18] 0x28e:0x9 DW_TAG_formal_parameter
	.byte	4                               // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	57                              // DW_AT_decl_line
	.word	293                             // DW_AT_type
	.byte	18                              // Abbrev [18] 0x297:0x9 DW_TAG_formal_parameter
	.byte	5                               // DW_AT_location
	.byte	28                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	57                              // DW_AT_decl_line
	.word	292                             // DW_AT_type
	.byte	26                              // Abbrev [26] 0x2a0:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	39                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	59                              // DW_AT_decl_line
	.word	322                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x2ab:0x9 DW_TAG_variable
	.byte	6                               // DW_AT_location
	.byte	44                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	63                              // DW_AT_decl_line
	.word	782                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x2b4:0x9 DW_TAG_variable
	.byte	7                               // DW_AT_location
	.byte	46                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	64                              // DW_AT_decl_line
	.word	782                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x2bd:0x9 DW_TAG_variable
	.byte	8                               // DW_AT_location
	.byte	47                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	61                              // DW_AT_decl_line
	.word	782                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x2c6:0x9 DW_TAG_variable
	.byte	9                               // DW_AT_location
	.byte	48                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	66                              // DW_AT_decl_line
	.word	782                             // DW_AT_type
	.byte	27                              // Abbrev [27] 0x2cf:0x4 DW_TAG_call_site
	.byte	1                               // DW_AT_call_target
	.byte	88
	.byte	23                              // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	17                              // Abbrev [17] 0x2d4:0x3a DW_TAG_subprogram
	.byte	24                              // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	38                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	72                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	74                              // DW_AT_type
                                        // DW_AT_external
	.byte	18                              // Abbrev [18] 0x2e3:0x9 DW_TAG_formal_parameter
	.byte	10                              // DW_AT_location
	.byte	49                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	72                              // DW_AT_decl_line
	.word	74                              // DW_AT_type
	.byte	18                              // Abbrev [18] 0x2ec:0x9 DW_TAG_formal_parameter
	.byte	11                              // DW_AT_location
	.byte	50                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	72                              // DW_AT_decl_line
	.word	786                             // DW_AT_type
	.byte	28                              // Abbrev [28] 0x2f5:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_const_value
	.byte	51                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	73                              // DW_AT_decl_line
	.word	74                              // DW_AT_type
	.byte	28                              // Abbrev [28] 0x2fe:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_const_value
	.byte	52                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	74                              // DW_AT_decl_line
	.word	74                              // DW_AT_type
	.byte	21                              // Abbrev [21] 0x307:0x6 DW_TAG_call_site
	.word	643                             // DW_AT_call_origin
	.byte	25                              // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x30e:0x4 DW_TAG_base_type
	.byte	45                              // DW_AT_name
	.byte	4                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	11                              // Abbrev [11] 0x312:0x5 DW_TAG_pointer_type
	.word	791                             // DW_AT_type
	.byte	11                              // Abbrev [11] 0x317:0x5 DW_TAG_pointer_type
	.word	524                             // DW_AT_type
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	216                             // Length of String Offsets Set
	.hword	5
	.hword	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)" // string offset=0
.Linfo_string1:
	.asciz	"s253/tsvc-functions.c"         // string offset=109
.Linfo_string2:
	.asciz	"/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" // string offset=131
.Linfo_string3:
	.asciz	"flat_2d_array"                 // string offset=225
.Linfo_string4:
	.asciz	"int"                           // string offset=239
.Linfo_string5:
	.asciz	"real_t"                        // string offset=243
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           // string offset=250
.Linfo_string7:
	.asciz	"x"                             // string offset=270
.Linfo_string8:
	.asciz	"a"                             // string offset=272
.Linfo_string9:
	.asciz	"b"                             // string offset=274
.Linfo_string10:
	.asciz	"c"                             // string offset=276
.Linfo_string11:
	.asciz	"d"                             // string offset=278
.Linfo_string12:
	.asciz	"e"                             // string offset=280
.Linfo_string13:
	.asciz	"aa"                            // string offset=282
.Linfo_string14:
	.asciz	"bb"                            // string offset=285
.Linfo_string15:
	.asciz	"cc"                            // string offset=288
.Linfo_string16:
	.asciz	"tt"                            // string offset=291
.Linfo_string17:
	.asciz	"indx"                          // string offset=294
.Linfo_string18:
	.asciz	"xx"                            // string offset=299
.Linfo_string19:
	.asciz	"yy"                            // string offset=302
.Linfo_string20:
	.asciz	"t1"                            // string offset=305
.Linfo_string21:
	.asciz	"tv_sec"                        // string offset=308
.Linfo_string22:
	.asciz	"long"                          // string offset=315
.Linfo_string23:
	.asciz	"__time_t"                      // string offset=320
.Linfo_string24:
	.asciz	"tv_usec"                       // string offset=329
.Linfo_string25:
	.asciz	"__suseconds_t"                 // string offset=337
.Linfo_string26:
	.asciz	"timeval"                       // string offset=351
.Linfo_string27:
	.asciz	"t2"                            // string offset=359
.Linfo_string28:
	.asciz	"arg_info"                      // string offset=362
.Linfo_string29:
	.asciz	"args_t"                        // string offset=371
.Linfo_string30:
	.asciz	"test_function_t"               // string offset=378
.Linfo_string31:
	.asciz	"initialise_arrays"             // string offset=394
.Linfo_string32:
	.asciz	"char"                          // string offset=412
.Linfo_string33:
	.asciz	"gettimeofday"                  // string offset=417
.Linfo_string34:
	.asciz	"dummy"                         // string offset=430
.Linfo_string35:
	.asciz	"calc_checksum"                 // string offset=436
.Linfo_string36:
	.asciz	"s253"                          // string offset=450
.Linfo_string37:
	.asciz	"time_function"                 // string offset=455
.Linfo_string38:
	.asciz	"main"                          // string offset=469
.Linfo_string39:
	.asciz	"func_args"                     // string offset=474
.Linfo_string40:
	.asciz	"nl"                            // string offset=484
.Linfo_string41:
	.asciz	"i"                             // string offset=487
.Linfo_string42:
	.asciz	"s"                             // string offset=489
.Linfo_string43:
	.asciz	"vector_func"                   // string offset=491
.Linfo_string44:
	.asciz	"tic"                           // string offset=503
.Linfo_string45:
	.asciz	"double"                        // string offset=507
.Linfo_string46:
	.asciz	"toc"                           // string offset=514
.Linfo_string47:
	.asciz	"result"                        // string offset=518
.Linfo_string48:
	.asciz	"taken"                         // string offset=525
.Linfo_string49:
	.asciz	"argc"                          // string offset=531
.Linfo_string50:
	.asciz	"argv"                          // string offset=536
.Linfo_string51:
	.asciz	"n1"                            // string offset=541
.Linfo_string52:
	.asciz	"n3"                            // string offset=544
	.section	.debug_str_offsets,"",@progbits
	.word	.Linfo_string0
	.word	.Linfo_string1
	.word	.Linfo_string2
	.word	.Linfo_string3
	.word	.Linfo_string4
	.word	.Linfo_string5
	.word	.Linfo_string6
	.word	.Linfo_string7
	.word	.Linfo_string8
	.word	.Linfo_string9
	.word	.Linfo_string10
	.word	.Linfo_string11
	.word	.Linfo_string12
	.word	.Linfo_string13
	.word	.Linfo_string14
	.word	.Linfo_string15
	.word	.Linfo_string16
	.word	.Linfo_string17
	.word	.Linfo_string18
	.word	.Linfo_string19
	.word	.Linfo_string20
	.word	.Linfo_string21
	.word	.Linfo_string22
	.word	.Linfo_string23
	.word	.Linfo_string24
	.word	.Linfo_string25
	.word	.Linfo_string26
	.word	.Linfo_string27
	.word	.Linfo_string28
	.word	.Linfo_string29
	.word	.Linfo_string30
	.word	.Linfo_string31
	.word	.Linfo_string32
	.word	.Linfo_string33
	.word	.Linfo_string34
	.word	.Linfo_string35
	.word	.Linfo_string36
	.word	.Linfo_string37
	.word	.Linfo_string38
	.word	.Linfo_string39
	.word	.Linfo_string40
	.word	.Linfo_string41
	.word	.Linfo_string42
	.word	.Linfo_string43
	.word	.Linfo_string44
	.word	.Linfo_string45
	.word	.Linfo_string46
	.word	.Linfo_string47
	.word	.Linfo_string48
	.word	.Linfo_string49
	.word	.Linfo_string50
	.word	.Linfo_string51
	.word	.Linfo_string52
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	flat_2d_array
	.xword	x
	.xword	a
	.xword	b
	.xword	c
	.xword	d
	.xword	e
	.xword	aa
	.xword	bb
	.xword	cc
	.xword	tt
	.xword	indx
	.xword	xx
	.xword	yy
	.xword	.Lfunc_begin0
	.xword	.Ltmp4
	.xword	.Ltmp9
	.xword	.Ltmp1
	.xword	.Ltmp3
	.xword	.Ltmp5
	.xword	.Ltmp23
	.xword	.Ltmp25
	.xword	.Lfunc_begin1
	.xword	.Ltmp29
	.xword	.Lfunc_begin2
	.xword	.Ltmp39
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
