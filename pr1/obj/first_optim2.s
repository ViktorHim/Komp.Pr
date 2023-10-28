	.file	"first.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1756:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1756:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Input n:"
.LC2:
	.string	"product: "
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
.L4:
	movl	$8, %edx
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	28(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	28(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.L4
	movsd	.LC0(%rip), %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%eax, %esi
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movl	%eax, %edx
	addl	$2, %edx
	addl	$1, %eax
	andl	$1, %esi
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%edx, %xmm1
	testl	%esi, %esi
	jne	.L5
	movq	%xmm1, %rdx
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
.L5:
	divsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	cmpl	%eax, %ecx
	jg	.L6
	movl	$.LC2, %esi
	movl	$_ZSt4cout, %edi
	movsd	%xmm2, 8(%rsp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	8(%rsp), %xmm2
	movq	%rax, %rdi
	movapd	%xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L15
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
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L9
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L9
.L15:
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
