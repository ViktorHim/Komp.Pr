	.file	"first.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Input n:"
.LC2:
	.string	"product: "
#NO_APP
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2003:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L2:
	movl	$8, %edx
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	28(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	28(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.L2
	movsd	.LC0(%rip), %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L6:
	leal	1(%rax), %edx
	pxor	%xmm0, %xmm0
	leal	2(%rax), %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm0
	cvtsi2sdl	%esi, %xmm1
	testb	$1, %al
	jne	.L3
	divsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm2
	cmpl	%edx, %ecx
	jle	.L5
.L4:
	movl	%edx, %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L3:
	divsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	cmpl	%edx, %ecx
	jg	.L4
.L5:
	movl	$9, %edx
	movl	$.LC2, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm2, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm2
	movl	$_ZSt4cout, %edi
	movapd	%xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L13
	cmpb	$0, 56(%rbp)
	je	.L8
	movsbl	67(%rbp), %esi
.L9:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%rax)
	movsbl	%al, %esi
	jmp	.L9
.L13:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE2003:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20231011 (Red Hat 13.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
