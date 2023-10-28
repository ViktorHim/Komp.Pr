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
	.text
	.globl	main
	.type	main, @function
main:
.LFB2003:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L2:
	movl	$8, %edx
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	28(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	28(%rsp), %edx
	testl	%edx, %edx
	jle	.L2
	movl	$2, %esi
	movl	$1, %ecx
	movl	$0, %eax
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm3, 8(%rsp)
	jmp	.L5
.L3:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
.L4:
	divsd	%xmm1, %xmm0
	mulsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	addl	$1, %eax
	addl	$1, %ecx
	addl	$1, %esi
	cmpl	%eax, %edx
	jle	.L9
.L5:
	testb	$1, %al
	jne	.L3
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	jmp	.L4
.L9:
	movl	$.LC2, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movsd	8(%rsp), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
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
