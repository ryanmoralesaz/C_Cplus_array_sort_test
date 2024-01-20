	.file	"test.c"
	.text
	.globl	compare
	.type	compare, @function
compare:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	compare, .-compare
	.section	.rodata
.LC0:
	.string	"John"
.LC1:
	.string	"Bill"
.LC2:
	.string	"Charlie"
.LC3:
	.string	"Anna"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$4, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-48(%rbp), %rax
	leaq	compare(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movl	$0, -56(%rbp)
	jmp	.L4
.L5:
	movl	-56(%rbp), %eax
	cltq
	movq	-48(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -56(%rbp)
.L4:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L5
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
