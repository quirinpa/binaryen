	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr58662.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	block
	i32.load	$push0=, a($0)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, -30000
	i32.div_s	$push3=, $pop1, $pop2
	i32.store	$push4=, d($0), $pop3
	i32.const	$push5=, 14
	i32.rem_s	$1=, $pop4, $pop5
	i32.load	$push7=, c($0)
	i32.ne  	$push8=, $pop7, $0
	i32.ne  	$push6=, $1, $0
	i32.and 	$push9=, $pop8, $pop6
	i32.store	$discard=, b($0), $pop9
	i32.load	$push10=, b($0)
	br_if   	$pop10, 0       # 0: down to label0
# BB#1:                                 # %if.end
	return  	$0
.LBB0_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	a                       # @a
	.type	a,@object
	.section	.bss.a,"aw",@nobits
	.globl	a
	.align	2
a:
	.int32	0                       # 0x0
	.size	a, 4

	.hidden	d                       # @d
	.type	d,@object
	.section	.bss.d,"aw",@nobits
	.globl	d
	.align	2
d:
	.int32	0                       # 0x0
	.size	d, 4

	.hidden	c                       # @c
	.type	c,@object
	.section	.bss.c,"aw",@nobits
	.globl	c
	.align	2
c:
	.int32	0                       # 0x0
	.size	c, 4

	.hidden	b                       # @b
	.type	b,@object
	.section	.bss.b,"aw",@nobits
	.globl	b
	.align	2
b:
	.int32	0                       # 0x0
	.size	b, 4


	.ident	"clang version 3.9.0 "
	.section	".note.GNU-stack","",@progbits