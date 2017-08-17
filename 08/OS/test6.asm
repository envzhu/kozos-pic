
kzload:     file format elf32-littlemips


Disassembly of section .text:

a000c400 <_startup>:
a000c400:	0800313a 	j	a000c4e8 <main>
a000c404:	00000000 	nop

a000c408 <dispatch>:
a000c408:	0080e825 	move	sp,a0
a000c40c:	8fbf0044 	lw	ra,68(sp)
a000c410:	8fbe0040 	lw	s8,64(sp)
a000c414:	8fb9003c 	lw	t9,60(sp)
a000c418:	8fb80038 	lw	t8,56(sp)
a000c41c:	8faf0034 	lw	t7,52(sp)
a000c420:	8fae0030 	lw	t6,48(sp)
a000c424:	8fad002c 	lw	t5,44(sp)
a000c428:	8fac0028 	lw	t4,40(sp)
a000c42c:	8fab0024 	lw	t3,36(sp)
a000c430:	8faa0020 	lw	t2,32(sp)
a000c434:	8fa9001c 	lw	t1,28(sp)
a000c438:	8fa80018 	lw	t0,24(sp)
a000c43c:	8fa70014 	lw	a3,20(sp)
a000c440:	8fa60010 	lw	a2,16(sp)
a000c444:	8fa5000c 	lw	a1,12(sp)
a000c448:	8fa40008 	lw	a0,8(sp)
a000c44c:	8fa30004 	lw	v1,4(sp)
a000c450:	8fa20000 	lw	v0,0(sp)
a000c454:	41606000 	di
a000c458:	000000c0 	ehb
a000c45c:	8fba004c 	lw	k0,76(sp)
a000c460:	03400013 	mtlo	k0
a000c464:	8fba0048 	lw	k0,72(sp)
a000c468:	03400011 	mthi	k0
a000c46c:	8fba0054 	lw	k0,84(sp)
a000c470:	409a7000 	mtc0	k0,c0_epc
a000c474:	8fba0050 	lw	k0,80(sp)
a000c478:	27bd0058 	addiu	sp,sp,88
a000c47c:	409a6000 	mtc0	k0,c0_status
a000c480:	8fba0000 	lw	k0,0(sp)
a000c484:	409a7000 	mtc0	k0,c0_epc
a000c488:	42000018 	eret
a000c48c:	00000000 	nop

a000c490 <start_threads>:
a000c490:	27bdffe0 	addiu	sp,sp,-32
a000c494:	afbf001c 	sw	ra,28(sp)
a000c498:	afbe0018 	sw	s8,24(sp)
a000c49c:	03a0f025 	move	s8,sp
a000c4a0:	afc40020 	sw	a0,32(s8)
a000c4a4:	afc50024 	sw	a1,36(s8)
a000c4a8:	afa00010 	sw	zero,16(sp)
a000c4ac:	00003825 	move	a3,zero
a000c4b0:	24060100 	li	a2,256
a000c4b4:	3c02a001 	lui	v0,0xa001
a000c4b8:	24458000 	addiu	a1,v0,-32768
a000c4bc:	3c02a001 	lui	v0,0xa001
a000c4c0:	2444da44 	addiu	a0,v0,-9660
a000c4c4:	0c003664 	jal	a000d990 <kz_run>
a000c4c8:	00000000 	nop
a000c4cc:	00001025 	move	v0,zero
a000c4d0:	03c0e825 	move	sp,s8
a000c4d4:	8fbf001c 	lw	ra,28(sp)
a000c4d8:	8fbe0018 	lw	s8,24(sp)
a000c4dc:	27bd0020 	addiu	sp,sp,32
a000c4e0:	03e00008 	jr	ra
a000c4e4:	00000000 	nop

a000c4e8 <main>:
a000c4e8:	27bdffe0 	addiu	sp,sp,-32
a000c4ec:	afbf001c 	sw	ra,28(sp)
a000c4f0:	afbe0018 	sw	s8,24(sp)
a000c4f4:	03a0f025 	move	s8,sp
a000c4f8:	3c02a001 	lui	v0,0xa001
a000c4fc:	24448008 	addiu	a0,v0,-32760
a000c500:	0c00328c 	jal	a000ca30 <puts>
a000c504:	00000000 	nop
a000c508:	afa00010 	sw	zero,16(sp)
a000c50c:	00003825 	move	a3,zero
a000c510:	24060100 	li	a2,256
a000c514:	3c02a001 	lui	v0,0xa001
a000c518:	24458020 	addiu	a1,v0,-32736
a000c51c:	3c02a001 	lui	v0,0xa001
a000c520:	2444c490 	addiu	a0,v0,-15216
a000c524:	0c0035fe 	jal	a000d7f8 <kz_start>
a000c528:	00000000 	nop
a000c52c:	00001025 	move	v0,zero
a000c530:	03c0e825 	move	sp,s8
a000c534:	8fbf001c 	lw	ra,28(sp)
a000c538:	8fbe0018 	lw	s8,24(sp)
a000c53c:	27bd0020 	addiu	sp,sp,32
a000c540:	03e00008 	jr	ra
a000c544:	00000000 	nop

a000c548 <memset>:
a000c548:	27bdfff0 	addiu	sp,sp,-16
a000c54c:	afbe000c 	sw	s8,12(sp)
a000c550:	03a0f025 	move	s8,sp
a000c554:	afc40010 	sw	a0,16(s8)
a000c558:	afc50014 	sw	a1,20(s8)
a000c55c:	afc60018 	sw	a2,24(s8)
a000c560:	8fc20010 	lw	v0,16(s8)
a000c564:	afc20000 	sw	v0,0(s8)
a000c568:	1000000a 	b	a000c594 <memset+0x4c>
a000c56c:	00000000 	nop
a000c570:	8fc20000 	lw	v0,0(s8)
a000c574:	24430001 	addiu	v1,v0,1
a000c578:	afc30000 	sw	v1,0(s8)
a000c57c:	8fc30014 	lw	v1,20(s8)
a000c580:	7c031c20 	seb	v1,v1
a000c584:	a0430000 	sb	v1,0(v0)
a000c588:	8fc20018 	lw	v0,24(s8)
a000c58c:	2442ffff 	addiu	v0,v0,-1
a000c590:	afc20018 	sw	v0,24(s8)
a000c594:	8fc20018 	lw	v0,24(s8)
a000c598:	1c40fff5 	bgtz	v0,a000c570 <memset+0x28>
a000c59c:	00000000 	nop
a000c5a0:	8fc20010 	lw	v0,16(s8)
a000c5a4:	03c0e825 	move	sp,s8
a000c5a8:	8fbe000c 	lw	s8,12(sp)
a000c5ac:	27bd0010 	addiu	sp,sp,16
a000c5b0:	03e00008 	jr	ra
a000c5b4:	00000000 	nop

a000c5b8 <memcpy>:
a000c5b8:	27bdfff0 	addiu	sp,sp,-16
a000c5bc:	afbe000c 	sw	s8,12(sp)
a000c5c0:	03a0f025 	move	s8,sp
a000c5c4:	afc40010 	sw	a0,16(s8)
a000c5c8:	afc50014 	sw	a1,20(s8)
a000c5cc:	afc60018 	sw	a2,24(s8)
a000c5d0:	8fc20010 	lw	v0,16(s8)
a000c5d4:	afc20000 	sw	v0,0(s8)
a000c5d8:	8fc20014 	lw	v0,20(s8)
a000c5dc:	afc20004 	sw	v0,4(s8)
a000c5e0:	1000000c 	b	a000c614 <memcpy+0x5c>
a000c5e4:	00000000 	nop
a000c5e8:	8fc30004 	lw	v1,4(s8)
a000c5ec:	24620001 	addiu	v0,v1,1
a000c5f0:	afc20004 	sw	v0,4(s8)
a000c5f4:	8fc20000 	lw	v0,0(s8)
a000c5f8:	24440001 	addiu	a0,v0,1
a000c5fc:	afc40000 	sw	a0,0(s8)
a000c600:	80630000 	lb	v1,0(v1)
a000c604:	a0430000 	sb	v1,0(v0)
a000c608:	8fc20018 	lw	v0,24(s8)
a000c60c:	2442ffff 	addiu	v0,v0,-1
a000c610:	afc20018 	sw	v0,24(s8)
a000c614:	8fc20018 	lw	v0,24(s8)
a000c618:	1c40fff3 	bgtz	v0,a000c5e8 <memcpy+0x30>
a000c61c:	00000000 	nop
a000c620:	8fc20010 	lw	v0,16(s8)
a000c624:	03c0e825 	move	sp,s8
a000c628:	8fbe000c 	lw	s8,12(sp)
a000c62c:	27bd0010 	addiu	sp,sp,16
a000c630:	03e00008 	jr	ra
a000c634:	00000000 	nop

a000c638 <memcmp>:
a000c638:	27bdfff0 	addiu	sp,sp,-16
a000c63c:	afbe000c 	sw	s8,12(sp)
a000c640:	03a0f025 	move	s8,sp
a000c644:	afc40010 	sw	a0,16(s8)
a000c648:	afc50014 	sw	a1,20(s8)
a000c64c:	afc60018 	sw	a2,24(s8)
a000c650:	8fc20010 	lw	v0,16(s8)
a000c654:	afc20000 	sw	v0,0(s8)
a000c658:	8fc20014 	lw	v0,20(s8)
a000c65c:	afc20004 	sw	v0,4(s8)
a000c660:	1000001d 	b	a000c6d8 <memcmp+0xa0>
a000c664:	00000000 	nop
a000c668:	8fc20000 	lw	v0,0(s8)
a000c66c:	80430000 	lb	v1,0(v0)
a000c670:	8fc20004 	lw	v0,4(s8)
a000c674:	80420000 	lb	v0,0(v0)
a000c678:	1062000e 	beq	v1,v0,a000c6b4 <memcmp+0x7c>
a000c67c:	00000000 	nop
a000c680:	8fc20000 	lw	v0,0(s8)
a000c684:	80430000 	lb	v1,0(v0)
a000c688:	8fc20004 	lw	v0,4(s8)
a000c68c:	80420000 	lb	v0,0(v0)
a000c690:	0043102a 	slt	v0,v0,v1
a000c694:	10400004 	beqz	v0,a000c6a8 <memcmp+0x70>
a000c698:	00000000 	nop
a000c69c:	24020001 	li	v0,1
a000c6a0:	10000011 	b	a000c6e8 <memcmp+0xb0>
a000c6a4:	00000000 	nop
a000c6a8:	2402ffff 	li	v0,-1
a000c6ac:	1000000e 	b	a000c6e8 <memcmp+0xb0>
a000c6b0:	00000000 	nop
a000c6b4:	8fc20000 	lw	v0,0(s8)
a000c6b8:	24420001 	addiu	v0,v0,1
a000c6bc:	afc20000 	sw	v0,0(s8)
a000c6c0:	8fc20004 	lw	v0,4(s8)
a000c6c4:	24420001 	addiu	v0,v0,1
a000c6c8:	afc20004 	sw	v0,4(s8)
a000c6cc:	8fc20018 	lw	v0,24(s8)
a000c6d0:	2442ffff 	addiu	v0,v0,-1
a000c6d4:	afc20018 	sw	v0,24(s8)
a000c6d8:	8fc20018 	lw	v0,24(s8)
a000c6dc:	1c40ffe2 	bgtz	v0,a000c668 <memcmp+0x30>
a000c6e0:	00000000 	nop
a000c6e4:	00001025 	move	v0,zero
a000c6e8:	03c0e825 	move	sp,s8
a000c6ec:	8fbe000c 	lw	s8,12(sp)
a000c6f0:	27bd0010 	addiu	sp,sp,16
a000c6f4:	03e00008 	jr	ra
a000c6f8:	00000000 	nop

a000c6fc <strlen>:
a000c6fc:	27bdfff0 	addiu	sp,sp,-16
a000c700:	afbe000c 	sw	s8,12(sp)
a000c704:	03a0f025 	move	s8,sp
a000c708:	afc40010 	sw	a0,16(s8)
a000c70c:	afc00000 	sw	zero,0(s8)
a000c710:	10000007 	b	a000c730 <strlen+0x34>
a000c714:	00000000 	nop
a000c718:	8fc20010 	lw	v0,16(s8)
a000c71c:	24420001 	addiu	v0,v0,1
a000c720:	afc20010 	sw	v0,16(s8)
a000c724:	8fc20000 	lw	v0,0(s8)
a000c728:	24420001 	addiu	v0,v0,1
a000c72c:	afc20000 	sw	v0,0(s8)
a000c730:	8fc20010 	lw	v0,16(s8)
a000c734:	80420000 	lb	v0,0(v0)
a000c738:	1440fff7 	bnez	v0,a000c718 <strlen+0x1c>
a000c73c:	00000000 	nop
a000c740:	8fc20000 	lw	v0,0(s8)
a000c744:	03c0e825 	move	sp,s8
a000c748:	8fbe000c 	lw	s8,12(sp)
a000c74c:	27bd0010 	addiu	sp,sp,16
a000c750:	03e00008 	jr	ra
a000c754:	00000000 	nop

a000c758 <strcpy>:
a000c758:	27bdfff0 	addiu	sp,sp,-16
a000c75c:	afbe000c 	sw	s8,12(sp)
a000c760:	03a0f025 	move	s8,sp
a000c764:	afc40010 	sw	a0,16(s8)
a000c768:	afc50014 	sw	a1,20(s8)
a000c76c:	8fc20010 	lw	v0,16(s8)
a000c770:	afc20000 	sw	v0,0(s8)
a000c774:	8fc20014 	lw	v0,20(s8)
a000c778:	80430000 	lb	v1,0(v0)
a000c77c:	8fc20010 	lw	v0,16(s8)
a000c780:	a0430000 	sb	v1,0(v0)
a000c784:	8fc20014 	lw	v0,20(s8)
a000c788:	80420000 	lb	v0,0(v0)
a000c78c:	10400009 	beqz	v0,a000c7b4 <strcpy+0x5c>
a000c790:	00000000 	nop
a000c794:	8fc20010 	lw	v0,16(s8)
a000c798:	24420001 	addiu	v0,v0,1
a000c79c:	afc20010 	sw	v0,16(s8)
a000c7a0:	8fc20014 	lw	v0,20(s8)
a000c7a4:	24420001 	addiu	v0,v0,1
a000c7a8:	afc20014 	sw	v0,20(s8)
a000c7ac:	1000fff1 	b	a000c774 <strcpy+0x1c>
a000c7b0:	00000000 	nop
a000c7b4:	00000000 	nop
a000c7b8:	8fc20000 	lw	v0,0(s8)
a000c7bc:	03c0e825 	move	sp,s8
a000c7c0:	8fbe000c 	lw	s8,12(sp)
a000c7c4:	27bd0010 	addiu	sp,sp,16
a000c7c8:	03e00008 	jr	ra
a000c7cc:	00000000 	nop

a000c7d0 <strcmp>:
a000c7d0:	27bdfff8 	addiu	sp,sp,-8
a000c7d4:	afbe0004 	sw	s8,4(sp)
a000c7d8:	03a0f025 	move	s8,sp
a000c7dc:	afc40008 	sw	a0,8(s8)
a000c7e0:	afc5000c 	sw	a1,12(s8)
a000c7e4:	1000001a 	b	a000c850 <strcmp+0x80>
a000c7e8:	00000000 	nop
a000c7ec:	8fc20008 	lw	v0,8(s8)
a000c7f0:	80430000 	lb	v1,0(v0)
a000c7f4:	8fc2000c 	lw	v0,12(s8)
a000c7f8:	80420000 	lb	v0,0(v0)
a000c7fc:	1062000e 	beq	v1,v0,a000c838 <strcmp+0x68>
a000c800:	00000000 	nop
a000c804:	8fc20008 	lw	v0,8(s8)
a000c808:	80430000 	lb	v1,0(v0)
a000c80c:	8fc2000c 	lw	v0,12(s8)
a000c810:	80420000 	lb	v0,0(v0)
a000c814:	0043102a 	slt	v0,v0,v1
a000c818:	10400004 	beqz	v0,a000c82c <strcmp+0x5c>
a000c81c:	00000000 	nop
a000c820:	24020001 	li	v0,1
a000c824:	10000013 	b	a000c874 <strcmp+0xa4>
a000c828:	00000000 	nop
a000c82c:	2402ffff 	li	v0,-1
a000c830:	10000010 	b	a000c874 <strcmp+0xa4>
a000c834:	00000000 	nop
a000c838:	8fc20008 	lw	v0,8(s8)
a000c83c:	24420001 	addiu	v0,v0,1
a000c840:	afc20008 	sw	v0,8(s8)
a000c844:	8fc2000c 	lw	v0,12(s8)
a000c848:	24420001 	addiu	v0,v0,1
a000c84c:	afc2000c 	sw	v0,12(s8)
a000c850:	8fc20008 	lw	v0,8(s8)
a000c854:	80420000 	lb	v0,0(v0)
a000c858:	1440ffe4 	bnez	v0,a000c7ec <strcmp+0x1c>
a000c85c:	00000000 	nop
a000c860:	8fc2000c 	lw	v0,12(s8)
a000c864:	80420000 	lb	v0,0(v0)
a000c868:	1440ffe0 	bnez	v0,a000c7ec <strcmp+0x1c>
a000c86c:	00000000 	nop
a000c870:	00001025 	move	v0,zero
a000c874:	03c0e825 	move	sp,s8
a000c878:	8fbe0004 	lw	s8,4(sp)
a000c87c:	27bd0008 	addiu	sp,sp,8
a000c880:	03e00008 	jr	ra
a000c884:	00000000 	nop

a000c888 <strncmp>:
a000c888:	27bdfff8 	addiu	sp,sp,-8
a000c88c:	afbe0004 	sw	s8,4(sp)
a000c890:	03a0f025 	move	s8,sp
a000c894:	afc40008 	sw	a0,8(s8)
a000c898:	afc5000c 	sw	a1,12(s8)
a000c89c:	afc60010 	sw	a2,16(s8)
a000c8a0:	1000001d 	b	a000c918 <strncmp+0x90>
a000c8a4:	00000000 	nop
a000c8a8:	8fc20008 	lw	v0,8(s8)
a000c8ac:	80430000 	lb	v1,0(v0)
a000c8b0:	8fc2000c 	lw	v0,12(s8)
a000c8b4:	80420000 	lb	v0,0(v0)
a000c8b8:	1062000e 	beq	v1,v0,a000c8f4 <strncmp+0x6c>
a000c8bc:	00000000 	nop
a000c8c0:	8fc20008 	lw	v0,8(s8)
a000c8c4:	80430000 	lb	v1,0(v0)
a000c8c8:	8fc2000c 	lw	v0,12(s8)
a000c8cc:	80420000 	lb	v0,0(v0)
a000c8d0:	0043102a 	slt	v0,v0,v1
a000c8d4:	10400004 	beqz	v0,a000c8e8 <strncmp+0x60>
a000c8d8:	00000000 	nop
a000c8dc:	24020001 	li	v0,1
a000c8e0:	10000019 	b	a000c948 <strncmp+0xc0>
a000c8e4:	00000000 	nop
a000c8e8:	2402ffff 	li	v0,-1
a000c8ec:	10000016 	b	a000c948 <strncmp+0xc0>
a000c8f0:	00000000 	nop
a000c8f4:	8fc20008 	lw	v0,8(s8)
a000c8f8:	24420001 	addiu	v0,v0,1
a000c8fc:	afc20008 	sw	v0,8(s8)
a000c900:	8fc2000c 	lw	v0,12(s8)
a000c904:	24420001 	addiu	v0,v0,1
a000c908:	afc2000c 	sw	v0,12(s8)
a000c90c:	8fc20010 	lw	v0,16(s8)
a000c910:	2442ffff 	addiu	v0,v0,-1
a000c914:	afc20010 	sw	v0,16(s8)
a000c918:	8fc20008 	lw	v0,8(s8)
a000c91c:	80420000 	lb	v0,0(v0)
a000c920:	14400005 	bnez	v0,a000c938 <strncmp+0xb0>
a000c924:	00000000 	nop
a000c928:	8fc2000c 	lw	v0,12(s8)
a000c92c:	80420000 	lb	v0,0(v0)
a000c930:	10400004 	beqz	v0,a000c944 <strncmp+0xbc>
a000c934:	00000000 	nop
a000c938:	8fc20010 	lw	v0,16(s8)
a000c93c:	1c40ffda 	bgtz	v0,a000c8a8 <strncmp+0x20>
a000c940:	00000000 	nop
a000c944:	00001025 	move	v0,zero
a000c948:	03c0e825 	move	sp,s8
a000c94c:	8fbe0004 	lw	s8,4(sp)
a000c950:	27bd0008 	addiu	sp,sp,8
a000c954:	03e00008 	jr	ra
a000c958:	00000000 	nop

a000c95c <putc>:
a000c95c:	27bdffe8 	addiu	sp,sp,-24
a000c960:	afbf0014 	sw	ra,20(sp)
a000c964:	afbe0010 	sw	s8,16(sp)
a000c968:	03a0f025 	move	s8,sp
a000c96c:	00801025 	move	v0,a0
a000c970:	a3c20018 	sb	v0,24(s8)
a000c974:	93c30018 	lbu	v1,24(s8)
a000c978:	2402000a 	li	v0,10
a000c97c:	14620005 	bne	v1,v0,a000c994 <putc+0x38>
a000c980:	00000000 	nop
a000c984:	2405000d 	li	a1,13
a000c988:	24040001 	li	a0,1
a000c98c:	0c003314 	jal	a000cc50 <serial_send_byte>
a000c990:	00000000 	nop
a000c994:	93c20018 	lbu	v0,24(s8)
a000c998:	00402825 	move	a1,v0
a000c99c:	24040001 	li	a0,1
a000c9a0:	0c003314 	jal	a000cc50 <serial_send_byte>
a000c9a4:	00000000 	nop
a000c9a8:	03c0e825 	move	sp,s8
a000c9ac:	8fbf0014 	lw	ra,20(sp)
a000c9b0:	8fbe0010 	lw	s8,16(sp)
a000c9b4:	27bd0018 	addiu	sp,sp,24
a000c9b8:	03e00008 	jr	ra
a000c9bc:	00000000 	nop

a000c9c0 <getc>:
a000c9c0:	27bdffe0 	addiu	sp,sp,-32
a000c9c4:	afbf001c 	sw	ra,28(sp)
a000c9c8:	afbe0018 	sw	s8,24(sp)
a000c9cc:	03a0f025 	move	s8,sp
a000c9d0:	24040001 	li	a0,1
a000c9d4:	0c00333f 	jal	a000ccfc <serial_recv_byte>
a000c9d8:	00000000 	nop
a000c9dc:	a3c20010 	sb	v0,16(s8)
a000c9e0:	93c30010 	lbu	v1,16(s8)
a000c9e4:	2402000d 	li	v0,13
a000c9e8:	10620004 	beq	v1,v0,a000c9fc <getc+0x3c>
a000c9ec:	00000000 	nop
a000c9f0:	93c20010 	lbu	v0,16(s8)
a000c9f4:	10000002 	b	a000ca00 <getc+0x40>
a000c9f8:	00000000 	nop
a000c9fc:	2402000a 	li	v0,10
a000ca00:	a3c20010 	sb	v0,16(s8)
a000ca04:	93c20010 	lbu	v0,16(s8)
a000ca08:	00402025 	move	a0,v0
a000ca0c:	0c003257 	jal	a000c95c <putc>
a000ca10:	00000000 	nop
a000ca14:	93c20010 	lbu	v0,16(s8)
a000ca18:	03c0e825 	move	sp,s8
a000ca1c:	8fbf001c 	lw	ra,28(sp)
a000ca20:	8fbe0018 	lw	s8,24(sp)
a000ca24:	27bd0020 	addiu	sp,sp,32
a000ca28:	03e00008 	jr	ra
a000ca2c:	00000000 	nop

a000ca30 <puts>:
a000ca30:	27bdffe8 	addiu	sp,sp,-24
a000ca34:	afbf0014 	sw	ra,20(sp)
a000ca38:	afbe0010 	sw	s8,16(sp)
a000ca3c:	03a0f025 	move	s8,sp
a000ca40:	afc40018 	sw	a0,24(s8)
a000ca44:	10000008 	b	a000ca68 <puts+0x38>
a000ca48:	00000000 	nop
a000ca4c:	8fc20018 	lw	v0,24(s8)
a000ca50:	24430001 	addiu	v1,v0,1
a000ca54:	afc30018 	sw	v1,24(s8)
a000ca58:	90420000 	lbu	v0,0(v0)
a000ca5c:	00402025 	move	a0,v0
a000ca60:	0c003257 	jal	a000c95c <putc>
a000ca64:	00000000 	nop
a000ca68:	8fc20018 	lw	v0,24(s8)
a000ca6c:	90420000 	lbu	v0,0(v0)
a000ca70:	1440fff6 	bnez	v0,a000ca4c <puts+0x1c>
a000ca74:	00000000 	nop
a000ca78:	00001025 	move	v0,zero
a000ca7c:	03c0e825 	move	sp,s8
a000ca80:	8fbf0014 	lw	ra,20(sp)
a000ca84:	8fbe0010 	lw	s8,16(sp)
a000ca88:	27bd0018 	addiu	sp,sp,24
a000ca8c:	03e00008 	jr	ra
a000ca90:	00000000 	nop

a000ca94 <gets>:
a000ca94:	27bdffe0 	addiu	sp,sp,-32
a000ca98:	afbf001c 	sw	ra,28(sp)
a000ca9c:	afbe0018 	sw	s8,24(sp)
a000caa0:	03a0f025 	move	s8,sp
a000caa4:	afc40020 	sw	a0,32(s8)
a000caa8:	afc00010 	sw	zero,16(s8)
a000caac:	0c003270 	jal	a000c9c0 <getc>
a000cab0:	00000000 	nop
a000cab4:	a3c20014 	sb	v0,20(s8)
a000cab8:	93c30014 	lbu	v1,20(s8)
a000cabc:	2402000a 	li	v0,10
a000cac0:	14620002 	bne	v1,v0,a000cacc <gets+0x38>
a000cac4:	00000000 	nop
a000cac8:	a3c00014 	sb	zero,20(s8)
a000cacc:	8fc20010 	lw	v0,16(s8)
a000cad0:	24430001 	addiu	v1,v0,1
a000cad4:	afc30010 	sw	v1,16(s8)
a000cad8:	00401825 	move	v1,v0
a000cadc:	8fc20020 	lw	v0,32(s8)
a000cae0:	00431021 	addu	v0,v0,v1
a000cae4:	93c30014 	lbu	v1,20(s8)
a000cae8:	a0430000 	sb	v1,0(v0)
a000caec:	93c20014 	lbu	v0,20(s8)
a000caf0:	1440ffee 	bnez	v0,a000caac <gets+0x18>
a000caf4:	00000000 	nop
a000caf8:	8fc20010 	lw	v0,16(s8)
a000cafc:	2442ffff 	addiu	v0,v0,-1
a000cb00:	03c0e825 	move	sp,s8
a000cb04:	8fbf001c 	lw	ra,28(sp)
a000cb08:	8fbe0018 	lw	s8,24(sp)
a000cb0c:	27bd0020 	addiu	sp,sp,32
a000cb10:	03e00008 	jr	ra
a000cb14:	00000000 	nop

a000cb18 <putxval>:
a000cb18:	27bdffd8 	addiu	sp,sp,-40
a000cb1c:	afbf0024 	sw	ra,36(sp)
a000cb20:	afbe0020 	sw	s8,32(sp)
a000cb24:	03a0f025 	move	s8,sp
a000cb28:	afc40028 	sw	a0,40(s8)
a000cb2c:	afc5002c 	sw	a1,44(s8)
a000cb30:	27c20014 	addiu	v0,s8,20
a000cb34:	24420008 	addiu	v0,v0,8
a000cb38:	afc20010 	sw	v0,16(s8)
a000cb3c:	8fc20010 	lw	v0,16(s8)
a000cb40:	2443ffff 	addiu	v1,v0,-1
a000cb44:	afc30010 	sw	v1,16(s8)
a000cb48:	a0400000 	sb	zero,0(v0)
a000cb4c:	8fc20028 	lw	v0,40(s8)
a000cb50:	1440001c 	bnez	v0,a000cbc4 <putxval+0xac>
a000cb54:	00000000 	nop
a000cb58:	8fc2002c 	lw	v0,44(s8)
a000cb5c:	14400019 	bnez	v0,a000cbc4 <putxval+0xac>
a000cb60:	00000000 	nop
a000cb64:	8fc2002c 	lw	v0,44(s8)
a000cb68:	24420001 	addiu	v0,v0,1
a000cb6c:	afc2002c 	sw	v0,44(s8)
a000cb70:	10000014 	b	a000cbc4 <putxval+0xac>
a000cb74:	00000000 	nop
a000cb78:	8fc20028 	lw	v0,40(s8)
a000cb7c:	3044000f 	andi	a0,v0,0xf
a000cb80:	8fc20010 	lw	v0,16(s8)
a000cb84:	2443ffff 	addiu	v1,v0,-1
a000cb88:	afc30010 	sw	v1,16(s8)
a000cb8c:	3c03a001 	lui	v1,0xa001
a000cb90:	24638028 	addiu	v1,v1,-32728
a000cb94:	00831821 	addu	v1,a0,v1
a000cb98:	80630000 	lb	v1,0(v1)
a000cb9c:	a0430000 	sb	v1,0(v0)
a000cba0:	8fc20028 	lw	v0,40(s8)
a000cba4:	00021102 	srl	v0,v0,0x4
a000cba8:	afc20028 	sw	v0,40(s8)
a000cbac:	8fc2002c 	lw	v0,44(s8)
a000cbb0:	10400004 	beqz	v0,a000cbc4 <putxval+0xac>
a000cbb4:	00000000 	nop
a000cbb8:	8fc2002c 	lw	v0,44(s8)
a000cbbc:	2442ffff 	addiu	v0,v0,-1
a000cbc0:	afc2002c 	sw	v0,44(s8)
a000cbc4:	8fc20028 	lw	v0,40(s8)
a000cbc8:	1440ffeb 	bnez	v0,a000cb78 <putxval+0x60>
a000cbcc:	00000000 	nop
a000cbd0:	8fc2002c 	lw	v0,44(s8)
a000cbd4:	1440ffe8 	bnez	v0,a000cb78 <putxval+0x60>
a000cbd8:	00000000 	nop
a000cbdc:	8fc20010 	lw	v0,16(s8)
a000cbe0:	24420001 	addiu	v0,v0,1
a000cbe4:	00402025 	move	a0,v0
a000cbe8:	0c00328c 	jal	a000ca30 <puts>
a000cbec:	00000000 	nop
a000cbf0:	00001025 	move	v0,zero
a000cbf4:	03c0e825 	move	sp,s8
a000cbf8:	8fbf0024 	lw	ra,36(sp)
a000cbfc:	8fbe0020 	lw	s8,32(sp)
a000cc00:	27bd0028 	addiu	sp,sp,40
a000cc04:	03e00008 	jr	ra
a000cc08:	00000000 	nop

a000cc0c <serial_is_send_enable>:
a000cc0c:	27bdfff0 	addiu	sp,sp,-16
a000cc10:	afbe000c 	sw	s8,12(sp)
a000cc14:	03a0f025 	move	s8,sp
a000cc18:	afc40010 	sw	a0,16(s8)
a000cc1c:	3c02bf80 	lui	v0,0xbf80
a000cc20:	34426210 	ori	v0,v0,0x6210
a000cc24:	afc20000 	sw	v0,0(s8)
a000cc28:	8fc20000 	lw	v0,0(s8)
a000cc2c:	8c420000 	lw	v0,0(v0)
a000cc30:	30420200 	andi	v0,v0,0x200
a000cc34:	2c420001 	sltiu	v0,v0,1
a000cc38:	304200ff 	andi	v0,v0,0xff
a000cc3c:	03c0e825 	move	sp,s8
a000cc40:	8fbe000c 	lw	s8,12(sp)
a000cc44:	27bd0010 	addiu	sp,sp,16
a000cc48:	03e00008 	jr	ra
a000cc4c:	00000000 	nop

a000cc50 <serial_send_byte>:
a000cc50:	27bdffe0 	addiu	sp,sp,-32
a000cc54:	afbf001c 	sw	ra,28(sp)
a000cc58:	afbe0018 	sw	s8,24(sp)
a000cc5c:	03a0f025 	move	s8,sp
a000cc60:	afc40020 	sw	a0,32(s8)
a000cc64:	00a01025 	move	v0,a1
a000cc68:	a3c20024 	sb	v0,36(s8)
a000cc6c:	3c02bf80 	lui	v0,0xbf80
a000cc70:	34426220 	ori	v0,v0,0x6220
a000cc74:	afc20010 	sw	v0,16(s8)
a000cc78:	00000000 	nop
a000cc7c:	8fc40020 	lw	a0,32(s8)
a000cc80:	0c003303 	jal	a000cc0c <serial_is_send_enable>
a000cc84:	00000000 	nop
a000cc88:	1040fffc 	beqz	v0,a000cc7c <serial_send_byte+0x2c>
a000cc8c:	00000000 	nop
a000cc90:	93c30024 	lbu	v1,36(s8)
a000cc94:	8fc20010 	lw	v0,16(s8)
a000cc98:	ac430000 	sw	v1,0(v0)
a000cc9c:	00001025 	move	v0,zero
a000cca0:	03c0e825 	move	sp,s8
a000cca4:	8fbf001c 	lw	ra,28(sp)
a000cca8:	8fbe0018 	lw	s8,24(sp)
a000ccac:	27bd0020 	addiu	sp,sp,32
a000ccb0:	03e00008 	jr	ra
a000ccb4:	00000000 	nop

a000ccb8 <serial_is_recv_enable>:
a000ccb8:	27bdfff0 	addiu	sp,sp,-16
a000ccbc:	afbe000c 	sw	s8,12(sp)
a000ccc0:	03a0f025 	move	s8,sp
a000ccc4:	afc40010 	sw	a0,16(s8)
a000ccc8:	3c02bf80 	lui	v0,0xbf80
a000cccc:	34426210 	ori	v0,v0,0x6210
a000ccd0:	afc20000 	sw	v0,0(s8)
a000ccd4:	8fc20000 	lw	v0,0(s8)
a000ccd8:	8c420000 	lw	v0,0(v0)
a000ccdc:	30420002 	andi	v0,v0,0x2
a000cce0:	2c420001 	sltiu	v0,v0,1
a000cce4:	304200ff 	andi	v0,v0,0xff
a000cce8:	03c0e825 	move	sp,s8
a000ccec:	8fbe000c 	lw	s8,12(sp)
a000ccf0:	27bd0010 	addiu	sp,sp,16
a000ccf4:	03e00008 	jr	ra
a000ccf8:	00000000 	nop

a000ccfc <serial_recv_byte>:
a000ccfc:	27bdfff0 	addiu	sp,sp,-16
a000cd00:	afbe000c 	sw	s8,12(sp)
a000cd04:	03a0f025 	move	s8,sp
a000cd08:	afc40010 	sw	a0,16(s8)
a000cd0c:	3c02bf80 	lui	v0,0xbf80
a000cd10:	34426230 	ori	v0,v0,0x6230
a000cd14:	afc20000 	sw	v0,0(s8)
a000cd18:	3c02bf80 	lui	v0,0xbf80
a000cd1c:	34426210 	ori	v0,v0,0x6210
a000cd20:	afc20004 	sw	v0,4(s8)
a000cd24:	00000000 	nop
a000cd28:	8fc20004 	lw	v0,4(s8)
a000cd2c:	8c420000 	lw	v0,0(v0)
a000cd30:	30420001 	andi	v0,v0,0x1
a000cd34:	1040fffc 	beqz	v0,a000cd28 <serial_recv_byte+0x2c>
a000cd38:	00000000 	nop
a000cd3c:	8fc20000 	lw	v0,0(s8)
a000cd40:	8c420000 	lw	v0,0(v0)
a000cd44:	304200ff 	andi	v0,v0,0xff
a000cd48:	03c0e825 	move	sp,s8
a000cd4c:	8fbe000c 	lw	s8,12(sp)
a000cd50:	27bd0010 	addiu	sp,sp,16
a000cd54:	03e00008 	jr	ra
a000cd58:	00000000 	nop

a000cd5c <serial_intr_is_recv_enable>:
a000cd5c:	27bdfff0 	addiu	sp,sp,-16
a000cd60:	afbe000c 	sw	s8,12(sp)
a000cd64:	03a0f025 	move	s8,sp
a000cd68:	afc40010 	sw	a0,16(s8)
a000cd6c:	3c02bf88 	lui	v0,0xbf88
a000cd70:	34421070 	ori	v0,v0,0x1070
a000cd74:	afc20000 	sw	v0,0(s8)
a000cd78:	8fc20000 	lw	v0,0(s8)
a000cd7c:	8c420000 	lw	v0,0(v0)
a000cd80:	00021582 	srl	v0,v0,0x16
a000cd84:	30420001 	andi	v0,v0,0x1
a000cd88:	03c0e825 	move	sp,s8
a000cd8c:	8fbe000c 	lw	s8,12(sp)
a000cd90:	27bd0010 	addiu	sp,sp,16
a000cd94:	03e00008 	jr	ra
a000cd98:	00000000 	nop

a000cd9c <serial_intr_recv_enable>:
a000cd9c:	27bdfff0 	addiu	sp,sp,-16
a000cda0:	afbe000c 	sw	s8,12(sp)
a000cda4:	03a0f025 	move	s8,sp
a000cda8:	afc40010 	sw	a0,16(s8)
a000cdac:	3c02bf88 	lui	v0,0xbf88
a000cdb0:	34421078 	ori	v0,v0,0x1078
a000cdb4:	afc20000 	sw	v0,0(s8)
a000cdb8:	8fc20000 	lw	v0,0(s8)
a000cdbc:	3c030040 	lui	v1,0x40
a000cdc0:	ac430000 	sw	v1,0(v0)
a000cdc4:	00000000 	nop
a000cdc8:	03c0e825 	move	sp,s8
a000cdcc:	8fbe000c 	lw	s8,12(sp)
a000cdd0:	27bd0010 	addiu	sp,sp,16
a000cdd4:	03e00008 	jr	ra
a000cdd8:	00000000 	nop

a000cddc <serial_intr_recv_disable>:
a000cddc:	27bdfff0 	addiu	sp,sp,-16
a000cde0:	afbe000c 	sw	s8,12(sp)
a000cde4:	03a0f025 	move	s8,sp
a000cde8:	afc40010 	sw	a0,16(s8)
a000cdec:	3c02bf88 	lui	v0,0xbf88
a000cdf0:	34421074 	ori	v0,v0,0x1074
a000cdf4:	afc20000 	sw	v0,0(s8)
a000cdf8:	8fc20000 	lw	v0,0(s8)
a000cdfc:	3c030040 	lui	v1,0x40
a000ce00:	ac430000 	sw	v1,0(v0)
a000ce04:	00000000 	nop
a000ce08:	03c0e825 	move	sp,s8
a000ce0c:	8fbe000c 	lw	s8,12(sp)
a000ce10:	27bd0010 	addiu	sp,sp,16
a000ce14:	03e00008 	jr	ra
a000ce18:	00000000 	nop

a000ce1c <softvec_init>:
a000ce1c:	27bdffe0 	addiu	sp,sp,-32
a000ce20:	afbf001c 	sw	ra,28(sp)
a000ce24:	afbe0018 	sw	s8,24(sp)
a000ce28:	03a0f025 	move	s8,sp
a000ce2c:	afc00010 	sw	zero,16(s8)
a000ce30:	10000008 	b	a000ce54 <softvec_init+0x38>
a000ce34:	00000000 	nop
a000ce38:	00002825 	move	a1,zero
a000ce3c:	8fc40010 	lw	a0,16(s8)
a000ce40:	0c0033a0 	jal	a000ce80 <softvec_setintr>
a000ce44:	00000000 	nop
a000ce48:	8fc20010 	lw	v0,16(s8)
a000ce4c:	24420001 	addiu	v0,v0,1
a000ce50:	afc20010 	sw	v0,16(s8)
a000ce54:	8fc20010 	lw	v0,16(s8)
a000ce58:	28420003 	slti	v0,v0,3
a000ce5c:	1440fff6 	bnez	v0,a000ce38 <softvec_init+0x1c>
a000ce60:	00000000 	nop
a000ce64:	00001025 	move	v0,zero
a000ce68:	03c0e825 	move	sp,s8
a000ce6c:	8fbf001c 	lw	ra,28(sp)
a000ce70:	8fbe0018 	lw	s8,24(sp)
a000ce74:	27bd0020 	addiu	sp,sp,32
a000ce78:	03e00008 	jr	ra
a000ce7c:	00000000 	nop

a000ce80 <softvec_setintr>:
a000ce80:	27bdfff8 	addiu	sp,sp,-8
a000ce84:	afbe0004 	sw	s8,4(sp)
a000ce88:	03a0f025 	move	s8,sp
a000ce8c:	afc40008 	sw	a0,8(s8)
a000ce90:	afc5000c 	sw	a1,12(s8)
a000ce94:	8fc20008 	lw	v0,8(s8)
a000ce98:	00021880 	sll	v1,v0,0x2
a000ce9c:	3c02a000 	lui	v0,0xa000
a000cea0:	34427d00 	ori	v0,v0,0x7d00
a000cea4:	00621021 	addu	v0,v1,v0
a000cea8:	8fc3000c 	lw	v1,12(s8)
a000ceac:	ac430000 	sw	v1,0(v0)
a000ceb0:	00001025 	move	v0,zero
a000ceb4:	03c0e825 	move	sp,s8
a000ceb8:	8fbe0004 	lw	s8,4(sp)
a000cebc:	27bd0008 	addiu	sp,sp,8
a000cec0:	03e00008 	jr	ra
a000cec4:	00000000 	nop

a000cec8 <interrupt>:
a000cec8:	27bdffe0 	addiu	sp,sp,-32
a000cecc:	afbf001c 	sw	ra,28(sp)
a000ced0:	afbe0018 	sw	s8,24(sp)
a000ced4:	03a0f025 	move	s8,sp
a000ced8:	afc40020 	sw	a0,32(s8)
a000cedc:	afc50024 	sw	a1,36(s8)
a000cee0:	8fc20020 	lw	v0,32(s8)
a000cee4:	00021880 	sll	v1,v0,0x2
a000cee8:	3c02a000 	lui	v0,0xa000
a000ceec:	34427d00 	ori	v0,v0,0x7d00
a000cef0:	00621021 	addu	v0,v1,v0
a000cef4:	8c420000 	lw	v0,0(v0)
a000cef8:	afc20010 	sw	v0,16(s8)
a000cefc:	8fc20010 	lw	v0,16(s8)
a000cf00:	10400006 	beqz	v0,a000cf1c <interrupt+0x54>
a000cf04:	00000000 	nop
a000cf08:	8fc20010 	lw	v0,16(s8)
a000cf0c:	8fc50024 	lw	a1,36(s8)
a000cf10:	8fc40020 	lw	a0,32(s8)
a000cf14:	0040f809 	jalr	v0
a000cf18:	00000000 	nop
a000cf1c:	00000000 	nop
a000cf20:	03c0e825 	move	sp,s8
a000cf24:	8fbf001c 	lw	ra,28(sp)
a000cf28:	8fbe0018 	lw	s8,24(sp)
a000cf2c:	27bd0020 	addiu	sp,sp,32
a000cf30:	03e00008 	jr	ra
a000cf34:	00000000 	nop

a000cf38 <getcurrent>:
a000cf38:	27bdfff8 	addiu	sp,sp,-8
a000cf3c:	afbe0004 	sw	s8,4(sp)
a000cf40:	03a0f025 	move	s8,sp
a000cf44:	3c02a001 	lui	v0,0xa001
a000cf48:	8c4280ec 	lw	v0,-32532(v0)
a000cf4c:	14400004 	bnez	v0,a000cf60 <getcurrent+0x28>
a000cf50:	00000000 	nop
a000cf54:	2402ffff 	li	v0,-1
a000cf58:	10000011 	b	a000cfa0 <getcurrent+0x68>
a000cf5c:	00000000 	nop
a000cf60:	3c02a001 	lui	v0,0xa001
a000cf64:	8c4280ec 	lw	v0,-32532(v0)
a000cf68:	8c430000 	lw	v1,0(v0)
a000cf6c:	3c02a001 	lui	v0,0xa001
a000cf70:	ac4380e4 	sw	v1,-32540(v0)
a000cf74:	3c02a001 	lui	v0,0xa001
a000cf78:	8c4280e4 	lw	v0,-32540(v0)
a000cf7c:	14400004 	bnez	v0,a000cf90 <getcurrent+0x58>
a000cf80:	00000000 	nop
a000cf84:	3c02a001 	lui	v0,0xa001
a000cf88:	244280e4 	addiu	v0,v0,-32540
a000cf8c:	ac400004 	sw	zero,4(v0)
a000cf90:	3c02a001 	lui	v0,0xa001
a000cf94:	8c4280ec 	lw	v0,-32532(v0)
a000cf98:	ac400000 	sw	zero,0(v0)
a000cf9c:	00001025 	move	v0,zero
a000cfa0:	03c0e825 	move	sp,s8
a000cfa4:	8fbe0004 	lw	s8,4(sp)
a000cfa8:	27bd0008 	addiu	sp,sp,8
a000cfac:	03e00008 	jr	ra
a000cfb0:	00000000 	nop

a000cfb4 <putcurrent>:
a000cfb4:	27bdfff8 	addiu	sp,sp,-8
a000cfb8:	afbe0004 	sw	s8,4(sp)
a000cfbc:	03a0f025 	move	s8,sp
a000cfc0:	3c02a001 	lui	v0,0xa001
a000cfc4:	8c4280ec 	lw	v0,-32532(v0)
a000cfc8:	14400004 	bnez	v0,a000cfdc <putcurrent+0x28>
a000cfcc:	00000000 	nop
a000cfd0:	2402ffff 	li	v0,-1
a000cfd4:	10000018 	b	a000d038 <putcurrent+0x84>
a000cfd8:	00000000 	nop
a000cfdc:	3c02a001 	lui	v0,0xa001
a000cfe0:	244280e4 	addiu	v0,v0,-32540
a000cfe4:	8c420004 	lw	v0,4(v0)
a000cfe8:	10400009 	beqz	v0,a000d010 <putcurrent+0x5c>
a000cfec:	00000000 	nop
a000cff0:	3c02a001 	lui	v0,0xa001
a000cff4:	244280e4 	addiu	v0,v0,-32540
a000cff8:	8c420004 	lw	v0,4(v0)
a000cffc:	3c03a001 	lui	v1,0xa001
a000d000:	8c6380ec 	lw	v1,-32532(v1)
a000d004:	ac430000 	sw	v1,0(v0)
a000d008:	10000005 	b	a000d020 <putcurrent+0x6c>
a000d00c:	00000000 	nop
a000d010:	3c02a001 	lui	v0,0xa001
a000d014:	8c4380ec 	lw	v1,-32532(v0)
a000d018:	3c02a001 	lui	v0,0xa001
a000d01c:	ac4380e4 	sw	v1,-32540(v0)
a000d020:	3c02a001 	lui	v0,0xa001
a000d024:	8c4380ec 	lw	v1,-32532(v0)
a000d028:	3c02a001 	lui	v0,0xa001
a000d02c:	244280e4 	addiu	v0,v0,-32540
a000d030:	ac430004 	sw	v1,4(v0)
a000d034:	00001025 	move	v0,zero
a000d038:	03c0e825 	move	sp,s8
a000d03c:	8fbe0004 	lw	s8,4(sp)
a000d040:	27bd0008 	addiu	sp,sp,8
a000d044:	03e00008 	jr	ra
a000d048:	00000000 	nop

a000d04c <thread_end>:
a000d04c:	27bdffe8 	addiu	sp,sp,-24
a000d050:	afbf0014 	sw	ra,20(sp)
a000d054:	afbe0010 	sw	s8,16(sp)
a000d058:	03a0f025 	move	s8,sp
a000d05c:	0c003682 	jal	a000da08 <kz_exit>
a000d060:	00000000 	nop
a000d064:	00000000 	nop
a000d068:	03c0e825 	move	sp,s8
a000d06c:	8fbf0014 	lw	ra,20(sp)
a000d070:	8fbe0010 	lw	s8,16(sp)
a000d074:	27bd0018 	addiu	sp,sp,24
a000d078:	03e00008 	jr	ra
a000d07c:	00000000 	nop

a000d080 <thread_init>:
a000d080:	27bdffe8 	addiu	sp,sp,-24
a000d084:	afbf0014 	sw	ra,20(sp)
a000d088:	afbe0010 	sw	s8,16(sp)
a000d08c:	03a0f025 	move	s8,sp
a000d090:	afc40018 	sw	a0,24(s8)
a000d094:	8fc20018 	lw	v0,24(s8)
a000d098:	8c420018 	lw	v0,24(v0)
a000d09c:	8fc30018 	lw	v1,24(s8)
a000d0a0:	8c64001c 	lw	a0,28(v1)
a000d0a4:	8fc30018 	lw	v1,24(s8)
a000d0a8:	8c630020 	lw	v1,32(v1)
a000d0ac:	00602825 	move	a1,v1
a000d0b0:	0040f809 	jalr	v0
a000d0b4:	00000000 	nop
a000d0b8:	0c003413 	jal	a000d04c <thread_end>
a000d0bc:	00000000 	nop
a000d0c0:	00000000 	nop
a000d0c4:	03c0e825 	move	sp,s8
a000d0c8:	8fbf0014 	lw	ra,20(sp)
a000d0cc:	8fbe0010 	lw	s8,16(sp)
a000d0d0:	27bd0018 	addiu	sp,sp,24
a000d0d4:	03e00008 	jr	ra
a000d0d8:	00000000 	nop

a000d0dc <thread_run>:
a000d0dc:	27bdffd8 	addiu	sp,sp,-40
a000d0e0:	afbf0024 	sw	ra,36(sp)
a000d0e4:	afbe0020 	sw	s8,32(sp)
a000d0e8:	03a0f025 	move	s8,sp
a000d0ec:	afc40028 	sw	a0,40(s8)
a000d0f0:	afc5002c 	sw	a1,44(s8)
a000d0f4:	afc60030 	sw	a2,48(s8)
a000d0f8:	afc70034 	sw	a3,52(s8)
a000d0fc:	afc00010 	sw	zero,16(s8)
a000d100:	10000011 	b	a000d148 <thread_run+0x6c>
a000d104:	00000000 	nop
a000d108:	8fc30010 	lw	v1,16(s8)
a000d10c:	00601025 	move	v0,v1
a000d110:	00021040 	sll	v0,v0,0x1
a000d114:	00431021 	addu	v0,v0,v1
a000d118:	00021100 	sll	v0,v0,0x4
a000d11c:	3c03a001 	lui	v1,0xa001
a000d120:	246380f0 	addiu	v1,v1,-32528
a000d124:	00431021 	addu	v0,v0,v1
a000d128:	afc20014 	sw	v0,20(s8)
a000d12c:	8fc20014 	lw	v0,20(s8)
a000d130:	8c420018 	lw	v0,24(v0)
a000d134:	1040000a 	beqz	v0,a000d160 <thread_run+0x84>
a000d138:	00000000 	nop
a000d13c:	8fc20010 	lw	v0,16(s8)
a000d140:	24420001 	addiu	v0,v0,1
a000d144:	afc20010 	sw	v0,16(s8)
a000d148:	8fc20010 	lw	v0,16(s8)
a000d14c:	28420006 	slti	v0,v0,6
a000d150:	1440ffed 	bnez	v0,a000d108 <thread_run+0x2c>
a000d154:	00000000 	nop
a000d158:	10000002 	b	a000d164 <thread_run+0x88>
a000d15c:	00000000 	nop
a000d160:	00000000 	nop
a000d164:	8fc30010 	lw	v1,16(s8)
a000d168:	24020006 	li	v0,6
a000d16c:	14620004 	bne	v1,v0,a000d180 <thread_run+0xa4>
a000d170:	00000000 	nop
a000d174:	2402ffff 	li	v0,-1
a000d178:	100000b7 	b	a000d458 <thread_run+0x37c>
a000d17c:	00000000 	nop
a000d180:	24060030 	li	a2,48
a000d184:	00002825 	move	a1,zero
a000d188:	8fc40014 	lw	a0,20(s8)
a000d18c:	0c003152 	jal	a000c548 <memset>
a000d190:	00000000 	nop
a000d194:	8fc20014 	lw	v0,20(s8)
a000d198:	24420004 	addiu	v0,v0,4
a000d19c:	8fc5002c 	lw	a1,44(s8)
a000d1a0:	00402025 	move	a0,v0
a000d1a4:	0c0031d6 	jal	a000c758 <strcpy>
a000d1a8:	00000000 	nop
a000d1ac:	8fc20014 	lw	v0,20(s8)
a000d1b0:	ac400000 	sw	zero,0(v0)
a000d1b4:	8fc20014 	lw	v0,20(s8)
a000d1b8:	8fc30028 	lw	v1,40(s8)
a000d1bc:	ac430018 	sw	v1,24(v0)
a000d1c0:	8fc20014 	lw	v0,20(s8)
a000d1c4:	8fc30034 	lw	v1,52(s8)
a000d1c8:	ac43001c 	sw	v1,28(v0)
a000d1cc:	8fc20014 	lw	v0,20(s8)
a000d1d0:	8fc30038 	lw	v1,56(s8)
a000d1d4:	ac430020 	sw	v1,32(v0)
a000d1d8:	3c02a001 	lui	v0,0xa001
a000d1dc:	8c4280e0 	lw	v0,-32544(v0)
a000d1e0:	8fc60030 	lw	a2,48(s8)
a000d1e4:	00002825 	move	a1,zero
a000d1e8:	00402025 	move	a0,v0
a000d1ec:	0c003152 	jal	a000c548 <memset>
a000d1f0:	00000000 	nop
a000d1f4:	3c02a001 	lui	v0,0xa001
a000d1f8:	8c4380e0 	lw	v1,-32544(v0)
a000d1fc:	8fc20030 	lw	v0,48(s8)
a000d200:	00621821 	addu	v1,v1,v0
a000d204:	3c02a001 	lui	v0,0xa001
a000d208:	ac4380e0 	sw	v1,-32544(v0)
a000d20c:	3c02a001 	lui	v0,0xa001
a000d210:	8c4380e0 	lw	v1,-32544(v0)
a000d214:	8fc20014 	lw	v0,20(s8)
a000d218:	ac430014 	sw	v1,20(v0)
a000d21c:	8fc20014 	lw	v0,20(s8)
a000d220:	8c420014 	lw	v0,20(v0)
a000d224:	afc20018 	sw	v0,24(s8)
a000d228:	8fc20018 	lw	v0,24(s8)
a000d22c:	2442fffc 	addiu	v0,v0,-4
a000d230:	afc20018 	sw	v0,24(s8)
a000d234:	3c02a001 	lui	v0,0xa001
a000d238:	2443d04c 	addiu	v1,v0,-12212
a000d23c:	8fc20018 	lw	v0,24(s8)
a000d240:	ac430000 	sw	v1,0(v0)
a000d244:	8fc20018 	lw	v0,24(s8)
a000d248:	2442fffc 	addiu	v0,v0,-4
a000d24c:	afc20018 	sw	v0,24(s8)
a000d250:	3c02a001 	lui	v0,0xa001
a000d254:	2443d080 	addiu	v1,v0,-12160
a000d258:	8fc20018 	lw	v0,24(s8)
a000d25c:	ac430000 	sw	v1,0(v0)
a000d260:	8fc20018 	lw	v0,24(s8)
a000d264:	2442fffc 	addiu	v0,v0,-4
a000d268:	afc20018 	sw	v0,24(s8)
a000d26c:	3c02a001 	lui	v0,0xa001
a000d270:	2443d080 	addiu	v1,v0,-12160
a000d274:	8fc20018 	lw	v0,24(s8)
a000d278:	ac430000 	sw	v1,0(v0)
a000d27c:	8fc20018 	lw	v0,24(s8)
a000d280:	2442fffc 	addiu	v0,v0,-4
a000d284:	afc20018 	sw	v0,24(s8)
a000d288:	8fc20018 	lw	v0,24(s8)
a000d28c:	ac400000 	sw	zero,0(v0)
a000d290:	8fc20018 	lw	v0,24(s8)
a000d294:	2442fffc 	addiu	v0,v0,-4
a000d298:	afc20018 	sw	v0,24(s8)
a000d29c:	8fc20018 	lw	v0,24(s8)
a000d2a0:	ac400000 	sw	zero,0(v0)
a000d2a4:	8fc20018 	lw	v0,24(s8)
a000d2a8:	2442fffc 	addiu	v0,v0,-4
a000d2ac:	afc20018 	sw	v0,24(s8)
a000d2b0:	8fc20018 	lw	v0,24(s8)
a000d2b4:	ac400000 	sw	zero,0(v0)
a000d2b8:	8fc20018 	lw	v0,24(s8)
a000d2bc:	2442fffc 	addiu	v0,v0,-4
a000d2c0:	afc20018 	sw	v0,24(s8)
a000d2c4:	8fc20018 	lw	v0,24(s8)
a000d2c8:	ac400000 	sw	zero,0(v0)
a000d2cc:	8fc20018 	lw	v0,24(s8)
a000d2d0:	2442fffc 	addiu	v0,v0,-4
a000d2d4:	afc20018 	sw	v0,24(s8)
a000d2d8:	8fc20018 	lw	v0,24(s8)
a000d2dc:	ac400000 	sw	zero,0(v0)
a000d2e0:	8fc20018 	lw	v0,24(s8)
a000d2e4:	2442fffc 	addiu	v0,v0,-4
a000d2e8:	afc20018 	sw	v0,24(s8)
a000d2ec:	8fc20018 	lw	v0,24(s8)
a000d2f0:	ac400000 	sw	zero,0(v0)
a000d2f4:	8fc20018 	lw	v0,24(s8)
a000d2f8:	2442fffc 	addiu	v0,v0,-4
a000d2fc:	afc20018 	sw	v0,24(s8)
a000d300:	8fc20018 	lw	v0,24(s8)
a000d304:	ac400000 	sw	zero,0(v0)
a000d308:	8fc20018 	lw	v0,24(s8)
a000d30c:	2442fffc 	addiu	v0,v0,-4
a000d310:	afc20018 	sw	v0,24(s8)
a000d314:	8fc20018 	lw	v0,24(s8)
a000d318:	ac400000 	sw	zero,0(v0)
a000d31c:	8fc20018 	lw	v0,24(s8)
a000d320:	2442fffc 	addiu	v0,v0,-4
a000d324:	afc20018 	sw	v0,24(s8)
a000d328:	8fc20018 	lw	v0,24(s8)
a000d32c:	ac400000 	sw	zero,0(v0)
a000d330:	8fc20018 	lw	v0,24(s8)
a000d334:	2442fffc 	addiu	v0,v0,-4
a000d338:	afc20018 	sw	v0,24(s8)
a000d33c:	8fc20018 	lw	v0,24(s8)
a000d340:	ac400000 	sw	zero,0(v0)
a000d344:	8fc20018 	lw	v0,24(s8)
a000d348:	2442fffc 	addiu	v0,v0,-4
a000d34c:	afc20018 	sw	v0,24(s8)
a000d350:	8fc20018 	lw	v0,24(s8)
a000d354:	ac400000 	sw	zero,0(v0)
a000d358:	8fc20018 	lw	v0,24(s8)
a000d35c:	2442fffc 	addiu	v0,v0,-4
a000d360:	afc20018 	sw	v0,24(s8)
a000d364:	8fc20018 	lw	v0,24(s8)
a000d368:	ac400000 	sw	zero,0(v0)
a000d36c:	8fc20018 	lw	v0,24(s8)
a000d370:	2442fffc 	addiu	v0,v0,-4
a000d374:	afc20018 	sw	v0,24(s8)
a000d378:	8fc20018 	lw	v0,24(s8)
a000d37c:	ac400000 	sw	zero,0(v0)
a000d380:	8fc20018 	lw	v0,24(s8)
a000d384:	2442fffc 	addiu	v0,v0,-4
a000d388:	afc20018 	sw	v0,24(s8)
a000d38c:	8fc20018 	lw	v0,24(s8)
a000d390:	ac400000 	sw	zero,0(v0)
a000d394:	8fc20018 	lw	v0,24(s8)
a000d398:	2442fffc 	addiu	v0,v0,-4
a000d39c:	afc20018 	sw	v0,24(s8)
a000d3a0:	8fc20018 	lw	v0,24(s8)
a000d3a4:	ac400000 	sw	zero,0(v0)
a000d3a8:	8fc20018 	lw	v0,24(s8)
a000d3ac:	2442fffc 	addiu	v0,v0,-4
a000d3b0:	afc20018 	sw	v0,24(s8)
a000d3b4:	8fc20018 	lw	v0,24(s8)
a000d3b8:	ac400000 	sw	zero,0(v0)
a000d3bc:	8fc20018 	lw	v0,24(s8)
a000d3c0:	2442fffc 	addiu	v0,v0,-4
a000d3c4:	afc20018 	sw	v0,24(s8)
a000d3c8:	8fc20018 	lw	v0,24(s8)
a000d3cc:	ac400000 	sw	zero,0(v0)
a000d3d0:	8fc20018 	lw	v0,24(s8)
a000d3d4:	2442fffc 	addiu	v0,v0,-4
a000d3d8:	afc20018 	sw	v0,24(s8)
a000d3dc:	8fc30014 	lw	v1,20(s8)
a000d3e0:	8fc20018 	lw	v0,24(s8)
a000d3e4:	ac430000 	sw	v1,0(v0)
a000d3e8:	8fc20018 	lw	v0,24(s8)
a000d3ec:	2442fffc 	addiu	v0,v0,-4
a000d3f0:	afc20018 	sw	v0,24(s8)
a000d3f4:	8fc20018 	lw	v0,24(s8)
a000d3f8:	ac400000 	sw	zero,0(v0)
a000d3fc:	8fc20018 	lw	v0,24(s8)
a000d400:	2442fffc 	addiu	v0,v0,-4
a000d404:	afc20018 	sw	v0,24(s8)
a000d408:	8fc20018 	lw	v0,24(s8)
a000d40c:	ac400000 	sw	zero,0(v0)
a000d410:	3c02a001 	lui	v0,0xa001
a000d414:	2442d080 	addiu	v0,v0,-12160
a000d418:	00002825 	move	a1,zero
a000d41c:	00402025 	move	a0,v0
a000d420:	0c0032c6 	jal	a000cb18 <putxval>
a000d424:	00000000 	nop
a000d428:	8fc30018 	lw	v1,24(s8)
a000d42c:	8fc20014 	lw	v0,20(s8)
a000d430:	ac43002c 	sw	v1,44(v0)
a000d434:	0c0033ed 	jal	a000cfb4 <putcurrent>
a000d438:	00000000 	nop
a000d43c:	3c02a001 	lui	v0,0xa001
a000d440:	8fc30014 	lw	v1,20(s8)
a000d444:	ac4380ec 	sw	v1,-32532(v0)
a000d448:	0c0033ed 	jal	a000cfb4 <putcurrent>
a000d44c:	00000000 	nop
a000d450:	3c02a001 	lui	v0,0xa001
a000d454:	8c4280ec 	lw	v0,-32532(v0)
a000d458:	03c0e825 	move	sp,s8
a000d45c:	8fbf0024 	lw	ra,36(sp)
a000d460:	8fbe0020 	lw	s8,32(sp)
a000d464:	27bd0028 	addiu	sp,sp,40
a000d468:	03e00008 	jr	ra
a000d46c:	00000000 	nop

a000d470 <thread_exit>:
a000d470:	27bdffe8 	addiu	sp,sp,-24
a000d474:	afbf0014 	sw	ra,20(sp)
a000d478:	afbe0010 	sw	s8,16(sp)
a000d47c:	03a0f025 	move	s8,sp
a000d480:	3c02a001 	lui	v0,0xa001
a000d484:	8c4280ec 	lw	v0,-32532(v0)
a000d488:	24420004 	addiu	v0,v0,4
a000d48c:	00402025 	move	a0,v0
a000d490:	0c00328c 	jal	a000ca30 <puts>
a000d494:	00000000 	nop
a000d498:	3c02a001 	lui	v0,0xa001
a000d49c:	2444803c 	addiu	a0,v0,-32708
a000d4a0:	0c00328c 	jal	a000ca30 <puts>
a000d4a4:	00000000 	nop
a000d4a8:	3c02a001 	lui	v0,0xa001
a000d4ac:	8c4280ec 	lw	v0,-32532(v0)
a000d4b0:	24060030 	li	a2,48
a000d4b4:	00002825 	move	a1,zero
a000d4b8:	00402025 	move	a0,v0
a000d4bc:	0c003152 	jal	a000c548 <memset>
a000d4c0:	00000000 	nop
a000d4c4:	00001025 	move	v0,zero
a000d4c8:	03c0e825 	move	sp,s8
a000d4cc:	8fbf0014 	lw	ra,20(sp)
a000d4d0:	8fbe0010 	lw	s8,16(sp)
a000d4d4:	27bd0018 	addiu	sp,sp,24
a000d4d8:	03e00008 	jr	ra
a000d4dc:	00000000 	nop

a000d4e0 <setintr>:
a000d4e0:	27bdffe8 	addiu	sp,sp,-24
a000d4e4:	afbf0014 	sw	ra,20(sp)
a000d4e8:	afbe0010 	sw	s8,16(sp)
a000d4ec:	03a0f025 	move	s8,sp
a000d4f0:	afc40018 	sw	a0,24(s8)
a000d4f4:	afc5001c 	sw	a1,28(s8)
a000d4f8:	3c02a001 	lui	v0,0xa001
a000d4fc:	2445d754 	addiu	a1,v0,-10412
a000d500:	8fc40018 	lw	a0,24(s8)
a000d504:	0c0033a0 	jal	a000ce80 <softvec_setintr>
a000d508:	00000000 	nop
a000d50c:	3c02a001 	lui	v0,0xa001
a000d510:	8fc30018 	lw	v1,24(s8)
a000d514:	00031880 	sll	v1,v1,0x2
a000d518:	24428210 	addiu	v0,v0,-32240
a000d51c:	00621021 	addu	v0,v1,v0
a000d520:	8fc3001c 	lw	v1,28(s8)
a000d524:	ac430000 	sw	v1,0(v0)
a000d528:	00001025 	move	v0,zero
a000d52c:	03c0e825 	move	sp,s8
a000d530:	8fbf0014 	lw	ra,20(sp)
a000d534:	8fbe0010 	lw	s8,16(sp)
a000d538:	27bd0018 	addiu	sp,sp,24
a000d53c:	03e00008 	jr	ra
a000d540:	00000000 	nop

a000d544 <call_functions>:
a000d544:	27bdffe0 	addiu	sp,sp,-32
a000d548:	afbf001c 	sw	ra,28(sp)
a000d54c:	afbe0018 	sw	s8,24(sp)
a000d550:	03a0f025 	move	s8,sp
a000d554:	afc40020 	sw	a0,32(s8)
a000d558:	afc50024 	sw	a1,36(s8)
a000d55c:	8fc20020 	lw	v0,32(s8)
a000d560:	10400006 	beqz	v0,a000d57c <call_functions+0x38>
a000d564:	00000000 	nop
a000d568:	24030001 	li	v1,1
a000d56c:	10430019 	beq	v0,v1,a000d5d4 <call_functions+0x90>
a000d570:	00000000 	nop
a000d574:	1000001a 	b	a000d5e0 <call_functions+0x9c>
a000d578:	00000000 	nop
a000d57c:	8fc20024 	lw	v0,36(s8)
a000d580:	8c430000 	lw	v1,0(v0)
a000d584:	8fc20024 	lw	v0,36(s8)
a000d588:	8c440004 	lw	a0,4(v0)
a000d58c:	8fc20024 	lw	v0,36(s8)
a000d590:	8c450008 	lw	a1,8(v0)
a000d594:	8fc20024 	lw	v0,36(s8)
a000d598:	8c46000c 	lw	a2,12(v0)
a000d59c:	8fc20024 	lw	v0,36(s8)
a000d5a0:	8c420010 	lw	v0,16(v0)
a000d5a4:	afa20010 	sw	v0,16(sp)
a000d5a8:	00c03825 	move	a3,a2
a000d5ac:	00a03025 	move	a2,a1
a000d5b0:	00802825 	move	a1,a0
a000d5b4:	00602025 	move	a0,v1
a000d5b8:	0c003437 	jal	a000d0dc <thread_run>
a000d5bc:	00000000 	nop
a000d5c0:	00401825 	move	v1,v0
a000d5c4:	8fc20024 	lw	v0,36(s8)
a000d5c8:	ac430014 	sw	v1,20(v0)
a000d5cc:	10000004 	b	a000d5e0 <call_functions+0x9c>
a000d5d0:	00000000 	nop
a000d5d4:	0c00351c 	jal	a000d470 <thread_exit>
a000d5d8:	00000000 	nop
	...
a000d5e4:	03c0e825 	move	sp,s8
a000d5e8:	8fbf001c 	lw	ra,28(sp)
a000d5ec:	8fbe0018 	lw	s8,24(sp)
a000d5f0:	27bd0020 	addiu	sp,sp,32
a000d5f4:	03e00008 	jr	ra
a000d5f8:	00000000 	nop

a000d5fc <syscall_proc>:
a000d5fc:	27bdffe8 	addiu	sp,sp,-24
a000d600:	afbf0014 	sw	ra,20(sp)
a000d604:	afbe0010 	sw	s8,16(sp)
a000d608:	03a0f025 	move	s8,sp
a000d60c:	afc40018 	sw	a0,24(s8)
a000d610:	afc5001c 	sw	a1,28(s8)
a000d614:	0c0033ce 	jal	a000cf38 <getcurrent>
a000d618:	00000000 	nop
a000d61c:	8fc5001c 	lw	a1,28(s8)
a000d620:	8fc40018 	lw	a0,24(s8)
a000d624:	0c003551 	jal	a000d544 <call_functions>
a000d628:	00000000 	nop
a000d62c:	00000000 	nop
a000d630:	03c0e825 	move	sp,s8
a000d634:	8fbf0014 	lw	ra,20(sp)
a000d638:	8fbe0010 	lw	s8,16(sp)
a000d63c:	27bd0018 	addiu	sp,sp,24
a000d640:	03e00008 	jr	ra
a000d644:	00000000 	nop

a000d648 <schedule>:
a000d648:	27bdffe8 	addiu	sp,sp,-24
a000d64c:	afbf0014 	sw	ra,20(sp)
a000d650:	afbe0010 	sw	s8,16(sp)
a000d654:	03a0f025 	move	s8,sp
a000d658:	3c02a001 	lui	v0,0xa001
a000d65c:	8c4280e4 	lw	v0,-32540(v0)
a000d660:	14400003 	bnez	v0,a000d670 <schedule+0x28>
a000d664:	00000000 	nop
a000d668:	0c003646 	jal	a000d918 <kz_sysdown>
a000d66c:	00000000 	nop
a000d670:	3c02a001 	lui	v0,0xa001
a000d674:	8c4380e4 	lw	v1,-32540(v0)
a000d678:	3c02a001 	lui	v0,0xa001
a000d67c:	ac4380ec 	sw	v1,-32532(v0)
a000d680:	00000000 	nop
a000d684:	03c0e825 	move	sp,s8
a000d688:	8fbf0014 	lw	ra,20(sp)
a000d68c:	8fbe0010 	lw	s8,16(sp)
a000d690:	27bd0018 	addiu	sp,sp,24
a000d694:	03e00008 	jr	ra
a000d698:	00000000 	nop

a000d69c <syscall_intr>:
a000d69c:	27bdffe8 	addiu	sp,sp,-24
a000d6a0:	afbf0014 	sw	ra,20(sp)
a000d6a4:	afbe0010 	sw	s8,16(sp)
a000d6a8:	03a0f025 	move	s8,sp
a000d6ac:	3c02a001 	lui	v0,0xa001
a000d6b0:	8c4280ec 	lw	v0,-32532(v0)
a000d6b4:	8c430024 	lw	v1,36(v0)
a000d6b8:	3c02a001 	lui	v0,0xa001
a000d6bc:	8c4280ec 	lw	v0,-32532(v0)
a000d6c0:	8c420028 	lw	v0,40(v0)
a000d6c4:	00402825 	move	a1,v0
a000d6c8:	00602025 	move	a0,v1
a000d6cc:	0c00357f 	jal	a000d5fc <syscall_proc>
a000d6d0:	00000000 	nop
a000d6d4:	00000000 	nop
a000d6d8:	03c0e825 	move	sp,s8
a000d6dc:	8fbf0014 	lw	ra,20(sp)
a000d6e0:	8fbe0010 	lw	s8,16(sp)
a000d6e4:	27bd0018 	addiu	sp,sp,24
a000d6e8:	03e00008 	jr	ra
a000d6ec:	00000000 	nop

a000d6f0 <softerr_intr>:
a000d6f0:	27bdffe8 	addiu	sp,sp,-24
a000d6f4:	afbf0014 	sw	ra,20(sp)
a000d6f8:	afbe0010 	sw	s8,16(sp)
a000d6fc:	03a0f025 	move	s8,sp
a000d700:	3c02a001 	lui	v0,0xa001
a000d704:	8c4280ec 	lw	v0,-32532(v0)
a000d708:	24420004 	addiu	v0,v0,4
a000d70c:	00402025 	move	a0,v0
a000d710:	0c00328c 	jal	a000ca30 <puts>
a000d714:	00000000 	nop
a000d718:	3c02a001 	lui	v0,0xa001
a000d71c:	24448044 	addiu	a0,v0,-32700
a000d720:	0c00328c 	jal	a000ca30 <puts>
a000d724:	00000000 	nop
a000d728:	0c0033ce 	jal	a000cf38 <getcurrent>
a000d72c:	00000000 	nop
a000d730:	0c00351c 	jal	a000d470 <thread_exit>
a000d734:	00000000 	nop
a000d738:	00000000 	nop
a000d73c:	03c0e825 	move	sp,s8
a000d740:	8fbf0014 	lw	ra,20(sp)
a000d744:	8fbe0010 	lw	s8,16(sp)
a000d748:	27bd0018 	addiu	sp,sp,24
a000d74c:	03e00008 	jr	ra
a000d750:	00000000 	nop

a000d754 <thread_intr>:
a000d754:	27bdffe8 	addiu	sp,sp,-24
a000d758:	afbf0014 	sw	ra,20(sp)
a000d75c:	afbe0010 	sw	s8,16(sp)
a000d760:	03a0f025 	move	s8,sp
a000d764:	afc40018 	sw	a0,24(s8)
a000d768:	afc5001c 	sw	a1,28(s8)
a000d76c:	3c02a001 	lui	v0,0xa001
a000d770:	8c4280ec 	lw	v0,-32532(v0)
a000d774:	8fc3001c 	lw	v1,28(s8)
a000d778:	ac43002c 	sw	v1,44(v0)
a000d77c:	3c02a001 	lui	v0,0xa001
a000d780:	8fc30018 	lw	v1,24(s8)
a000d784:	00031880 	sll	v1,v1,0x2
a000d788:	24428210 	addiu	v0,v0,-32240
a000d78c:	00621021 	addu	v0,v1,v0
a000d790:	8c420000 	lw	v0,0(v0)
a000d794:	10400009 	beqz	v0,a000d7bc <thread_intr+0x68>
a000d798:	00000000 	nop
a000d79c:	3c02a001 	lui	v0,0xa001
a000d7a0:	8fc30018 	lw	v1,24(s8)
a000d7a4:	00031880 	sll	v1,v1,0x2
a000d7a8:	24428210 	addiu	v0,v0,-32240
a000d7ac:	00621021 	addu	v0,v1,v0
a000d7b0:	8c420000 	lw	v0,0(v0)
a000d7b4:	0040f809 	jalr	v0
a000d7b8:	00000000 	nop
a000d7bc:	0c003592 	jal	a000d648 <schedule>
a000d7c0:	00000000 	nop
a000d7c4:	3c02a001 	lui	v0,0xa001
a000d7c8:	8c4280ec 	lw	v0,-32532(v0)
a000d7cc:	2442002c 	addiu	v0,v0,44
a000d7d0:	00402025 	move	a0,v0
a000d7d4:	0c003102 	jal	a000c408 <dispatch>
a000d7d8:	00000000 	nop
a000d7dc:	00000000 	nop
a000d7e0:	03c0e825 	move	sp,s8
a000d7e4:	8fbf0014 	lw	ra,20(sp)
a000d7e8:	8fbe0010 	lw	s8,16(sp)
a000d7ec:	27bd0018 	addiu	sp,sp,24
a000d7f0:	03e00008 	jr	ra
a000d7f4:	00000000 	nop

a000d7f8 <kz_start>:
a000d7f8:	27bdffe0 	addiu	sp,sp,-32
a000d7fc:	afbf001c 	sw	ra,28(sp)
a000d800:	afbe0018 	sw	s8,24(sp)
a000d804:	03a0f025 	move	s8,sp
a000d808:	afc40020 	sw	a0,32(s8)
a000d80c:	afc50024 	sw	a1,36(s8)
a000d810:	afc60028 	sw	a2,40(s8)
a000d814:	afc7002c 	sw	a3,44(s8)
a000d818:	3c02a001 	lui	v0,0xa001
a000d81c:	ac4080ec 	sw	zero,-32532(v0)
a000d820:	3c02a001 	lui	v0,0xa001
a000d824:	244280e4 	addiu	v0,v0,-32540
a000d828:	ac400004 	sw	zero,4(v0)
a000d82c:	3c02a001 	lui	v0,0xa001
a000d830:	244280e4 	addiu	v0,v0,-32540
a000d834:	8c430004 	lw	v1,4(v0)
a000d838:	3c02a001 	lui	v0,0xa001
a000d83c:	ac4380e4 	sw	v1,-32540(v0)
a000d840:	24060120 	li	a2,288
a000d844:	00002825 	move	a1,zero
a000d848:	3c02a001 	lui	v0,0xa001
a000d84c:	244480f0 	addiu	a0,v0,-32528
a000d850:	0c003152 	jal	a000c548 <memset>
a000d854:	00000000 	nop
a000d858:	2406000c 	li	a2,12
a000d85c:	00002825 	move	a1,zero
a000d860:	3c02a001 	lui	v0,0xa001
a000d864:	24448210 	addiu	a0,v0,-32240
a000d868:	0c003152 	jal	a000c548 <memset>
a000d86c:	00000000 	nop
a000d870:	3c02a001 	lui	v0,0xa001
a000d874:	2445d69c 	addiu	a1,v0,-10596
a000d878:	24040001 	li	a0,1
a000d87c:	0c003538 	jal	a000d4e0 <setintr>
a000d880:	00000000 	nop
a000d884:	3c02a001 	lui	v0,0xa001
a000d888:	2445d6f0 	addiu	a1,v0,-10512
a000d88c:	00002025 	move	a0,zero
a000d890:	0c003538 	jal	a000d4e0 <setintr>
a000d894:	00000000 	nop
a000d898:	8fc20030 	lw	v0,48(s8)
a000d89c:	afa20010 	sw	v0,16(sp)
a000d8a0:	8fc7002c 	lw	a3,44(s8)
a000d8a4:	8fc60028 	lw	a2,40(s8)
a000d8a8:	8fc50024 	lw	a1,36(s8)
a000d8ac:	8fc40020 	lw	a0,32(s8)
a000d8b0:	0c003437 	jal	a000d0dc <thread_run>
a000d8b4:	00000000 	nop
a000d8b8:	00401825 	move	v1,v0
a000d8bc:	3c02a001 	lui	v0,0xa001
a000d8c0:	ac4380ec 	sw	v1,-32532(v0)
a000d8c4:	3c02a001 	lui	v0,0xa001
a000d8c8:	2444804c 	addiu	a0,v0,-32692
a000d8cc:	0c00328c 	jal	a000ca30 <puts>
a000d8d0:	00000000 	nop
a000d8d4:	3c02a001 	lui	v0,0xa001
a000d8d8:	8c4280ec 	lw	v0,-32532(v0)
a000d8dc:	2442002c 	addiu	v0,v0,44
a000d8e0:	00402025 	move	a0,v0
a000d8e4:	0c003102 	jal	a000c408 <dispatch>
a000d8e8:	00000000 	nop
a000d8ec:	3c02a001 	lui	v0,0xa001
a000d8f0:	2444805c 	addiu	a0,v0,-32676
a000d8f4:	0c00328c 	jal	a000ca30 <puts>
a000d8f8:	00000000 	nop
a000d8fc:	00000000 	nop
a000d900:	03c0e825 	move	sp,s8
a000d904:	8fbf001c 	lw	ra,28(sp)
a000d908:	8fbe0018 	lw	s8,24(sp)
a000d90c:	27bd0020 	addiu	sp,sp,32
a000d910:	03e00008 	jr	ra
a000d914:	00000000 	nop

a000d918 <kz_sysdown>:
a000d918:	27bdffe8 	addiu	sp,sp,-24
a000d91c:	afbf0014 	sw	ra,20(sp)
a000d920:	afbe0010 	sw	s8,16(sp)
a000d924:	03a0f025 	move	s8,sp
a000d928:	3c02a001 	lui	v0,0xa001
a000d92c:	2444806c 	addiu	a0,v0,-32660
a000d930:	0c00328c 	jal	a000ca30 <puts>
a000d934:	00000000 	nop
a000d938:	1000ffff 	b	a000d938 <kz_sysdown+0x20>
a000d93c:	00000000 	nop

a000d940 <kz_syscall>:
a000d940:	27bdfff8 	addiu	sp,sp,-8
a000d944:	afbe0004 	sw	s8,4(sp)
a000d948:	03a0f025 	move	s8,sp
a000d94c:	afc40008 	sw	a0,8(s8)
a000d950:	afc5000c 	sw	a1,12(s8)
a000d954:	3c02a001 	lui	v0,0xa001
a000d958:	8c4280ec 	lw	v0,-32532(v0)
a000d95c:	8fc30008 	lw	v1,8(s8)
a000d960:	ac430024 	sw	v1,36(v0)
a000d964:	3c02a001 	lui	v0,0xa001
a000d968:	8c4280ec 	lw	v0,-32532(v0)
a000d96c:	8fc3000c 	lw	v1,12(s8)
a000d970:	ac430028 	sw	v1,40(v0)
a000d974:	0000000c 	syscall
a000d978:	00000000 	nop
a000d97c:	03c0e825 	move	sp,s8
a000d980:	8fbe0004 	lw	s8,4(sp)
a000d984:	27bd0008 	addiu	sp,sp,8
a000d988:	03e00008 	jr	ra
a000d98c:	00000000 	nop

a000d990 <kz_run>:
a000d990:	27bdffd0 	addiu	sp,sp,-48
a000d994:	afbf002c 	sw	ra,44(sp)
a000d998:	afbe0028 	sw	s8,40(sp)
a000d99c:	03a0f025 	move	s8,sp
a000d9a0:	afc40030 	sw	a0,48(s8)
a000d9a4:	afc50034 	sw	a1,52(s8)
a000d9a8:	afc60038 	sw	a2,56(s8)
a000d9ac:	afc7003c 	sw	a3,60(s8)
a000d9b0:	8fc20030 	lw	v0,48(s8)
a000d9b4:	afc20010 	sw	v0,16(s8)
a000d9b8:	8fc20034 	lw	v0,52(s8)
a000d9bc:	afc20014 	sw	v0,20(s8)
a000d9c0:	8fc20038 	lw	v0,56(s8)
a000d9c4:	afc20018 	sw	v0,24(s8)
a000d9c8:	8fc2003c 	lw	v0,60(s8)
a000d9cc:	afc2001c 	sw	v0,28(s8)
a000d9d0:	8fc20040 	lw	v0,64(s8)
a000d9d4:	afc20020 	sw	v0,32(s8)
a000d9d8:	27c20010 	addiu	v0,s8,16
a000d9dc:	00402825 	move	a1,v0
a000d9e0:	00002025 	move	a0,zero
a000d9e4:	0c003650 	jal	a000d940 <kz_syscall>
a000d9e8:	00000000 	nop
a000d9ec:	8fc20024 	lw	v0,36(s8)
a000d9f0:	03c0e825 	move	sp,s8
a000d9f4:	8fbf002c 	lw	ra,44(sp)
a000d9f8:	8fbe0028 	lw	s8,40(sp)
a000d9fc:	27bd0030 	addiu	sp,sp,48
a000da00:	03e00008 	jr	ra
a000da04:	00000000 	nop

a000da08 <kz_exit>:
a000da08:	27bdffe8 	addiu	sp,sp,-24
a000da0c:	afbf0014 	sw	ra,20(sp)
a000da10:	afbe0010 	sw	s8,16(sp)
a000da14:	03a0f025 	move	s8,sp
a000da18:	00002825 	move	a1,zero
a000da1c:	24040001 	li	a0,1
a000da20:	0c003650 	jal	a000d940 <kz_syscall>
a000da24:	00000000 	nop
a000da28:	00000000 	nop
a000da2c:	03c0e825 	move	sp,s8
a000da30:	8fbf0014 	lw	ra,20(sp)
a000da34:	8fbe0010 	lw	s8,16(sp)
a000da38:	27bd0018 	addiu	sp,sp,24
a000da3c:	03e00008 	jr	ra
a000da40:	00000000 	nop

a000da44 <test08_1_main>:
a000da44:	27bdffc8 	addiu	sp,sp,-56
a000da48:	afbf0034 	sw	ra,52(sp)
a000da4c:	afbe0030 	sw	s8,48(sp)
a000da50:	03a0f025 	move	s8,sp
a000da54:	afc40038 	sw	a0,56(s8)
a000da58:	afc5003c 	sw	a1,60(s8)
a000da5c:	3c02a001 	lui	v0,0xa001
a000da60:	2444807c 	addiu	a0,v0,-32644
a000da64:	0c00328c 	jal	a000ca30 <puts>
a000da68:	00000000 	nop
a000da6c:	3c02a001 	lui	v0,0xa001
a000da70:	24448090 	addiu	a0,v0,-32624
a000da74:	0c00328c 	jal	a000ca30 <puts>
a000da78:	00000000 	nop
a000da7c:	27c20010 	addiu	v0,s8,16
a000da80:	00402025 	move	a0,v0
a000da84:	0c0032a5 	jal	a000ca94 <gets>
a000da88:	00000000 	nop
a000da8c:	24060004 	li	a2,4
a000da90:	3c02a001 	lui	v0,0xa001
a000da94:	24458094 	addiu	a1,v0,-32620
a000da98:	27c20010 	addiu	v0,s8,16
a000da9c:	00402025 	move	a0,v0
a000daa0:	0c003222 	jal	a000c888 <strncmp>
a000daa4:	00000000 	nop
a000daa8:	1440000b 	bnez	v0,a000dad8 <test08_1_main+0x94>
a000daac:	00000000 	nop
a000dab0:	27c20014 	addiu	v0,s8,20
a000dab4:	00402025 	move	a0,v0
a000dab8:	0c00328c 	jal	a000ca30 <puts>
a000dabc:	00000000 	nop
a000dac0:	3c02a001 	lui	v0,0xa001
a000dac4:	2444809c 	addiu	a0,v0,-32612
a000dac8:	0c00328c 	jal	a000ca30 <puts>
a000dacc:	00000000 	nop
a000dad0:	1000ffe6 	b	a000da6c <test08_1_main+0x28>
a000dad4:	00000000 	nop
a000dad8:	3c02a001 	lui	v0,0xa001
a000dadc:	244580a0 	addiu	a1,v0,-32608
a000dae0:	27c20010 	addiu	v0,s8,16
a000dae4:	00402025 	move	a0,v0
a000dae8:	0c0031f4 	jal	a000c7d0 <strcmp>
a000daec:	00000000 	nop
a000daf0:	10400007 	beqz	v0,a000db10 <test08_1_main+0xcc>
a000daf4:	00000000 	nop
a000daf8:	3c02a001 	lui	v0,0xa001
a000dafc:	244480a8 	addiu	a0,v0,-32600
a000db00:	0c00328c 	jal	a000ca30 <puts>
a000db04:	00000000 	nop
a000db08:	1000ffd8 	b	a000da6c <test08_1_main+0x28>
a000db0c:	00000000 	nop
a000db10:	00000000 	nop
a000db14:	3c02a001 	lui	v0,0xa001
a000db18:	244480b4 	addiu	a0,v0,-32588
a000db1c:	0c00328c 	jal	a000ca30 <puts>
a000db20:	00000000 	nop
a000db24:	00001025 	move	v0,zero
a000db28:	03c0e825 	move	sp,s8
a000db2c:	8fbf0034 	lw	ra,52(sp)
a000db30:	8fbe0030 	lw	s8,48(sp)
a000db34:	27bd0038 	addiu	sp,sp,56
a000db38:	03e00008 	jr	ra
a000db3c:	00000000 	nop
