	.text
	.file	"task.ll"
	.globl	check                           # -- Begin function check
	.p2align	4, 0x90
	.type	check,@function
check:                                  # @check
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 8(%rsp)
	movl	$1, 4(%rsp)
	movl	$0, (%rsp)
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movslq	(%rsp), %rbx
	movl	$what, %edi
	callq	strlen
	cmpq	%rax, %rbx
	jae	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	8(%rsp), %r14
	movslq	(%rsp), %rbx
	movzbl	(%r14,%rbx), %ebp
	incq	%rbx
	movl	$what, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	xorb	(%r14,%rdx), %bpl
	movsbl	%bpl, %eax
	movslq	(%rsp), %rcx
	movsbl	what(%rcx), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	sete	%dl
	andl	%edx, 4(%rsp)
	incl	(%rsp)
	jmp	.LBB0_1
.LBB0_3:
	movl	4(%rsp), %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	check, .Lfunc_end0-check
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	$0, 12(%rsp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	16(%rsp), %rbx
	movl	$.L.str.3, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	$what, %edi
	callq	strlen
	cmpq	%rax, %rbx
	je	.LBB1_2
# %bb.1:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, 12(%rsp)
	jmp	.LBB1_10
.LBB1_2:
	leaq	16(%rsp), %rdi
	callq	check
	testl	%eax, %eax
	je	.LBB1_6
# %bb.3:
	movl	$0, 8(%rsp)
	leaq	16(%rsp), %r14
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movslq	8(%rsp), %rbx
	movq	%r14, %rdi
	callq	strlen
	cmpq	%rax, %rbx
	jae	.LBB1_9
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movslq	8(%rsp), %rbx
	movzbl	16(%rsp,%rbx), %ebp
	movl	$secret, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movzbl	secret(%rdx), %eax
	xorl	%ebp, %eax
	movslq	8(%rsp), %rcx
	movb	%al, 16(%rsp,%rcx)
	incl	8(%rsp)
	jmp	.LBB1_4
.LBB1_6:
	movl	$0, 4(%rsp)
	leaq	16(%rsp), %r14
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movslq	4(%rsp), %rbx
	movq	%r14, %rdi
	callq	strlen
	cmpq	%rax, %rbx
	jae	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	movslq	4(%rsp), %rbx
	movzbl	flag(%rbx), %ebp
	movl	$secret, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movzbl	secret(%rdx), %eax
	xorl	%ebp, %eax
	movslq	4(%rsp), %rcx
	movb	%al, 16(%rsp,%rcx)
	incl	4(%rsp)
	jmp	.LBB1_7
.LBB1_9:
	leaq	16(%rsp), %rsi
	movl	$format, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 12(%rsp)
.LBB1_10:
	movl	12(%rsp), %eax
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	format,@object                  # @format
	.data
	.globl	format
	.p2align	4
format:
	.asciz	"\n\360\237\230\202\360\237\221\214\360\237\230\202\360\237\221\214\360\237\230\202\360\237\221\214 flag{%s} \360\237\221\214\360\237\230\202\360\237\221\214\360\237\230\202\360\237\221\214\360\237\230\202\n\n\000\000"
	.size	format, 64

	.type	flag,@object                    # @flag
	.globl	flag
	.p2align	4
flag:
	.asciz	"\035U#hJ7.8\006\026\003rUO=[bg9JmtGt`7U\013nNjD\001\003\0220\031;OVIaM\000\b,qu<g\035;K\000}Y\000\000\000\000\000\000\000"
	.size	flag, 64

	.type	what,@object                    # @what
	.globl	what
	.p2align	4
what:
	.asciz	"\027/'\027\035Jy\003,\021\036&\nexjONacA-&\001LANH'.&\022>#'Z\017O\013%:(&HI\fJylL'\036mtdC\000\000\000\000\000\000\000"
	.size	what, 64

	.type	secret,@object                  # @secret
	.globl	secret
	.p2align	4
secret:
	.asciz	"B\n|_\"\006\033g7#\\F\n)\t0Q8_{Y\023\030\rP\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	secret, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Only the chosen one will know what the flag is!\n"
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Are you the chosen one?\n"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"flag: "
	.size	.L.str.2, 7

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%64s"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n\360\237\230\240\360\237\230\241\360\237\230\240\360\237\230\241\360\237\230\240\360\237\230\241 You are not the chosen one! \360\237\230\241\360\237\230\240\360\237\230\241\360\237\230\240\360\237\230\241\360\237\230\240\n\n"
	.size	.L.str.4, 81

	.section	".note.GNU-stack","",@progbits
